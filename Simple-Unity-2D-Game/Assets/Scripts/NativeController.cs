using System;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using UnityEngine;
using UnityEngine.UI;

public class NativeAPI
{
#if UNITY_IOS
    [DllImport("__Internal")]
    public static extern void exitUnity();

    [DllImport("__Internal")]
    public static extern string getDataFromIOSProject(string key);

#else //elif UNITY_ANDROID

    public static string getStringData(string className, string instanceName, string defaultValue, string functionName, params object[] args)
    {
        Debug.Log("xxxxx getStringData");
        try
        {
            AndroidJavaClass jc = new AndroidJavaClass(className);

            AndroidJavaObject overrideActivity = jc.GetStatic<AndroidJavaObject>(instanceName);

            if (overrideActivity != null)
            {

                string data = overrideActivity.Call<string>(functionName, args);

                Debug.Log("xxxxx getStringData return data=" + data);

                return data;
            }
        }
        catch (Exception e)
        {
            Debug.Log(e.Message);

        }

        Debug.Log("xxxxx getStringData return defaultValue=" + defaultValue);

        return defaultValue;
    }


    public static void callVoidMethod(string className, string instanceName, string functionName, params object[] args)
    {
        Debug.Log("xxxxx callVoidMethod");

        try
        {
            AndroidJavaClass jc = new AndroidJavaClass(className);

            AndroidJavaObject overrideActivity = jc.GetStatic<AndroidJavaObject>(instanceName);

            if (overrideActivity != null)
            {
                Debug.Log("xxxxx callVoidMethod overrideActivity != null");

                overrideActivity.Call(functionName, args);
            }
        }
        catch (Exception e)
        {
            Debug.Log(e.Message);

        }
    }
#endif
}


public class NativeController : MonoBehaviour
{

    public Text _text;

    public static bool _isJumpLeft = false;
    public static bool _isJumpRight = false;

    void Start()
    {
        _isJumpLeft = false;

        _isJumpRight = false;

        Application.targetFrameRate = 60;

#if UNITY_IOS

        var data =  NativeAPI.getDataFromIOSProject("game_score");

        Debug.Log("xxxx data:" + data);

        _text.text = data;
#endif

    }

    void Update()
    {

    }

    public void onJumpLeftButtonClicked()
    {
        NativeController._isJumpLeft = !NativeController._isJumpLeft;
    }


    public void onJumpRightButtonClicked()
    {
        NativeController._isJumpRight = !NativeController._isJumpRight;
    }

    public void onButtonClick()
    {

        Debug.Log("hahahaha");

#if UNITY_IOS

            NativeAPI.exitUnity();

#elif UNITY_ANDROID

            NativeAPI.callVoidMethod("org.cocos2dx.cpp.MainUnityActivity", "instance", "onUnityPlayerUnloaded");
#endif
    }

}
