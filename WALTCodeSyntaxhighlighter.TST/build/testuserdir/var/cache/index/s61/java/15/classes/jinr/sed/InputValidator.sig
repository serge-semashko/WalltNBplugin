����   3
  �	 P �	 P �
 P �
 P � � �
  � �
  �
  �
 � �
 I � �
  �	 � � � �
 � � j � j � j �
 P �
 I � � �
  �
  �
 � � �
 � � � � � q � q � �
 $ � � �
  �	 $ �
 i �	 $ �
 i � �
 P � �
 � � � � j � � �
 $ �	 $ � � �
 i �
 P �
 $ �
 $ � �
 � �
 � � o �
 � � �
 � � � �
 � � � � � �
 I �	 I �	 I �
 I �	 I � � ipl Ljava/util/List; 	Signature +Ljava/util/List<Ljinr/sed/InputParameter;>; rm !Ldubna/walt/util/ResourceManager; <init> $(Ldubna/walt/util/ResourceManager;)V Code LineNumberTable LocalVariableTable this Ljinr/sed/InputValidator; obtainParametersList ()V dbUtil Ldubna/walt/util/DBUtil; sql Ljava/lang/String; rs Ljava/sql/ResultSet; e Ljava/lang/Exception; StackMapTable � � log (Ljava/io/PrintWriter;)V ip Ljinr/sed/InputParameter; pw Ljava/io/PrintWriter; � getParamInfo .(Ljava/lang/String;I)Ljinr/sed/InputParameter; ot name objectTypeId I obtainParamInfo addParamInfo d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljinr/sed/InputParameter; 
docTypesId des 	fieldType 	fieldSize getValidatedValue 9(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String; value 	getErrMsg 
makeDBUtil ()Ldubna/walt/util/DBUtil; conn Ljava/sql/Connection; usr connStr 
SourceFile InputValidator.java W _ Q R U V ^ _ � � Xselect name, ifnull(doc_types_id, ''), des, field_type, field_size from a_param_registry java/lang/StringBuilder :<b>=======  InputValidator.getParametersList() - SQL: </b> � � � � � � � � � java/util/ArrayList � � � .=======  InputValidator.getParametersList()... java/lang/Object � � � � � � � � � y z � _ java/lang/Exception 5=======  InputValidator.getParametersList() - ERROR:  � _ � � <h4> InputValidator: </h4> � � � a<table><tr><td>name</td><td> docTypesId</td><td>fieldType</td><td>fieldSize</td><td>des</td></tr> � � � � � �  jinr/sed/InputParameter k l </table><hr> , � u c { c ,, x s 4select name, type, size from d_fields where type_id= � �  and field_db_name=' ' and is_active=1   3=======  InputValidator.obtainParamInfo() - ERROR:  W	
 r s � � � 
connString � dbDriver database 	connParam dubna/walt/util/DBUtil SED:InputValidator W w w _ w jinr/sed/InputValidator java/lang/String java/sql/ResultSet java/util/Iterator append -(Ljava/lang/String;)Ljava/lang/StringBuilder; toString ()Ljava/lang/String; dubna/walt/util/IOUtil 
writeLogLn 7(ILjava/lang/String;Ldubna/walt/util/ResourceManager;)V 
getResults ((Ljava/lang/String;)Ljava/sql/ResultSet; java/lang/System out Ljava/io/PrintStream; java/io/PrintStream printf <(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream; next ()Z 	getString (I)Ljava/lang/String; getInt (I)I close printStackTrace 6(Ljava/lang/String;Ldubna/walt/util/ResourceManager;)V java/io/PrintWriter println (Ljava/lang/String;)V java/util/List iterator ()Ljava/util/Iterator; hasNext ()Ljava/lang/Object; (I)Ljava/lang/StringBuilder; equals (Ljava/lang/Object;)Z contains (Ljava/lang/CharSequence;)Z java/lang/Integer L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V add length ()I getCheckedValue &(Ljava/lang/String;)Ljava/lang/String; dubna/walt/util/ResourceManager '(Ljava/lang/String;Z)Ljava/lang/String; 9(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String; java/lang/Class forName %(Ljava/lang/String;)Ljava/lang/Class; java/sql/DriverManager getConnection M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection; java/sql/Connection setAutoCommit (Z)V *(Ljava/sql/Connection;Ljava/lang/String;)V DB_MySQL db allocate nrConnsToKeep ! P      Q R  S    T  U V   	  W X  Y   W     *� *� *+� *� �    Z           	 !  "  # [        \ ]      U V   ^ _  Y  w     �*� LM� Y� 	� 
,� 
� *� � +,� N*� Y� � � � � W-�  � .*-�  -�  -�  -�  -�  � W���+� � FL� � Y� � 
+� � 
� � � W+� � Y� � 
+� � 
� *� � �    y |   Z   >    '  (  ) # * ) + 4 , A - J . u 0 y 6 | 1 } 2 � 3 � 4 � 7 [   4   t ` a   q b c  ) P d e  } B f g    � \ ]   h    � A I i j3�   P  � B  k l  Y   �     8+� + � *� � ! M,� " � ,� # � $N-+� %���+&� �    Z       =  >  ? ) @ . A 1 B 7 C [      )  m n    8 \ ]     8 o p  h    �  q�   r s  Y  W     �*� � *� � [� Y� '� 
� ('� 
� N*� � ! :� " � -� # � $:� )+� *� � +-� ,� ����*� � ! N-� " � --� # � $:� )+� *� � +-� *� ����*+� .�    Z   6    O  P  R  S ( T I U a V d X g Z � [ � \ � ^ � _ [   >  I  m n  ( ? t c  �  m n    � \ ]     � u c    � v w  h    � ' i q0� � 	 q/�   x s  Y  �     �� �N*� :� Y� /� 
� 0� 
1� 
+� 
2� 
� :� :�  � 4*+� 0�  �  �  � N� 3 � � *+� 044� W� Y:� � Y� 5� 
� � 
� � � W� � Y� 5� 
� � 
� *� � *+� 044� N-�   � �   Z   N    l  m  o  q  r  s 4 u = v G w i x p y x { � � � } � ~ �  � � � � � � [   R   y ` a  4 S b c  = J d e  � T f g    � \ ]     � u c    � v w   � m n  h   ' � q  P i $ I i j  � B � U  y z  Y   �     (� $Y+,-� 6:*� � 7*� � 8 W�    Z       �  �  � % � [   H    ( \ ]     ( u c    ( { c    ( | c    ( } c    ( ~ w    m n    �  Y   �      ,� 9� 4�*+� ::� 
,� ;�,�    Z       �  � 
 �  �  �  � [   4      \ ]       u c      � c      v w    m n  h   	 
�  $  � �  Y   �     !,� 9� 4�*+� ::� 
,� <�4�    Z       �  � 
 �  �  �  � [   4    ! \ ]     ! u c    ! � c    ! v w    m n  h   	 
�  $  � �  Y  �     �L*� =*� =� >� ?M*� @*� @� >� ?N*� A� B:*� C� B� DW� Y� *� A� B� 
*� E� B� 
*� F� B� 
� *� =� B*� @� B� G:� H � IYJ� KL+� L� M+� N+� O� :L� +�  7 � �   Z   N    �  �  � , � 7 � D � ] � i � � � � � � � � � � � � � � � � � � � � � � � [   H  � $ � �  �  f g    � \ ]    � ` a   � � c  , � o c  7 � � c  h    � �  P I i i i    �    �