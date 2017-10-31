/*
 */
package dubna.walt.syntaxhighlighter.lexer;

import org.netbeans.api.lexer.TokenId;
import org.netbeans.api.lexer.Language;

/**
 *
 * 
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
