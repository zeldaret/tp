lbl_80A6ACF4:
/* 80A6ACF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A6ACF8  7C 08 02 A6 */	mflr r0
/* 80A6ACFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A6AD00  39 61 00 30 */	addi r11, r1, 0x30
/* 80A6AD04  4B 8F 74 D9 */	bl _savegpr_29
/* 80A6AD08  7C 7D 1B 78 */	mr r29, r3
/* 80A6AD0C  3C 80 80 A7 */	lis r4, m__17daNpc_Lud_Param_c@ha /* 0x80A6FD7C@ha */
/* 80A6AD10  3B E4 FD 7C */	addi r31, r4, m__17daNpc_Lud_Param_c@l /* 0x80A6FD7C@l */
/* 80A6AD14  3C 80 80 A7 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A6FFCC@ha */
/* 80A6AD18  3B C4 FF CC */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80A6FFCC@l */
/* 80A6AD1C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A6AD20  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A6AD24  40 82 00 40 */	bne lbl_80A6AD64
/* 80A6AD28  28 1D 00 00 */	cmplwi r29, 0
/* 80A6AD2C  41 82 00 2C */	beq lbl_80A6AD58
/* 80A6AD30  38 1E 00 78 */	addi r0, r30, 0x78
/* 80A6AD34  90 01 00 08 */	stw r0, 8(r1)
/* 80A6AD38  38 9E 00 C8 */	addi r4, r30, 0xc8
/* 80A6AD3C  38 BE 02 F8 */	addi r5, r30, 0x2f8
/* 80A6AD40  38 DE 05 44 */	addi r6, r30, 0x544
/* 80A6AD44  38 E0 00 04 */	li r7, 4
/* 80A6AD48  39 1E 06 74 */	addi r8, r30, 0x674
/* 80A6AD4C  39 20 00 04 */	li r9, 4
/* 80A6AD50  39 5E 00 48 */	addi r10, r30, 0x48
/* 80A6AD54  48 00 4E B1 */	bl __ct__11daNpc_Lud_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80A6AD58:
/* 80A6AD58  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80A6AD5C  60 00 00 08 */	ori r0, r0, 8
/* 80A6AD60  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80A6AD64:
/* 80A6AD64  7F A3 EB 78 */	mr r3, r29
/* 80A6AD68  48 00 09 F5 */	bl getType__11daNpc_Lud_cFv
/* 80A6AD6C  98 7D 0F 8C */	stb r3, 0xf8c(r29)
/* 80A6AD70  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80A6AD74  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80A6AD78  28 03 FF FF */	cmplwi r3, 0xffff
/* 80A6AD7C  38 00 FF FF */	li r0, -1
/* 80A6AD80  41 82 00 08 */	beq lbl_80A6AD88
/* 80A6AD84  7C 60 1B 78 */	mr r0, r3
lbl_80A6AD88:
/* 80A6AD88  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80A6AD8C  4B 74 17 F1 */	bl dKy_darkworld_check__Fv
/* 80A6AD90  98 7D 0A 89 */	stb r3, 0xa89(r29)
/* 80A6AD94  7F A3 EB 78 */	mr r3, r29
/* 80A6AD98  88 1D 0F 8C */	lbz r0, 0xf8c(r29)
/* 80A6AD9C  54 00 10 3A */	slwi r0, r0, 2
/* 80A6ADA0  38 9E 00 A4 */	addi r4, r30, 0xa4
/* 80A6ADA4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A6ADA8  38 BE 00 78 */	addi r5, r30, 0x78
/* 80A6ADAC  4B 6D D6 4D */	bl loadRes__8daNpcT_cFPCScPPCc
/* 80A6ADB0  7C 7E 1B 78 */	mr r30, r3
/* 80A6ADB4  2C 1E 00 04 */	cmpwi r30, 4
/* 80A6ADB8  40 82 01 D4 */	bne lbl_80A6AF8C
/* 80A6ADBC  7F A3 EB 78 */	mr r3, r29
/* 80A6ADC0  48 00 0A 0D */	bl isDelete__11daNpc_Lud_cFv
/* 80A6ADC4  2C 03 00 00 */	cmpwi r3, 0
/* 80A6ADC8  41 82 00 0C */	beq lbl_80A6ADD4
/* 80A6ADCC  38 60 00 05 */	li r3, 5
/* 80A6ADD0  48 00 01 C0 */	b lbl_80A6AF90
lbl_80A6ADD4:
/* 80A6ADD4  7F A3 EB 78 */	mr r3, r29
/* 80A6ADD8  3C 80 80 A7 */	lis r4, createHeapCallBack__11daNpc_Lud_cFP10fopAc_ac_c@ha /* 0x80A6B6E4@ha */
/* 80A6ADDC  38 84 B6 E4 */	addi r4, r4, createHeapCallBack__11daNpc_Lud_cFP10fopAc_ac_c@l /* 0x80A6B6E4@l */
/* 80A6ADE0  88 1D 0F 8C */	lbz r0, 0xf8c(r29)
/* 80A6ADE4  54 00 10 3A */	slwi r0, r0, 2
/* 80A6ADE8  38 BF 00 90 */	addi r5, r31, 0x90
/* 80A6ADEC  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A6ADF0  4B 5A F6 C1 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A6ADF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A6ADF8  40 82 00 0C */	bne lbl_80A6AE04
/* 80A6ADFC  38 60 00 05 */	li r3, 5
/* 80A6AE00  48 00 01 90 */	b lbl_80A6AF90
lbl_80A6AE04:
/* 80A6AE04  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80A6AE08  80 63 00 04 */	lwz r3, 4(r3)
/* 80A6AE0C  38 03 00 24 */	addi r0, r3, 0x24
/* 80A6AE10  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80A6AE14  7F A3 EB 78 */	mr r3, r29
/* 80A6AE18  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80A6AE1C  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 80A6AE20  FC 60 08 90 */	fmr f3, f1
/* 80A6AE24  C0 9F 00 BC */	lfs f4, 0xbc(r31)
/* 80A6AE28  C0 BF 00 C0 */	lfs f5, 0xc0(r31)
/* 80A6AE2C  FC C0 20 90 */	fmr f6, f4
/* 80A6AE30  4B 5A F7 19 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80A6AE34  38 7D 05 80 */	addi r3, r29, 0x580
/* 80A6AE38  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A6AE3C  38 BD 05 38 */	addi r5, r29, 0x538
/* 80A6AE40  38 C0 00 03 */	li r6, 3
/* 80A6AE44  38 E0 00 01 */	li r7, 1
/* 80A6AE48  4B 85 56 E9 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80A6AE4C  7F A3 EB 78 */	mr r3, r29
/* 80A6AE50  48 00 0B 05 */	bl reset__11daNpc_Lud_cFv
/* 80A6AE54  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80A6AE58  90 01 00 08 */	stw r0, 8(r1)
/* 80A6AE5C  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A6AE60  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A6AE64  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80A6AE68  7F A6 EB 78 */	mr r6, r29
/* 80A6AE6C  38 E0 00 01 */	li r7, 1
/* 80A6AE70  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80A6AE74  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80A6AE78  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80A6AE7C  4B 60 B3 CD */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A6AE80  38 7D 08 64 */	addi r3, r29, 0x864
/* 80A6AE84  38 9F 00 00 */	addi r4, r31, 0
/* 80A6AE88  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80A6AE8C  FC 00 00 1E */	fctiwz f0, f0
/* 80A6AE90  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A6AE94  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A6AE98  38 A0 00 00 */	li r5, 0
/* 80A6AE9C  7F A6 EB 78 */	mr r6, r29
/* 80A6AEA0  4B 61 89 C1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A6AEA4  38 7D 0E 50 */	addi r3, r29, 0xe50
/* 80A6AEA8  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 80A6AEAC  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 80A6AEB0  4B 61 9A 05 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80A6AEB4  38 1D 08 64 */	addi r0, r29, 0x864
/* 80A6AEB8  90 1D 0E 94 */	stw r0, 0xe94(r29)
/* 80A6AEBC  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 80A6AEC0  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 80A6AEC4  90 1D 0E F4 */	stw r0, 0xef4(r29)
/* 80A6AEC8  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A6AECC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A6AED0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A6AED4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A6AED8  4B 60 BB D5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80A6AEDC  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80A6AEE0  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80A6AEE4  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80A6AEE8  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80A6AEEC  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80A6AEF0  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80A6AEF4  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80A6AEF8  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80A6AEFC  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80A6AF00  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80A6AF04  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80A6AF08  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80A6AF0C  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80A6AF10  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80A6AF14  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80A6AF18  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80A6AF1C  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80A6AF20  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80A6AF24  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80A6AF28  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80A6AF2C  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80A6AF30  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80A6AF34  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80A6AF38  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80A6AF3C  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80A6AF40  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80A6AF44  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80A6AF48  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A6AF4C  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80A6AF50  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80A6AF54  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80A6AF58  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80A6AF5C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A6AF60  41 82 00 14 */	beq lbl_80A6AF74
/* 80A6AF64  7F A3 EB 78 */	mr r3, r29
/* 80A6AF68  4B 6D DD 09 */	bl setEnvTevColor__8daNpcT_cFv
/* 80A6AF6C  7F A3 EB 78 */	mr r3, r29
/* 80A6AF70  4B 6D DD 5D */	bl setRoomNo__8daNpcT_cFv
lbl_80A6AF74:
/* 80A6AF74  38 00 00 01 */	li r0, 1
/* 80A6AF78  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80A6AF7C  7F A3 EB 78 */	mr r3, r29
/* 80A6AF80  48 00 06 B1 */	bl Execute__11daNpc_Lud_cFv
/* 80A6AF84  38 00 00 00 */	li r0, 0
/* 80A6AF88  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80A6AF8C:
/* 80A6AF8C  7F C3 F3 78 */	mr r3, r30
lbl_80A6AF90:
/* 80A6AF90  39 61 00 30 */	addi r11, r1, 0x30
/* 80A6AF94  4B 8F 72 95 */	bl _restgpr_29
/* 80A6AF98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A6AF9C  7C 08 03 A6 */	mtlr r0
/* 80A6AFA0  38 21 00 30 */	addi r1, r1, 0x30
/* 80A6AFA4  4E 80 00 20 */	blr 
