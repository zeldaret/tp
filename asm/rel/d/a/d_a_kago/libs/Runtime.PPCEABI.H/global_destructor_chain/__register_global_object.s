lbl_80849538:
/* 80849538  3C C0 80 85 */	lis r6, __global_destructor_chain@ha
/* 8084953C  84 06 4F 60 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80849540  90 05 00 00 */	stw r0, 0(r5)
/* 80849544  90 85 00 04 */	stw r4, 4(r5)
/* 80849548  90 65 00 08 */	stw r3, 8(r5)
/* 8084954C  90 A6 00 00 */	stw r5, 0(r6)
/* 80849550  4E 80 00 20 */	blr 
