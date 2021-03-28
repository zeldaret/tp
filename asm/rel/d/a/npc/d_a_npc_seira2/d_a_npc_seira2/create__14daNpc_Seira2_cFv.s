lbl_80AD0D58:
/* 80AD0D58  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AD0D5C  7C 08 02 A6 */	mflr r0
/* 80AD0D60  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AD0D64  39 61 00 30 */	addi r11, r1, 0x30
/* 80AD0D68  4B 89 14 74 */	b _savegpr_29
/* 80AD0D6C  7C 7D 1B 78 */	mr r29, r3
/* 80AD0D70  3C 80 80 AD */	lis r4, m__20daNpc_Seira2_Param_c@ha
/* 80AD0D74  3B E4 4A 60 */	addi r31, r4, m__20daNpc_Seira2_Param_c@l
/* 80AD0D78  3C 80 80 AD */	lis r4, cNullVec__6Z2Calc@ha
/* 80AD0D7C  3B C4 4B 90 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80AD0D80  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AD0D84  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AD0D88  40 82 00 40 */	bne lbl_80AD0DC8
/* 80AD0D8C  28 1D 00 00 */	cmplwi r29, 0
/* 80AD0D90  41 82 00 2C */	beq lbl_80AD0DBC
/* 80AD0D94  38 1E 00 40 */	addi r0, r30, 0x40
/* 80AD0D98  90 01 00 08 */	stw r0, 8(r1)
/* 80AD0D9C  38 9E 00 70 */	addi r4, r30, 0x70
/* 80AD0DA0  38 BE 01 F8 */	addi r5, r30, 0x1f8
/* 80AD0DA4  38 DE 04 B4 */	addi r6, r30, 0x4b4
/* 80AD0DA8  38 E0 00 04 */	li r7, 4
/* 80AD0DAC  39 1E 05 94 */	addi r8, r30, 0x594
/* 80AD0DB0  39 20 00 04 */	li r9, 4
/* 80AD0DB4  39 5E 00 30 */	addi r10, r30, 0x30
/* 80AD0DB8  48 00 3A 01 */	bl __ct__14daNpc_Seira2_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80AD0DBC:
/* 80AD0DBC  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80AD0DC0  60 00 00 08 */	ori r0, r0, 8
/* 80AD0DC4  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80AD0DC8:
/* 80AD0DC8  7F A3 EB 78 */	mr r3, r29
/* 80AD0DCC  48 00 09 51 */	bl getType__14daNpc_Seira2_cFv
/* 80AD0DD0  98 7D 10 C1 */	stb r3, 0x10c1(r29)
/* 80AD0DD4  7F A3 EB 78 */	mr r3, r29
/* 80AD0DD8  48 00 09 C5 */	bl getFlowNodeNo__14daNpc_Seira2_cFv
/* 80AD0DDC  90 7D 0A 7C */	stw r3, 0xa7c(r29)
/* 80AD0DE0  38 60 03 16 */	li r3, 0x316
/* 80AD0DE4  4B 67 BC C8 */	b daNpcT_chkEvtBit__FUl
/* 80AD0DE8  98 7D 10 EE */	stb r3, 0x10ee(r29)
/* 80AD0DEC  38 00 00 00 */	li r0, 0
/* 80AD0DF0  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80AD0DF4  7F A3 EB 78 */	mr r3, r29
/* 80AD0DF8  48 00 09 CD */	bl checkBottle__14daNpc_Seira2_cFv
/* 80AD0DFC  98 7D 10 C0 */	stb r3, 0x10c0(r29)
/* 80AD0E00  7F A3 EB 78 */	mr r3, r29
/* 80AD0E04  88 1D 10 C1 */	lbz r0, 0x10c1(r29)
/* 80AD0E08  54 00 10 3A */	slwi r0, r0, 2
/* 80AD0E0C  38 9E 00 54 */	addi r4, r30, 0x54
/* 80AD0E10  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AD0E14  38 BE 00 40 */	addi r5, r30, 0x40
/* 80AD0E18  4B 67 75 E0 */	b loadRes__8daNpcT_cFPCScPPCc
/* 80AD0E1C  7C 7E 1B 78 */	mr r30, r3
/* 80AD0E20  2C 1E 00 04 */	cmpwi r30, 4
/* 80AD0E24  40 82 01 B8 */	bne lbl_80AD0FDC
/* 80AD0E28  7F A3 EB 78 */	mr r3, r29
/* 80AD0E2C  3C 80 80 AD */	lis r4, createHeapCallBack__14daNpc_Seira2_cFP10fopAc_ac_c@ha
/* 80AD0E30  38 84 16 A4 */	addi r4, r4, createHeapCallBack__14daNpc_Seira2_cFP10fopAc_ac_c@l
/* 80AD0E34  38 A0 64 30 */	li r5, 0x6430
/* 80AD0E38  4B 54 96 78 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AD0E3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AD0E40  40 82 00 0C */	bne lbl_80AD0E4C
/* 80AD0E44  38 60 00 05 */	li r3, 5
/* 80AD0E48  48 00 01 98 */	b lbl_80AD0FE0
lbl_80AD0E4C:
/* 80AD0E4C  7F A3 EB 78 */	mr r3, r29
/* 80AD0E50  48 00 09 DD */	bl isDelete__14daNpc_Seira2_cFv
/* 80AD0E54  2C 03 00 00 */	cmpwi r3, 0
/* 80AD0E58  41 82 00 0C */	beq lbl_80AD0E64
/* 80AD0E5C  38 60 00 05 */	li r3, 5
/* 80AD0E60  48 00 01 80 */	b lbl_80AD0FE0
lbl_80AD0E64:
/* 80AD0E64  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AD0E68  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD0E6C  38 03 00 24 */	addi r0, r3, 0x24
/* 80AD0E70  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80AD0E74  7F A3 EB 78 */	mr r3, r29
/* 80AD0E78  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80AD0E7C  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 80AD0E80  FC 60 08 90 */	fmr f3, f1
/* 80AD0E84  C0 9F 00 94 */	lfs f4, 0x94(r31)
/* 80AD0E88  C0 BF 00 98 */	lfs f5, 0x98(r31)
/* 80AD0E8C  FC C0 20 90 */	fmr f6, f4
/* 80AD0E90  4B 54 96 B8 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80AD0E94  38 7D 05 80 */	addi r3, r29, 0x580
/* 80AD0E98  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AD0E9C  38 BD 05 38 */	addi r5, r29, 0x538
/* 80AD0EA0  38 C0 00 03 */	li r6, 3
/* 80AD0EA4  38 E0 00 01 */	li r7, 1
/* 80AD0EA8  4B 7E F6 88 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80AD0EAC  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80AD0EB0  90 01 00 08 */	stw r0, 8(r1)
/* 80AD0EB4  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80AD0EB8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AD0EBC  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80AD0EC0  7F A6 EB 78 */	mr r6, r29
/* 80AD0EC4  38 E0 00 01 */	li r7, 1
/* 80AD0EC8  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80AD0ECC  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80AD0ED0  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80AD0ED4  4B 5A 53 74 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AD0ED8  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80AD0EDC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AD0EE0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AD0EE4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80AD0EE8  4B 5A 5B C4 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80AD0EEC  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80AD0EF0  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80AD0EF4  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80AD0EF8  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80AD0EFC  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80AD0F00  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80AD0F04  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80AD0F08  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80AD0F0C  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80AD0F10  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80AD0F14  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80AD0F18  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80AD0F1C  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80AD0F20  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80AD0F24  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80AD0F28  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80AD0F2C  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80AD0F30  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80AD0F34  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80AD0F38  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80AD0F3C  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80AD0F40  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80AD0F44  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80AD0F48  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80AD0F4C  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80AD0F50  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80AD0F54  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80AD0F58  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80AD0F5C  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80AD0F60  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80AD0F64  7F A3 EB 78 */	mr r3, r29
/* 80AD0F68  4B 67 7D 08 */	b setEnvTevColor__8daNpcT_cFv
/* 80AD0F6C  7F A3 EB 78 */	mr r3, r29
/* 80AD0F70  4B 67 7D 5C */	b setRoomNo__8daNpcT_cFv
/* 80AD0F74  38 7D 08 64 */	addi r3, r29, 0x864
/* 80AD0F78  38 9F 00 00 */	addi r4, r31, 0
/* 80AD0F7C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80AD0F80  FC 00 00 1E */	fctiwz f0, f0
/* 80AD0F84  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80AD0F88  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80AD0F8C  38 A0 00 00 */	li r5, 0
/* 80AD0F90  7F A6 EB 78 */	mr r6, r29
/* 80AD0F94  4B 5B 28 CC */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AD0F98  38 7D 0F 84 */	addi r3, r29, 0xf84
/* 80AD0F9C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80AD0FA0  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80AD0FA4  4B 5B 39 10 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80AD0FA8  38 1D 08 64 */	addi r0, r29, 0x864
/* 80AD0FAC  90 1D 0F C8 */	stw r0, 0xfc8(r29)
/* 80AD0FB0  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80AD0FB4  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80AD0FB8  90 1D 10 28 */	stw r0, 0x1028(r29)
/* 80AD0FBC  7F A3 EB 78 */	mr r3, r29
/* 80AD0FC0  48 00 08 75 */	bl reset__14daNpc_Seira2_cFv
/* 80AD0FC4  38 00 00 01 */	li r0, 1
/* 80AD0FC8  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80AD0FCC  7F A3 EB 78 */	mr r3, r29
/* 80AD0FD0  48 00 05 6D */	bl Execute__14daNpc_Seira2_cFv
/* 80AD0FD4  38 00 00 00 */	li r0, 0
/* 80AD0FD8  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80AD0FDC:
/* 80AD0FDC  7F C3 F3 78 */	mr r3, r30
lbl_80AD0FE0:
/* 80AD0FE0  39 61 00 30 */	addi r11, r1, 0x30
/* 80AD0FE4  4B 89 12 44 */	b _restgpr_29
/* 80AD0FE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AD0FEC  7C 08 03 A6 */	mtlr r0
/* 80AD0FF0  38 21 00 30 */	addi r1, r1, 0x30
/* 80AD0FF4  4E 80 00 20 */	blr 
