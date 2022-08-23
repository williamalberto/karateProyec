package karate.request.client;

import com.intuit.karate.junit5.Karate;

public class Client {

    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/clientFeature/client.feature").relativeTo(getClass());
    }
}
