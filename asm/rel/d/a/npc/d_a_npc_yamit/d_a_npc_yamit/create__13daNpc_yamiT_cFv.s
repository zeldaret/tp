lbl_80B49D24:
/* 80B49D24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B49D28  7C 08 02 A6 */	mflr r0
/* 80B49D2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B49D30  39 61 00 30 */	addi r11, r1, 0x30
/* 80B49D34  4B 81 84 A9 */	bl _savegpr_29
/* 80B49D38  7C 7D 1B 78 */	mr r29, r3
/* 80B49D3C  3C 80 80 B5 */	lis r4, m__19daNpc_yamiT_Param_c@ha /* 0x80B4CDA4@ha */
/* 80B49D40  3B E4 CD A4 */	addi r31, r4, m__19daNpc_yamiT_Param_c@l /* 0x80B4CDA4@l */
/* 80B49D44  3C 80 80 B5 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B4CE9C@ha */
/* 80B49D48  3B C4 CE 9C */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80B4CE9C@l */
/* 80B49D4C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B49D50  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B49D54  40 82 00 40 */	bne lbl_80B49D94
/* 80B49D58  28 1D 00 00 */	cmplwi r29, 0
/* 80B49D5C  41 82 00 2C */	beq lbl_80B49D88
/* 80B49D60  38 1E 00 38 */	addi r0, r30, 0x38
/* 80B49D64  90 01 00 08 */	stw r0, 8(r1)
/* 80B49D68  38 9E 00 50 */	addi r4, r30, 0x50
/* 80B49D6C  38 BE 00 88 */	addi r5, r30, 0x88
/* 80B49D70  38 DE 00 DC */	addi r6, r30, 0xdc
/* 80B49D74  38 E0 00 04 */	li r7, 4
/* 80B49D78  39 1E 00 FC */	addi r8, r30, 0xfc
/* 80B49D7C  39 20 00 04 */	li r9, 4
/* 80B49D80  39 5E 00 28 */	addi r10, r30, 0x28
/* 80B49D84  48 00 2E B5 */	bl __ct__13daNpc_yamiT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80B49D88:
/* 80B49D88  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80B49D8C  60 00 00 08 */	ori r0, r0, 8
/* 80B49D90  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80B49D94:
/* 80B49D94  7F A3 EB 78 */	mr r3, r29
/* 80B49D98  48 00 08 69 */	bl getType__13daNpc_yamiT_cFv
/* 80B49D9C  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 80B49DA0  7F A3 EB 78 */	mr r3, r29
/* 80B49DA4  48 00 08 95 */	bl getFlowNodeNo__13daNpc_yamiT_cFv
/* 80B49DA8  90 7D 0A 7C */	stw r3, 0xa7c(r29)
/* 80B49DAC  38 00 00 00 */	li r0, 0
/* 80B49DB0  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80B49DB4  7F A3 EB 78 */	mr r3, r29
/* 80B49DB8  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80B49DBC  54 00 10 3A */	slwi r0, r0, 2
/* 80B49DC0  38 9E 00 44 */	addi r4, r30, 0x44
/* 80B49DC4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B49DC8  38 BE 00 38 */	addi r5, r30, 0x38
/* 80B49DCC  4B 5F E6 2D */	bl loadRes__8daNpcT_cFPCScPPCc
/* 80B49DD0  7C 7E 1B 78 */	mr r30, r3
/* 80B49DD4  2C 1E 00 04 */	cmpwi r30, 4
/* 80B49DD8  40 82 01 E4 */	bne lbl_80B49FBC
/* 80B49DDC  7F A3 EB 78 */	mr r3, r29
/* 80B49DE0  3C 80 80 B5 */	lis r4, createHeapCallBack__13daNpc_yamiT_cFP10fopAc_ac_c@ha /* 0x80B4A588@ha */
/* 80B49DE4  38 84 A5 88 */	addi r4, r4, createHeapCallBack__13daNpc_yamiT_cFP10fopAc_ac_c@l /* 0x80B4A588@l */
/* 80B49DE8  38 A0 38 50 */	li r5, 0x3850
/* 80B49DEC  4B 4D 06 C5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B49DF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B49DF4  40 82 00 0C */	bne lbl_80B49E00
/* 80B49DF8  38 60 00 05 */	li r3, 5
/* 80B49DFC  48 00 01 C4 */	b lbl_80B49FC0
lbl_80B49E00:
/* 80B49E00  7F A3 EB 78 */	mr r3, r29
/* 80B49E04  48 00 08 99 */	bl isDelete__13daNpc_yamiT_cFv
/* 80B49E08  2C 03 00 00 */	cmpwi r3, 0
/* 80B49E0C  41 82 00 0C */	beq lbl_80B49E18
/* 80B49E10  38 60 00 05 */	li r3, 5
/* 80B49E14  48 00 01 AC */	b lbl_80B49FC0
lbl_80B49E18:
/* 80B49E18  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80B49E1C  80 63 00 04 */	lwz r3, 4(r3)
/* 80B49E20  38 03 00 24 */	addi r0, r3, 0x24
/* 80B49E24  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80B49E28  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80B49E2C  D0 1D 05 20 */	stfs f0, 0x520(r29)
/* 80B49E30  7F A3 EB 78 */	mr r3, r29
/* 80B49E34  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80B49E38  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80B49E3C  FC 60 08 90 */	fmr f3, f1
/* 80B49E40  C0 9F 00 98 */	lfs f4, 0x98(r31)
/* 80B49E44  C0 BF 00 9C */	lfs f5, 0x9c(r31)
/* 80B49E48  FC C0 20 90 */	fmr f6, f4
/* 80B49E4C  4B 4D 06 FD */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80B49E50  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80B49E54  64 00 08 00 */	oris r0, r0, 0x800
/* 80B49E58  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80B49E5C  38 7D 05 80 */	addi r3, r29, 0x580
/* 80B49E60  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B49E64  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B49E68  38 C0 00 03 */	li r6, 3
/* 80B49E6C  38 E0 00 01 */	li r7, 1
/* 80B49E70  4B 77 66 C1 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80B49E74  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80B49E78  90 01 00 08 */	stw r0, 8(r1)
/* 80B49E7C  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B49E80  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B49E84  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80B49E88  7F A6 EB 78 */	mr r6, r29
/* 80B49E8C  38 E0 00 01 */	li r7, 1
/* 80B49E90  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80B49E94  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80B49E98  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80B49E9C  4B 52 C3 AD */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B49EA0  38 7D 08 64 */	addi r3, r29, 0x864
/* 80B49EA4  38 9F 00 00 */	addi r4, r31, 0
/* 80B49EA8  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80B49EAC  FC 00 00 1E */	fctiwz f0, f0
/* 80B49EB0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B49EB4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B49EB8  38 A0 00 00 */	li r5, 0
/* 80B49EBC  7F A6 EB 78 */	mr r6, r29
/* 80B49EC0  4B 53 99 A1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B49EC4  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 80B49EC8  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 80B49ECC  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 80B49ED0  4B 53 A9 E5 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80B49ED4  38 1D 08 64 */	addi r0, r29, 0x864
/* 80B49ED8  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 80B49EDC  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 80B49EE0  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 80B49EE4  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 80B49EE8  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B49EEC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B49EF0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B49EF4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B49EF8  4B 52 CB B5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80B49EFC  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80B49F00  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80B49F04  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80B49F08  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80B49F0C  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80B49F10  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80B49F14  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80B49F18  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80B49F1C  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80B49F20  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80B49F24  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80B49F28  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80B49F2C  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80B49F30  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80B49F34  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80B49F38  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80B49F3C  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80B49F40  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80B49F44  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80B49F48  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80B49F4C  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80B49F50  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80B49F54  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80B49F58  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80B49F5C  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80B49F60  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80B49F64  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80B49F68  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80B49F6C  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80B49F70  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80B49F74  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80B49F78  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80B49F7C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B49F80  41 82 00 14 */	beq lbl_80B49F94
/* 80B49F84  7F A3 EB 78 */	mr r3, r29
/* 80B49F88  4B 5F EC E9 */	bl setEnvTevColor__8daNpcT_cFv
/* 80B49F8C  7F A3 EB 78 */	mr r3, r29
/* 80B49F90  4B 5F ED 3D */	bl setRoomNo__8daNpcT_cFv
lbl_80B49F94:
/* 80B49F94  38 00 00 00 */	li r0, 0
/* 80B49F98  90 1D 0F 84 */	stw r0, 0xf84(r29)
/* 80B49F9C  7F A3 EB 78 */	mr r3, r29
/* 80B49FA0  48 00 07 85 */	bl reset__13daNpc_yamiT_cFv
/* 80B49FA4  38 00 00 01 */	li r0, 1
/* 80B49FA8  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80B49FAC  7F A3 EB 78 */	mr r3, r29
/* 80B49FB0  48 00 04 AD */	bl Execute__13daNpc_yamiT_cFv
/* 80B49FB4  38 00 00 00 */	li r0, 0
/* 80B49FB8  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80B49FBC:
/* 80B49FBC  7F C3 F3 78 */	mr r3, r30
lbl_80B49FC0:
/* 80B49FC0  39 61 00 30 */	addi r11, r1, 0x30
/* 80B49FC4  4B 81 82 65 */	bl _restgpr_29
/* 80B49FC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B49FCC  7C 08 03 A6 */	mtlr r0
/* 80B49FD0  38 21 00 30 */	addi r1, r1, 0x30
/* 80B49FD4  4E 80 00 20 */	blr 
