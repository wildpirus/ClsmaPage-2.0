/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Web;

import Datos.UsuarioDAOJDBC;
import Dominio.Usuario;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;
import java.util.Properties;

/**
 *
 * @author CL SMA
 */
@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet {

    private static final String SMTP_SERVER = "smtp server ";
    private static final String USERNAME = "";
    private static final String PASSWORD = "";

//    private static final String EMAIL_FROM = "From@gmail.com";
//    private static final String EMAIL_TO = "email_1@yahoo.com, email_2@gmail.com";
//    private static final String EMAIL_TO_CC = "";
//
//    private static final String EMAIL_SUBJECT = "Test Send Email via SMTP";
//    private static final String EMAIL_TEXT = "Hello Java Mail \n ABC123";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "FPASS":
                    //this.ForgotPass(request, response);
                    break;

                case "home":
                    String name = "home";
                    this.redirect(request, response, name);
                    break;

                case "start":
                    String jspdir6 = "/WEB-INF/Pages/StartHome/home.jsp";
                    request.getRequestDispatcher(jspdir6).forward(request, response);
                    break;

                case "insert":
                    //this.insertUsuario(request, response);
                    break;

                case "profile":
                    String name6 = "profile";
                    this.redirect(request, response, name6);
                    break;
//                case "eliminar":
//                    this.eliminarCliente(request, response);
//                    break;
//                    
//                default:
//                    this.accionDefault(request, response);
            }
        } else {
            this.accionDefault(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "insert":
                    //this.insertUsuario(request, response);
                    break;

                case "login":
                    //this.loginUsuario(request, response);
                    break;

//
//                case "eliminar":
//                    this.eliminarCliente(request, response);
//                    break;
//                    
//                default:
//                    this.accionDefault(request, response);
            }
        } else {
            this.accionDefault(request, response);
        }
    }

    private void accionDefault(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String jspdir = "/WEB-INF/Pages/Login/login.jsp";
        request.getRequestDispatcher(jspdir).forward(request, response);
    }

//    private void ForgotPass(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//
////        Properties prop = System.getProperties();
////        prop.put("mail.smtp.host", SMTP_SERVER); //optional, defined in SMTPTransport
////        prop.put("mail.smtp.auth", "true");
////        prop.put("mail.smtp.port", "25"); // default port 25
////
////        Session session = Session.getInstance(prop, null);
////        Message msg = new MimeMessage(session);
////
////        try {
////
////            // from
////            msg.setFrom(new InternetAddress(EMAIL_FROM));
////
////            // to 
////            msg.setRecipients(Message.RecipientType.TO,
////                    InternetAddress.parse(EMAIL_TO, false));
////
////            // cc
////            msg.setRecipients(Message.RecipientType.CC,
////                    InternetAddress.parse(EMAIL_TO_CC, false));
////
////            // subject
////            msg.setSubject(EMAIL_SUBJECT);
////
////            // content 
////            msg.setText(EMAIL_TEXT);
////
////            msg.setSentDate(new Date());
////
////            // Get SMTPTransport
////            SMTPTransport t = (SMTPTransport) session.getTransport("smtp");
////
////            // connect
////            t.connect(SMTP_SERVER, USERNAME, PASSWORD);
////
////            // send
////            t.sendMessage(msg, msg.getAllRecipients());
////
////            System.out.println("Response: " + t.getLastServerResponse());
////
////            t.close();
////
////        } catch (MessagingException e) {
////            e.printStackTrace();
////        }
//    }


    private void redirect(HttpServletRequest request, HttpServletResponse response, String name) throws IOException, ServletException {
        //this.profile(request, response);
        switch (name) {
            case "profile":
                String jspdir0 = "/WEB-INF/Pages/Login/Profile/profile.jsp";
                request.getRequestDispatcher(jspdir0).forward(request, response);
                break;

            case "home":
                String jspdir = "/WEB-INF/Pages/StudentPages/Home/student.jsp";
                request.getRequestDispatcher(jspdir).forward(request, response);
                break;
        }
    }

//    private void insertUsuario(HttpServletRequest request, HttpServletResponse response) {
//        String email = request.getParameter("emailregister");
//        String password = request.getParameter("passregister");
//
//        Usuario usuario = new Usuario(password, email);
//        try {
//            boolean insert = new UsuarioDAOJDBC().insertar(usuario);
//            System.out.println("Resultado " + insert);
//
//            String jspdir = "/WEB-INF/Pages/StudentPages/Home/student.jsp";
//            request.getRequestDispatcher(jspdir).forward(request, response);
//
//        } catch (IllegalAccessException | InstantiationException | ServletException | IOException ex) {
//            Logger.getLogger(ServletControlador.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
//    private void loginUsuario(HttpServletRequest request, HttpServletResponse response) {
//        List<Usuario> usr = null;
//        try {
//            try {
//                usr = new UsuarioDAOJDBC().listaUsuario();
//
//                String msg = "CONTRASEÑA INCORRECTA O MAIL NO EXISTE";
//                String email = request.getParameter("mail");
//                String password = request.getParameter("pass");
//                boolean sw = false;
//
//                for (Usuario usuario : usr) {
//                    if (usuario.getEmail().equals(email)) {
//                        if (usuario.getClave().equals(password)) {
//                            String jspdir = "/WEB-INF/Pages/StudentPages/Home/student.jsp";
//                            sw = true;
//                            request.setAttribute("usuario", usuario);
//                            request.getRequestDispatcher(jspdir).forward(request, response);
//                        }
//                    }
//                }
//
//                if (!sw) {
//                    String jspdir2 = "/WEB-INF/Pages/Login/login.jsp";
//                    request.setAttribute("msg", msg);
//                    request.getRequestDispatcher(jspdir2).forward(request, response);
//                }
//
//            } catch (ClassNotFoundException | InstantiationException | ServletException | IOException ex) {
//                Logger.getLogger(ServletControlador.class.getName()).log(Level.SEVERE, null, ex);
//            }
//        } catch (IllegalAccessException ex) {
//            Logger.getLogger(ServletControlador.class.getName()).log(Level.SEVERE, null, ex);
//        }
//  }
//    private void profile(HttpServletRequest request, HttpServletResponse response) {
//
//        try {
//            int id = Integer.parseInt(request.getParameter("usuario"));
//            Usuario usr = new UsuarioDAOJDBC().perfil(id);
//            request.setAttribute("usuario", usr);
//
//        } catch (InstantiationException | IllegalAccessException ex) {
//            Logger.getLogger(ServletControlador.class.getName()).log(Level.SEVERE, null, ex);
//        }
//
//    }
}
