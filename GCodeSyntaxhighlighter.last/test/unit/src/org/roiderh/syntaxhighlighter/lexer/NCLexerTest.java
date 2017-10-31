/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.roiderh.syntaxhighlighter.lexer;

import java.util.Vector;
import junit.framework.TestCase;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import org.netbeans.api.lexer.Language;
import org.netbeans.api.lexer.Token;
import org.netbeans.api.lexer.TokenHierarchy;
import org.netbeans.api.lexer.TokenSequence;

/**
 *
 * @author Herbert Roider <herbert@roider.at>
 */
public class NCLexerTest extends TestCase {

        @Test
        public void testLines() {
                String code = new String();
                code = "G1 X2.3 Z=(-0.5*R1); comment\n";
                Vector<Integer> ordinal = new Vector<>();
                ordinal.add(11);
                ordinal.add(1);
                ordinal.add(10);
                ordinal.add(1);
                ordinal.add(10);
                ordinal.add(4);
                ordinal.add(2);
                this.test_token_seq(code, ordinal);

                code = "; G1 X0\n";
                ordinal = new Vector<>();
                ordinal.add(2);
                this.test_token_seq(code, ordinal);

                code = "R1 = ( 3 + 5 )\n";
                ordinal = new Vector<>();
                ordinal.add(13);
                ordinal.add(1);
                ordinal.add(4);
                ordinal.add(1);
                this.test_token_seq(code, ordinal);

                code = "TESTFUNC(1.3,\"ABC\")\n";
                ordinal = new Vector<>();
                ordinal.add(7);
                ordinal.add(1);
                this.test_token_seq(code, ordinal);

                code = "CHR=2 B=-0.1\n";
                ordinal = new Vector<>();
                ordinal.add(18);
                ordinal.add(4);
                ordinal.add(18);
                ordinal.add(4);

                this.test_token_seq(code, ordinal);
                           
        }

        public static TokenSequence<?> seqForText(String text, Language<NCTokenId> language) {
                TokenHierarchy<?> hi = TokenHierarchy.create(text, language);
                return hi.tokenSequence(language);
        }

        public void test_token_seq(String code, Vector<Integer> token_ordinal) {
                TokenSequence<?> ts = NCLexerTest.seqForText(code, NCTokenId.getLanguage());
                System.out.println("---------------------");
                System.out.println(code);
                for (int i = 0; i < token_ordinal.size(); i++) {
                        if (!ts.moveNext()) {
                                break;
                        }
                        Token<?> t = ts.token();
                        NCTokenId t_id = (NCTokenId) t.id();
                        int ordinal = token_ordinal.get(i);
                        System.out.println(ts.index() + " t.token: " + t_id.ordinal() + ", Text: " + t.text() + ", Offset: " + ts.offset());
                        TestCase.assertEquals("Invalid token", ordinal, t_id.ordinal());

                }

        }
}