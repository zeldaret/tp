lbl_80BEDC84:
/* 80BEDC84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEDC88  7C 08 02 A6 */	mflr r0
/* 80BEDC8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEDC90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEDC94  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BEDC98  41 82 00 30 */	beq lbl_80BEDCC8
/* 80BEDC9C  3C 60 80 BF */	lis r3, __vt__10dCcD_GStts@ha
/* 80BEDCA0  38 03 E9 B8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80BEDCA4  90 1F 00 00 */	stw r0, 0(r31)
/* 80BEDCA8  41 82 00 10 */	beq lbl_80BEDCB8
/* 80BEDCAC  3C 60 80 BF */	lis r3, __vt__10cCcD_GStts@ha
/* 80BEDCB0  38 03 E9 AC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80BEDCB4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BEDCB8:
/* 80BEDCB8  7C 80 07 35 */	extsh. r0, r4
/* 80BEDCBC  40 81 00 0C */	ble lbl_80BEDCC8
/* 80BEDCC0  7F E3 FB 78 */	mr r3, r31
/* 80BEDCC4  4B 6E 10 78 */	b __dl__FPv
lbl_80BEDCC8:
/* 80BEDCC8  7F E3 FB 78 */	mr r3, r31
/* 80BEDCCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEDCD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEDCD4  7C 08 03 A6 */	mtlr r0
/* 80BEDCD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEDCDC  4E 80 00 20 */	blr 
