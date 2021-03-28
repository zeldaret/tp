lbl_806A6B84:
/* 806A6B84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A6B88  7C 08 02 A6 */	mflr r0
/* 806A6B8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A6B90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A6B94  7C 7F 1B 79 */	or. r31, r3, r3
/* 806A6B98  41 82 00 30 */	beq lbl_806A6BC8
/* 806A6B9C  3C 60 80 6A */	lis r3, __vt__10dCcD_GStts@ha
/* 806A6BA0  38 03 74 4C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 806A6BA4  90 1F 00 00 */	stw r0, 0(r31)
/* 806A6BA8  41 82 00 10 */	beq lbl_806A6BB8
/* 806A6BAC  3C 60 80 6A */	lis r3, __vt__10cCcD_GStts@ha
/* 806A6BB0  38 03 74 40 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 806A6BB4  90 1F 00 00 */	stw r0, 0(r31)
lbl_806A6BB8:
/* 806A6BB8  7C 80 07 35 */	extsh. r0, r4
/* 806A6BBC  40 81 00 0C */	ble lbl_806A6BC8
/* 806A6BC0  7F E3 FB 78 */	mr r3, r31
/* 806A6BC4  4B C2 81 78 */	b __dl__FPv
lbl_806A6BC8:
/* 806A6BC8  7F E3 FB 78 */	mr r3, r31
/* 806A6BCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A6BD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A6BD4  7C 08 03 A6 */	mtlr r0
/* 806A6BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 806A6BDC  4E 80 00 20 */	blr 
