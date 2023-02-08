lbl_80A45ADC:
/* 80A45ADC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A45AE0  7C 08 02 A6 */	mflr r0
/* 80A45AE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A45AE8  39 61 00 30 */	addi r11, r1, 0x30
/* 80A45AEC  4B 91 C6 F1 */	bl _savegpr_29
/* 80A45AF0  7C 7D 1B 78 */	mr r29, r3
/* 80A45AF4  3C 80 80 A5 */	lis r4, m__20daNpc_Kolinb_Param_c@ha /* 0x80A48710@ha */
/* 80A45AF8  3B E4 87 10 */	addi r31, r4, m__20daNpc_Kolinb_Param_c@l /* 0x80A48710@l */
/* 80A45AFC  3C 80 80 A5 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A48854@ha */
/* 80A45B00  3B C4 88 54 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80A48854@l */
/* 80A45B04  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A45B08  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A45B0C  40 82 00 40 */	bne lbl_80A45B4C
/* 80A45B10  28 1D 00 00 */	cmplwi r29, 0
/* 80A45B14  41 82 00 2C */	beq lbl_80A45B40
/* 80A45B18  38 1E 00 40 */	addi r0, r30, 0x40
/* 80A45B1C  90 01 00 08 */	stw r0, 8(r1)
/* 80A45B20  38 9E 00 64 */	addi r4, r30, 0x64
/* 80A45B24  38 BE 01 7C */	addi r5, r30, 0x17c
/* 80A45B28  38 DE 02 78 */	addi r6, r30, 0x278
/* 80A45B2C  38 E0 00 04 */	li r7, 4
/* 80A45B30  39 1E 03 08 */	addi r8, r30, 0x308
/* 80A45B34  39 20 00 04 */	li r9, 4
/* 80A45B38  39 5E 00 30 */	addi r10, r30, 0x30
/* 80A45B3C  48 00 2A 11 */	bl __ct__14daNpc_Kolinb_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80A45B40:
/* 80A45B40  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80A45B44  60 00 00 08 */	ori r0, r0, 8
/* 80A45B48  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80A45B4C:
/* 80A45B4C  7F A3 EB 78 */	mr r3, r29
/* 80A45B50  48 00 06 4D */	bl getType__14daNpc_Kolinb_cFv
/* 80A45B54  98 7D 0F B4 */	stb r3, 0xfb4(r29)
/* 80A45B58  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80A45B5C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80A45B60  28 03 FF FF */	cmplwi r3, 0xffff
/* 80A45B64  38 00 FF FF */	li r0, -1
/* 80A45B68  41 82 00 08 */	beq lbl_80A45B70
/* 80A45B6C  7C 60 1B 78 */	mr r0, r3
lbl_80A45B70:
/* 80A45B70  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80A45B74  38 00 00 00 */	li r0, 0
/* 80A45B78  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80A45B7C  7F A3 EB 78 */	mr r3, r29
/* 80A45B80  88 1D 0F B4 */	lbz r0, 0xfb4(r29)
/* 80A45B84  54 00 10 3A */	slwi r0, r0, 2
/* 80A45B88  38 9E 00 54 */	addi r4, r30, 0x54
/* 80A45B8C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A45B90  38 BE 00 40 */	addi r5, r30, 0x40
/* 80A45B94  4B 70 28 65 */	bl loadRes__8daNpcT_cFPCScPPCc
/* 80A45B98  7C 7E 1B 78 */	mr r30, r3
/* 80A45B9C  2C 1E 00 04 */	cmpwi r30, 4
/* 80A45BA0  40 82 02 08 */	bne lbl_80A45DA8
/* 80A45BA4  7F A3 EB 78 */	mr r3, r29
/* 80A45BA8  48 00 06 41 */	bl isDelete__14daNpc_Kolinb_cFv
/* 80A45BAC  2C 03 00 00 */	cmpwi r3, 0
/* 80A45BB0  41 82 00 0C */	beq lbl_80A45BBC
/* 80A45BB4  38 60 00 05 */	li r3, 5
/* 80A45BB8  48 00 01 F4 */	b lbl_80A45DAC
lbl_80A45BBC:
/* 80A45BBC  7F A3 EB 78 */	mr r3, r29
/* 80A45BC0  3C 80 80 A4 */	lis r4, createHeapCallBack__14daNpc_Kolinb_cFP10fopAc_ac_c@ha /* 0x80A46124@ha */
/* 80A45BC4  38 84 61 24 */	addi r4, r4, createHeapCallBack__14daNpc_Kolinb_cFP10fopAc_ac_c@l /* 0x80A46124@l */
/* 80A45BC8  88 1D 0F B4 */	lbz r0, 0xfb4(r29)
/* 80A45BCC  54 00 10 3A */	slwi r0, r0, 2
/* 80A45BD0  38 BF 00 8C */	addi r5, r31, 0x8c
/* 80A45BD4  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A45BD8  4B 5D 48 D9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A45BDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A45BE0  40 82 00 0C */	bne lbl_80A45BEC
/* 80A45BE4  38 60 00 05 */	li r3, 5
/* 80A45BE8  48 00 01 C4 */	b lbl_80A45DAC
lbl_80A45BEC:
/* 80A45BEC  80 9D 0F B0 */	lwz r4, 0xfb0(r29)
/* 80A45BF0  28 04 00 00 */	cmplwi r4, 0
/* 80A45BF4  41 82 00 2C */	beq lbl_80A45C20
/* 80A45BF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A45BFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A45C00  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80A45C04  7F A5 EB 78 */	mr r5, r29
/* 80A45C08  4B 62 EE 01 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80A45C0C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80A45C10  28 00 00 01 */	cmplwi r0, 1
/* 80A45C14  40 82 00 0C */	bne lbl_80A45C20
/* 80A45C18  38 60 00 05 */	li r3, 5
/* 80A45C1C  48 00 01 90 */	b lbl_80A45DAC
lbl_80A45C20:
/* 80A45C20  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80A45C24  80 63 00 04 */	lwz r3, 4(r3)
/* 80A45C28  38 03 00 24 */	addi r0, r3, 0x24
/* 80A45C2C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80A45C30  7F A3 EB 78 */	mr r3, r29
/* 80A45C34  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80A45C38  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 80A45C3C  FC 60 08 90 */	fmr f3, f1
/* 80A45C40  C0 9F 00 A4 */	lfs f4, 0xa4(r31)
/* 80A45C44  FC A0 20 90 */	fmr f5, f4
/* 80A45C48  FC C0 20 90 */	fmr f6, f4
/* 80A45C4C  4B 5D 48 FD */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80A45C50  38 7D 05 80 */	addi r3, r29, 0x580
/* 80A45C54  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A45C58  38 BD 05 38 */	addi r5, r29, 0x538
/* 80A45C5C  38 C0 00 03 */	li r6, 3
/* 80A45C60  38 E0 00 01 */	li r7, 1
/* 80A45C64  4B 87 A8 CD */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80A45C68  7F A3 EB 78 */	mr r3, r29
/* 80A45C6C  48 00 06 5D */	bl reset__14daNpc_Kolinb_cFv
/* 80A45C70  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80A45C74  90 01 00 08 */	stw r0, 8(r1)
/* 80A45C78  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A45C7C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A45C80  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80A45C84  7F A6 EB 78 */	mr r6, r29
/* 80A45C88  38 E0 00 01 */	li r7, 1
/* 80A45C8C  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80A45C90  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80A45C94  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80A45C98  4B 63 05 B1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A45C9C  38 7D 08 64 */	addi r3, r29, 0x864
/* 80A45CA0  38 9F 00 00 */	addi r4, r31, 0
/* 80A45CA4  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80A45CA8  FC 00 00 1E */	fctiwz f0, f0
/* 80A45CAC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A45CB0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A45CB4  38 A0 00 00 */	li r5, 0
/* 80A45CB8  7F A6 EB 78 */	mr r6, r29
/* 80A45CBC  4B 63 DB A5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A45CC0  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 80A45CC4  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 80A45CC8  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 80A45CCC  4B 63 EB E9 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80A45CD0  38 1D 08 64 */	addi r0, r29, 0x864
/* 80A45CD4  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 80A45CD8  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 80A45CDC  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 80A45CE0  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 80A45CE4  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A45CE8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A45CEC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A45CF0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A45CF4  4B 63 0D B9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80A45CF8  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80A45CFC  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80A45D00  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80A45D04  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80A45D08  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80A45D0C  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80A45D10  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80A45D14  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80A45D18  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80A45D1C  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80A45D20  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80A45D24  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80A45D28  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80A45D2C  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80A45D30  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80A45D34  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80A45D38  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80A45D3C  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80A45D40  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80A45D44  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80A45D48  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80A45D4C  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80A45D50  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80A45D54  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80A45D58  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80A45D5C  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80A45D60  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80A45D64  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A45D68  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80A45D6C  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80A45D70  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80A45D74  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80A45D78  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A45D7C  41 82 00 14 */	beq lbl_80A45D90
/* 80A45D80  7F A3 EB 78 */	mr r3, r29
/* 80A45D84  4B 70 2E ED */	bl setEnvTevColor__8daNpcT_cFv
/* 80A45D88  7F A3 EB 78 */	mr r3, r29
/* 80A45D8C  4B 70 2F 41 */	bl setRoomNo__8daNpcT_cFv
lbl_80A45D90:
/* 80A45D90  38 00 00 01 */	li r0, 1
/* 80A45D94  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80A45D98  7F A3 EB 78 */	mr r3, r29
/* 80A45D9C  48 00 02 D5 */	bl Execute__14daNpc_Kolinb_cFv
/* 80A45DA0  38 00 00 00 */	li r0, 0
/* 80A45DA4  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80A45DA8:
/* 80A45DA8  7F C3 F3 78 */	mr r3, r30
lbl_80A45DAC:
/* 80A45DAC  39 61 00 30 */	addi r11, r1, 0x30
/* 80A45DB0  4B 91 C4 79 */	bl _restgpr_29
/* 80A45DB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A45DB8  7C 08 03 A6 */	mtlr r0
/* 80A45DBC  38 21 00 30 */	addi r1, r1, 0x30
/* 80A45DC0  4E 80 00 20 */	blr 
