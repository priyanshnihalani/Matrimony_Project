
import java.io.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.net.URLEncoder;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

// @WebServlet("/SignUp")
@MultipartConfig(maxFileSize = 1699999999)
public class signupprocess extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Part part = request.getPart("file");
        InputStream inputstream = part.getInputStream();
        String firstname = request.getParameter("firstname");
        String surname = request.getParameter("surname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String date = request.getParameter("date");
        String month = request.getParameter("month");
        String year = request.getParameter("year");
        String gender = request.getParameter("gender");
        String city = request.getParameter("city");
        String occupation = request.getParameter("occupation");
        String hobbies = request.getParameter("hobbies");
        String religion = request.getParameter("religion");
        String cast = request.getParameter("cast");

        String insert = "insert into signup (imagepath, firstname, surname, password, email, dob, gender, city, occupation, hobbies, relegion, cast) values(?, ?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        String fullname = firstname + " " + surname;
        String encodedValue = URLEncoder.encode(fullname, "UTF-8");
        PrintWriter out = response.getWriter();
        try {
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimony", "root",
                    "");
            PreparedStatement st = cn.prepareStatement(insert);
            st.setBlob(1, inputstream);
            st.setString(2, firstname);
            st.setString(3, surname);
            st.setString(4, password);
            st.setString(5, email);
            st.setString(6, date + month + year);
            st.setString(7, gender);
            st.setString(8, city);
            st.setString(9, occupation);
            st.setString(10, hobbies);
            st.setString(11, religion);
            st.setString(12, cast);

            int rowaffected = st.executeUpdate();
            if (rowaffected > 0) {
                Cookie cookie = new Cookie("user", encodedValue);
                cookie.setMaxAge(60 * 60 * 24 * 30); // 30 days
                response.addCookie(cookie);

                // Redirect to home page upon successful insertion
                response.sendRedirect("index.jsp");
            } else {
                out.print("Image not inserted Successfully");
            }
        } catch (Exception e) {
            out.print(e);
        }

    }

}
