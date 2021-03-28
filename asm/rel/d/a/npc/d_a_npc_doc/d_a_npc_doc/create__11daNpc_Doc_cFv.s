lbl_809A6DC0:
/* 809A6DC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809A6DC4  7C 08 02 A6 */	mflr r0
/* 809A6DC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 809A6DCC  39 61 00 30 */	addi r11, r1, 0x30
/* 809A6DD0  4B 9B B4 0C */	b _savegpr_29
/* 809A6DD4  7C 7D 1B 78 */	mr r29, r3
/* 809A6DD8  3C 80 80 9B */	lis r4, m__17daNpc_Doc_Param_c@ha
/* 809A6DDC  3B E4 A3 1C */	addi r31, r4, m__17daNpc_Doc_Param_c@l
/* 809A6DE0  3C 80 80 9B */	lis r4, cNullVec__6Z2Calc@ha
/* 809A6DE4  3B C4 A4 40 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 809A6DE8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809A6DEC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809A6DF0  40 82 00 40 */	bne lbl_809A6E30
/* 809A6DF4  28 1D 00 00 */	cmplwi r29, 0
/* 809A6DF8  41 82 00 2C */	beq lbl_809A6E24
/* 809A6DFC  38 1E 00 38 */	addi r0, r30, 0x38
/* 809A6E00  90 01 00 08 */	stw r0, 8(r1)
/* 809A6E04  38 9E 00 54 */	addi r4, r30, 0x54
/* 809A6E08  38 BE 01 6C */	addi r5, r30, 0x16c
/* 809A6E0C  38 DE 02 F4 */	addi r6, r30, 0x2f4
/* 809A6E10  38 E0 00 04 */	li r7, 4
/* 809A6E14  39 1E 03 94 */	addi r8, r30, 0x394
/* 809A6E18  39 20 00 04 */	li r9, 4
/* 809A6E1C  39 5E 00 28 */	addi r10, r30, 0x28
/* 809A6E20  48 00 33 6D */	bl __ct__11daNpc_Doc_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_809A6E24:
/* 809A6E24  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 809A6E28  60 00 00 08 */	ori r0, r0, 8
/* 809A6E2C  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_809A6E30:
/* 809A6E30  7F A3 EB 78 */	mr r3, r29
/* 809A6E34  48 00 07 F5 */	bl getType__11daNpc_Doc_cFv
/* 809A6E38  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 809A6E3C  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 809A6E40  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 809A6E44  28 03 FF FF */	cmplwi r3, 0xffff
/* 809A6E48  38 00 FF FF */	li r0, -1
/* 809A6E4C  41 82 00 08 */	beq lbl_809A6E54
/* 809A6E50  7C 60 1B 78 */	mr r0, r3
lbl_809A6E54:
/* 809A6E54  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 809A6E58  4B 80 57 24 */	b dKy_darkworld_check__Fv
/* 809A6E5C  98 7D 0A 89 */	stb r3, 0xa89(r29)
/* 809A6E60  7F A3 EB 78 */	mr r3, r29
/* 809A6E64  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 809A6E68  54 00 10 3A */	slwi r0, r0, 2
/* 809A6E6C  38 9E 00 48 */	addi r4, r30, 0x48
/* 809A6E70  7C 84 00 2E */	lwzx r4, r4, r0
/* 809A6E74  38 BE 00 38 */	addi r5, r30, 0x38
/* 809A6E78  4B 7A 15 80 */	b loadRes__8daNpcT_cFPCScPPCc
/* 809A6E7C  7C 7E 1B 78 */	mr r30, r3
/* 809A6E80  2C 1E 00 04 */	cmpwi r30, 4
/* 809A6E84  40 82 01 E8 */	bne lbl_809A706C
/* 809A6E88  7F A3 EB 78 */	mr r3, r29
/* 809A6E8C  48 00 07 D5 */	bl isDelete__11daNpc_Doc_cFv
/* 809A6E90  2C 03 00 00 */	cmpwi r3, 0
/* 809A6E94  41 82 00 0C */	beq lbl_809A6EA0
/* 809A6E98  38 60 00 05 */	li r3, 5
/* 809A6E9C  48 00 01 D4 */	b lbl_809A7070
lbl_809A6EA0:
/* 809A6EA0  7F A3 EB 78 */	mr r3, r29
/* 809A6EA4  3C 80 80 9A */	lis r4, createHeapCallBack__11daNpc_Doc_cFP10fopAc_ac_c@ha
/* 809A6EA8  38 84 75 B0 */	addi r4, r4, createHeapCallBack__11daNpc_Doc_cFP10fopAc_ac_c@l
/* 809A6EAC  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 809A6EB0  54 00 10 3A */	slwi r0, r0, 2
/* 809A6EB4  38 BF 00 90 */	addi r5, r31, 0x90
/* 809A6EB8  7C A5 00 2E */	lwzx r5, r5, r0
/* 809A6EBC  4B 67 35 F4 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809A6EC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809A6EC4  40 82 00 0C */	bne lbl_809A6ED0
/* 809A6EC8  38 60 00 05 */	li r3, 5
/* 809A6ECC  48 00 01 A4 */	b lbl_809A7070
lbl_809A6ED0:
/* 809A6ED0  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 809A6ED4  80 63 00 04 */	lwz r3, 4(r3)
/* 809A6ED8  38 03 00 24 */	addi r0, r3, 0x24
/* 809A6EDC  90 1D 05 04 */	stw r0, 0x504(r29)
/* 809A6EE0  7F A3 EB 78 */	mr r3, r29
/* 809A6EE4  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 809A6EE8  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 809A6EEC  FC 60 08 90 */	fmr f3, f1
/* 809A6EF0  C0 9F 00 A4 */	lfs f4, 0xa4(r31)
/* 809A6EF4  FC A0 20 90 */	fmr f5, f4
/* 809A6EF8  FC C0 20 90 */	fmr f6, f4
/* 809A6EFC  4B 67 36 4C */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 809A6F00  38 7D 05 80 */	addi r3, r29, 0x580
/* 809A6F04  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809A6F08  38 BD 05 38 */	addi r5, r29, 0x538
/* 809A6F0C  38 C0 00 03 */	li r6, 3
/* 809A6F10  38 E0 00 01 */	li r7, 1
/* 809A6F14  4B 91 96 1C */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 809A6F18  38 7D 09 C0 */	addi r3, r29, 0x9c0
/* 809A6F1C  38 9D 06 8C */	addi r4, r29, 0x68c
/* 809A6F20  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 809A6F24  FC 40 08 90 */	fmr f2, f1
/* 809A6F28  4B 6A 9D 74 */	b init__7dPaPo_cFP9dBgS_Acchff
/* 809A6F2C  7F A3 EB 78 */	mr r3, r29
/* 809A6F30  48 00 07 65 */	bl reset__11daNpc_Doc_cFv
/* 809A6F34  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 809A6F38  90 01 00 08 */	stw r0, 8(r1)
/* 809A6F3C  38 7D 06 8C */	addi r3, r29, 0x68c
/* 809A6F40  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809A6F44  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 809A6F48  7F A6 EB 78 */	mr r6, r29
/* 809A6F4C  38 E0 00 01 */	li r7, 1
/* 809A6F50  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 809A6F54  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 809A6F58  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 809A6F5C  4B 6C F2 EC */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809A6F60  38 7D 08 64 */	addi r3, r29, 0x864
/* 809A6F64  38 9F 00 00 */	addi r4, r31, 0
/* 809A6F68  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 809A6F6C  FC 00 00 1E */	fctiwz f0, f0
/* 809A6F70  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809A6F74  80 81 00 14 */	lwz r4, 0x14(r1)
/* 809A6F78  38 A0 00 00 */	li r5, 0
/* 809A6F7C  7F A6 EB 78 */	mr r6, r29
/* 809A6F80  4B 6D C8 E0 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 809A6F84  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 809A6F88  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 809A6F8C  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 809A6F90  4B 6D D9 24 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809A6F94  38 1D 08 64 */	addi r0, r29, 0x864
/* 809A6F98  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 809A6F9C  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 809A6FA0  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 809A6FA4  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 809A6FA8  38 7D 06 8C */	addi r3, r29, 0x68c
/* 809A6FAC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809A6FB0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809A6FB4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809A6FB8  4B 6C FA F4 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 809A6FBC  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 809A6FC0  90 1D 09 30 */	stw r0, 0x930(r29)
/* 809A6FC4  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 809A6FC8  90 1D 09 34 */	stw r0, 0x934(r29)
/* 809A6FCC  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 809A6FD0  90 1D 09 38 */	stw r0, 0x938(r29)
/* 809A6FD4  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 809A6FD8  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 809A6FDC  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 809A6FE0  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 809A6FE4  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 809A6FE8  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 809A6FEC  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 809A6FF0  90 1D 09 48 */	stw r0, 0x948(r29)
/* 809A6FF4  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 809A6FF8  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 809A6FFC  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 809A7000  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 809A7004  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 809A7008  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 809A700C  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 809A7010  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 809A7014  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 809A7018  90 1D 09 60 */	stw r0, 0x960(r29)
/* 809A701C  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 809A7020  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 809A7024  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 809A7028  90 1D 09 68 */	stw r0, 0x968(r29)
/* 809A702C  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 809A7030  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 809A7034  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 809A7038  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 809A703C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809A7040  41 82 00 14 */	beq lbl_809A7054
/* 809A7044  7F A3 EB 78 */	mr r3, r29
/* 809A7048  4B 7A 1C 28 */	b setEnvTevColor__8daNpcT_cFv
/* 809A704C  7F A3 EB 78 */	mr r3, r29
/* 809A7050  4B 7A 1C 7C */	b setRoomNo__8daNpcT_cFv
lbl_809A7054:
/* 809A7054  38 00 00 01 */	li r0, 1
/* 809A7058  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 809A705C  7F A3 EB 78 */	mr r3, r29
/* 809A7060  48 00 04 9D */	bl Execute__11daNpc_Doc_cFv
/* 809A7064  38 00 00 00 */	li r0, 0
/* 809A7068  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_809A706C:
/* 809A706C  7F C3 F3 78 */	mr r3, r30
lbl_809A7070:
/* 809A7070  39 61 00 30 */	addi r11, r1, 0x30
/* 809A7074  4B 9B B1 B4 */	b _restgpr_29
/* 809A7078  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809A707C  7C 08 03 A6 */	mtlr r0
/* 809A7080  38 21 00 30 */	addi r1, r1, 0x30
/* 809A7084  4E 80 00 20 */	blr 
