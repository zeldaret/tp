lbl_8014F228:
/* 8014F228  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014F22C  7C 08 02 A6 */	mflr r0
/* 8014F230  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014F234  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8014F238  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8014F23C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014F240  7C 7F 1B 78 */	mr r31, r3
/* 8014F244  A0 63 08 40 */	lhz r3, 0x840(r3)
/* 8014F248  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8014F24C  41 82 00 40 */	beq lbl_8014F28C
/* 8014F250  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8014F254  40 82 00 38 */	bne lbl_8014F28C
/* 8014F258  80 7F 07 54 */	lwz r3, 0x754(r31)
/* 8014F25C  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 8014F260  38 80 00 00 */	li r4, 0
/* 8014F264  38 A0 00 00 */	li r5, 0
/* 8014F268  4B EC 1E 49 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 8014F26C  7F E3 FB 78 */	mr r3, r31
/* 8014F270  FC 20 F8 90 */	fmr f1, f31
/* 8014F274  4B FF FE D5 */	bl checkEndAnm__11daBaseNpc_cFf
/* 8014F278  2C 03 00 00 */	cmpwi r3, 0
/* 8014F27C  41 82 00 10 */	beq lbl_8014F28C
/* 8014F280  A0 7F 08 42 */	lhz r3, 0x842(r31)
/* 8014F284  38 03 00 01 */	addi r0, r3, 1
/* 8014F288  B0 1F 08 42 */	sth r0, 0x842(r31)
lbl_8014F28C:
/* 8014F28C  A0 7F 08 40 */	lhz r3, 0x840(r31)
/* 8014F290  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 8014F294  41 82 00 30 */	beq lbl_8014F2C4
/* 8014F298  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8014F29C  40 82 00 28 */	bne lbl_8014F2C4
/* 8014F2A0  7F E3 FB 78 */	mr r3, r31
/* 8014F2A4  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 8014F2A8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8014F2AC  7D 89 03 A6 */	mtctr r12
/* 8014F2B0  4E 80 04 21 */	bctrl 
/* 8014F2B4  2C 03 00 00 */	cmpwi r3, 0
/* 8014F2B8  40 82 00 0C */	bne lbl_8014F2C4
/* 8014F2BC  38 7F 08 20 */	addi r3, r31, 0x820
/* 8014F2C0  4B EB E1 69 */	bl play__14mDoExt_baseAnmFv
lbl_8014F2C4:
/* 8014F2C4  A0 7F 08 40 */	lhz r3, 0x840(r31)
/* 8014F2C8  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 8014F2CC  40 82 00 94 */	bne lbl_8014F360
/* 8014F2D0  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8014F2D4  41 82 00 14 */	beq lbl_8014F2E8
/* 8014F2D8  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8014F2DC  40 82 00 0C */	bne lbl_8014F2E8
/* 8014F2E0  38 7F 07 EC */	addi r3, r31, 0x7ec
/* 8014F2E4  4B EB E1 45 */	bl play__14mDoExt_baseAnmFv
lbl_8014F2E8:
/* 8014F2E8  A0 7F 08 40 */	lhz r3, 0x840(r31)
/* 8014F2EC  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 8014F2F0  41 82 00 70 */	beq lbl_8014F360
/* 8014F2F4  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8014F2F8  40 82 00 68 */	bne lbl_8014F360
/* 8014F2FC  38 7F 08 08 */	addi r3, r31, 0x808
/* 8014F300  4B EB E1 29 */	bl play__14mDoExt_baseAnmFv
/* 8014F304  38 9F 08 08 */	addi r4, r31, 0x808
/* 8014F308  88 1F 08 0C */	lbz r0, 0x80c(r31)
/* 8014F30C  28 00 00 02 */	cmplwi r0, 2
/* 8014F310  40 82 00 30 */	bne lbl_8014F340
/* 8014F314  7F E3 FB 78 */	mr r3, r31
/* 8014F318  4B FF FE B1 */	bl checkEndAnm__11daBaseNpc_cFP12J3DFrameCtrl
/* 8014F31C  2C 03 00 00 */	cmpwi r3, 0
/* 8014F320  41 82 00 28 */	beq lbl_8014F348
/* 8014F324  38 60 00 3C */	li r3, 0x3c
/* 8014F328  38 80 00 64 */	li r4, 0x64
/* 8014F32C  4B FF E0 39 */	bl func_8014D364
/* 8014F330  B0 7F 08 38 */	sth r3, 0x838(r31)
/* 8014F334  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014F338  D0 1F 08 14 */	stfs f0, 0x814(r31)
/* 8014F33C  48 00 00 0C */	b lbl_8014F348
lbl_8014F340:
/* 8014F340  38 00 00 00 */	li r0, 0
/* 8014F344  B0 1F 08 38 */	sth r0, 0x838(r31)
lbl_8014F348:
/* 8014F348  38 7F 08 38 */	addi r3, r31, 0x838
/* 8014F34C  4B FF DF E1 */	bl func_8014D32C
/* 8014F350  7C 60 07 35 */	extsh. r0, r3
/* 8014F354  40 82 00 0C */	bne lbl_8014F360
/* 8014F358  C0 02 99 DC */	lfs f0, lit_4140(r2)
/* 8014F35C  D0 1F 08 14 */	stfs f0, 0x814(r31)
lbl_8014F360:
/* 8014F360  A0 7F 08 40 */	lhz r3, 0x840(r31)
/* 8014F364  38 00 FE F0 */	li r0, -272
/* 8014F368  7C 60 00 38 */	and r0, r3, r0
/* 8014F36C  B0 1F 08 40 */	sth r0, 0x840(r31)
/* 8014F370  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8014F374  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8014F378  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014F37C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014F380  7C 08 03 A6 */	mtlr r0
/* 8014F384  38 21 00 20 */	addi r1, r1, 0x20
/* 8014F388  4E 80 00 20 */	blr 
