lbl_80BCEA7C:
/* 80BCEA7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCEA80  7C 08 02 A6 */	mflr r0
/* 80BCEA84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCEA88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCEA8C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BCEA90  41 82 00 1C */	beq lbl_80BCEAAC
/* 80BCEA94  3C A0 80 BD */	lis r5, __vt__10cCcD_GStts@ha
/* 80BCEA98  38 05 EB DC */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80BCEA9C  90 1F 00 00 */	stw r0, 0(r31)
/* 80BCEAA0  7C 80 07 35 */	extsh. r0, r4
/* 80BCEAA4  40 81 00 08 */	ble lbl_80BCEAAC
/* 80BCEAA8  4B 70 02 94 */	b __dl__FPv
lbl_80BCEAAC:
/* 80BCEAAC  7F E3 FB 78 */	mr r3, r31
/* 80BCEAB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCEAB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCEAB8  7C 08 03 A6 */	mtlr r0
/* 80BCEABC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCEAC0  4E 80 00 20 */	blr 
