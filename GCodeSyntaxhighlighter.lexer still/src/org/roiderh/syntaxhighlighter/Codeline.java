/*
 * Copyright (C) 2016 by Herbert Roider <herbert.roider@utanet.at>
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
package org.roiderh.syntaxhighlighter;

/**
 *
 * @author Herbert Roider <herbert@roider.at>
 */
public class Codeline {
     public enum Type {
        // %MPF1000
        PROGNR,
        // T5
        TOOLCHANGE,
        // Comments like: ( hallo ) or ;hallo
        COMMENT,
        // other code
        CODE
    }
    public Type type;
    public String text;
    public int begin;
    public int end; // Linebreak is not included
   
}
