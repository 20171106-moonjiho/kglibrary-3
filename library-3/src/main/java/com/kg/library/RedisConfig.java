package com.kg.library;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisClusterConfiguration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.connection.lettuce.LettuceConnectionFactory;

@Configuration
public class RedisConfig {

    @Value("${spring.redis.cluster.nodes}")
    private String clusterNodes;

    @Bean
    public RedisConnectionFactory redisConnectionFactory() {
        RedisClusterConfiguration clusterConfig = new RedisClusterConfiguration(Arrays.asList(clusterNodes.split(",")));
        LettuceConnectionFactory lettuceConnectionFactory = new LettuceConnectionFactory(clusterConfig);
        // 패스워드가 있는 경우
        // lettuceConnectionFactory.setPassword("");
        return lettuceConnectionFactory;
    }
	
}
