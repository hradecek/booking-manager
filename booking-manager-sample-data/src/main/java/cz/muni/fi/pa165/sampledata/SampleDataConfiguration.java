package cz.muni.fi.pa165.sampledata;

import cz.muni.fi.pa165.config.ServiceConfiguration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

import javax.annotation.PostConstruct;
import java.io.IOException;

@Configuration
@Import(ServiceConfiguration.class)
@ComponentScan("cz.muni.fi.pa165.sample")
public class SampleDataConfiguration {

    @Autowired
    SampleDataLoadingFacadeImpl sampleDataLoadingFacade;

    @PostConstruct
    public void dataLoading() throws IOException {
        sampleDataLoadingFacade.loadData();
    }

}
