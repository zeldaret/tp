lbl_801EB2B4:
/* 801EB2B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801EB2B8  7C 08 02 A6 */	mflr r0
/* 801EB2BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801EB2C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801EB2C4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801EB2C8  7C 7E 1B 78 */	mr r30, r3
/* 801EB2CC  3B E0 00 00 */	li r31, 0
/* 801EB2D0  88 03 06 B0 */	lbz r0, 0x6b0(r3)
/* 801EB2D4  28 00 00 00 */	cmplwi r0, 0
/* 801EB2D8  40 82 00 D8 */	bne lbl_801EB3B0
/* 801EB2DC  88 1E 06 B1 */	lbz r0, 0x6b1(r30)
/* 801EB2E0  28 00 00 03 */	cmplwi r0, 3
/* 801EB2E4  41 82 00 CC */	beq lbl_801EB3B0
/* 801EB2E8  28 00 00 02 */	cmplwi r0, 2
/* 801EB2EC  41 82 00 C4 */	beq lbl_801EB3B0
/* 801EB2F0  48 00 EC 95 */	bl dMw_UP_TRIGGER__Fv
/* 801EB2F4  2C 03 00 00 */	cmpwi r3, 0
/* 801EB2F8  40 82 00 44 */	bne lbl_801EB33C
/* 801EB2FC  48 00 EC 9D */	bl dMw_DOWN_TRIGGER__Fv
/* 801EB300  2C 03 00 00 */	cmpwi r3, 0
/* 801EB304  40 82 00 38 */	bne lbl_801EB33C
/* 801EB308  48 00 ED 49 */	bl dMw_B_TRIGGER__Fv
/* 801EB30C  2C 03 00 00 */	cmpwi r3, 0
/* 801EB310  40 82 00 2C */	bne lbl_801EB33C
/* 801EB314  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801EB318  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801EB31C  88 03 00 C0 */	lbz r0, 0xc0(r3)
/* 801EB320  28 00 00 02 */	cmplwi r0, 2
/* 801EB324  41 82 00 18 */	beq lbl_801EB33C
/* 801EB328  28 00 00 01 */	cmplwi r0, 1
/* 801EB32C  41 82 00 10 */	beq lbl_801EB33C
/* 801EB330  A0 03 00 B2 */	lhz r0, 0xb2(r3)
/* 801EB334  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 801EB338  41 82 00 78 */	beq lbl_801EB3B0
lbl_801EB33C:
/* 801EB33C  48 00 EC 49 */	bl dMw_UP_TRIGGER__Fv
/* 801EB340  2C 03 00 00 */	cmpwi r3, 0
/* 801EB344  41 82 00 10 */	beq lbl_801EB354
/* 801EB348  38 00 00 00 */	li r0, 0
/* 801EB34C  98 1E 06 BC */	stb r0, 0x6bc(r30)
/* 801EB350  48 00 00 24 */	b lbl_801EB374
lbl_801EB354:
/* 801EB354  48 00 EC 45 */	bl dMw_DOWN_TRIGGER__Fv
/* 801EB358  2C 03 00 00 */	cmpwi r3, 0
/* 801EB35C  41 82 00 10 */	beq lbl_801EB36C
/* 801EB360  38 00 00 02 */	li r0, 2
/* 801EB364  98 1E 06 BC */	stb r0, 0x6bc(r30)
/* 801EB368  48 00 00 0C */	b lbl_801EB374
lbl_801EB36C:
/* 801EB36C  38 00 00 FF */	li r0, 0xff
/* 801EB370  98 1E 06 BC */	stb r0, 0x6bc(r30)
lbl_801EB374:
/* 801EB374  38 00 00 3D */	li r0, 0x3d
/* 801EB378  90 01 00 08 */	stw r0, 8(r1)
/* 801EB37C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801EB380  38 81 00 08 */	addi r4, r1, 8
/* 801EB384  38 A0 00 00 */	li r5, 0
/* 801EB388  38 C0 00 00 */	li r6, 0
/* 801EB38C  38 E0 00 00 */	li r7, 0
/* 801EB390  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EB394  FC 40 08 90 */	fmr f2, f1
/* 801EB398  C0 62 A9 C0 */	lfs f3, lit_4465(r2)
/* 801EB39C  FC 80 18 90 */	fmr f4, f3
/* 801EB3A0  39 00 00 00 */	li r8, 0
/* 801EB3A4  48 0C 05 E1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801EB3A8  48 03 36 2D */	bl dMeter2Info_set2DVibrationM__Fv
/* 801EB3AC  3B E0 00 01 */	li r31, 1
lbl_801EB3B0:
/* 801EB3B0  7F E3 FB 78 */	mr r3, r31
/* 801EB3B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801EB3B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801EB3BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801EB3C0  7C 08 03 A6 */	mtlr r0
/* 801EB3C4  38 21 00 20 */	addi r1, r1, 0x20
/* 801EB3C8  4E 80 00 20 */	blr 
