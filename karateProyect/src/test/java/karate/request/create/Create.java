package karate.request.create;

import com.intuit.karate.junit5.Karate;

public class Create {

    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/createFeature/create.feature").relativeTo(getClass());
    }
}