package view;

import dao.Person;
import util.DBManager;
import util.IOManager;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.Buffer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Person_View {
    public static Person signup()
    {
        Person person = new Person();

        System.out.println("Please input your email address.");
        person.setEmail(IOManager.getInputStringEmail());
        System.out.println("Please input your first name.");
        person.setFirstName(IOManager.getInputString());
        System.out.println("Please input your last name.");
        person.setLastName(IOManager.getInputString());
        System.out.println("Please input your phone number");
        person.setPhone(IOManager.getInputStringPhone());
        System.out.println("Please input your birth data in the form MM/DD/YYYY");
        person.setBirthDate(IOManager.getInputDate());

        if (person.save())
        {

        }
        else
        {
            return Person_View.signup();
        }
    }

    public static Person getFromName()
    {
        Connection conn = DBManager.getConnection();
        System.out.println("Please input your full name.");

        String name = IOManager.getInputString();

        try {
            PreparedStatement ps = conn.prepareStatement(
                    "SELECT\n" +
                    "    person_id, first_name, last_name, birth_date\n" +
                    "FROM\n" +
                    "    person\n" +
                    "WHERE\n" +
                    "    LOWER(CONCAT(first_name, ' ', last_name) LIKE LOWER(?)" +
                    "LIMIT 10");

            ps.setString(1, name);

            ResultSet result = ps.executeQuery();



        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }

    public static Person getFromEmail()
    {

    }
}


