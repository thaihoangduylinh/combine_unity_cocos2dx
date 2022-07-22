using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

#if UNITY_IOS
public class NativeAPI
{
    [DllImport("__Internal")]
    public static extern void exitUnity();

    [DllImport("__Internal")]
    public static extern string getDataFromIOSProject(string key);

}
#endif


public class NativeController : MonoBehaviour
{
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

    void Start()
    {
        
    }

    void Update()
    {
        
    }

    void onButtonClick()
    {
#if UNITY_IOS

            NativeAPI.exitUnity();

#elif UNITY_ANDROID

            callVoidMethod("org.cocos2dx.cpp.MainUnityActivity", "instance", "onUnityPlayerUnloaded");
#endif
    }

}