lbl_8012FB18:
/* 8012FB18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012FB1C  7C 08 02 A6 */	mflr r0
/* 8012FB20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012FB24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012FB28  7C 7F 1B 78 */	mr r31, r3
/* 8012FB2C  38 80 01 0D */	li r4, 0x10d
/* 8012FB30  4B F9 24 3D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012FB34  38 9F 1F D0 */	addi r4, r31, 0x1fd0
/* 8012FB38  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 8012FB3C  38 E3 EE 28 */	addi r7, r3, m__20daAlinkHIO_wlMove_c0@l
/* 8012FB40  C0 27 00 18 */	lfs f1, 0x18(r7)
/* 8012FB44  7F E3 FB 78 */	mr r3, r31
/* 8012FB48  38 A0 00 00 */	li r5, 0
/* 8012FB4C  38 C0 00 00 */	li r6, 0
/* 8012FB50  A8 E7 00 14 */	lha r7, 0x14(r7)
/* 8012FB54  C0 1F 1F E0 */	lfs f0, 0x1fe0(r31)
/* 8012FB58  EC 41 00 2A */	fadds f2, f1, f0
/* 8012FB5C  4B F7 C8 39 */	bl setFrameCtrl__9daAlink_cFP16daPy_frameCtrl_cUcssff
/* 8012FB60  C0 22 94 E0 */	lfs f1, lit_19379(r2)
/* 8012FB64  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wlMoveNoP_c0@ha
/* 8012FB68  38 63 EF 28 */	addi r3, r3, m__23daAlinkHIO_wlMoveNoP_c0@l
/* 8012FB6C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8012FB70  EC 01 00 32 */	fmuls f0, f1, f0
/* 8012FB74  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8012FB78  38 00 00 05 */	li r0, 5
/* 8012FB7C  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8012FB80  7F E3 FB 78 */	mr r3, r31
/* 8012FB84  38 80 00 02 */	li r4, 2
/* 8012FB88  4B FF 16 39 */	bl setFootEffectProcType__9daAlink_cFi
/* 8012FB8C  38 00 00 08 */	li r0, 8
/* 8012FB90  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 8012FB94  38 00 00 00 */	li r0, 0
/* 8012FB98  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 8012FB9C  38 60 00 01 */	li r3, 1
/* 8012FBA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012FBA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012FBA8  7C 08 03 A6 */	mtlr r0
/* 8012FBAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8012FBB0  4E 80 00 20 */	blr 
