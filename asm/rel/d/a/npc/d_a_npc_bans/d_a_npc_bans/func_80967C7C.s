lbl_80967C7C:
/* 80967C7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80967C80  7C 08 02 A6 */	mflr r0
/* 80967C84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80967C88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80967C8C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80967C90  7C 7E 1B 78 */	mr r30, r3
/* 80967C94  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80967C98  3D 60 80 96 */	lis r11, m__18daNpc_Bans_Param_c@ha
/* 80967C9C  3B EB 7E 20 */	addi r31, r11, m__18daNpc_Bans_Param_c@l
/* 80967CA0  90 01 00 08 */	stw r0, 8(r1)
/* 80967CA4  4B FF F2 71 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80967CA8  3C 60 80 3C */	lis r3, __vt__13dShopSystem_c@ha
/* 80967CAC  38 03 BA 7C */	addi r0, r3, __vt__13dShopSystem_c@l
/* 80967CB0  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80967CB4  38 7E 0E 48 */	addi r3, r30, 0xe48
/* 80967CB8  4B 82 EC 5C */	b __ct__15dShopItemCtrl_cFv
/* 80967CBC  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80967CC0  D0 3E 0F 38 */	stfs f1, 0xf38(r30)
/* 80967CC4  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80967CC8  D0 1E 0F 3C */	stfs f0, 0xf3c(r30)
/* 80967CCC  D0 3E 0F 40 */	stfs f1, 0xf40(r30)
/* 80967CD0  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80967CD4  D0 1E 0F 44 */	stfs f0, 0xf44(r30)
/* 80967CD8  38 00 00 01 */	li r0, 1
/* 80967CDC  98 1E 0F 52 */	stb r0, 0xf52(r30)
/* 80967CE0  38 60 00 00 */	li r3, 0
/* 80967CE4  B0 7E 0F 48 */	sth r3, 0xf48(r30)
/* 80967CE8  B0 7E 0F 4A */	sth r3, 0xf4a(r30)
/* 80967CEC  38 00 FF FF */	li r0, -1
/* 80967CF0  B0 1E 0F 4C */	sth r0, 0xf4c(r30)
/* 80967CF4  B0 7E 0F 4E */	sth r3, 0xf4e(r30)
/* 80967CF8  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80967CFC  D0 3E 0E F4 */	stfs f1, 0xef4(r30)
/* 80967D00  D0 3E 0E F8 */	stfs f1, 0xef8(r30)
/* 80967D04  D0 3E 0E FC */	stfs f1, 0xefc(r30)
/* 80967D08  D0 3E 0F 00 */	stfs f1, 0xf00(r30)
/* 80967D0C  D0 3E 0F 04 */	stfs f1, 0xf04(r30)
/* 80967D10  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80967D14  D0 1E 0F 08 */	stfs f0, 0xf08(r30)
/* 80967D18  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80967D1C  D0 1E 0F 0C */	stfs f0, 0xf0c(r30)
/* 80967D20  D0 3E 0F 28 */	stfs f1, 0xf28(r30)
/* 80967D24  D0 3E 0F 2C */	stfs f1, 0xf2c(r30)
/* 80967D28  D0 3E 0F 30 */	stfs f1, 0xf30(r30)
/* 80967D2C  B0 7E 0F 50 */	sth r3, 0xf50(r30)
/* 80967D30  90 7E 0E 90 */	stw r3, 0xe90(r30)
/* 80967D34  90 7E 0E 9C */	stw r3, 0xe9c(r30)
/* 80967D38  90 7E 0E 98 */	stw r3, 0xe98(r30)
/* 80967D3C  90 7E 0E 94 */	stw r3, 0xe94(r30)
/* 80967D40  90 7E 0E A8 */	stw r3, 0xea8(r30)
/* 80967D44  90 7E 0E A4 */	stw r3, 0xea4(r30)
/* 80967D48  90 7E 0E A0 */	stw r3, 0xea0(r30)
/* 80967D4C  90 7E 0E AC */	stw r3, 0xeac(r30)
/* 80967D50  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80967D54  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80967D58  80 64 00 00 */	lwz r3, 0(r4)
/* 80967D5C  80 04 00 04 */	lwz r0, 4(r4)
/* 80967D60  90 7E 0E 78 */	stw r3, 0xe78(r30)
/* 80967D64  90 1E 0E 7C */	stw r0, 0xe7c(r30)
/* 80967D68  80 04 00 08 */	lwz r0, 8(r4)
/* 80967D6C  90 1E 0E 80 */	stw r0, 0xe80(r30)
/* 80967D70  7F C3 F3 78 */	mr r3, r30
/* 80967D74  4B 82 F5 C4 */	b initShopSystem__13dShopSystem_cFv
/* 80967D78  7F C3 F3 78 */	mr r3, r30
/* 80967D7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80967D80  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80967D84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80967D88  7C 08 03 A6 */	mtlr r0
/* 80967D8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80967D90  4E 80 00 20 */	blr 
