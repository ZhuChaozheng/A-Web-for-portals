package cn.core;
import java.io.*;
import javax.servlet.http.*;
public class UpFile_military
{   HttpServletRequest request;
    HttpSession session;
    String upFileMessage="";
    public void setRequest(HttpServletRequest request)
    {  this.request=request;
    }
    public void setSession(HttpSession session)
    {  this.session=session;
    }
    public String getUpFileMessage()
    {  String fileName=null;
       try{  String tempFileName=(String)session.getId();//�ͻ���session��id
            File f1=new File("G:/web/wzcszy/WebContent/images/military",tempFileName);
            FileOutputStream o=new FileOutputStream(f1);
            InputStream in=request.getInputStream();
            byte b[]=new byte[10000];
            int n;
            while( (n=in.read(b))!=-1)  //���ͻ��ϴ���ȫ����Ϣ����f1
              {   o.write(b,0,n);  
              }
            o.close();
            in.close();
            RandomAccessFile random=new RandomAccessFile(f1,"r");
            int second=1;   //����f1�ĵ�2�У���ȡ���ϴ��ļ������֣�
            String secondLine=null;
            while(second<=2)  
               { secondLine=random.readLine();
                 second++;
               }
            //��ȡ��2����Ŀ¼����'\'�����ֵ�λ��
             int position=secondLine.lastIndexOf('\\');
           //�ͻ��ϴ����ļ��������ǣ�
            fileName=secondLine.substring(position+2,secondLine.length()-1);
            byte  cc[]=fileName.getBytes("ISO-8859-1");
            fileName=new String(cc);
            //session��ֵ
            session.setAttribute("npic",fileName);
            random.seek(0); //�ٶ�λ���ļ�f1�Ŀ�ͷ��
            //��ȡ��4�лس����ŵ�λ��: 
            long  forthEndPosition=0;
            int forth=1;
            while((n=random.readByte())!=-1&&(forth<=4))  
               {  if(n=='\n')
                    {  forthEndPosition=random.getFilePointer();
                      forth++;
                    }
                }
            //���ݿͻ��ϴ��ļ������֣������ļ�������̣�
            File f2= new File("G:/web/wzcszy/WebContent/images/military",fileName); 
            RandomAccessFile random2=new RandomAccessFile(f2,"rw"); 
             //ȷ�����ļ�f1�а����ͻ��ϴ����ļ������ݵ����λ�ã���������6�С�
            random.seek(random.length());
            long endPosition=random.getFilePointer();
            long mark=endPosition;
            int j=1;
            while((mark>=0)&&(j<=6))  
             {   mark--;
                 random.seek(mark);
                 n=random.readByte();
                 if(n=='\n')
                 {    endPosition=random.getFilePointer();
                      j++;
                }
             }
          //��random��ָ���ļ�f1�ĵ�4�н�����λ�ã�
          random.seek(forthEndPosition);
          long startPoint=random.getFilePointer();
         //��f1�����ͻ��ϴ����ļ�����f2����ȡ��4�н���λ����������6��֮������ݣ�
          while(startPoint<endPosition-1)
            { n=random.readByte();
              random2.write(n); 
              startPoint=random.getFilePointer();
            }
          random2.close();
          random.close();
          f1.delete(); //ɾ����ʱ�ļ�
          upFileMessage=fileName+" Successfully UpLoad";
          return upFileMessage;
       }
    catch(Exception exp)
      {   if(fileName!=null)
           {  upFileMessage=fileName+" Fail to UpLoad";
              return upFileMessage;
           }
          else
           {  upFileMessage="";
              return upFileMessage;
           }
      }
   }
}