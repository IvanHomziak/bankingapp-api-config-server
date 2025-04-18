package com.ihomziak.bankingapp.api.config.server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer
public class BankingappApiConfigServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(BankingappApiConfigServerApplication.class, args);
    }

}
