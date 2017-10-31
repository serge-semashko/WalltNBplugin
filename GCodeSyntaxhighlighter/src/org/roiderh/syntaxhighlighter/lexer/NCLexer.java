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

    NCLexer(LexerRestartInfo<NCTokenId> info) {
        this.info = info;
        JavaCharStream stream = new JavaCharStream(info.input());
        ncParserTokenManager = new NcParserTokenManager(stream);
    }

    @Override
    public org.netbeans.api.lexer.Token<NCTokenId> nextToken() {
        Token token = ncParserTokenManager.getNextToken();
        System.out.println("Token='"+token.image+ "' kind:"+token.kind+ " beginL:"+Integer.toString(token.beginLine)+ " endL:"+token.endLine + " beginCol:"+token.beginColumn+ " endCol:"+token.endColumn);
        if (info.input().readLength() < 1) {
           System.out.println("Token = NULL len = "+info.input().readLength()+" READ = "+info.input().read());
            return null;
        }
        System.out.println("Token = '"+token.image+"' len="+info.input().readLength());
        return info.tokenFactory().createToken(NCLanguageHierarchy.getToken(token.kind));
    }

    @Override
    public Object state() {
        return null;
    }

    @Override
    public void release() {
    }

}