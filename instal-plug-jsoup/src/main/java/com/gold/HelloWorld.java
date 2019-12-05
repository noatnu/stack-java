package com.gold;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.testng.annotations.Test;

import java.io.IOException;

/**
 * @Description
 * @createDate 2018/12/30
 **/
public class HelloWorld {

    private final Logger logger = LoggerFactory.getLogger(getClass());

    @Test
    public void test() throws IOException {
        HttpClient httpClient = HttpClients.createDefault();

        HttpGet httpGet = new HttpGet("https://www.cnblogs.com/");
        httpGet.setHeader("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36");
        HttpResponse httpResponse = httpClient.execute(httpGet);

        HttpEntity httpEntity = httpResponse.getEntity();
        String html = EntityUtils.toString(httpEntity, "utf-8");

        Document document = Jsoup.parse(html);
        Elements elements = document.getElementsByTag("title");
        Element titleElement = elements.first();

        System.out.println(titleElement.text());

        Element site_nav_top = document.getElementById("site_nav_top");
        System.out.println("口号:" + site_nav_top.text());
    }

}
