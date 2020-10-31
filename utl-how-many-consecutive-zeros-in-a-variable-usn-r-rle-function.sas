How many consecutive zeros in a variable using r rle function;                                             
                                                                                                           
    Two Examples                                                                                           
        a. 0/1 string (longest string of os)                                                               
           110000100101010100010000000000101101110011011010001001100100                                    
                                                                                                           
        b. all lengths of repeating nucleic acids                                                          
           aggaagggggggactacttttt                                                                          
                                                                                                           
github                                                                                                     
https://tinyurl.com/y43e3eao                                                                               
https://github.com/rogerjdeangelis/utl-how-many-consecutive-zeros-in-a-variable-usn-r-rle-function         
/*                                                                                                         
 _                   _                                                                                     
(_)_ __  _ __  _   _| |_                                                                                   
| | `_ \| `_ \| | | | __|                                                                                  
| | | | | |_) | |_| | |_                                                                                   
|_|_| |_| .__/ \__,_|\__|                                                                                  
        |_|_                             _      __                                                         
  __ _    | | ___  _ __   __ _  ___  ___| |_   / _ \ ___                                                   
 / _` |   | |/ _ \| `_ \ / _` |/ _ \/ __| __| | | | / __|                                                  
| (_| |_  | | (_) | | | | (_| |  __/\__ \ |_  | |_| \__ \                                                  
 \__,_(_) |_|\___/|_| |_|\__, |\___||___/\__|  \___/|___/                                                  
                         |___/                                                                             
*/                                                                                                         
                                                                                                           
%let strng=110000100101010100010000000000101101110011011010001001100100;                                   
                                                                                                           
RULE                                                                                                       
====                                                                                                       
                                                                                                           
 21 to 30 is the longest sequence of 0s                                                                    
                     <-------->                                                                            
         1         2 2        3                                                                            
12345678901234567890 1234567890 123456789012345678901234567890                                             
11000010010101010001 0000000000 101101110011011010001001100100                                             
                                                                                                           
/*                                                                                                         
 _              _ _                                                                                        
| |__      __ _| | |  ___  ___  __ _ _   _  ___ _ __   ___ ___  ___                                        
| `_ \    / _` | | | / __|/ _ \/ _` | | | |/ _ \ `_ \ / __/ _ \/ __|                                       
| |_) |  | (_| | | | \__ \  __/ (_| | |_| |  __/ | | | (_|  __/\__ \                                       
|_.__(_)  \__,_|_|_| |___/\___|\__, |\__,_|\___|_| |_|\___\___||___/                                       
                                  |_|                                                                      
*/                                                                                                         
                                                                                                           
%let acid=aggaagggggggactacttttt;                                                                          
                                                                                                           
/*           _               _                                                                             
  ___  _   _| |_ _ __  _   _| |_                                                                           
 / _ \| | | | __| `_ \| | | | __|                                                                          
| (_) | |_| | |_| |_) | |_| | |_                                                                           
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                          
           _    |_|                      _      __                                                         
  __ _    | | ___  _ __   __ _  ___  ___| |_   / _ \ ___                                                   
 / _` |   | |/ _ \| `_ \ / _` |/ _ \/ __| __| | | | / __|                                                  
| (_| |_  | | (_) | | | | (_| |  __/\__ \ |_  | |_| \__ \                                                  
 \__,_(_) |_|\___/|_| |_|\__, |\___||___/\__|  \___/|___/                                                  
                         |___/                                                                             
*/                                                                                                         
*/                                                                                                         
                                                                                                           
Macro variable maxLength;                                                                                  
                                                                                                           
%put &=maxLength;                                                                                          
                                                                                                           
MAXLENGTH=10                                                                                               
                                                                                                           
/*                                                                                                         
 _              _ _                                                                                        
| |__      __ _| | |  ___  ___  __ _ _   _  ___ _ __   ___ ___  ___                                        
| `_ \    / _` | | | / __|/ _ \/ _` | | | |/ _ \ `_ \ / __/ _ \/ __|                                       
| |_) |  | (_| | | | \__ \  __/ (_| | |_| |  __/ | | | (_|  __/\__ \                                       
|_.__(_)  \__,_|_|_| |___/\___|\__, |\__,_|\___|_| |_|\___\___||___/                                       
                                  |_|                                                                      
*/                                                                                                         
                                                                                                           
Up to 40 obs from WANT total obs=10                                                                        
                                                                                                           
                                                                                                           
                | RULES for sequences in aggaagggggggactacttttt                                            
Obs    V1    V2 |                                                                                          
                |                                                                                          
  1    a     1  |     1 - a                                                                                
  2    g     2  |     2 - gs                                                                               
  3    a     2  |     2 - as                                                                               
  4    g     7  |     7 - gs                                                                               
  5    a     1  |     ..                                                                                   
  6    c     1  |                                                                                          
  7    t     1  |                                                                                          
  8    a     1  |                                                                                          
  9    c     1  |                                                                                          
 10    t     5  |                                                                                          
                                                                                                           
/*                                                                                                         
 _ __  _ __ ___   ___ ___  ___ ___                                                                         
| `_ \| `__/ _ \ / __/ _ \/ __/ __|                                                                        
| |_) | | | (_) | (_|  __/\__ \__ \                                                                        
| .__/|_|  \___/ \___\___||___/___/                                                                        
|_|        _                             _      __                                                         
  __ _    | | ___  _ __   __ _  ___  ___| |_   / _ \ ___                                                   
 / _` |   | |/ _ \| `_ \ / _` |/ _ \/ __| __| | | | / __|                                                  
| (_| |_  | | (_) | | | | (_| |  __/\__ \ |_  | |_| \__ \                                                  
 \__,_(_) |_|\___/|_| |_|\__, |\___||___/\__|  \___/|___/                                                  
                         |___/                             */                                              
%symdel maxLength / nowarn;                                                                                
                                                                                                           
%let strng=110000100101010100010000000000101101110011011010001001100100;                                   
                                                                                                           
%utl_submit_r64("                                                                                          
rr <- rle(strsplit('&strng','')[[1]]);                                                                     
want<-max(rr$lengths[which(rr$values == '0')]);                                                            
want<-format(want);                                                                                        
writeClipboard(want);                                                                                      
",returnvar=maxLength                                                                                      
);                                                                                                         
                                                                                                           
%put &=maxLength;                                                                                          
                                                                                                           
/*                                                                                                         
 _              _ _                                                                                        
| |__      __ _| | |  ___  ___  __ _ _   _  ___ _ __   ___ ___  ___                                        
| `_ \    / _` | | | / __|/ _ \/ _` | | | |/ _ \ `_ \ / __/ _ \/ __|                                       
| |_) |  | (_| | | | \__ \  __/ (_| | |_| |  __/ | | | (_|  __/\__ \                                       
|_.__(_)  \__,_|_|_| |___/\___|\__, |\__,_|\___|_| |_|\___\___||___/                                       
                                  |_|                                                                      
*/                                                                                                         
                                                                                                           
%let acid=aggaagggggggactacttttt;                                                                          
                                                                                                           
%utlfkil(d:/xpt/want.xpt);                                                                                 
                                                                                                           
%utl_submit_r64("                                                                                          
  library(SASxport);                                                                                       
  tmp <- rle(strsplit(c('&acid'), NULL)[[1]]);                                                             
  vtmp<-as.vector(tmp);                                                                                    
  str(vtmp);                                                                                               
  want<-as.data.frame(cbind(vtmp$values,vtmp$lengths),stringsAsFactors = FALSE);                           
  write.xport(want,file="d:/xpt/want.xpt");                                                                
");                                                                                                        
                                                                                                           
libname xpt xport "d:/xpt/want.xpt";                                                                       
data want;                                                                                                 
  set xpt.want;                                                                                            
run;quit;                                                                                                  
libname xpt clear;                                                                                         
                                                                                                           
                                                                                                           
                                                                                                           
