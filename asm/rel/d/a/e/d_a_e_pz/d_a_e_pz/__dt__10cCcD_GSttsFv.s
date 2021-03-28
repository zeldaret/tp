lbl_80760C18:
/* 80760C18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80760C1C  7C 08 02 A6 */	mflr r0
/* 80760C20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80760C24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80760C28  7C 7F 1B 79 */	or. r31, r3, r3
/* 80760C2C  41 82 00 1C */	beq lbl_80760C48
/* 80760C30  3C A0 80 76 */	lis r5, __vt__10cCcD_GStts@ha
/* 80760C34  38 05 1D 3C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80760C38  90 1F 00 00 */	stw r0, 0(r31)
/* 80760C3C  7C 80 07 35 */	extsh. r0, r4
/* 80760C40  40 81 00 08 */	ble lbl_80760C48
/* 80760C44  4B B6 E0 F8 */	b __dl__FPv
lbl_80760C48:
/* 80760C48  7F E3 FB 78 */	mr r3, r31
/* 80760C4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80760C50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80760C54  7C 08 03 A6 */	mtlr r0
/* 80760C58  38 21 00 10 */	addi r1, r1, 0x10
/* 80760C5C  4E 80 00 20 */	blr 
