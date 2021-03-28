lbl_80999844:
/* 80999844  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80999848  7C 08 02 A6 */	mflr r0
/* 8099984C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80999850  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80999854  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80999858  7C 7E 1B 78 */	mr r30, r3
/* 8099985C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80999860  3D 60 80 9A */	lis r11, m__20daNpc_clerkB_Param_c@ha
/* 80999864  3B EB 99 78 */	addi r31, r11, m__20daNpc_clerkB_Param_c@l
/* 80999868  90 01 00 08 */	stw r0, 8(r1)
/* 8099986C  4B FF F3 09 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80999870  3C 60 80 3C */	lis r3, __vt__13dShopSystem_c@ha
/* 80999874  38 03 BA 7C */	addi r0, r3, __vt__13dShopSystem_c@l
/* 80999878  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 8099987C  38 7E 0E 48 */	addi r3, r30, 0xe48
/* 80999880  4B 7F D0 94 */	b __ct__15dShopItemCtrl_cFv
/* 80999884  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80999888  D0 3E 0F 38 */	stfs f1, 0xf38(r30)
/* 8099988C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80999890  D0 1E 0F 3C */	stfs f0, 0xf3c(r30)
/* 80999894  D0 3E 0F 40 */	stfs f1, 0xf40(r30)
/* 80999898  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8099989C  D0 1E 0F 44 */	stfs f0, 0xf44(r30)
/* 809998A0  38 00 00 01 */	li r0, 1
/* 809998A4  98 1E 0F 52 */	stb r0, 0xf52(r30)
/* 809998A8  38 60 00 00 */	li r3, 0
/* 809998AC  B0 7E 0F 48 */	sth r3, 0xf48(r30)
/* 809998B0  B0 7E 0F 4A */	sth r3, 0xf4a(r30)
/* 809998B4  38 00 FF FF */	li r0, -1
/* 809998B8  B0 1E 0F 4C */	sth r0, 0xf4c(r30)
/* 809998BC  B0 7E 0F 4E */	sth r3, 0xf4e(r30)
/* 809998C0  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 809998C4  D0 3E 0E F4 */	stfs f1, 0xef4(r30)
/* 809998C8  D0 3E 0E F8 */	stfs f1, 0xef8(r30)
/* 809998CC  D0 3E 0E FC */	stfs f1, 0xefc(r30)
/* 809998D0  D0 3E 0F 00 */	stfs f1, 0xf00(r30)
/* 809998D4  D0 3E 0F 04 */	stfs f1, 0xf04(r30)
/* 809998D8  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 809998DC  D0 1E 0F 08 */	stfs f0, 0xf08(r30)
/* 809998E0  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 809998E4  D0 1E 0F 0C */	stfs f0, 0xf0c(r30)
/* 809998E8  D0 3E 0F 28 */	stfs f1, 0xf28(r30)
/* 809998EC  D0 3E 0F 2C */	stfs f1, 0xf2c(r30)
/* 809998F0  D0 3E 0F 30 */	stfs f1, 0xf30(r30)
/* 809998F4  B0 7E 0F 50 */	sth r3, 0xf50(r30)
/* 809998F8  90 7E 0E 90 */	stw r3, 0xe90(r30)
/* 809998FC  90 7E 0E 9C */	stw r3, 0xe9c(r30)
/* 80999900  90 7E 0E 98 */	stw r3, 0xe98(r30)
/* 80999904  90 7E 0E 94 */	stw r3, 0xe94(r30)
/* 80999908  90 7E 0E A8 */	stw r3, 0xea8(r30)
/* 8099990C  90 7E 0E A4 */	stw r3, 0xea4(r30)
/* 80999910  90 7E 0E A0 */	stw r3, 0xea0(r30)
/* 80999914  90 7E 0E AC */	stw r3, 0xeac(r30)
/* 80999918  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 8099991C  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80999920  80 64 00 00 */	lwz r3, 0(r4)
/* 80999924  80 04 00 04 */	lwz r0, 4(r4)
/* 80999928  90 7E 0E 78 */	stw r3, 0xe78(r30)
/* 8099992C  90 1E 0E 7C */	stw r0, 0xe7c(r30)
/* 80999930  80 04 00 08 */	lwz r0, 8(r4)
/* 80999934  90 1E 0E 80 */	stw r0, 0xe80(r30)
/* 80999938  7F C3 F3 78 */	mr r3, r30
/* 8099993C  4B 7F D9 FC */	b initShopSystem__13dShopSystem_cFv
/* 80999940  7F C3 F3 78 */	mr r3, r30
/* 80999944  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80999948  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8099994C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80999950  7C 08 03 A6 */	mtlr r0
/* 80999954  38 21 00 20 */	addi r1, r1, 0x20
/* 80999958  4E 80 00 20 */	blr 
