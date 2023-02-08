lbl_804EF710:
/* 804EF710  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804EF714  7C 08 02 A6 */	mflr r0
/* 804EF718  90 01 00 34 */	stw r0, 0x34(r1)
/* 804EF71C  39 61 00 30 */	addi r11, r1, 0x30
/* 804EF720  4B E7 2A BD */	bl _savegpr_29
/* 804EF724  7C 7D 1B 78 */	mr r29, r3
/* 804EF728  3C 60 80 50 */	lis r3, lit_3777@ha /* 0x804FA6BC@ha */
/* 804EF72C  3B E3 A6 BC */	addi r31, r3, lit_3777@l /* 0x804FA6BC@l */
/* 804EF730  3C 1D 00 01 */	addis r0, r29, 1
/* 804EF734  1F C4 61 D4 */	mulli r30, r4, 0x61d4
/* 804EF738  7C 60 F2 14 */	add r3, r0, r30
/* 804EF73C  88 03 85 3A */	lbz r0, -0x7ac6(r3)
/* 804EF740  7C 00 07 75 */	extsb. r0, r0
/* 804EF744  41 82 00 54 */	beq lbl_804EF798
/* 804EF748  38 00 00 00 */	li r0, 0
/* 804EF74C  98 03 85 3A */	stb r0, -0x7ac6(r3)
/* 804EF750  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070061@ha */
/* 804EF754  38 03 00 61 */	addi r0, r3, 0x0061 /* 0x00070061@l */
/* 804EF758  90 01 00 08 */	stw r0, 8(r1)
/* 804EF75C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804EF760  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804EF764  80 63 00 00 */	lwz r3, 0(r3)
/* 804EF768  38 81 00 08 */	addi r4, r1, 8
/* 804EF76C  3C BE 00 01 */	addis r5, r30, 1
/* 804EF770  38 A5 84 44 */	addi r5, r5, -31676
/* 804EF774  7C BD 2A 14 */	add r5, r29, r5
/* 804EF778  38 C0 00 00 */	li r6, 0
/* 804EF77C  38 E0 00 00 */	li r7, 0
/* 804EF780  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804EF784  FC 40 08 90 */	fmr f2, f1
/* 804EF788  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 804EF78C  FC 80 18 90 */	fmr f4, f3
/* 804EF790  39 00 00 00 */	li r8, 0
/* 804EF794  4B DB C1 F1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_804EF798:
/* 804EF798  3C 1D 00 01 */	addis r0, r29, 1
/* 804EF79C  7C 60 F2 14 */	add r3, r0, r30
/* 804EF7A0  88 03 85 38 */	lbz r0, -0x7ac8(r3)
/* 804EF7A4  7C 00 07 75 */	extsb. r0, r0
/* 804EF7A8  41 82 00 48 */	beq lbl_804EF7F0
/* 804EF7AC  38 00 00 00 */	li r0, 0
/* 804EF7B0  98 03 85 38 */	stb r0, -0x7ac8(r3)
/* 804EF7B4  38 00 00 14 */	li r0, 0x14
/* 804EF7B8  98 03 85 39 */	stb r0, -0x7ac7(r3)
/* 804EF7BC  4B C6 FC FD */	bl cancelFmChainGrab__9daPy_py_cFv
/* 804EF7C0  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804EF7C4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804EF7C8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804EF7CC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804EF7D0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804EF7D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804EF7D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804EF7DC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804EF7E0  38 80 00 06 */	li r4, 6
/* 804EF7E4  38 A0 00 1F */	li r5, 0x1f
/* 804EF7E8  38 C1 00 0C */	addi r6, r1, 0xc
/* 804EF7EC  4B B8 02 39 */	bl StartShock__12dVibration_cFii4cXyz
lbl_804EF7F0:
/* 804EF7F0  39 61 00 30 */	addi r11, r1, 0x30
/* 804EF7F4  4B E7 2A 35 */	bl _restgpr_29
/* 804EF7F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804EF7FC  7C 08 03 A6 */	mtlr r0
/* 804EF800  38 21 00 30 */	addi r1, r1, 0x30
/* 804EF804  4E 80 00 20 */	blr 
