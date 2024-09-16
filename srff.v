//时钟SR锁存器
//if(!clock) continue;
//else :
//set==1 :Q=1
//reset==1 :Q_dot=1
//if(set&&reset) Q=Q_dot=miss
//if(!set&&!reset) Q=Q_dot=x
module SRFF (input R, clock, S, output Q, Q_dot);
	and p1(o1,R,clock);
	and p2(o2,S,clock);
	nor q1(Q,o1,Q_dot);
	nor q2(Q_dot,o2,Q);	

endmodule

