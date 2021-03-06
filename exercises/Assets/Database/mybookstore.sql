U S E   [ m y b o o k s t o r e ]  
  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ a u t h o r s ]   * * * * * * /  
 I F     E X I S T S   ( S E L E C T   *   F R O M   s y s . o b j e c t s   W H E R E   o b j e c t _ i d   =   O B J E C T _ I D ( N ' [ d b o ] . [ a u t h o r s ] ' )   A N D   t y p e   i n   ( N ' U ' ) )  
 D R O P   T A B L E   [ d b o ] . [ a u t h o r s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ p u b l i s h e r s ]   * * * * * * /  
 I F     E X I S T S   ( S E L E C T   *   F R O M   s y s . o b j e c t s   W H E R E   o b j e c t _ i d   =   O B J E C T _ I D ( N ' [ d b o ] . [ p u b l i s h e r s ] ' )   A N D   t y p e   i n   ( N ' U ' ) )  
 D R O P   T A B L E   [ d b o ] . [ p u b l i s h e r s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ t i t l e s ]   * * * * * * /  
 I F     E X I S T S   ( S E L E C T   *   F R O M   s y s . o b j e c t s   W H E R E   o b j e c t _ i d   =   O B J E C T _ I D ( N ' [ d b o ] . [ t i t l e s ] ' )   A N D   t y p e   i n   ( N ' U ' ) )  
 D R O P   T A B L E   [ d b o ] . [ t i t l e s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ u s e r s ]   * * * * * * /  
 I F     E X I S T S   ( S E L E C T   *   F R O M   s y s . o b j e c t s   W H E R E   o b j e c t _ i d   =   O B J E C T _ I D ( N ' [ d b o ] . [ u s e r s ] ' )   A N D   t y p e   i n   ( N ' U ' ) )  
 D R O P   T A B L E   [ d b o ] . [ u s e r s ]  
 G O  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ u s e r s ]   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 I F   N O T   E X I S T S   ( S E L E C T   *   F R O M   s y s . o b j e c t s   W H E R E   o b j e c t _ i d   =   O B J E C T _ I D ( N ' [ d b o ] . [ u s e r s ] ' )   A N D   t y p e   i n   ( N ' U ' ) )  
 B E G I N  
 C R E A T E   T A B L E   [ d b o ] . [ u s e r s ] (  
 	 [ u s e r _ i d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ u s e r _ n a m e ]   [ v a r c h a r ] ( 5 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N U L L ,  
 	 [ u s e r _ p a s s w o r d ]   [ v a r c h a r ] ( 5 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N U L L ,  
 	 [ u s e r _ r o l e s ]   [ v a r c h a r ] ( 5 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N U L L ,  
   C O N S T R A I N T   [ P K _ u s e r s ]   P R I M A R Y   K E Y   N O N C L U S T E R E D    
 (  
 	 [ u s e r _ i d ]   A S C  
 ) W I T H   ( P A D _ I N D E X     =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E     =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S     =   O N ,   A L L O W _ P A G E _ L O C K S     =   O N )  
 )  
 E N D  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ u s e r s ]   O N  
 I N S E R T   [ d b o ] . [ u s e r s ]   ( [ u s e r _ i d ] ,   [ u s e r _ n a m e ] ,   [ u s e r _ p a s s w o r d ] ,   [ u s e r _ r o l e s ] )   V A L U E S   ( 1 ,   N ' a d m i n ' ,   N ' a d m i n ' ,   N ' a d m i n ' )  
 I N S E R T   [ d b o ] . [ u s e r s ]   ( [ u s e r _ i d ] ,   [ u s e r _ n a m e ] ,   [ u s e r _ p a s s w o r d ] ,   [ u s e r _ r o l e s ] )   V A L U E S   ( 2 ,   N ' u s e r ' ,   N ' u s e r ' ,   N ' u s e r ' )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ u s e r s ]   O F F  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ t i t l e s ]   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 I F   N O T   E X I S T S   ( S E L E C T   *   F R O M   s y s . o b j e c t s   W H E R E   o b j e c t _ i d   =   O B J E C T _ I D ( N ' [ d b o ] . [ t i t l e s ] ' )   A N D   t y p e   i n   ( N ' U ' ) )  
 B E G I N  
 C R E A T E   T A B L E   [ d b o ] . [ t i t l e s ] (  
 	 [ t i t l e _ i d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ p u b _ i d ]   [ i n t ]   N U L L ,  
 	 [ a u _ i d ]   [ i n t ]   N U L L ,  
 	 [ t i t l e ]   [ v a r c h a r ] ( 8 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N O T   N U L L ,  
 	 [ p r i c e ]   [ m o n e y ]   N U L L ,  
 	 [ p u b d a t e ]   [ d a t e t i m e ]   N U L L ,  
 	 [ n o t e s ]   [ v a r c h a r ] ( 2 0 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N U L L ,  
   C O N S T R A I N T   [ P K _ t i t l e s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ t i t l e _ i d ]   A S C  
 ) W I T H   ( P A D _ I N D E X     =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E     =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S     =   O N ,   A L L O W _ P A G E _ L O C K S     =   O N )  
 )  
 E N D  
 G O  
 I F   N O T   E X I S T S   ( S E L E C T   *   F R O M   s y s . i n d e x e s   W H E R E   o b j e c t _ i d   =   O B J E C T _ I D ( N ' [ d b o ] . [ t i t l e s ] ' )   A N D   n a m e   =   N ' t i t l e i n d ' )  
 C R E A T E   N O N C L U S T E R E D   I N D E X   [ t i t l e i n d ]   O N   [ d b o ] . [ t i t l e s ]    
 (  
 	 [ t i t l e ]   A S C  
 ) W I T H   ( P A D _ I N D E X     =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E     =   O F F ,   S O R T _ I N _ T E M P D B   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   D R O P _ E X I S T I N G   =   O F F ,   O N L I N E   =   O F F ,   A L L O W _ R O W _ L O C K S     =   O N ,   A L L O W _ P A G E _ L O C K S     =   O N )  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ t i t l e s ]   O N  
 I N S E R T   [ d b o ] . [ t i t l e s ]   ( [ t i t l e _ i d ] ,   [ p u b _ i d ] ,   [ a u _ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ p u b d a t e ] ,   [ n o t e s ] )   V A L U E S   ( 1 ,   6 ,   1 9 ,   N ' C o m p u t e r   P h o b i c   A N D   N o n - P h o b i c   I n d i v i d u a l s :   B e h a v i o r   V a r i a t i o n s ' ,   2 1 . 5 9 0 0 ,   C A S T ( 0 x 0 0 0 0 9 2 F 4 0 0 0 0 0 0 0 0   A S   D a t e T i m e ) ,   N ' A   m u s t   f o r   t h e   s p e c i a l i s t ,   t h i s   b o o k   e x a m i n e s   t h e   d i f f e r e n c e   b e t w e e n   t h o s e   w h o   h a t e   a n d   f e a r   c o m p u t e r s   a n d   t h o s e   w h o   d o n ' ' t . ' )  
 I N S E R T   [ d b o ] . [ t i t l e s ]   ( [ t i t l e _ i d ] ,   [ p u b _ i d ] ,   [ a u _ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ p u b d a t e ] ,   [ n o t e s ] )   V A L U E S   ( 2 ,   6 ,   1 1 ,   N ' T h e   G o u r m e t   M i c r o w a v e ' ,   2 . 9 9 0 0 ,   C A S T ( 0 x 0 0 0 0 8 B 0 D 0 0 0 0 0 0 0 0   A S   D a t e T i m e ) ,   N ' T r a d i t i o n a l   F r e n c h   g o u r m e t   r e c i p e s   a d a p t e d   f o r   m o d e r n   m i c r o w a v e   c o o k i n g . ' )  
 I N S E R T   [ d b o ] . [ t i t l e s ]   ( [ t i t l e _ i d ] ,   [ p u b _ i d ] ,   [ a u _ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ p u b d a t e ] ,   [ n o t e s ] )   V A L U E S   ( 3 ,   4 ,   2 1 ,   N ' P r o l o n g e d   D a t a   D e p r i v a t i o n :   F o u r   C a s e   S t u d i e s ' ,   1 9 . 9 9 0 0 ,   C A S T ( 0 x 0 0 0 0 9 0 B C 0 0 0 0 0 0 0 0   A S   D a t e T i m e ) ,   N ' W h a t   h a p p e n s   w h e n   t h e   d a t a   r u n s   d r y ?     S e a r c h i n g   e v a l u a t i o n s   o f   i n f o r m a t i o n - s h o r t a g e   e f f e c t s . ' )  
 I N S E R T   [ d b o ] . [ t i t l e s ]   ( [ t i t l e _ i d ] ,   [ p u b _ i d ] ,   [ a u _ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ p u b d a t e ] ,   [ n o t e s ] )   V A L U E S   ( 4 ,   7 ,   2 0 ,   N ' C o o k i n g   w i t h   C o m p u t e r s :   S u r r e p t i t i o u s   B a l a n c e   S h e e t s ' ,   1 1 . 9 5 0 0 ,   C A S T ( 0 x 0 0 0 0 8 F 4 C 0 0 0 0 0 0 0 0   A S   D a t e T i m e ) ,   N ' H e l p f u l   h i n t s   o n   h o w   t o   u s e   y o u r   e l e c t r o n i c   r e s o u r c e s   t o   t h e   b e s t   a d v a n t a g e . ' )  
 I N S E R T   [ d b o ] . [ t i t l e s ]   ( [ t i t l e _ i d ] ,   [ p u b _ i d ] ,   [ a u _ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ p u b d a t e ] ,   [ n o t e s ] )   V A L U E S   ( 5 ,   4 ,   1 ,   N ' Y o u   C a n   C o m b a t   C o m p u t e r   S t r e s s ! ' ,   2 . 9 9 0 0 ,   C A S T ( 0 x 0 0 0 0 9 2 F 8 0 0 0 0 0 0 0 0   A S   D a t e T i m e ) ,   N ' T h e   l a t e s t   m e d i c a l   a n d   p s y c h o l o g i c a l   t e c h n i q u e s   f o r   l i v i n g   w i t h   t h e   e l e c t r o n i c   o f f i c e .   E a s y - t o - u n d e r s t a n d   e x p l a n a t i o n s . ' )  
 I N S E R T   [ d b o ] . [ t i t l e s ]   ( [ t i t l e _ i d ] ,   [ p u b _ i d ] ,   [ a u _ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ p u b d a t e ] ,   [ n o t e s ] )   V A L U E S   ( 6 ,   7 ,   2 2 ,   N ' T h e   B u s y   E x e c u t i v e ' ' s   D a t a b a s e   G u i d e ' ,   1 9 . 9 9 0 0 ,   C A S T ( 0 x 0 0 0 0 8 D E 1 0 0 0 0 0 0 0 0   A S   D a t e T i m e ) ,   N ' A n   o v e r v i e w   o f   a v a i l a b l e   d a t a b a s e   s y s t e m s   w i t h   e m p h a s i s   o n   c o m m o n   b u s i n e s s   a p p l i c a t i o n s .   I l l u s t r a t e d . ' )  
 I N S E R T   [ d b o ] . [ t i t l e s ]   ( [ t i t l e _ i d ] ,   [ p u b _ i d ] ,   [ a u _ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ p u b d a t e ] ,   [ n o t e s ] )   V A L U E S   ( 7 ,   6 ,   3 ,   N ' O n i o n s ,   L e e k s ,   a n d   G a r l i c :   C o o k i n g   S e c r e t s   o f   t h e   M e d i t e r r a n e a n ' ,   2 0 . 9 5 0 0 ,   C A S T ( 0 x 0 0 0 0 8 B 8 A 0 0 0 0 0 0 0 0   A S   D a t e T i m e ) ,   N ' P r o f u s e l y   i l l u s t r a t e d   i n   c o l o r ,   t h i s   m a k e s   a   w o n d e r f u l   g i f t   b o o k   f o r   a   c u i s i n e - o r i e n t e d   f r i e n d . ' )  
 I N S E R T   [ d b o ] . [ t i t l e s ]   ( [ t i t l e _ i d ] ,   [ p u b _ i d ] ,   [ a u _ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ p u b d a t e ] ,   [ n o t e s ] )   V A L U E S   ( 8 ,   7 ,   1 4 ,   N ' B u t   I s   I t   U s e r   F r i e n d l y ? ' ,   2 2 . 9 5 0 0 ,   C A S T ( 0 x 0 0 0 0 8 C 8 6 0 0 0 0 0 0 0 0   A S   D a t e T i m e ) ,   N ' A   s u r v e y   o f   s o f t w a r e   f o r   t h e   n a i v e   u s e r ,   f o c u s i n g   o n   t h e   ' ' f r i e n d l i n e s s ' '   o f   e a c h . ' )  
 I N S E R T   [ d b o ] . [ t i t l e s ]   ( [ t i t l e _ i d ] ,   [ p u b _ i d ] ,   [ a u _ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ p u b d a t e ] ,   [ n o t e s ] )   V A L U E S   ( 9 ,   6 ,   9 ,   N ' F i f t y   Y e a r s   i n   B u c k i n g h a m   P a l a c e   K i t c h e n s ' ,   1 1 . 9 5 0 0 ,   C A S T ( 0 x 0 0 0 0 8 C 7 4 0 0 0 0 0 0 0 0   A S   D a t e T i m e ) ,   N ' M o r e   a n e c d o t e s   f r o m   t h e   Q u e e n ' ' s   f a v o r i t e   c o o k   d e s c r i b i n g   l i f e   a m o n g   E n g l i s h   r o y a l t y .   R e c i p e s ,   t e c h n i q u e s ,   t e n d e r   v i g n e t t e s . ' )  
 I N S E R T   [ d b o ] . [ t i t l e s ]   ( [ t i t l e _ i d ] ,   [ p u b _ i d ] ,   [ a u _ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ p u b d a t e ] ,   [ n o t e s ] )   V A L U E S   ( 1 0 ,   6 ,   4 ,   N ' S i l i c o n   V a l l e y   G a s t r o n o m i c   T r e a t s ' ,   1 9 . 9 9 0 0 ,   C A S T ( 0 x 0 0 0 0 9 2 F C 0 0 0 0 0 0 0 0   A S   D a t e T i m e ) ,   N ' F a v o r i t e   r e c i p e s   f o r   q u i c k ,   e a s y ,   a n d   e l e g a n t   m e a l s . ' )  
 I N S E R T   [ d b o ] . [ t i t l e s ]   ( [ t i t l e _ i d ] ,   [ p u b _ i d ] ,   [ a u _ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ p u b d a t e ] ,   [ n o t e s ] )   V A L U E S   ( 1 1 ,   6 ,   1 5 ,   N ' S u s h i ,   A n y o n e ? ' ,   1 4 . 9 9 0 0 ,   C A S T ( 0 x 0 0 0 0 8 D E 1 0 0 0 0 0 0 0 0   A S   D a t e T i m e ) ,   N ' D e t a i l e d   i n s t r u c t i o n s   o n   h o w   t o   m a k e   a u t h e n t i c   J a p a n e s e   s u s h i   i n   y o u r   s p a r e   t i m e . ' )  
 I N S E R T   [ d b o ] . [ t i t l e s ]   ( [ t i t l e _ i d ] ,   [ p u b _ i d ] ,   [ a u _ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ p u b d a t e ] ,   [ n o t e s ] )   V A L U E S   ( 1 2 ,   7 ,   8 ,   N ' S e c r e t s   o f   S i l i c o n   V a l l e y ' ,   2 0 . 0 0 0 0 ,   C A S T ( 0 x 0 0 0 0 9 2 F F 0 0 0 0 0 0 0 0   A S   D a t e T i m e ) ,   N ' M u c k r a k i n g   r e p o r t i n g   o n   t h e   w o r l d ' ' s   l a r g e s t   c o m p u t e r   h a r d w a r e   a n d   s o f t w a r e   m a n u f a c t u r e r s . ' )  
 I N S E R T   [ d b o ] . [ t i t l e s ]   ( [ t i t l e _ i d ] ,   [ p u b _ i d ] ,   [ a u _ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ p u b d a t e ] ,   [ n o t e s ] )   V A L U E S   ( 1 3 ,   4 ,   1 2 ,   N ' E m o t i o n a l   S e c u r i t y :   A   N e w   A l g o r i t h m ' ,   7 . 9 9 0 0 ,   C A S T ( 0 x 0 0 0 0 8 C 7 4 0 0 0 0 0 0 0 0   A S   D a t e T i m e ) ,   N ' P r o t e c t i n g   y o u r s e l f   a n d   y o u r   l o v e d   o n e s   f r o m   u n d u e   e m o t i o n a l   s t r e s s   i n   t h e   m o d e r n   w o r l d .   U s e   o f   c o m p u t e r   a n d   n u t r i t i o n a l   a i d s   e m p h a s i z e d . ' )  
 I N S E R T   [ d b o ] . [ t i t l e s ]   ( [ t i t l e _ i d ] ,   [ p u b _ i d ] ,   [ a u _ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ p u b d a t e ] ,   [ n o t e s ] )   V A L U E S   ( 1 4 ,   7 ,   1 2 ,   N ' N e t   E t i q u e t t e ' ,   N U L L ,   C A S T ( 0 x 0 0 0 0 8 F 8 6 0 0 0 0 0 0 0 0   A S   D a t e T i m e ) ,   N ' A   m u s t - r e a d   f o r   c o m p u t e r   c o n f e r e n c i n g . ' )  
 I N S E R T   [ d b o ] . [ t i t l e s ]   ( [ t i t l e _ i d ] ,   [ p u b _ i d ] ,   [ a u _ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ p u b d a t e ] ,   [ n o t e s ] )   V A L U E S   ( 1 5 ,   7 ,   6 ,   N ' S t r a i g h t   T a l k   A b o u t   C o m p u t e r s ' ,   1 9 . 9 9 0 0 ,   C A S T ( 0 x 0 0 0 0 9 2 3 3 0 0 0 0 0 0 0 0   A S   D a t e T i m e ) ,   N ' A n n o t a t e d   a n a l y s i s   o f   w h a t   c o m p u t e r s   c a n   d o   f o r   y o u :   a   n o - h y p e   g u i d e   f o r   t h e   c r i t i c a l   u s e r . ' )  
 I N S E R T   [ d b o ] . [ t i t l e s ]   ( [ t i t l e _ i d ] ,   [ p u b _ i d ] ,   [ a u _ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ p u b d a t e ] ,   [ n o t e s ] )   V A L U E S   ( 1 6 ,   4 ,   1 8 ,   N ' L i f e   W i t h o u t   F e a r ' ,   7 . 0 0 0 0 ,   C A S T ( 0 x 0 0 0 0 9 2 9 C 0 0 0 0 0 0 0 0   A S   D a t e T i m e ) ,   N ' N e w   e x e r c i s e ,   m e d i t a t i o n ,   a n d   n u t r i t i o n a l   t e c h n i q u e s   t h a t   c a n   r e d u c e   t h e   s h o c k   o f   d a i l y   i n t e r a c t i o n s .   P o p u l a r   a u d i e n c e .   S a m p l e   m e n u s   i n c l u d e d ,   e x e r c i s e   v i d e o   a v a i l a b l e   s e p a r a t e l y . ' )  
 I N S E R T   [ d b o ] . [ t i t l e s ]   ( [ t i t l e _ i d ] ,   [ p u b _ i d ] ,   [ a u _ i d ] ,   [ t i t l e ] ,   [ p r i c e ] ,   [ p u b d a t e ] ,   [ n o t e s ] )   V A L U E S   ( 1 7 ,   4 ,   1 8 ,   N ' I s   A n g e r   t h e   E n e m y ? ' ,   1 0 . 9 5 0 0 ,   C A S T ( 0 x 0 0 0 0 9 2 2 C 0 0 0 0 0 0 0 0   A S   D a t e T i m e ) ,   N ' C a r e f u l l y   r e s e a r c h e d   s t u d y   o f   t h e   e f f e c t s   o f   s t r o n g   e m o t i o n s   o n   t h e   b o d y .   M e t a b o l i c   c h a r t s   i n c l u d e d . ' )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ t i t l e s ]   O F F  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ p u b l i s h e r s ]   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 I F   N O T   E X I S T S   ( S E L E C T   *   F R O M   s y s . o b j e c t s   W H E R E   o b j e c t _ i d   =   O B J E C T _ I D ( N ' [ d b o ] . [ p u b l i s h e r s ] ' )   A N D   t y p e   i n   ( N ' U ' ) )  
 B E G I N  
 C R E A T E   T A B L E   [ d b o ] . [ p u b l i s h e r s ] (  
 	 [ p u b _ i d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ p u b _ n a m e ]   [ v a r c h a r ] ( 4 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N U L L ,  
   C O N S T R A I N T   [ P K _ p u b l i s h e r s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ p u b _ i d ]   A S C  
 ) W I T H   ( P A D _ I N D E X     =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E     =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S     =   O N ,   A L L O W _ P A G E _ L O C K S     =   O N )  
 )  
 E N D  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ p u b l i s h e r s ]   O N  
 I N S E R T   [ d b o ] . [ p u b l i s h e r s ]   ( [ p u b _ i d ] ,   [ p u b _ n a m e ] )   V A L U E S   ( 1 ,   N ' G G G & G ' )  
 I N S E R T   [ d b o ] . [ p u b l i s h e r s ]   ( [ p u b _ i d ] ,   [ p u b _ n a m e ] )   V A L U E S   ( 2 ,   N ' R a m o n a   P u b l i s h e r s ' )  
 I N S E R T   [ d b o ] . [ p u b l i s h e r s ]   ( [ p u b _ i d ] ,   [ p u b _ n a m e ] )   V A L U E S   ( 3 ,   N ' F i v e   L a k e s   P u b l i s h i n g ' )  
 I N S E R T   [ d b o ] . [ p u b l i s h e r s ]   ( [ p u b _ i d ] ,   [ p u b _ n a m e ] )   V A L U E S   ( 4 ,   N ' N e w   M o o n   B o o k s ' )  
 I N S E R T   [ d b o ] . [ p u b l i s h e r s ]   ( [ p u b _ i d ] ,   [ p u b _ n a m e ] )   V A L U E S   ( 5 ,   N ' S c o o t n e y   B o o k s ' )  
 I N S E R T   [ d b o ] . [ p u b l i s h e r s ]   ( [ p u b _ i d ] ,   [ p u b _ n a m e ] )   V A L U E S   ( 6 ,   N ' B i n n e t   &   H a r d l e y ' )  
 I N S E R T   [ d b o ] . [ p u b l i s h e r s ]   ( [ p u b _ i d ] ,   [ p u b _ n a m e ] )   V A L U E S   ( 7 ,   N ' A l g o d a t a   I n f o s y s t e m s ' )  
 I N S E R T   [ d b o ] . [ p u b l i s h e r s ]   ( [ p u b _ i d ] ,   [ p u b _ n a m e ] )   V A L U E S   ( 8 ,   N ' L u c e r n e   P u b l i s h i n g ' )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ p u b l i s h e r s ]   O F F  
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ a u t h o r s ]   * * * * * * /  
 S E T   A N S I _ N U L L S   O N  
 G O  
 S E T   Q U O T E D _ I D E N T I F I E R   O N  
 G O  
 I F   N O T   E X I S T S   ( S E L E C T   *   F R O M   s y s . o b j e c t s   W H E R E   o b j e c t _ i d   =   O B J E C T _ I D ( N ' [ d b o ] . [ a u t h o r s ] ' )   A N D   t y p e   i n   ( N ' U ' ) )  
 B E G I N  
 C R E A T E   T A B L E   [ d b o ] . [ a u t h o r s ] (  
 	 [ a u _ i d ]   [ i n t ]   I D E N T I T Y ( 1 , 1 )   N O T   N U L L ,  
 	 [ a u _ l n a m e ]   [ v a r c h a r ] ( 4 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N O T   N U L L ,  
 	 [ a u _ f n a m e ]   [ v a r c h a r ] ( 2 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N O T   N U L L ,  
 	 [ p h o n e ]   [ c h a r ] ( 1 2 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N O T   N U L L ,  
 	 [ a d d r e s s ]   [ v a r c h a r ] ( 4 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N U L L ,  
 	 [ c i t y ]   [ v a r c h a r ] ( 2 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N U L L ,  
 	 [ s t a t e ]   [ c h a r ] ( 2 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N U L L ,  
 	 [ z i p ]   [ c h a r ] ( 5 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N U L L ,  
   C O N S T R A I N T   [ P K _ a u t h o r s ]   P R I M A R Y   K E Y   C L U S T E R E D    
 (  
 	 [ a u _ i d ]   A S C  
 ) W I T H   ( P A D _ I N D E X     =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E     =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S     =   O N ,   A L L O W _ P A G E _ L O C K S     =   O N )  
 )  
 E N D  
 G O  
 I F   N O T   E X I S T S   ( S E L E C T   *   F R O M   s y s . i n d e x e s   W H E R E   o b j e c t _ i d   =   O B J E C T _ I D ( N ' [ d b o ] . [ a u t h o r s ] ' )   A N D   n a m e   =   N ' a u n m i n d ' )  
 C R E A T E   N O N C L U S T E R E D   I N D E X   [ a u n m i n d ]   O N   [ d b o ] . [ a u t h o r s ]    
 (  
 	 [ a u _ l n a m e ]   A S C ,  
 	 [ a u _ f n a m e ]   A S C  
 ) W I T H   ( P A D _ I N D E X     =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E     =   O F F ,   S O R T _ I N _ T E M P D B   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   D R O P _ E X I S T I N G   =   O F F ,   O N L I N E   =   O F F ,   A L L O W _ R O W _ L O C K S     =   O N ,   A L L O W _ P A G E _ L O C K S     =   O N )  
 G O  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ a u t h o r s ]   O N  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 1 ,   N ' G r e e n ' ,   N ' M a r j o r i e ' ,   N ' 4 1 5   9 8 6 - 7 0 2 0 ' ,   N ' 3 0 9   6 3 r d   S t .   # 4 1 1 ' ,   N ' O a k l a n d ' ,   N ' C A ' ,   N ' 9 4 6 1 8 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 2 ,   N ' D u l l ' ,   N ' A n n ' ,   N ' 4 1 5   8 3 6 - 7 1 2 8 ' ,   N ' 3 4 1 0   B l o n d e   S t . ' ,   N ' P a l o   A l t o ' ,   N ' C A ' ,   N ' 9 4 3 0 1 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 3 ,   N ' P a n t e l e y ' ,   N ' S y l v i a ' ,   N ' 3 0 1   9 4 6 - 8 8 5 3 ' ,   N ' 1 9 5 6   A r l i n g t o n   P l . ' ,   N ' R o c k v i l l e ' ,   N ' M D ' ,   N ' 2 0 8 5 3 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 4 ,   N ' d e l   C a s t i l l o ' ,   N ' I n n e s ' ,   N ' 6 1 5   9 9 6 - 8 2 7 5 ' ,   N ' 2 2 8 6   C r a m   P l .   # 8 6 ' ,   N ' A n n   A r b o r ' ,   N ' M I ' ,   N ' 4 8 1 0 5 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 5 ,   N ' S m i t h ' ,   N ' M e a n d e r ' ,   N ' 9 1 3   8 4 3 - 0 4 6 2 ' ,   N ' 1 0   M i s s i s s i p p i   D r . ' ,   N ' L a w r e n c e ' ,   N ' K S ' ,   N ' 6 6 0 4 4 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 6 ,   N ' S t r a i g h t ' ,   N ' D e a n ' ,   N ' 4 1 5   8 3 4 - 2 9 1 9 ' ,   N ' 5 4 2 0   C o l l e g e   A v . ' ,   N ' O a k l a n d ' ,   N ' C A ' ,   N ' 9 4 6 0 9 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 7 ,   N ' O ' ' L e a r y ' ,   N ' M i c h a e l ' ,   N ' 4 0 8   2 8 6 - 2 4 2 8 ' ,   N ' 2 2   C l e v e l a n d   A v .   # 1 4 ' ,   N ' S a n   J o s e ' ,   N ' C A ' ,   N ' 9 5 1 2 8 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 8 ,   N ' H u n t e r ' ,   N ' S h e r y l ' ,   N ' 4 1 5   8 3 6 - 7 1 2 8 ' ,   N ' 3 4 1 0   B l o n d e   S t . ' ,   N ' P a l o   A l t o ' ,   N ' C A ' ,   N ' 9 4 3 0 1 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 9 ,   N ' B l o t c h e t - H a l l s ' ,   N ' R e g i n a l d ' ,   N ' 5 0 3   7 4 5 - 6 4 0 2 ' ,   N ' 5 5   H i l l s d a l e   B l . ' ,   N ' C o r v a l l i s ' ,   N ' O R ' ,   N ' 9 7 3 3 0 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 1 0 ,   N ' M c B a d d e n ' ,   N ' H e a t h e r ' ,   N ' 7 0 7   4 4 8 - 4 9 8 2 ' ,   N ' 3 0 1   P u t n a m ' ,   N ' V a c a v i l l e ' ,   N ' C A ' ,   N ' 9 5 6 8 8 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 1 1 ,   N ' R i n g e r ' ,   N ' A n n e ' ,   N ' 8 0 1   8 2 6 - 0 7 5 2 ' ,   N ' 6 7   S e v e n t h   A v . ' ,   N ' S a l t   L a k e   C i t y ' ,   N ' U T ' ,   N ' 8 4 1 5 2 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 1 2 ,   N ' L o c k s l e y ' ,   N ' C h a r l e n e ' ,   N ' 4 1 5   5 8 5 - 4 6 2 0 ' ,   N ' 1 8   B r o a d w a y   A v . ' ,   N ' S a n   F r a n c i s c o ' ,   N ' C A ' ,   N ' 9 4 1 3 0 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 1 3 ,   N ' S t r i n g e r ' ,   N ' D i r k ' ,   N ' 4 1 5   8 4 3 - 2 9 9 1 ' ,   N ' 5 4 2 0   T e l e g r a p h   A v . ' ,   N ' O a k l a n d ' ,   N ' C A ' ,   N ' 9 4 6 0 9 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 1 4 ,   N ' C a r s o n ' ,   N ' C h e r y l ' ,   N ' 4 1 5   5 4 8 - 7 7 2 3 ' ,   N ' 5 8 9   D a r w i n   L n . ' ,   N ' B e r k e l e y ' ,   N ' C A ' ,   N ' 9 4 7 0 5 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 1 5 ,   N ' Y o k o m o t o ' ,   N ' A k i k o ' ,   N ' 4 1 5   9 3 5 - 4 2 2 8 ' ,   N ' 3   S i l v e r   C t . ' ,   N ' W a l n u t   C r e e k ' ,   N ' C A ' ,   N ' 9 4 5 9 5 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 1 6 ,   N ' G r i n g l e s b y ' ,   N ' B u r t ' ,   N ' 7 0 7   9 3 8 - 6 4 4 5 ' ,   N ' P O   B o x   7 9 2 ' ,   N ' C o v e l o ' ,   N ' C A ' ,   N ' 9 5 4 2 8 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 1 7 ,   N ' D e F r a n c e ' ,   N ' M i c h e l ' ,   N ' 2 1 9   5 4 7 - 9 9 8 2 ' ,   N ' 3   B a l d i n g   P l . ' ,   N ' G a r y ' ,   N ' I N ' ,   N ' 4 6 4 0 3 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 1 8 ,   N ' R i n g e r ' ,   N ' A l b e r t ' ,   N ' 8 0 1   8 2 6 - 0 7 5 2 ' ,   N ' 6 7   S e v e n t h   A v . ' ,   N ' S a l t   L a k e   C i t y ' ,   N ' U T ' ,   N ' 8 4 1 5 2 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 1 9 ,   N ' K a r s e n ' ,   N ' L i v i a ' ,   N ' 4 1 5   5 3 4 - 9 2 1 9 ' ,   N ' 5 7 2 0   M c A u l e y   S t . ' ,   N ' O a k l a n d ' ,   N ' C A ' ,   N ' 9 4 6 0 9 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 2 0 ,   N ' M a c F e a t h e r ' ,   N ' S t e a r n s ' ,   N ' 4 1 5   3 5 4 - 7 1 2 8 ' ,   N ' 4 4   U p l a n d   H t s . ' ,   N ' O a k l a n d ' ,   N ' C A ' ,   N ' 9 4 6 1 2 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 2 1 ,   N ' W h i t e ' ,   N ' J o h n s o n ' ,   N ' 4 0 8   4 9 6 - 7 2 2 3 ' ,   N ' 1 0 9 3 2   B i g g e   R d . ' ,   N ' M e n l o   P a r k ' ,   N ' C A ' ,   N ' 9 4 0 2 5 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 2 2 ,   N ' B e n n e t ' ,   N ' A b r a h a m ' ,   N ' 4 1 5   6 5 8 - 9 9 3 2 ' ,   N ' 6 2 2 3   B a t e m a n   S t . ' ,   N ' B e r k e l e y ' ,   N ' C A ' ,   N ' 9 4 7 0 5 ' )  
 I N S E R T   [ d b o ] . [ a u t h o r s ]   ( [ a u _ i d ] ,   [ a u _ l n a m e ] ,   [ a u _ f n a m e ] ,   [ p h o n e ] ,   [ a d d r e s s ] ,   [ c i t y ] ,   [ s t a t e ] ,   [ z i p ] )   V A L U E S   ( 2 3 ,   N ' G r e e n e ' ,   N ' M o r n i n g s t a r ' ,   N ' 6 1 5   2 9 7 - 2 7 2 3 ' ,   N ' 2 2   G r a y b a r   H o u s e   R d . ' ,   N ' N a s h v i l l e ' ,   N ' T N ' ,   N ' 3 7 2 1 5 ' )  
 S E T   I D E N T I T Y _ I N S E R T   [ d b o ] . [ a u t h o r s ]   O F F  
 G R A N T   D E L E T E   O N   [ d b o ] . [ a u t h o r s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   I N S E R T   O N   [ d b o ] . [ a u t h o r s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   R E F E R E N C E S   O N   [ d b o ] . [ a u t h o r s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   S E L E C T   O N   [ d b o ] . [ a u t h o r s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   U P D A T E   O N   [ d b o ] . [ a u t h o r s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   A L T E R   O N   [ d b o ] . [ p u b l i s h e r s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   C O N T R O L   O N   [ d b o ] . [ p u b l i s h e r s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   D E L E T E   O N   [ d b o ] . [ p u b l i s h e r s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   I N S E R T   O N   [ d b o ] . [ p u b l i s h e r s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   R E F E R E N C E S   O N   [ d b o ] . [ p u b l i s h e r s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   S E L E C T   O N   [ d b o ] . [ p u b l i s h e r s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   T A K E   O W N E R S H I P   O N   [ d b o ] . [ p u b l i s h e r s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   U P D A T E   O N   [ d b o ] . [ p u b l i s h e r s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   D E L E T E   O N   [ d b o ] . [ t i t l e s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   I N S E R T   O N   [ d b o ] . [ t i t l e s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   R E F E R E N C E S   O N   [ d b o ] . [ t i t l e s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   S E L E C T   O N   [ d b o ] . [ t i t l e s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   U P D A T E   O N   [ d b o ] . [ t i t l e s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   D E L E T E   O N   [ d b o ] . [ u s e r s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   I N S E R T   O N   [ d b o ] . [ u s e r s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   R E F E R E N C E S   O N   [ d b o ] . [ u s e r s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   S E L E C T   O N   [ d b o ] . [ u s e r s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 G R A N T   U P D A T E   O N   [ d b o ] . [ u s e r s ]   T O   [ g u e s t ]   A S   [ d b o ]  
 G O  
 