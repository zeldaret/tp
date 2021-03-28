lbl_805AB208:
/* 805AB208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AB20C  7C 08 02 A6 */	mflr r0
/* 805AB210  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AB214  39 83 08 70 */	addi r12, r3, 0x870
/* 805AB218  4B DB 6E 6C */	b __ptmf_scall
/* 805AB21C  60 00 00 00 */	nop 
/* 805AB220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AB224  7C 08 03 A6 */	mtlr r0
/* 805AB228  38 21 00 10 */	addi r1, r1, 0x10
/* 805AB22C  4E 80 00 20 */	blr 
