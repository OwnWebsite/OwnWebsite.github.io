import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class JavaMailLearn {

	public static void main(String[] args) throws Exception {
		//设置参数
		Properties prop = new Properties();
	    prop.setProperty("mail.smtp.host", "smtp.qq.com");
	    prop.setProperty("mail.transport.protocol", "smtp");
	    prop.setProperty("mail.smtp.auth", "true");     //是否要验证用户
	    prop.setProperty("mail.smtp.port", "465");
	    prop.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	    prop.setProperty("mail.smtp.socketFactory.port", "465");
	    
	    //发送邮件的5个步骤
        //1. 获取session
        Session session=Session.getInstance(prop);
        session.setDebug(true);
        //2.创建ts对象
        Transport ts=session.getTransport();
        //3.连接发件服务器
        //通过第三方连接QQ邮箱服务器，需要邮箱地址、授权码
        ts.connect("smtp.qq.com", "123123@qq.com", "avpvwswhgufvbdhh");
        //4.创建邮件对象
        Message message=createMessage(session);
        //5.发送邮件
        ts.sendMessage(message,message.getAllRecipients());
        ts.close();
	}
	
	//创建邮件
	public static MimeMessage createMessage(Session session) throws Exception{
		//创建邮件对象
		MimeMessage message=new MimeMessage(session);
		//声明发件人
		message.setFrom(new InternetAddress("123123@qq.com"));
		//声明收件人
		message.setRecipient(Message.RecipientType.TO, new InternetAddress("123123@qq.com"));
		//声明主题
		message.setSubject("邮箱发送测试");
		//声明内容
		message.setContent("<a href='http://www.baidu.com'>百度一下</a>","text/html;charset=utf-8");
		return message;
	}
}
