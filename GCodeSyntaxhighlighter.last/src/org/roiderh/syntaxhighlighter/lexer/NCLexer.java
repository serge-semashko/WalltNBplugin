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

import org.netbeans.spi.lexer.Lexer;
import org.netbeans.spi.lexer.LexerRestartInfo;
import org.roiderh.syntaxhighlighter.jcclexer.JavaCharStream;
import org.roiderh.syntaxhighlighter.jcclexer.NcParserTokenManager;
import org.roiderh.syntaxhighlighter.jcclexer.Token;

class NCLexer implements Lexer<NCTokenId> {

    private LexerRestartInfo<NCTokenId> info;
    private NcParserTokenManager ncParserTokenManager;
    private int curTokenId = 0;

    NCLexer(LexerRestartInfo<NCTokenId> info) {
        this.info = info;
        System.out.println("ncLexer" + curTokenId);
        JavaCharStream stream = new JavaCharStream(info.input());
        ncParserTokenManager = new NcParserTokenManager(stream);
    }

    @Override
    public org.netbeans.api.lexer.Token<NCTokenId> nextToken() {
        return null;
//        while (!info.input().consumeNewline()) {
//            int s = info.input().read();
//            if (s < 0) {
//                break;
//            }
//        }
//        if (info.input().readLength() < 1) {
//            return null;
//        }
//        curTokenId = ((curTokenId + 1) % 12);
//        if (curTokenId==0) curTokenId = 1;
//        org.netbeans.api.lexer.Token rettoken;
//        rettoken = info.tokenFactory().createToken(NCLanguageHierarchy.getToken(curTokenId));
//        System.out.println("retToken='" + rettoken.length() + "' tokid:" + curTokenId);
//        return rettoken;
    }

    @Override
    public Object state() {
        return null;
    }

    @Override
    public void release() {
    }

}
