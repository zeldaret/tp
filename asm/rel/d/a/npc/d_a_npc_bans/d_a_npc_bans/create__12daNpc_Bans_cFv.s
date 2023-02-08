lbl_80962AA0:
/* 80962AA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80962AA4  7C 08 02 A6 */	mflr r0
/* 80962AA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80962AAC  39 61 00 30 */	addi r11, r1, 0x30
/* 80962AB0  4B 9F F7 2D */	bl _savegpr_29
/* 80962AB4  7C 7D 1B 78 */	mr r29, r3
/* 80962AB8  3C 80 80 96 */	lis r4, m__18daNpc_Bans_Param_c@ha /* 0x80967E20@ha */
/* 80962ABC  3B E4 7E 20 */	addi r31, r4, m__18daNpc_Bans_Param_c@l /* 0x80967E20@l */
/* 80962AC0  3C 80 80 97 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80968000@ha */
/* 80962AC4  3B C4 80 00 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80968000@l */
/* 80962AC8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80962ACC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80962AD0  40 82 00 40 */	bne lbl_80962B10
/* 80962AD4  28 1D 00 00 */	cmplwi r29, 0
/* 80962AD8  41 82 00 2C */	beq lbl_80962B04
/* 80962ADC  38 1E 00 88 */	addi r0, r30, 0x88
/* 80962AE0  90 01 00 08 */	stw r0, 8(r1)
/* 80962AE4  38 9E 00 D0 */	addi r4, r30, 0xd0
/* 80962AE8  38 BE 01 5C */	addi r5, r30, 0x15c
/* 80962AEC  38 DE 03 8C */	addi r6, r30, 0x38c
/* 80962AF0  38 E0 00 04 */	li r7, 4
/* 80962AF4  39 1E 03 DC */	addi r8, r30, 0x3dc
/* 80962AF8  39 20 00 04 */	li r9, 4
/* 80962AFC  39 5E 00 40 */	addi r10, r30, 0x40
/* 80962B00  48 00 4F C5 */	bl __ct__12daNpc_Bans_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80962B04:
/* 80962B04  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80962B08  60 00 00 08 */	ori r0, r0, 8
/* 80962B0C  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80962B10:
/* 80962B10  7F A3 EB 78 */	mr r3, r29
/* 80962B14  48 00 0A 45 */	bl getType__12daNpc_Bans_cFv
/* 80962B18  98 7D 12 00 */	stb r3, 0x1200(r29)
/* 80962B1C  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80962B20  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80962B24  28 03 FF FF */	cmplwi r3, 0xffff
/* 80962B28  38 00 FF FF */	li r0, -1
/* 80962B2C  41 82 00 08 */	beq lbl_80962B34
/* 80962B30  7C 60 1B 78 */	mr r0, r3
lbl_80962B34:
/* 80962B34  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80962B38  4B 84 9A 45 */	bl dKy_darkworld_check__Fv
/* 80962B3C  98 7D 0A 89 */	stb r3, 0xa89(r29)
/* 80962B40  7F A3 EB 78 */	mr r3, r29
/* 80962B44  88 1D 12 00 */	lbz r0, 0x1200(r29)
/* 80962B48  54 00 10 3A */	slwi r0, r0, 2
/* 80962B4C  38 9E 00 B8 */	addi r4, r30, 0xb8
/* 80962B50  7C 84 00 2E */	lwzx r4, r4, r0
/* 80962B54  38 BE 00 88 */	addi r5, r30, 0x88
/* 80962B58  4B 7E 58 A1 */	bl loadRes__8daNpcT_cFPCScPPCc
/* 80962B5C  7C 7E 1B 78 */	mr r30, r3
/* 80962B60  2C 1E 00 04 */	cmpwi r30, 4
/* 80962B64  40 82 01 EC */	bne lbl_80962D50
/* 80962B68  7F A3 EB 78 */	mr r3, r29
/* 80962B6C  48 00 0A 51 */	bl isDelete__12daNpc_Bans_cFv
/* 80962B70  2C 03 00 00 */	cmpwi r3, 0
/* 80962B74  41 82 00 0C */	beq lbl_80962B80
/* 80962B78  38 60 00 05 */	li r3, 5
/* 80962B7C  48 00 01 D8 */	b lbl_80962D54
lbl_80962B80:
/* 80962B80  7F A3 EB 78 */	mr r3, r29
/* 80962B84  3C 80 80 96 */	lis r4, createHeapCallBack__12daNpc_Bans_cFP10fopAc_ac_c@ha /* 0x809634E0@ha */
/* 80962B88  38 84 34 E0 */	addi r4, r4, createHeapCallBack__12daNpc_Bans_cFP10fopAc_ac_c@l /* 0x809634E0@l */
/* 80962B8C  88 1D 12 00 */	lbz r0, 0x1200(r29)
/* 80962B90  54 00 10 3A */	slwi r0, r0, 2
/* 80962B94  38 BF 00 90 */	addi r5, r31, 0x90
/* 80962B98  7C A5 00 2E */	lwzx r5, r5, r0
/* 80962B9C  4B 6B 79 15 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80962BA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80962BA4  40 82 00 0C */	bne lbl_80962BB0
/* 80962BA8  38 60 00 05 */	li r3, 5
/* 80962BAC  48 00 01 A8 */	b lbl_80962D54
lbl_80962BB0:
/* 80962BB0  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80962BB4  80 63 00 04 */	lwz r3, 4(r3)
/* 80962BB8  38 03 00 24 */	addi r0, r3, 0x24
/* 80962BBC  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80962BC0  7F A3 EB 78 */	mr r3, r29
/* 80962BC4  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80962BC8  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 80962BCC  FC 60 08 90 */	fmr f3, f1
/* 80962BD0  C0 9F 00 B0 */	lfs f4, 0xb0(r31)
/* 80962BD4  C0 BF 00 B4 */	lfs f5, 0xb4(r31)
/* 80962BD8  FC C0 20 90 */	fmr f6, f4
/* 80962BDC  4B 6B 79 6D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80962BE0  38 7D 05 80 */	addi r3, r29, 0x580
/* 80962BE4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80962BE8  38 BD 05 38 */	addi r5, r29, 0x538
/* 80962BEC  38 C0 00 03 */	li r6, 3
/* 80962BF0  38 E0 00 01 */	li r7, 1
/* 80962BF4  4B 95 D9 3D */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80962BF8  7F A3 EB 78 */	mr r3, r29
/* 80962BFC  48 00 0A C5 */	bl reset__12daNpc_Bans_cFv
/* 80962C00  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80962C04  90 01 00 08 */	stw r0, 8(r1)
/* 80962C08  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80962C0C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80962C10  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80962C14  7F A6 EB 78 */	mr r6, r29
/* 80962C18  38 E0 00 01 */	li r7, 1
/* 80962C1C  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80962C20  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80962C24  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80962C28  4B 71 36 21 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80962C2C  38 7D 08 64 */	addi r3, r29, 0x864
/* 80962C30  38 9F 00 00 */	addi r4, r31, 0
/* 80962C34  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80962C38  FC 00 00 1E */	fctiwz f0, f0
/* 80962C3C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80962C40  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80962C44  38 A0 00 00 */	li r5, 0
/* 80962C48  7F A6 EB 78 */	mr r6, r29
/* 80962C4C  4B 72 0C 15 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80962C50  38 7D 10 C4 */	addi r3, r29, 0x10c4
/* 80962C54  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 80962C58  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 80962C5C  4B 72 1C 59 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80962C60  38 1D 08 64 */	addi r0, r29, 0x864
/* 80962C64  90 1D 11 08 */	stw r0, 0x1108(r29)
/* 80962C68  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 80962C6C  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 80962C70  90 1D 11 68 */	stw r0, 0x1168(r29)
/* 80962C74  38 7D 0F 88 */	addi r3, r29, 0xf88
/* 80962C78  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 80962C7C  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 80962C80  4B 72 1C 35 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80962C84  38 1D 08 64 */	addi r0, r29, 0x864
/* 80962C88  90 1D 0F CC */	stw r0, 0xfcc(r29)
/* 80962C8C  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80962C90  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80962C94  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80962C98  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80962C9C  4B 71 3E 11 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80962CA0  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80962CA4  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80962CA8  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80962CAC  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80962CB0  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80962CB4  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80962CB8  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80962CBC  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80962CC0  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80962CC4  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80962CC8  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80962CCC  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80962CD0  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80962CD4  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80962CD8  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80962CDC  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80962CE0  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80962CE4  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80962CE8  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80962CEC  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80962CF0  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80962CF4  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80962CF8  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80962CFC  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80962D00  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80962D04  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80962D08  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80962D0C  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80962D10  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80962D14  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80962D18  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80962D1C  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80962D20  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80962D24  41 82 00 14 */	beq lbl_80962D38
/* 80962D28  7F A3 EB 78 */	mr r3, r29
/* 80962D2C  4B 7E 5F 45 */	bl setEnvTevColor__8daNpcT_cFv
/* 80962D30  7F A3 EB 78 */	mr r3, r29
/* 80962D34  4B 7E 5F 99 */	bl setRoomNo__8daNpcT_cFv
lbl_80962D38:
/* 80962D38  38 00 00 01 */	li r0, 1
/* 80962D3C  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80962D40  7F A3 EB 78 */	mr r3, r29
/* 80962D44  48 00 06 29 */	bl Execute__12daNpc_Bans_cFv
/* 80962D48  38 00 00 00 */	li r0, 0
/* 80962D4C  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80962D50:
/* 80962D50  7F C3 F3 78 */	mr r3, r30
lbl_80962D54:
/* 80962D54  39 61 00 30 */	addi r11, r1, 0x30
/* 80962D58  4B 9F F4 D1 */	bl _restgpr_29
/* 80962D5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80962D60  7C 08 03 A6 */	mtlr r0
/* 80962D64  38 21 00 30 */	addi r1, r1, 0x30
/* 80962D68  4E 80 00 20 */	blr 
