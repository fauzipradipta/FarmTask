package com.example.Entity;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;

public interface TestUsersInterface {
    @POST("post")
    Call<TestUser>createpost(@Body TestUser testUser);
}
