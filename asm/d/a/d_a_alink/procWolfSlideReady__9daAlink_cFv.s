lbl_8012FD2C:
/* 8012FD2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8012FD30  7C 08 02 A6 */	mflr r0
/* 8012FD34  90 01 00 34 */	stw r0, 0x34(r1)
/* 8012FD38  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8012FD3C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8012FD40  7C 7E 1B 78 */	mr r30, r3
/* 8012FD44  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8012FD48  38 00 00 05 */	li r0, 5
/* 8012FD4C  98 03 2F 99 */	stb r0, 0x2f99(r3)
/* 8012FD50  C0 62 93 14 */	lfs f3, lit_7307(r2)
/* 8012FD54  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 8012FD58  C0 23 34 78 */	lfs f1, 0x3478(r3)
/* 8012FD5C  C0 03 1F E0 */	lfs f0, 0x1fe0(r3)
/* 8012FD60  EC 01 00 32 */	fmuls f0, f1, f0
/* 8012FD64  EC 02 00 28 */	fsubs f0, f2, f0
/* 8012FD68  EC 23 00 32 */	fmuls f1, f3, f0
/* 8012FD6C  3C 80 80 42 */	lis r4, l_wolfBaseAnime@ha
/* 8012FD70  C4 04 56 1C */	lfsu f0, l_wolfBaseAnime@l(r4)
/* 8012FD74  EC 00 00 72 */	fmuls f0, f0, f1
/* 8012FD78  D0 03 35 88 */	stfs f0, 0x3588(r3)
/* 8012FD7C  C0 04 00 08 */	lfs f0, 8(r4)
/* 8012FD80  EC 00 00 72 */	fmuls f0, f0, f1
/* 8012FD84  D0 03 35 90 */	stfs f0, 0x3590(r3)
/* 8012FD88  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha
/* 8012FD8C  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l
/* 8012FD90  90 01 00 18 */	stw r0, 0x18(r1)
/* 8012FD94  38 81 00 08 */	addi r4, r1, 8
/* 8012FD98  4B F8 22 41 */	bl getSlidePolygon__9daAlink_cFP8cM3dGPla
/* 8012FD9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012FDA0  41 82 00 3C */	beq lbl_8012FDDC
/* 8012FDA4  38 61 00 08 */	addi r3, r1, 8
/* 8012FDA8  48 13 73 81 */	bl atan2sX_Z__4cXyzCFv
/* 8012FDAC  7C 64 1B 78 */	mr r4, r3
/* 8012FDB0  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8012FDB4  38 A0 00 04 */	li r5, 4
/* 8012FDB8  38 C0 10 00 */	li r6, 0x1000
/* 8012FDBC  38 E0 04 00 */	li r7, 0x400
/* 8012FDC0  48 14 07 81 */	bl cLib_addCalcAngleS__FPsssss
/* 8012FDC4  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8012FDC8  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8012FDCC  38 A0 00 04 */	li r5, 4
/* 8012FDD0  38 C0 10 00 */	li r6, 0x1000
/* 8012FDD4  38 E0 04 00 */	li r7, 0x400
/* 8012FDD8  48 14 07 69 */	bl cLib_addCalcAngleS__FPsssss
lbl_8012FDDC:
/* 8012FDDC  7F E3 FB 78 */	mr r3, r31
/* 8012FDE0  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 8012FDE4  48 1F 86 49 */	bl checkPass__12J3DFrameCtrlFf
/* 8012FDE8  2C 03 00 00 */	cmpwi r3, 0
/* 8012FDEC  41 82 00 0C */	beq lbl_8012FDF8
/* 8012FDF0  38 00 00 01 */	li r0, 1
/* 8012FDF4  B0 1E 30 0C */	sth r0, 0x300c(r30)
lbl_8012FDF8:
/* 8012FDF8  7F E3 FB 78 */	mr r3, r31
/* 8012FDFC  48 02 E6 D1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012FE00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012FE04  41 82 00 34 */	beq lbl_8012FE38
/* 8012FE08  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 8012FE0C  2C 00 00 00 */	cmpwi r0, 0
/* 8012FE10  41 82 00 18 */	beq lbl_8012FE28
/* 8012FE14  7F C3 F3 78 */	mr r3, r30
/* 8012FE18  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8012FE1C  38 A0 00 01 */	li r5, 1
/* 8012FE20  48 00 00 61 */	bl procWolfSlideInit__9daAlink_cFsi
/* 8012FE24  48 00 00 34 */	b lbl_8012FE58
lbl_8012FE28:
/* 8012FE28  7F C3 F3 78 */	mr r3, r30
/* 8012FE2C  38 80 00 01 */	li r4, 1
/* 8012FE30  48 00 06 11 */	bl procWolfSlopeStartInit__9daAlink_cFi
/* 8012FE34  48 00 00 24 */	b lbl_8012FE58
lbl_8012FE38:
/* 8012FE38  7F E3 FB 78 */	mr r3, r31
/* 8012FE3C  C0 22 93 C0 */	lfs f1, lit_10193(r2)
/* 8012FE40  48 1F 85 ED */	bl checkPass__12J3DFrameCtrlFf
/* 8012FE44  2C 03 00 00 */	cmpwi r3, 0
/* 8012FE48  41 82 00 10 */	beq lbl_8012FE58
/* 8012FE4C  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 8012FE50  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8012FE54  90 1E 31 A0 */	stw r0, 0x31a0(r30)
lbl_8012FE58:
/* 8012FE58  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 8012FE5C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8012FE60  90 01 00 18 */	stw r0, 0x18(r1)
/* 8012FE64  38 60 00 01 */	li r3, 1
/* 8012FE68  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8012FE6C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8012FE70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8012FE74  7C 08 03 A6 */	mtlr r0
/* 8012FE78  38 21 00 30 */	addi r1, r1, 0x30
/* 8012FE7C  4E 80 00 20 */	blr 
