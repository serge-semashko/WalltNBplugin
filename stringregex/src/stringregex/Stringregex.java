/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package stringregex;

import java.security.MessageDigest;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author Semashko
 */
public class Stringregex {

    /**
     * @param args the command line arguments
     */
     public static void main(String[] args) throws Exception {
        MessageDigest md = MessageDigest.getInstance("MD5");
        byte[] digest = md.digest("abracadabra".getBytes("UTF-8"));
        for (byte b : digest) {
            System.out.printf("%02x", b);
        }
    }
//    public static void main(String[] args) {
//        // TODO code application logic here
//         String inputString = "This is simple that contains phone number - 3805050 55 050  That's great.";
////        String pattern = "((\\+|\\-)((\\s)*(\\d)+(\\s)*)+ )";
//         String pattern = "(\\S)+";
//
//        Pattern ptrn = Pattern.compile(pattern);
//        Matcher matcher = ptrn.matcher(inputString);
//        inputString.matches(pattern);
//
//        if(matcher.find()){
//            System.out.println("Phone number: " + matcher.group(0));
//        }else {
//            System.out.println("PHONE NUMBER NOT FOUND");
//        }
    }
    

