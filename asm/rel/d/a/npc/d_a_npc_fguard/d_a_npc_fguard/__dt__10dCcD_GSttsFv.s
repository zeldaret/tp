lbl_809BB284:
/* 809BB284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BB288  7C 08 02 A6 */	mflr r0
/* 809BB28C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BB290  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BB294  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BB298  41 82 00 30 */	beq lbl_809BB2C8
/* 809BB29C  3C 60 80 9C */	lis r3, __vt__10dCcD_GStts@ha
/* 809BB2A0  38 03 B4 B4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809BB2A4  90 1F 00 00 */	stw r0, 0(r31)
/* 809BB2A8  41 82 00 10 */	beq lbl_809BB2B8
/* 809BB2AC  3C 60 80 9C */	lis r3, __vt__10cCcD_GStts@ha
/* 809BB2B0  38 03 B4 A8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809BB2B4  90 1F 00 00 */	stw r0, 0(r31)
lbl_809BB2B8:
/* 809BB2B8  7C 80 07 35 */	extsh. r0, r4
/* 809BB2BC  40 81 00 0C */	ble lbl_809BB2C8
/* 809BB2C0  7F E3 FB 78 */	mr r3, r31
/* 809BB2C4  4B 91 3A 78 */	b __dl__FPv
lbl_809BB2C8:
/* 809BB2C8  7F E3 FB 78 */	mr r3, r31
/* 809BB2CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BB2D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BB2D4  7C 08 03 A6 */	mtlr r0
/* 809BB2D8  38 21 00 10 */	addi r1, r1, 0x10
/* 809BB2DC  4E 80 00 20 */	blr 
