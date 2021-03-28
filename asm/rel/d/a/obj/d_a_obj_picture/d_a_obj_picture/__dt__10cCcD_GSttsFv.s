lbl_80CAEFCC:
/* 80CAEFCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAEFD0  7C 08 02 A6 */	mflr r0
/* 80CAEFD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAEFD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAEFDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CAEFE0  41 82 00 1C */	beq lbl_80CAEFFC
/* 80CAEFE4  3C A0 80 CB */	lis r5, __vt__10cCcD_GStts@ha
/* 80CAEFE8  38 05 F2 10 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80CAEFEC  90 1F 00 00 */	stw r0, 0(r31)
/* 80CAEFF0  7C 80 07 35 */	extsh. r0, r4
/* 80CAEFF4  40 81 00 08 */	ble lbl_80CAEFFC
/* 80CAEFF8  4B 61 FD 44 */	b __dl__FPv
lbl_80CAEFFC:
/* 80CAEFFC  7F E3 FB 78 */	mr r3, r31
/* 80CAF000  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAF004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAF008  7C 08 03 A6 */	mtlr r0
/* 80CAF00C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAF010  4E 80 00 20 */	blr 
