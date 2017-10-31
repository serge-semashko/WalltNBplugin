/*
 * Copyright (C) 2014 by Herbert Roider <herbert.roider@utanet.at>
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package org.roiderh.syntaxhighlighter.lexer;

import java.util.*;
import org.netbeans.api.lexer.InputAttributes;
import org.netbeans.api.lexer.LanguagePath;
import org.netbeans.api.lexer.Token;
import org.netbeans.spi.lexer.LanguageEmbedding;
import org.netbeans.spi.lexer.LanguageHierarchy;
import org.netbeans.spi.lexer.Lexer;
import org.netbeans.spi.lexer.LexerRestartInfo;

/**
 *
 * @author Herbert Roider <herbert.roider@utanet.at>
 */
public class NCLanguageHierarchy extends LanguageHierarchy<NCTokenId> {

    private static List<NCTokenId> tokens;
    private static Map<Integer, NCTokenId> idToToken;

    private static void init() {
        tokens = Arrays.asList(new NCTokenId[]{
            new NCTokenId("EOF", "whitespace", 0),
            new NCTokenId("WHITESPACE", "whitespace", 1),
            new NCTokenId("SINGLE_LINE_COMMENT", "URL", 2),
            new NCTokenId("START_EXPRESSION", "comment", 3),
            new NCTokenId("EXPRESSION", "expression", 4),
            new NCTokenId("endEXPRESSION", "expression", 5),
            new NCTokenId("START_PARAM_LIST", "comment", 6),
            new NCTokenId("FUNCTION_CALL", "expression", 7),
            new NCTokenId("LABEL", "comment", 9),
            new NCTokenId("AXIS", "axis", 10),
            new NCTokenId("G", "go", 11),
            new NCTokenId("M", "machine", 12),
            new NCTokenId("TOOL", "tool", 13),
            new NCTokenId("SPEED", "speed", 14),
            new NCTokenId("LPARA", "lpara", 15),
            new NCTokenId("PARA", "keyword", 16),
            new NCTokenId("PROGNR", "prognr", 17),
            new NCTokenId("KEYWORD", "keyword", 18),
            new NCTokenId("INTEGER_LITERAL", "literal", 19),
            new NCTokenId("DECIMAL_LITERAL", "literal", 20),
            new NCTokenId("FLOATING_POINT_LITERAL", "literal", 21),
            new NCTokenId("DECIMAL_FLOATING_POINT_LITERAL", "literal", 22),
            new NCTokenId("DECIMAL_EXPONENT", "literal", 23),
            new NCTokenId("IDENTIFIER", "identifier", 24),
            new NCTokenId("LETTER", "literal", 25),
            new NCTokenId("PART_LETTER", "literal", 26),
            new NCTokenId("ERROR", "error", 27)
        });
        idToToken = new HashMap<Integer, NCTokenId>();
        int i = 0;
        for (NCTokenId token : tokens) {
            //token.id = i;
            idToToken.put(token.ordinal(), token);
            i++;
        }
    }

    static synchronized NCTokenId getToken(int id) {
        if (idToToken == null) {
            init();
        }
        return idToToken.get(id);
    }

    @Override
    protected synchronized Collection<NCTokenId> createTokenIds() {
        if (tokens == null) {
            init();
        }
        return tokens;
    }

    @Override
    protected synchronized Lexer<NCTokenId> createLexer(LexerRestartInfo<NCTokenId> info) {
        return new NCLexer(info);
    }

    @Override
    protected String mimeType() {
        return "text/x-nc";
    }

    @Override
    protected LanguageEmbedding<?> embedding(Token<NCTokenId> token, LanguagePath languagePath, InputAttributes inputAttributes) {
        return null;
    }

}
