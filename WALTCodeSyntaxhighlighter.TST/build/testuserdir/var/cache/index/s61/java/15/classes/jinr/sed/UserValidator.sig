����   3 �
 B p	 A q	 A r \
 d s t u
  v w x y
 d z
 c { |
 d } ^
  ~  �
 A �
 � �
 A � � �
  �
  � V
  �
 A �
 c � � � �
  � �
 A � � � �	 � � �
 � �
 ' � _
 c �	 A �
 � �
  �	 A � �
  � �
 4 p �
 4 � �
 4 �
 � � � �
 c � �
 � � � � � accRightsTuner Ldubna/walt/util/Tuner; queryNum I <init> ()V Code LineNumberTable LocalVariableTable this Ljinr/sed/UserValidator; validate $(Ldubna/walt/util/ResourceManager;)Z st Ljava/util/StringTokenizer; fp0 Ljava/lang/String; sess_id user_id login checked_user_id e Ljava/lang/Exception; rm !Ldubna/walt/util/ResourceManager; cfgTuner q_name q c log Z StackMapTable � � 
Exceptions #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; makeUsersTuner $(Ldubna/walt/util/ResourceManager;)V getVUser M(Ljava/lang/String;Ldubna/walt/util/Tuner;Ldubna/walt/util/ResourceManager;)V a getAccRightsTuner 
SourceFile UserValidator.java G H C D E F � � dubna/walt/util/Tuner logged � � VU playMode loginCookieName � � � � cwl � � � � request %javax/servlet/http/HttpServletRequest � � � � � � i java/util/StringTokenizer : G � � � � � � � � � YES SESS_ID USER_ID � � loginURL j k   FIO java/lang/Exception � � � % =========== UserValidator Exception: � � � � � � � � � � � H G � � D q_vu_id � � java/lang/StringBuilder #======= getVUser() ======= user_id= � � => � � � � � 5,2309,413,2584,8329,4790,4241,8389,3311,97,4206,3663, , � �  - OK � �  - REJECTED! jinr/sed/UserValidator dubna/walt/util/UserValidator java/lang/String dubna/walt/util/ResourceManager 	getObject &(Ljava/lang/String;)Ljava/lang/Object; deleteParameter (Ljava/lang/String;)V 	getString '(Ljava/lang/String;Z)Ljava/lang/String; length ()I setParam ((Ljava/lang/String;Ljava/lang/String;Z)V getParameter &(Ljava/lang/String;)Ljava/lang/String; getCookieValue M(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Ljava/lang/String; dubna/walt/util/StrUtil unescape makeLoginDBUtil '(Ljava/lang/String;Ljava/lang/String;)V 	nextToken ()Ljava/lang/String; addParameter 
checkLogin G(Ljava/lang/String;Ldubna/walt/util/ResourceManager;)Ljava/lang/String; equals (Ljava/lang/Object;)Z setParameterSession java/lang/System out Ljava/io/PrintStream; java/io/PrintStream println printStackTrace (Ljava/io/PrintStream;)V indexOf (Ljava/lang/String;)I dbUtilLogin Ldubna/walt/util/DBUtil; dubna/walt/util/DBUtil close [([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldubna/walt/util/ResourceManager;)V 
usersTuner enabledOption (Ljava/lang/String;)Z append -(Ljava/lang/String;)Ljava/lang/StringBuilder; toString dubna/walt/util/IOUtil writeLog 6(Ljava/lang/String;Ldubna/walt/util/ResourceManager;)V contains (Ljava/lang/CharSequence;)Z 
writeLogLn ! A B     C D    E F     G H  I   A     *� *� *� �    J         	 	 
 K        L M   ! N O  I  -    =+� � M,� ,	� ,
� +� N-� � N+-� ,� :� � *+� � -� :� :*+� � 
� �� Y� :� :� :� :� :	,	� *+� :

� � +,� , � ,!� ",#� *,+� $�,� , � ,!%� ",&� � :� ()� *� (� +,,� :� -� � 6*� .� *� .� /� :*� .�  n � � ' � � � ')03 '  J   � ,    
        $  ,  /  7  ?  H  X ! _ % d ' n ) { * � + � , � - � . � 1 � 4 � 5 � 6 � 7 � : � ? � @ � B � C � D � E � K � H � I J	 M N" Q) S0 U3 T5 V: X K   �  { y P Q  � r R S  � k T S  � d U S  � ] V S 	 � L W S 
 �  X Y   = L M    = Z [  
3 \ D  $ ] S  ? � ^ S  , _ S "  ` a  b   z 
� 7  c�   c� �  A d  c c  c c c c c  �   A d  c c  '�  c@�   A d  c c c  ' e     ' f     g    h i  I   h     � Y+� 0� 1� M�      '  J       `  b  a  c K        L M      Z [  b    Q '  f     g    j k  I       �,2� 3� �� 4Y� 56� 7+� 78� 7,2� � 7� 9-� :;:� 4Y� 5<� 7+� 7<� 7� 9� =� $,	,!� � ",!,2� � ">-� ?� ,	� ",2� @-� ?�    J   .    k 	 l . m 2 p R q ^ r j s s u z v � w � z K   4  2 T l S    � L M     � U S    � \ D    � Z [  b    � s c�   m i  I   5      �    J       ~ K        L M      Z [   n    o