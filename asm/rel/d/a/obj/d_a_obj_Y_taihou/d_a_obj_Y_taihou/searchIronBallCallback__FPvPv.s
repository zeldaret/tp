lbl_80B9FD5C:
/* 80B9FD5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9FD60  7C 08 02 A6 */	mflr r0
/* 80B9FD64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9FD68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9FD6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B9FD70  7C 9F 23 78 */	mr r31, r4
/* 80B9FD74  A8 03 00 0E */	lha r0, 0xe(r3)
/* 80B9FD78  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 80B9FD7C  40 82 00 50 */	bne lbl_80B9FDCC
/* 80B9FD80  7C 7E 1B 78 */	mr r30, r3
/* 80B9FD84  88 03 0C F0 */	lbz r0, 0xcf0(r3)
/* 80B9FD88  2C 00 00 03 */	cmpwi r0, 3
/* 80B9FD8C  40 82 00 40 */	bne lbl_80B9FDCC
/* 80B9FD90  88 1E 0D B7 */	lbz r0, 0xdb7(r30)
/* 80B9FD94  28 00 00 00 */	cmplwi r0, 0
/* 80B9FD98  41 82 00 34 */	beq lbl_80B9FDCC
/* 80B9FD9C  7F E3 FB 78 */	mr r3, r31
/* 80B9FDA0  7F C4 F3 78 */	mr r4, r30
/* 80B9FDA4  4B 47 AB 70 */	b fopAcM_searchActorDistance2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B9FDA8  3C 60 80 BA */	lis r3, lit_3749@ha
/* 80B9FDAC  C0 03 11 68 */	lfs f0, lit_3749@l(r3)
/* 80B9FDB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B9FDB4  40 80 00 18 */	bge lbl_80B9FDCC
/* 80B9FDB8  7F E3 FB 78 */	mr r3, r31
/* 80B9FDBC  7F C4 F3 78 */	mr r4, r30
/* 80B9FDC0  48 00 00 F1 */	bl setIronBall__14daObjYtaihou_cFP12daObjCarry_c
/* 80B9FDC4  7F C3 F3 78 */	mr r3, r30
/* 80B9FDC8  48 00 00 08 */	b lbl_80B9FDD0
lbl_80B9FDCC:
/* 80B9FDCC  38 60 00 00 */	li r3, 0
lbl_80B9FDD0:
/* 80B9FDD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9FDD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B9FDD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9FDDC  7C 08 03 A6 */	mtlr r0
/* 80B9FDE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9FDE4  4E 80 00 20 */	blr 
