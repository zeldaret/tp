lbl_80A70D90:
/* 80A70D90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A70D94  7C 08 02 A6 */	mflr r0
/* 80A70D98  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A70D9C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A70DA0  4B 8F 14 3C */	b _savegpr_29
/* 80A70DA4  7C 7D 1B 78 */	mr r29, r3
/* 80A70DA8  3C 80 80 A7 */	lis r4, m__18daNpc_midP_Param_c@ha
/* 80A70DAC  3B E4 39 C0 */	addi r31, r4, m__18daNpc_midP_Param_c@l
/* 80A70DB0  3C 80 80 A7 */	lis r4, cNullVec__6Z2Calc@ha
/* 80A70DB4  3B C4 3A B4 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80A70DB8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A70DBC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A70DC0  40 82 00 40 */	bne lbl_80A70E00
/* 80A70DC4  28 1D 00 00 */	cmplwi r29, 0
/* 80A70DC8  41 82 00 2C */	beq lbl_80A70DF4
/* 80A70DCC  38 1E 00 38 */	addi r0, r30, 0x38
/* 80A70DD0  90 01 00 08 */	stw r0, 8(r1)
/* 80A70DD4  38 9E 00 4C */	addi r4, r30, 0x4c
/* 80A70DD8  38 BE 00 68 */	addi r5, r30, 0x68
/* 80A70DDC  38 DE 00 84 */	addi r6, r30, 0x84
/* 80A70DE0  38 E0 00 04 */	li r7, 4
/* 80A70DE4  39 1E 00 94 */	addi r8, r30, 0x94
/* 80A70DE8  39 20 00 04 */	li r9, 4
/* 80A70DEC  39 5E 00 28 */	addi r10, r30, 0x28
/* 80A70DF0  48 00 29 E1 */	bl __ct__12daNpc_midP_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80A70DF4:
/* 80A70DF4  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80A70DF8  60 00 00 08 */	ori r0, r0, 8
/* 80A70DFC  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80A70E00:
/* 80A70E00  7F A3 EB 78 */	mr r3, r29
/* 80A70E04  48 00 08 49 */	bl getType__12daNpc_midP_cFv
/* 80A70E08  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 80A70E0C  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80A70E10  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80A70E14  28 03 FF FF */	cmplwi r3, 0xffff
/* 80A70E18  38 00 FF FF */	li r0, -1
/* 80A70E1C  41 82 00 08 */	beq lbl_80A70E24
/* 80A70E20  7C 60 1B 78 */	mr r0, r3
lbl_80A70E24:
/* 80A70E24  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80A70E28  38 00 00 00 */	li r0, 0
/* 80A70E2C  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80A70E30  7F A3 EB 78 */	mr r3, r29
/* 80A70E34  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80A70E38  54 00 10 3A */	slwi r0, r0, 2
/* 80A70E3C  38 9E 00 44 */	addi r4, r30, 0x44
/* 80A70E40  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A70E44  38 BE 00 38 */	addi r5, r30, 0x38
/* 80A70E48  4B 6D 75 B0 */	b loadRes__8daNpcT_cFPCScPPCc
/* 80A70E4C  7C 7E 1B 78 */	mr r30, r3
/* 80A70E50  2C 1E 00 04 */	cmpwi r30, 4
/* 80A70E54  40 82 02 04 */	bne lbl_80A71058
/* 80A70E58  7F A3 EB 78 */	mr r3, r29
/* 80A70E5C  3C 80 80 A7 */	lis r4, createHeapCallBack__12daNpc_midP_cFP10fopAc_ac_c@ha
/* 80A70E60  38 84 15 D4 */	addi r4, r4, createHeapCallBack__12daNpc_midP_cFP10fopAc_ac_c@l
/* 80A70E64  38 A0 00 00 */	li r5, 0
/* 80A70E68  4B 5A 96 48 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A70E6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A70E70  40 82 00 0C */	bne lbl_80A70E7C
/* 80A70E74  38 60 00 05 */	li r3, 5
/* 80A70E78  48 00 01 E4 */	b lbl_80A7105C
lbl_80A70E7C:
/* 80A70E7C  7F A3 EB 78 */	mr r3, r29
/* 80A70E80  48 00 07 ED */	bl isDelete__12daNpc_midP_cFv
/* 80A70E84  2C 03 00 00 */	cmpwi r3, 0
/* 80A70E88  41 82 00 0C */	beq lbl_80A70E94
/* 80A70E8C  38 60 00 05 */	li r3, 5
/* 80A70E90  48 00 01 CC */	b lbl_80A7105C
lbl_80A70E94:
/* 80A70E94  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80A70E98  80 63 00 04 */	lwz r3, 4(r3)
/* 80A70E9C  38 03 00 24 */	addi r0, r3, 0x24
/* 80A70EA0  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80A70EA4  7F A3 EB 78 */	mr r3, r29
/* 80A70EA8  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A70EAC  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 80A70EB0  FC 60 08 90 */	fmr f3, f1
/* 80A70EB4  C0 9F 00 94 */	lfs f4, 0x94(r31)
/* 80A70EB8  C0 BF 00 98 */	lfs f5, 0x98(r31)
/* 80A70EBC  FC C0 20 90 */	fmr f6, f4
/* 80A70EC0  4B 5A 96 88 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80A70EC4  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80A70EC8  64 00 08 00 */	oris r0, r0, 0x800
/* 80A70ECC  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80A70ED0  38 7D 05 80 */	addi r3, r29, 0x580
/* 80A70ED4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A70ED8  38 BD 05 38 */	addi r5, r29, 0x538
/* 80A70EDC  38 C0 00 03 */	li r6, 3
/* 80A70EE0  38 E0 00 01 */	li r7, 1
/* 80A70EE4  4B 84 F6 4C */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80A70EE8  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80A70EEC  90 01 00 08 */	stw r0, 8(r1)
/* 80A70EF0  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A70EF4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A70EF8  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80A70EFC  7F A6 EB 78 */	mr r6, r29
/* 80A70F00  38 E0 00 01 */	li r7, 1
/* 80A70F04  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80A70F08  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80A70F0C  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80A70F10  4B 60 53 38 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A70F14  38 7D 08 64 */	addi r3, r29, 0x864
/* 80A70F18  38 9F 00 00 */	addi r4, r31, 0
/* 80A70F1C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80A70F20  FC 00 00 1E */	fctiwz f0, f0
/* 80A70F24  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A70F28  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A70F2C  38 A0 00 00 */	li r5, 0
/* 80A70F30  7F A6 EB 78 */	mr r6, r29
/* 80A70F34  4B 61 29 2C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A70F38  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 80A70F3C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80A70F40  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80A70F44  4B 61 39 70 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80A70F48  38 1D 08 64 */	addi r0, r29, 0x864
/* 80A70F4C  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 80A70F50  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80A70F54  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80A70F58  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 80A70F5C  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A70F60  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A70F64  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A70F68  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A70F6C  4B 60 5B 40 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80A70F70  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80A70F74  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80A70F78  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80A70F7C  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80A70F80  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80A70F84  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80A70F88  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80A70F8C  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80A70F90  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80A70F94  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80A70F98  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80A70F9C  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80A70FA0  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80A70FA4  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80A70FA8  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80A70FAC  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80A70FB0  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80A70FB4  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80A70FB8  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80A70FBC  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80A70FC0  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80A70FC4  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80A70FC8  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80A70FCC  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80A70FD0  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80A70FD4  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80A70FD8  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80A70FDC  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A70FE0  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80A70FE4  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80A70FE8  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80A70FEC  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80A70FF0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A70FF4  41 82 00 14 */	beq lbl_80A71008
/* 80A70FF8  7F A3 EB 78 */	mr r3, r29
/* 80A70FFC  4B 6D 7C 74 */	b setEnvTevColor__8daNpcT_cFv
/* 80A71000  7F A3 EB 78 */	mr r3, r29
/* 80A71004  4B 6D 7C C8 */	b setRoomNo__8daNpcT_cFv
lbl_80A71008:
/* 80A71008  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80A7100C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80A71010  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80A71014  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80A71018  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80A7101C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80A71020  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A71024  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 80A71028  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A7102C  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80A71030  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A71034  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 80A71038  7F A3 EB 78 */	mr r3, r29
/* 80A7103C  48 00 06 51 */	bl reset__12daNpc_midP_cFv
/* 80A71040  38 00 00 01 */	li r0, 1
/* 80A71044  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80A71048  7F A3 EB 78 */	mr r3, r29
/* 80A7104C  48 00 04 A5 */	bl Execute__12daNpc_midP_cFv
/* 80A71050  38 00 00 00 */	li r0, 0
/* 80A71054  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80A71058:
/* 80A71058  7F C3 F3 78 */	mr r3, r30
lbl_80A7105C:
/* 80A7105C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A71060  4B 8F 11 C8 */	b _restgpr_29
/* 80A71064  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A71068  7C 08 03 A6 */	mtlr r0
/* 80A7106C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A71070  4E 80 00 20 */	blr 
