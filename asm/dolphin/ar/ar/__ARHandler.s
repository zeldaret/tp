lbl_803507F8:
/* 803507F8  7C 08 02 A6 */	mflr r0
/* 803507FC  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC005000@ha */
/* 80350800  90 01 00 04 */	stw r0, 4(r1)
/* 80350804  38 63 50 00 */	addi r3, r3, 0x5000 /* 0xCC005000@l */
/* 80350808  38 00 FF 77 */	li r0, -137
/* 8035080C  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 80350810  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 80350814  3B E4 00 00 */	addi r31, r4, 0
/* 80350818  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 8035081C  7C A0 00 38 */	and r0, r5, r0
/* 80350820  60 00 00 20 */	ori r0, r0, 0x20
/* 80350824  B0 03 00 0A */	sth r0, 0xa(r3)
/* 80350828  38 61 00 10 */	addi r3, r1, 0x10
/* 8035082C  4B FE B7 D5 */	bl OSClearContext
/* 80350830  38 61 00 10 */	addi r3, r1, 0x10
/* 80350834  4B FE B6 05 */	bl OSSetCurrentContext
/* 80350838  81 8D 93 38 */	lwz r12, __AR_Callback(r13)
/* 8035083C  28 0C 00 00 */	cmplwi r12, 0
/* 80350840  41 82 00 0C */	beq lbl_8035084C
/* 80350844  7D 88 03 A6 */	mtlr r12
/* 80350848  4E 80 00 21 */	blrl 
lbl_8035084C:
/* 8035084C  38 61 00 10 */	addi r3, r1, 0x10
/* 80350850  4B FE B7 B1 */	bl OSClearContext
/* 80350854  7F E3 FB 78 */	mr r3, r31
/* 80350858  4B FE B5 E1 */	bl OSSetCurrentContext
/* 8035085C  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 80350860  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 80350864  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 80350868  7C 08 03 A6 */	mtlr r0
/* 8035086C  4E 80 00 20 */	blr 
