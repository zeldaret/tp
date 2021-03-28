lbl_800AD340:
/* 800AD340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AD344  7C 08 02 A6 */	mflr r0
/* 800AD348  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AD34C  38 A0 00 02 */	li r5, 2
/* 800AD350  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800AD354  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800AD358  38 C0 FF FF */	li r6, -1
/* 800AD35C  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 800AD360  48 00 00 79 */	bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsf
/* 800AD364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AD368  7C 08 03 A6 */	mtlr r0
/* 800AD36C  38 21 00 10 */	addi r1, r1, 0x10
/* 800AD370  4E 80 00 20 */	blr 
