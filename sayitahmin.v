`timescale 1ns / 1ps

module sayitahmin(
    input clk,
    input [7:0] switch,
    input btnC_i,btnU_i,
    output reg[6:0] seven_seg,
    output reg [15:0] leds_o,
    output reg[3:0] anode,
    output reg dot
    );
    
    localparam BOSLUK = 7'b111_1111;
    localparam ZERO  = 7'b100_0000;  // 0
    localparam ONE   = 7'b111_1001;  // 1
    localparam TWO   = 7'b010_0100;  // 2 
    localparam THREE = 7'b011_0000;  // 3
    localparam FOUR  = 7'b001_1001;  // 4
    localparam FIVE  = 7'b001_0010;  // 5
    localparam SIX   = 7'b000_0010;  // 6
    localparam SEVEN = 7'b111_1000;  // 7
    localparam EIGHT = 7'b000_0000;  // 8
    localparam NINE  = 7'b001_0000;  // 9
    localparam A= 7'b010_0000;
    localparam b= 7'b000_0011;
    localparam C= 7'b010_0111;
    localparam d= 7'b010_0001;
    localparam E= 7'b000_0110;
    localparam F= 7'b000_1110;
    localparam U= 7'b100_0001;
    localparam P= 7'b000_1100;
    localparam o= 7'b010_0011;
    localparam w= 7'b001_0101;
    localparam n= 7'b010_1011; 
    localparam g = 7'b001_0000;
    localparam r = 7'b010_1111;
    localparam t = 7'b000_0111;
    localparam s = 7'b001_0010;
    localparam L = 7'b100_0111;
    
    reg [6:0] harf1, harf2, harf3, harf4, random1,random2;
    reg[17:0] say=0, say_next=0;
    reg[7:0] random;
    reg[7:0] tahmin;
    reg[3:0] hak=4'd10, hak_next=4'd10;
    reg[6:0] saniye_say=0, saniye_say_next;
    reg saniyelik_saat=0;
    reg bitti=0, bitti_next=0;
    
    reg btnC_pre=0;
    wire btnC;
    
    debouncer db_C(clk,btnC_i,btnC);
    
    reg btnU_pre=0;
    wire btnU;
    
    debouncer db_U(clk,btnU_i,btnU);
    
    
    reg[31:0] count=0;
    always@(posedge clk) begin
             
        if(count == 10**8 / 2) begin
            count <= 0;
            saniyelik_saat <= ~saniyelik_saat;
        end
        else
            count <= count + 1;
        
        say <= say_next; // else disina aldik cunku resetten bagimsiz atanacak modul reseti yapmiyoruz oyun reseti yapiyoruz
        btnC_pre <= btnC; 
        btnU_pre <= btnU;
        if(btnU) begin
            random <= say%256;
            hak <= 4'd10; //pre olan butonlari resetleme
            bitti <= 1'b0;
        end        
        else begin
            hak <= hak_next;
            bitti <= bitti_next;
        end
        
    end
    
    always@(posedge saniyelik_saat) begin
        saniye_say <= saniye_say_next;
    end
    
    always@*begin
        leds_o = 16'b0000_0000_0000_0000;
        dot=1;
        bitti_next = bitti;
        hak_next = hak; //hak_next atamasi sürekli olmak zorunda yoksa sadece belli bir conditionda oluyor ve latch oluyor o zaman
        harf1 = BOSLUK;
        harf2 = BOSLUK;
        harf3 = BOSLUK;
        harf4 = BOSLUK;
        random1 = BOSLUK;
        random2 = BOSLUK;
        
        case(random[7:4]) 
             4'h0: random2 = ZERO;
             4'h1: random2 = ONE;
             4'h2: random2 = TWO;
             4'h3: random2 = THREE;
             4'h4: random2 = FOUR;
             4'h5: random2 = FIVE;
             4'h6: random2 = SIX;
             4'h7: random2 = SEVEN;
             4'h8: random2 = EIGHT;
             4'h9: random2 = NINE;
             4'hA: random2 = A;
             4'hB: random2 = b;
             4'hC: random2 = C;
             4'hD: random2 = d;
             4'hE: random2 = E;
             4'hF: random2 = F;
                        
        endcase
                    
        case(random[3:0]) 
            4'h0: random1 = ZERO;
            4'h1: random1 = ONE;
            4'h2: random1 = TWO;
            4'h3: random1 = THREE;
            4'h4: random1 = FOUR;
            4'h5: random1 = FIVE;
            4'h6: random1 = SIX;
            4'h7: random1 = SEVEN;
            4'h8: random1 = EIGHT;
            4'h9: random1 = NINE;
            4'hA: random1 = A;
            4'hB: random1 = b;
            4'hC: random1 = C;
            4'hD: random1 = d;
            4'hE: random1 = E;
            4'hF: random1 = F;
        endcase
        
        if(!bitti)begin
            if(hak > 0)begin
                
                case(switch[3:0]) 
                        4'h0: harf1 = ZERO;
                        4'h1: harf1 = ONE;
                        4'h2: harf1 = TWO;
                        4'h3: harf1 = THREE;
                        4'h4: harf1 = FOUR;
                        4'h5: harf1 = FIVE;
                        4'h6: harf1 = SIX;
                        4'h7: harf1 = SEVEN;
                        4'h8: harf1 = EIGHT;
                        4'h9: harf1 = NINE;
                        4'hA: harf1 = A;
                        4'hB: harf1 = b;
                        4'hC: harf1 = C;
                        4'hD: harf1 = d;
                        4'hE: harf1 = E;
                        4'hF: harf1 = F;
                endcase
                case(switch[7:4]) 
                        4'h0: harf2 = ZERO;
                        4'h1: harf2 = ONE;
                        4'h2: harf2 = TWO;
                        4'h3: harf2 = THREE;
                        4'h4: harf2 = FOUR;
                        4'h5: harf2 = FIVE;
                        4'h6: harf2 = SIX;
                        4'h7: harf2 = SEVEN;
                        4'h8: harf2 = EIGHT;
                        4'h9: harf2 = NINE;
                        4'hA: harf2 = A;
                        4'hB: harf2 = b;
                        4'hC: harf2 = C;
                        4'hD: harf2 = d;
                        4'hE: harf2 = E;
                        4'hF: harf2 = F;
                endcase
                    
                case(hak/10) 
                        0: harf4 = ZERO;
                        1: harf4 = ONE;  
                        
                endcase
                    
                case(hak%10) 
                        0: harf3 = ZERO;
                        1: harf3 = ONE;
                        2: harf3 = TWO;
                        3: harf3 = THREE;
                        4: harf3 = FOUR;
                        5: harf3 = FIVE;
                        6: harf3 = SIX;
                        7: harf3 = SEVEN;
                        8: harf3 = EIGHT;
                        9: harf3 = NINE;
                endcase
                
                if(btnC)begin
                    tahmin[3:0]=switch[3:0];
                    tahmin[7:4]=switch[7:4];
                    
                    if(!btnC_pre) begin
                        hak_next = hak - 1;
                    end
                    
                    if(tahmin == random) begin
                            bitti_next=1;
                            //kazandi
                    end
                    else if(tahmin > random) begin
                        harf4 = d; harf3 = o; harf2 = w; harf1 = n;
                    end
                    else if(tahmin < random) begin
                        harf4 = BOSLUK; harf3 = BOSLUK; harf2 = U; harf1 = P;
                    end
                   
                end
                    
            end
            else begin
                //hakki kalmadi, bitti 0           
                case(saniye_say%17)
                    7'd0: begin
                        harf4 = BOSLUK; harf3 = BOSLUK; harf2 = BOSLUK; harf1 = L; 
                    end
                    7'd1: begin
                        harf4 = BOSLUK; harf3 = BOSLUK; harf2 = L; harf1 = o;
                    end
                    7'd2: begin
                        harf4 = BOSLUK; harf3 = L; harf2 = o; harf1 = s;
                    end
                    7'd3: begin
                        harf4 = L; harf3 = o; harf2 = s; harf1 = t;
                    end
                    7'd4: begin
                        harf4 = o; harf3 = s; harf2 = t; harf1 = BOSLUK;
                    end
                    7'd5: begin
                        harf4 = s; harf3 = t; harf2 = BOSLUK; harf1 = ONE;
                    end
                    7'd6: begin
                        harf4 = t; harf3 = BOSLUK; harf2 = ONE; harf1 = t;
                    end
                    7'd7: begin
                        harf4 = BOSLUK; harf3 =ONE; harf2 = t; harf1 = BOSLUK;
                    end
                    7'd8: begin
                        harf4 = ONE; harf3 = t; harf2 = BOSLUK; harf1 = w;
                    end
                    7'd9: begin
                        harf4 = t; harf3 = BOSLUK; harf2 = w; harf1 = A;
                    end
                    7'd10: begin
                        harf4 = BOSLUK; harf3 = w; harf2 = A; harf1 = s;
                    end
                    7'd11: begin
                        harf4 = w; harf3 = A; harf2 = s; harf1 = BOSLUK;
                    end
                    7'd12: begin
                        harf4 = A; harf3 = s; harf2 = BOSLUK; harf1 = random2;
                    end
                    7'd13: begin
                        harf4 = s; harf3 = BOSLUK; harf2 = random2; harf1 = random1;
                    end
                    7'd14: begin
                        harf4 = BOSLUK; harf3 = random2; harf2 = random1; harf1 = BOSLUK;
                    end
                    7'd15: begin
                        harf4 = random2; harf3 = random1; harf2 = BOSLUK; harf1 = BOSLUK;
                    end
                    7'd16: begin
                        harf4 = random1; harf3 = BOSLUK; harf2 = BOSLUK; harf1 = BOSLUK;
                    end
               endcase   
               if(btnU)
                    saniye_say_next = 0;
               else
                    saniye_say_next = saniye_say + 1;
                     
            end
        end
        else begin
            //kazandi, bitti 1
            case(saniye_say%11)
                    7'd0: begin
                        harf4 = BOSLUK; harf3 = BOSLUK; harf2 = BOSLUK; harf1 = C; leds_o = 16'b1111_1111_1111_1111;
                    end
                    7'd1: begin
                        harf4 = BOSLUK; harf3 = BOSLUK; harf2 = C; harf1 = o; leds_o = 16'b0000_0000_0000_0000;
                    end
                    7'd2: begin
                        harf4 = BOSLUK; harf3 = C; harf2 = o; harf1 = n; leds_o = 16'b1111_1111_1111_1111;
                    end
                    7'd3: begin
                        harf4 = C; harf3 = o; harf2 = n; harf1 = g; leds_o = 16'b0000_0000_0000_0000;
                    end
                    7'd4: begin
                        harf4 = o; harf3 = n; harf2 = g; harf1 = r; leds_o = 16'b1111_1111_1111_1111;
                    end
                    7'd5: begin
                        harf4 = n; harf3 = g; harf2 = r; harf1 = A; leds_o = 16'b0000_0000_0000_0000;
                    end
                    7'd6: begin
                        harf4 = g; harf3 = r; harf2 = A; harf1 = t;leds_o = 16'b1111_1111_1111_1111;
                    end
                    7'd7: begin
                        harf4 = r; harf3 = A; harf2 = t; harf1 = s; leds_o = 16'b0000_0000_0000_0000;
                    end
                    7'd8: begin
                        harf4 = A; harf3 = t; harf2 = s; harf1 = BOSLUK; leds_o = 16'b1111_1111_1111_1111;
                    end
                    7'd9: begin
                        harf4 = t; harf3 = s; harf2 = BOSLUK; harf1 = BOSLUK; leds_o = 16'b0000_0000_0000_0000;
                    end
                    7'd10: begin
                        harf4 = s; harf3 = BOSLUK; harf2 = BOSLUK; harf1 = BOSLUK; leds_o = 16'b1111_1111_1111_1111;
                    end
               endcase
               if(btnU)
                    saniye_say_next = 0;
               else
                    saniye_say_next = saniye_say + 1;
        end
        
        case(say[17:16])
            2'b00: begin
                anode = 4'b1110;
                seven_seg = harf1;
            end
            2'b01: begin
                anode = 4'b1101;
                seven_seg = harf2;
            end
            2'b10: begin
                anode = 4'b1011;
                seven_seg = harf3;
            end
            2'b11: begin
                anode = 4'b0111;
                seven_seg = harf4;
            end
        endcase
        
        say_next = say + 1;
        
    end
endmodule