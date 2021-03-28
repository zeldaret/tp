lbl_80BA8BC0:
/* 80BA8BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA8BC4  7C 08 02 A6 */	mflr r0
/* 80BA8BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA8BCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA8BD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA8BD4  41 82 00 30 */	beq lbl_80BA8C04
/* 80BA8BD8  3C 60 80 BB */	lis r3, __vt__10dCcD_GStts@ha
/* 80BA8BDC  38 03 8F 50 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80BA8BE0  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA8BE4  41 82 00 10 */	beq lbl_80BA8BF4
/* 80BA8BE8  3C 60 80 BB */	lis r3, __vt__10cCcD_GStts@ha
/* 80BA8BEC  38 03 8F 44 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80BA8BF0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BA8BF4:
/* 80BA8BF4  7C 80 07 35 */	extsh. r0, r4
/* 80BA8BF8  40 81 00 0C */	ble lbl_80BA8C04
/* 80BA8BFC  7F E3 FB 78 */	mr r3, r31
/* 80BA8C00  4B 72 61 3C */	b __dl__FPv
lbl_80BA8C04:
/* 80BA8C04  7F E3 FB 78 */	mr r3, r31
/* 80BA8C08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA8C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA8C10  7C 08 03 A6 */	mtlr r0
/* 80BA8C14  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA8C18  4E 80 00 20 */	blr 
