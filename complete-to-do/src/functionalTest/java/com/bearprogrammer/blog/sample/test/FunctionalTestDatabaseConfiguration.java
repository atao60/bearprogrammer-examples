package com.bearprogrammer.blog.sample.test;

import javax.sql.DataSource;

import org.flywaydb.core.Flyway;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

import com.bearprogrammer.blog.sample.config.DataSourceFromEnvironmentConfiguration;

@Configuration
@PropertySource("classpath:functionalTestDatabase.properties")
public class FunctionalTestDatabaseConfiguration extends DataSourceFromEnvironmentConfiguration {
	
	@Bean(name="flyway")
    public Flyway getFlyway(DatabaseCleaner cleaner, DataSource dataSource) throws Exception {
		Flyway flyway = new Flyway();
        flyway.setDataSource(dataSource);
        return flyway;
    }
	
}