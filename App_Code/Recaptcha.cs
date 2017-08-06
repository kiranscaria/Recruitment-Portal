using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;
using System.IO;
using System.Net;
using System.Text;

public class Recaptcha
{
    public static string Validater(string EncodedResponse)
    {
        var client = new WebClient();

        string PrivateKey = "6LdxsyoUAAAAALYUAyPgcG9V1Sm2abm4YHyI2JyV";

        WebRequest req = WebRequest.Create("https://www.google.com/recaptcha/api/siteverify");
        string postData = String.Format("secret={0}&response={1}",
                                         PrivateKey,
                                         EncodedResponse);

        byte[] send = Encoding.Default.GetBytes(postData);
        req.Method = "POST";
        req.ContentType = "application/x-www-form-urlencoded";
        req.ContentLength = send.Length;

        Stream sout = req.GetRequestStream();
        sout.Write(send, 0, send.Length);
        sout.Flush();
        sout.Close();

        WebResponse res = req.GetResponse();
        StreamReader sr = new StreamReader(res.GetResponseStream());
        string returnvalue = sr.ReadToEnd();

        var captchaResponse = JsonConvert.DeserializeObject<Recaptcha>(returnvalue);

        return captchaResponse.Success;
    }

    [JsonProperty("success")]
    public string Success
    {
        get { return m_Success; }
        set { m_Success = value; }
    }

    private string m_Success;
    [JsonProperty("error-codes")]
    public List<string> ErrorCodes
    {
        get { return m_ErrorCodes; }
        set { m_ErrorCodes = value; }
    }

    private List<string> m_ErrorCodes;
}