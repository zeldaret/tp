lbl_800F8F08:
/* 800F8F08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F8F0C  7C 08 02 A6 */	mflr r0
/* 800F8F10  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F8F14  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 800F8F18  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 800F8F1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F8F20  93 C1 00 08 */	stw r30, 8(r1)
/* 800F8F24  7C 7E 1B 78 */	mr r30, r3
/* 800F8F28  FF E0 08 90 */	fmr f31, f1
/* 800F8F2C  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800F8F30  7F E3 FB 78 */	mr r3, r31
/* 800F8F34  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800F8F38  48 22 F4 F5 */	bl checkPass__12J3DFrameCtrlFf
/* 800F8F3C  2C 03 00 00 */	cmpwi r3, 0
/* 800F8F40  41 82 00 0C */	beq lbl_800F8F4C
/* 800F8F44  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800F8F48  48 00 00 08 */	b lbl_800F8F50
lbl_800F8F4C:
/* 800F8F4C  FC 20 F8 90 */	fmr f1, f31
lbl_800F8F50:
/* 800F8F50  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F8F54  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 800F8F58  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 800F8F5C  80 7E 1F 2C */	lwz r3, 0x1f2c(r30)
/* 800F8F60  D0 23 00 08 */	stfs f1, 8(r3)
/* 800F8F64  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 800F8F68  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 800F8F6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F8F70  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F8F74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F8F78  7C 08 03 A6 */	mtlr r0
/* 800F8F7C  38 21 00 20 */	addi r1, r1, 0x20
/* 800F8F80  4E 80 00 20 */	blr 
