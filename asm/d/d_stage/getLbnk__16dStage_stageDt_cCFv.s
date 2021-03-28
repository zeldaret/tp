lbl_800281C4:
/* 800281C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800281C8  7C 08 02 A6 */	mflr r0
/* 800281CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800281D0  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 800281D4  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 800281D8  38 63 03 DD */	addi r3, r3, 0x3dd
/* 800281DC  4C C6 31 82 */	crclr 6
/* 800281E0  4B FD E8 DD */	bl OSReport
/* 800281E4  38 60 00 00 */	li r3, 0
/* 800281E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800281EC  7C 08 03 A6 */	mtlr r0
/* 800281F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800281F4  4E 80 00 20 */	blr 
