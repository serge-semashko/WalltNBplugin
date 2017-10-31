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

import org.netbeans.api.lexer.TokenId;
import org.netbeans.api.lexer.Language;

/**
 *
 * @author Herbert Roider <herbert.roider@utanet.at>
 */
public class NCTokenId implements TokenId {

        private final String name;
        private final String primaryCategory;
        public  int id;

        NCTokenId(
                String name,
                String primaryCategory,
                int id) {
                this.name = name;
                this.primaryCategory = primaryCategory;
                this.id = id;
        }

        @Override
        public String primaryCategory() {
                return primaryCategory;
        }

        @Override
        public int ordinal() {
                return id;
        }

        @Override
        public String name() {
                return name;
        }

        public static Language<NCTokenId> getLanguage() {
                return new NCLanguageHierarchy().language();
        }
}
