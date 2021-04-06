lbl_8081DBD0:
/* 8081DBD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8081DBD4  7C 08 02 A6 */	mflr r0
/* 8081DBD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8081DBDC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8081DBE0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8081DBE4  7C 7F 1B 78 */	mr r31, r3
/* 8081DBE8  2C 04 00 02 */	cmpwi r4, 2
/* 8081DBEC  41 82 01 0C */	beq lbl_8081DCF8
/* 8081DBF0  40 80 00 14 */	bge lbl_8081DC04
/* 8081DBF4  2C 04 00 00 */	cmpwi r4, 0
/* 8081DBF8  41 82 00 18 */	beq lbl_8081DC10
/* 8081DBFC  40 80 00 3C */	bge lbl_8081DC38
/* 8081DC00  48 00 01 48 */	b lbl_8081DD48
lbl_8081DC04:
/* 8081DC04  2C 04 00 04 */	cmpwi r4, 4
/* 8081DC08  40 80 01 40 */	bge lbl_8081DD48
/* 8081DC0C  48 00 00 D8 */	b lbl_8081DCE4
lbl_8081DC10:
/* 8081DC10  38 80 00 0B */	li r4, 0xb
/* 8081DC14  38 A0 00 00 */	li r5, 0
/* 8081DC18  4B FF 8E 65 */	bl setActionMode__9daE_YMB_cFii
/* 8081DC1C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8081DC20  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8081DC24  80 63 00 00 */	lwz r3, 0(r3)
/* 8081DC28  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8081DC2C  38 80 00 01 */	li r4, 1
/* 8081DC30  4B A9 65 35 */	bl setBattleBgmOff__8Z2SeqMgrFb
/* 8081DC34  48 00 01 14 */	b lbl_8081DD48
lbl_8081DC38:
/* 8081DC38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081DC3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081DC40  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8081DC44  38 80 00 1F */	li r4, 0x1f
/* 8081DC48  4B 85 21 4D */	bl StopQuake__12dVibration_cFi
/* 8081DC4C  7F E3 FB 78 */	mr r3, r31
/* 8081DC50  38 80 00 01 */	li r4, 1
/* 8081DC54  38 A0 00 01 */	li r5, 1
/* 8081DC58  4B FF 8E 25 */	bl setActionMode__9daE_YMB_cFii
/* 8081DC5C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8081DC60  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8081DC64  80 63 00 00 */	lwz r3, 0(r3)
/* 8081DC68  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8081DC6C  4B A9 1C 19 */	bl subBgmStop__8Z2SeqMgrFv
/* 8081DC70  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8081DC74  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8081DC78  80 63 00 00 */	lwz r3, 0(r3)
/* 8081DC7C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8081DC80  38 80 00 00 */	li r4, 0
/* 8081DC84  4B A9 64 E1 */	bl setBattleBgmOff__8Z2SeqMgrFb
/* 8081DC88  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8081DC8C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8081DC90  80 63 00 00 */	lwz r3, 0(r3)
/* 8081DC94  38 63 04 F4 */	addi r3, r3, 0x4f4
/* 8081DC98  38 80 00 01 */	li r4, 1
/* 8081DC9C  38 A0 0B B8 */	li r5, 0xbb8
/* 8081DCA0  38 C0 0F A0 */	li r6, 0xfa0
/* 8081DCA4  38 E0 17 70 */	li r7, 0x1770
/* 8081DCA8  4B AA 1C D9 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 8081DCAC  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 8081DCB0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8081DCB4  3C 60 80 82 */	lis r3, lit_3910@ha /* 0x808218C4@ha */
/* 8081DCB8  C0 03 18 C4 */	lfs f0, lit_3910@l(r3)  /* 0x808218C4@l */
/* 8081DCBC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8081DCC0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8081DCC4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8081DCC8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081DCCC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081DCD0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8081DCD4  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8081DCD8  4B A5 2F 2D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8081DCDC  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 8081DCE0  48 00 00 68 */	b lbl_8081DD48
lbl_8081DCE4:
/* 8081DCE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081DCE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081DCEC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8081DCF0  38 80 00 1F */	li r4, 0x1f
/* 8081DCF4  4B 85 20 A1 */	bl StopQuake__12dVibration_cFi
lbl_8081DCF8:
/* 8081DCF8  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8081DCFC  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 8081DD00  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8081DD04  7F E3 FB 78 */	mr r3, r31
/* 8081DD08  38 80 00 01 */	li r4, 1
/* 8081DD0C  38 A0 00 01 */	li r5, 1
/* 8081DD10  4B FF 8D 6D */	bl setActionMode__9daE_YMB_cFii
/* 8081DD14  38 00 00 01 */	li r0, 1
/* 8081DD18  98 1F 07 64 */	stb r0, 0x764(r31)
/* 8081DD1C  3C 60 80 82 */	lis r3, lit_3910@ha /* 0x808218C4@ha */
/* 8081DD20  C0 03 18 C4 */	lfs f0, lit_3910@l(r3)  /* 0x808218C4@l */
/* 8081DD24  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8081DD28  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8081DD2C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8081DD30  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081DD34  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081DD38  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8081DD3C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8081DD40  4B A5 2E C5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8081DD44  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
lbl_8081DD48:
/* 8081DD48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081DD4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081DD50  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 8081DD54  7C 00 07 74 */	extsb r0, r0
/* 8081DD58  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8081DD5C  7C 63 02 14 */	add r3, r3, r0
/* 8081DD60  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 8081DD64  C0 1F 07 34 */	lfs f0, 0x734(r31)
/* 8081DD68  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8081DD6C  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 8081DD70  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8081DD74  C0 1F 07 3C */	lfs f0, 0x73c(r31)
/* 8081DD78  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8081DD7C  C0 1F 07 28 */	lfs f0, 0x728(r31)
/* 8081DD80  D0 01 00 08 */	stfs f0, 8(r1)
/* 8081DD84  C0 1F 07 2C */	lfs f0, 0x72c(r31)
/* 8081DD88  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8081DD8C  C0 1F 07 30 */	lfs f0, 0x730(r31)
/* 8081DD90  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8081DD94  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081DD98  38 81 00 14 */	addi r4, r1, 0x14
/* 8081DD9C  38 A1 00 08 */	addi r5, r1, 8
/* 8081DDA0  4B 96 2E 79 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 8081DDA4  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081DDA8  4B 94 37 05 */	bl Start__9dCamera_cFv
/* 8081DDAC  38 7E 02 48 */	addi r3, r30, 0x248
/* 8081DDB0  38 80 00 00 */	li r4, 0
/* 8081DDB4  4B 94 52 59 */	bl SetTrimSize__9dCamera_cFl
/* 8081DDB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081DDBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081DDC0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8081DDC4  4B 82 46 A5 */	bl reset__14dEvt_control_cFv
/* 8081DDC8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8081DDCC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8081DDD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8081DDD4  7C 08 03 A6 */	mtlr r0
/* 8081DDD8  38 21 00 30 */	addi r1, r1, 0x30
/* 8081DDDC  4E 80 00 20 */	blr 
