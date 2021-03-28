lbl_806C1298:
/* 806C1298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C129C  7C 08 02 A6 */	mflr r0
/* 806C12A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C12A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C12A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 806C12AC  41 82 00 30 */	beq lbl_806C12DC
/* 806C12B0  3C 60 80 6C */	lis r3, __vt__10dCcD_GStts@ha
/* 806C12B4  38 03 1B 44 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 806C12B8  90 1F 00 00 */	stw r0, 0(r31)
/* 806C12BC  41 82 00 10 */	beq lbl_806C12CC
/* 806C12C0  3C 60 80 6C */	lis r3, __vt__10cCcD_GStts@ha
/* 806C12C4  38 03 1B 38 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 806C12C8  90 1F 00 00 */	stw r0, 0(r31)
lbl_806C12CC:
/* 806C12CC  7C 80 07 35 */	extsh. r0, r4
/* 806C12D0  40 81 00 0C */	ble lbl_806C12DC
/* 806C12D4  7F E3 FB 78 */	mr r3, r31
/* 806C12D8  4B C0 DA 64 */	b __dl__FPv
lbl_806C12DC:
/* 806C12DC  7F E3 FB 78 */	mr r3, r31
/* 806C12E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C12E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C12E8  7C 08 03 A6 */	mtlr r0
/* 806C12EC  38 21 00 10 */	addi r1, r1, 0x10
/* 806C12F0  4E 80 00 20 */	blr 
