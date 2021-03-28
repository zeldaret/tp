lbl_800280AC:
/* 800280AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800280B0  7C 08 02 A6 */	mflr r0
/* 800280B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800280B8  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 800280BC  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 800280C0  38 63 03 A8 */	addi r3, r3, 0x3a8
/* 800280C4  4C C6 31 82 */	crclr 6
/* 800280C8  4B FD E9 F5 */	bl OSReport
/* 800280CC  38 60 00 00 */	li r3, 0
/* 800280D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800280D4  7C 08 03 A6 */	mtlr r0
/* 800280D8  38 21 00 10 */	addi r1, r1, 0x10
/* 800280DC  4E 80 00 20 */	blr 
