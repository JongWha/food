package gram.util;

import java.util.HashMap;
import java.util.Iterator;
import java.util.ResourceBundle;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import gram.controller.Action;


@WebListener
public class ActionMappingListener implements ServletContextListener 
{


    public ActionMappingListener() 
    {
        // TODO Auto-generated constructor stub
    }

    @Override
    public void contextDestroyed(ServletContextEvent arg0)  
    { 
         // TODO Auto-generated method stub
    }

    @Override
    public void contextInitialized(ServletContextEvent event)  
    { 
    	HashMap<String,Action> map = new HashMap<String, Action>();
        //properties�����о Map�� ������ �� map�� application �� �����Ѵ�.
      	ResourceBundle rb = ResourceBundle.getBundle("gram.util.actionMapping");			// Bundle ��ü�� �������־� key���� ���� �ش� value�� ���� �� �ִ�.
      	Iterator<String> it = rb.keySet().iterator();									// Iterator ��� �÷���(Collection)���� ���� ������ ���� �� �ִ� �������̽�
      	while(it.hasNext())
      	{
      		String key = it.next();
      		String value = rb.getString(key);
      		
      		try
      		{
      		//map�� ����
      		Action action = (Action)Class.forName(value).newInstance();					// Action�� ����  Ŭ���� ���� ��ü�� ����� �ְ� �ִ�.
      		map.put(key, action);														// forName�޼ҵ��  jdbc ����̹��� �ε��Ҷ� �������� ����ϱ�����
      																					// ���⼭ action�� ��ü�� ��� ������ �ٷ� ������ ��ü�� action�� �ѱ��� ����ҷ���
      		}
      		
      		catch(Exception e)
      		{
      			e.printStackTrace();
      		}
      	}
      	
      	//application�� ����
      	event.getServletContext().setAttribute("map", map);
    }
	
}
