section .bss
    ; Reserving memory for user input, binary output, ...
    num resb 10               
    binary resb 32           
    binary_len resb 1         

section .text
    global _start

_start:
    ; Asking user to enter a decimal number
    mov edx, len_prompt       
    mov ecx, prompt           
    mov ebx, 1                
    mov eax, 4                
    int 0x80                

    ; Reading the user input 
    mov edx, 10               
    mov ecx, num              
    mov ebx, 0                 
    mov eax, 3                
    int 0x80                  

    ; Convert the ASCII characters of entered input to an integer
    mov ecx, 0                 
    mov ebx, num               

convert_loop:
    ; converting from decimal by myltipying and moving it to next digit in buffer
    movzx eax, byte [ebx]      
    cmp eax, 10                
    je done_convert            
    sub eax, '0'              
    imul ecx, ecx, 10          
    add ecx, eax              
    inc ebx                    
    jmp convert_loop          

done_convert:
    ; Convert the integer into its binary representation
    mov edi, binary            
    mov eax, ecx               
    mov ecx, 0                 

    ; Special case for zero
    test eax, eax              
    jz zero_case              

convert_to_binary:
    xor edx, edx               
    mov ebx, 2                 
    div ebx                    
    add dl, '0'                
    mov [edi + ecx], dl        
    inc ecx                    
    test eax, eax              
    jnz convert_to_binary      

    jmp print_binary           

zero_case:
    ; Handle the case when the number is zero (binary: '0')
    mov byte [edi], '0'        
    inc ecx                    

print_binary:
    ; Reverse the binary string (since it's generated in reverse order)
    mov [binary_len], ecx      
    mov ebx, 0                 
    dec ecx                    

reverse_binary:
    cmp ebx, ecx               
    jge output_binary          
    mov al, [binary + ebx]      
    mov dl, [binary + ecx]      
    mov [binary + ebx], dl      ; Swap characters
    mov [binary + ecx], al     
    inc ebx                    
    dec ecx                    
    jmp reverse_binary          

output_binary:
    ; Output the binary representation
    mov eax, 4                 
    mov ebx, 1                 
    mov ecx, binary            
    mov edx, [binary_len]     
    int 0x80                   

    ; Print a newline character for readability
    mov edx, 1                 
    mov ecx, newline           
    mov eax, 4                 
    int 0x80                   

    ; Exit the program
    mov eax, 1                 
    xor ebx, ebx               
    int 0x80                  

section .data
prompt db 'Enter a decimal number: ', 0   
len_prompt equ $ - prompt                 
newline db 10                             
