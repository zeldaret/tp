lbl_80AD491C:
/* 80AD491C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD4920  7C 08 02 A6 */	mflr r0
/* 80AD4924  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD4928  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AD492C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AD4930  7C 7E 1B 78 */	mr r30, r3
/* 80AD4934  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80AD4938  3D 60 80 AD */	lis r11, m__20daNpc_Seira2_Param_c@ha /* 0x80AD4A60@ha */
/* 80AD493C  3B EB 4A 60 */	addi r31, r11, m__20daNpc_Seira2_Param_c@l /* 0x80AD4A60@l */
/* 80AD4940  90 01 00 08 */	stw r0, 8(r1)
/* 80AD4944  4B FF F2 A9 */	bl __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
/* 80AD4948  3C 60 80 3C */	lis r3, __vt__13dShopSystem_c@ha /* 0x803BBA7C@ha */
/* 80AD494C  38 03 BA 7C */	addi r0, r3, __vt__13dShopSystem_c@l /* 0x803BBA7C@l */
/* 80AD4950  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AD4954  38 7E 0E 48 */	addi r3, r30, 0xe48
/* 80AD4958  4B 6C 1F BD */	bl __ct__15dShopItemCtrl_cFv
/* 80AD495C  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80AD4960  D0 3E 0F 38 */	stfs f1, 0xf38(r30)
/* 80AD4964  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80AD4968  D0 1E 0F 3C */	stfs f0, 0xf3c(r30)
/* 80AD496C  D0 3E 0F 40 */	stfs f1, 0xf40(r30)
/* 80AD4970  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80AD4974  D0 1E 0F 44 */	stfs f0, 0xf44(r30)
/* 80AD4978  38 00 00 01 */	li r0, 1
/* 80AD497C  98 1E 0F 52 */	stb r0, 0xf52(r30)
/* 80AD4980  38 60 00 00 */	li r3, 0
/* 80AD4984  B0 7E 0F 48 */	sth r3, 0xf48(r30)
/* 80AD4988  B0 7E 0F 4A */	sth r3, 0xf4a(r30)
/* 80AD498C  38 00 FF FF */	li r0, -1
/* 80AD4990  B0 1E 0F 4C */	sth r0, 0xf4c(r30)
/* 80AD4994  B0 7E 0F 4E */	sth r3, 0xf4e(r30)
/* 80AD4998  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80AD499C  D0 3E 0E F4 */	stfs f1, 0xef4(r30)
/* 80AD49A0  D0 3E 0E F8 */	stfs f1, 0xef8(r30)
/* 80AD49A4  D0 3E 0E FC */	stfs f1, 0xefc(r30)
/* 80AD49A8  D0 3E 0F 00 */	stfs f1, 0xf00(r30)
/* 80AD49AC  D0 3E 0F 04 */	stfs f1, 0xf04(r30)
/* 80AD49B0  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80AD49B4  D0 1E 0F 08 */	stfs f0, 0xf08(r30)
/* 80AD49B8  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80AD49BC  D0 1E 0F 0C */	stfs f0, 0xf0c(r30)
/* 80AD49C0  D0 3E 0F 28 */	stfs f1, 0xf28(r30)
/* 80AD49C4  D0 3E 0F 2C */	stfs f1, 0xf2c(r30)
/* 80AD49C8  D0 3E 0F 30 */	stfs f1, 0xf30(r30)
/* 80AD49CC  B0 7E 0F 50 */	sth r3, 0xf50(r30)
/* 80AD49D0  90 7E 0E 90 */	stw r3, 0xe90(r30)
/* 80AD49D4  90 7E 0E 9C */	stw r3, 0xe9c(r30)
/* 80AD49D8  90 7E 0E 98 */	stw r3, 0xe98(r30)
/* 80AD49DC  90 7E 0E 94 */	stw r3, 0xe94(r30)
/* 80AD49E0  90 7E 0E A8 */	stw r3, 0xea8(r30)
/* 80AD49E4  90 7E 0E A4 */	stw r3, 0xea4(r30)
/* 80AD49E8  90 7E 0E A0 */	stw r3, 0xea0(r30)
/* 80AD49EC  90 7E 0E AC */	stw r3, 0xeac(r30)
/* 80AD49F0  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AD49F4  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80AD49F8  80 64 00 00 */	lwz r3, 0(r4)
/* 80AD49FC  80 04 00 04 */	lwz r0, 4(r4)
/* 80AD4A00  90 7E 0E 78 */	stw r3, 0xe78(r30)
/* 80AD4A04  90 1E 0E 7C */	stw r0, 0xe7c(r30)
/* 80AD4A08  80 04 00 08 */	lwz r0, 8(r4)
/* 80AD4A0C  90 1E 0E 80 */	stw r0, 0xe80(r30)
/* 80AD4A10  7F C3 F3 78 */	mr r3, r30
/* 80AD4A14  4B 6C 29 25 */	bl initShopSystem__13dShopSystem_cFv
/* 80AD4A18  7F C3 F3 78 */	mr r3, r30
/* 80AD4A1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AD4A20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AD4A24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD4A28  7C 08 03 A6 */	mtlr r0
/* 80AD4A2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD4A30  4E 80 00 20 */	blr 
