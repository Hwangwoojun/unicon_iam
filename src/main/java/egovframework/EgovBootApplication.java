//package egovframework;
//
//import org.springframework.boot.Banner;
//import org.springframework.boot.SpringApplication;
//import org.springframework.boot.autoconfigure.SpringBootApplication;
//import org.springframework.boot.web.servlet.ServletComponentScan;
//import org.springframework.context.annotation.Import;
//
//import egovframework.com.config.EgovWebApplicationInitializer;
//
//@ServletComponentScan
//@SpringBootApplication
//@Import({EgovWebApplicationInitializer.class})
//public class EgovBootApplication {
//	public static void main(String[] args) {
//		System.out.println("#####  EgovBootApplication Start #####");
//
//		SpringApplication springApplication = new SpringApplication(EgovBootApplication.class);
//		springApplication.setBannerMode(Banner.Mode.OFF);
//		//springApplication.setLogStartupInfo(false);
//		springApplication.run(args);
//
//		System.out.println("##### EgovBootApplication End #####");
//	}
//
//}

package egovframework;

import org.springframework.boot.Banner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer; // ★ 추가
import org.springframework.context.annotation.Import;

import egovframework.com.config.EgovWebApplicationInitializer;

@ServletComponentScan
@SpringBootApplication
@Import({EgovWebApplicationInitializer.class})
public class EgovBootApplication extends SpringBootServletInitializer { // ★ 변경

	public static void main(String[] args) {
		System.out.println("##### EgovBootApplication Start #####");

		SpringApplication springApplication = new SpringApplication(EgovBootApplication.class);
		springApplication.setBannerMode(Banner.Mode.OFF);
		springApplication.run(args);

		System.out.println("##### EgovBootApplication End #####");
	}

	// ★ 외부 톰캣 배포 시 진입점
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(EgovBootApplication.class);
	}
}
