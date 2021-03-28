lbl_80CFC4C4:
/* 80CFC4C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFC4C8  7C 08 02 A6 */	mflr r0
/* 80CFC4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFC4D0  3C 80 80 D0 */	lis r4, cNullVec__6Z2Calc@ha
/* 80CFC4D4  38 E4 D2 B8 */	addi r7, r4, cNullVec__6Z2Calc@l
/* 80CFC4D8  3C 80 80 D0 */	lis r4, data_80CFD4D0@ha
/* 80CFC4DC  38 C4 D4 D0 */	addi r6, r4, data_80CFD4D0@l
/* 80CFC4E0  88 06 00 00 */	lbz r0, 0(r6)
/* 80CFC4E4  7C 00 07 75 */	extsb. r0, r0
/* 80CFC4E8  40 82 00 40 */	bne lbl_80CFC528
/* 80CFC4EC  80 87 01 04 */	lwz r4, 0x104(r7)
/* 80CFC4F0  80 07 01 08 */	lwz r0, 0x108(r7)
/* 80CFC4F4  90 87 01 1C */	stw r4, 0x11c(r7)
/* 80CFC4F8  90 07 01 20 */	stw r0, 0x120(r7)
/* 80CFC4FC  80 07 01 0C */	lwz r0, 0x10c(r7)
/* 80CFC500  90 07 01 24 */	stw r0, 0x124(r7)
/* 80CFC504  38 A7 01 1C */	addi r5, r7, 0x11c
/* 80CFC508  80 87 01 10 */	lwz r4, 0x110(r7)
/* 80CFC50C  80 07 01 14 */	lwz r0, 0x114(r7)
/* 80CFC510  90 85 00 0C */	stw r4, 0xc(r5)
/* 80CFC514  90 05 00 10 */	stw r0, 0x10(r5)
/* 80CFC518  80 07 01 18 */	lwz r0, 0x118(r7)
/* 80CFC51C  90 05 00 14 */	stw r0, 0x14(r5)
/* 80CFC520  38 00 00 01 */	li r0, 1
/* 80CFC524  98 06 00 00 */	stb r0, 0(r6)
lbl_80CFC528:
/* 80CFC528  88 03 07 31 */	lbz r0, 0x731(r3)
/* 80CFC52C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CFC530  39 87 01 1C */	addi r12, r7, 0x11c
/* 80CFC534  7D 8C 02 14 */	add r12, r12, r0
/* 80CFC538  4B 66 5B 4C */	b __ptmf_scall
/* 80CFC53C  60 00 00 00 */	nop 
/* 80CFC540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFC544  7C 08 03 A6 */	mtlr r0
/* 80CFC548  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFC54C  4E 80 00 20 */	blr 
