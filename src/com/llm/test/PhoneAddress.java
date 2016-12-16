package com.llm.test;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class PhoneAddress {
	public static void main(String str[]) {

		// 设置http访问要使用的代理服务器的地址
		System.getProperties().setProperty("http.proxyHost", "localhost");
		// 设置http访问要使用的代理服务器的端口
		System.getProperties().setProperty("http.proxyPort", "8087");

//		String httpUrl = "http://apis.baidu.com/apistore/mobilenumber/mobilenumber";
//		String httpArg = "phone=13175196304";
//		String jsonResult = request(httpUrl, httpArg);
//		System.out.println(jsonResult);
		String httpUrl = "http://apis.baidu.com/apistore/idservice/id";
		String httpArg = "id=341621199308210157";
		String jsonResult = request(httpUrl, httpArg);
		System.out.println(jsonResult);
		System.out.println("\u5b89\u5fbd\u7701\u4eb3\u5dde\u5e02\u6da1\u9633\u53bf");
	}

	/**
	 * @param urlAll
	 *            :请求接口
	 * @param httpArg
	 *            :参数
	 * @return 返回结果
	 */
	public static String request(String httpUrl, String httpArg) {
	    BufferedReader reader = null;
	    String result = null;
	    StringBuffer sbf = new StringBuffer();
	    httpUrl = httpUrl + "?" + httpArg;

	    try {
	        URL url = new URL(httpUrl);
	        HttpURLConnection connection = (HttpURLConnection) url
	                .openConnection();
	        connection.setRequestMethod("GET");
	        // 填入apikey到HTTP header
	        connection.setRequestProperty("apikey",  "a02f4b32284b9759110fef406ec8e6f1");
	        connection.connect();
	        InputStream is = connection.getInputStream();
	        reader = new BufferedReader(new InputStreamReader(is, "UTF-8"));
	        String strRead = null;
	        while ((strRead = reader.readLine()) != null) {
	            sbf.append(strRead);
	            sbf.append("\r\n");
	        }
	        reader.close();
	        result = sbf.toString();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return result;
	}

//	/**
//	 * @param urlAll
//	 *            :请求接口
//	 * @param httpArg
//	 *            :参数
//	 * @return 返回结果
//	 */
//	public static String request(String httpUrl, String httpArg) {
//		BufferedReader reader = null;
//		String result = null;
//		StringBuffer sbf = new StringBuffer();
//		httpUrl = httpUrl + "?" + httpArg;
//
//		try {
//			URL url = new URL(httpUrl);
//			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
//			connection.setRequestMethod("GET");
//			// 填入apikey到HTTP header
//			connection.setRequestProperty("apikey", "a02f4b32284b9759110fef406ec8e6f1");
//			connection.connect();
//			InputStream is = connection.getInputStream();
//			reader = new BufferedReader(new InputStreamReader(is, "UTF-8"));
//			String strRead = null;
//			while ((strRead = reader.readLine()) != null) {
//				sbf.append(strRead);
//				sbf.append("\r\n");
//			}
//			reader.close();
//			result = sbf.toString();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return result;
//	}
}
