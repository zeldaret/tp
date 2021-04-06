lbl_80AE2EEC:
/* 80AE2EEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AE2EF0  7C 08 02 A6 */	mflr r0
/* 80AE2EF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AE2EF8  39 61 00 30 */	addi r11, r1, 0x30
/* 80AE2EFC  4B 87 F2 E1 */	bl _savegpr_29
/* 80AE2F00  7C 7D 1B 78 */	mr r29, r3
/* 80AE2F04  3C 80 80 AE */	lis r4, m__17daNpc_Sha_Param_c@ha /* 0x80AE6BC8@ha */
/* 80AE2F08  3B E4 6B C8 */	addi r31, r4, m__17daNpc_Sha_Param_c@l /* 0x80AE6BC8@l */
/* 80AE2F0C  3C 80 80 AE */	lis r4, cNullVec__6Z2Calc@ha /* 0x80AE6D18@ha */
/* 80AE2F10  3B C4 6D 18 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80AE6D18@l */
/* 80AE2F14  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AE2F18  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AE2F1C  40 82 00 40 */	bne lbl_80AE2F5C
/* 80AE2F20  28 1D 00 00 */	cmplwi r29, 0
/* 80AE2F24  41 82 00 2C */	beq lbl_80AE2F50
/* 80AE2F28  38 1E 00 58 */	addi r0, r30, 0x58
/* 80AE2F2C  90 01 00 08 */	stw r0, 8(r1)
/* 80AE2F30  38 9E 00 70 */	addi r4, r30, 0x70
/* 80AE2F34  38 BE 01 88 */	addi r5, r30, 0x188
/* 80AE2F38  38 DE 02 68 */	addi r6, r30, 0x268
/* 80AE2F3C  38 E0 00 04 */	li r7, 4
/* 80AE2F40  39 1E 03 08 */	addi r8, r30, 0x308
/* 80AE2F44  39 20 00 04 */	li r9, 4
/* 80AE2F48  39 5E 00 28 */	addi r10, r30, 0x28
/* 80AE2F4C  48 00 3A 95 */	bl __ct__11daNpc_Sha_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80AE2F50:
/* 80AE2F50  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80AE2F54  60 00 00 08 */	ori r0, r0, 8
/* 80AE2F58  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80AE2F5C:
/* 80AE2F5C  7F A3 EB 78 */	mr r3, r29
/* 80AE2F60  48 00 07 CD */	bl getType__11daNpc_Sha_cFv
/* 80AE2F64  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 80AE2F68  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80AE2F6C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80AE2F70  28 03 FF FF */	cmplwi r3, 0xffff
/* 80AE2F74  38 00 FF FF */	li r0, -1
/* 80AE2F78  41 82 00 08 */	beq lbl_80AE2F80
/* 80AE2F7C  7C 60 1B 78 */	mr r0, r3
lbl_80AE2F80:
/* 80AE2F80  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80AE2F84  38 00 00 00 */	li r0, 0
/* 80AE2F88  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80AE2F8C  7F A3 EB 78 */	mr r3, r29
/* 80AE2F90  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80AE2F94  54 00 10 3A */	slwi r0, r0, 2
/* 80AE2F98  38 9E 00 64 */	addi r4, r30, 0x64
/* 80AE2F9C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AE2FA0  38 BE 00 58 */	addi r5, r30, 0x58
/* 80AE2FA4  4B 66 54 55 */	bl loadRes__8daNpcT_cFPCScPPCc
/* 80AE2FA8  7C 7E 1B 78 */	mr r30, r3
/* 80AE2FAC  2C 1E 00 04 */	cmpwi r30, 4
/* 80AE2FB0  40 82 01 D4 */	bne lbl_80AE3184
/* 80AE2FB4  7F A3 EB 78 */	mr r3, r29
/* 80AE2FB8  48 00 07 AD */	bl isDelete__11daNpc_Sha_cFv
/* 80AE2FBC  2C 03 00 00 */	cmpwi r3, 0
/* 80AE2FC0  41 82 00 0C */	beq lbl_80AE2FCC
/* 80AE2FC4  38 60 00 05 */	li r3, 5
/* 80AE2FC8  48 00 01 C0 */	b lbl_80AE3188
lbl_80AE2FCC:
/* 80AE2FCC  7F A3 EB 78 */	mr r3, r29
/* 80AE2FD0  3C 80 80 AE */	lis r4, createHeapCallBack__11daNpc_Sha_cFP10fopAc_ac_c@ha /* 0x80AE36B4@ha */
/* 80AE2FD4  38 84 36 B4 */	addi r4, r4, createHeapCallBack__11daNpc_Sha_cFP10fopAc_ac_c@l /* 0x80AE36B4@l */
/* 80AE2FD8  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80AE2FDC  54 00 10 3A */	slwi r0, r0, 2
/* 80AE2FE0  38 BF 00 8C */	addi r5, r31, 0x8c
/* 80AE2FE4  7C A5 00 2E */	lwzx r5, r5, r0
/* 80AE2FE8  4B 53 74 C9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AE2FEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AE2FF0  40 82 00 0C */	bne lbl_80AE2FFC
/* 80AE2FF4  38 60 00 05 */	li r3, 5
/* 80AE2FF8  48 00 01 90 */	b lbl_80AE3188
lbl_80AE2FFC:
/* 80AE2FFC  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AE3000  80 63 00 04 */	lwz r3, 4(r3)
/* 80AE3004  38 03 00 24 */	addi r0, r3, 0x24
/* 80AE3008  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80AE300C  7F A3 EB 78 */	mr r3, r29
/* 80AE3010  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80AE3014  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 80AE3018  FC 60 08 90 */	fmr f3, f1
/* 80AE301C  C0 9F 00 A0 */	lfs f4, 0xa0(r31)
/* 80AE3020  C0 BF 00 A4 */	lfs f5, 0xa4(r31)
/* 80AE3024  FC C0 20 90 */	fmr f6, f4
/* 80AE3028  4B 53 75 21 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80AE302C  38 7D 05 80 */	addi r3, r29, 0x580
/* 80AE3030  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AE3034  38 BD 05 38 */	addi r5, r29, 0x538
/* 80AE3038  38 C0 00 03 */	li r6, 3
/* 80AE303C  38 E0 00 01 */	li r7, 1
/* 80AE3040  4B 7D D4 F1 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80AE3044  7F A3 EB 78 */	mr r3, r29
/* 80AE3048  48 00 07 51 */	bl reset__11daNpc_Sha_cFv
/* 80AE304C  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80AE3050  90 01 00 08 */	stw r0, 8(r1)
/* 80AE3054  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80AE3058  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AE305C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80AE3060  7F A6 EB 78 */	mr r6, r29
/* 80AE3064  38 E0 00 01 */	li r7, 1
/* 80AE3068  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80AE306C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80AE3070  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80AE3074  4B 59 31 D5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AE3078  38 7D 08 64 */	addi r3, r29, 0x864
/* 80AE307C  38 9F 00 00 */	addi r4, r31, 0
/* 80AE3080  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80AE3084  FC 00 00 1E */	fctiwz f0, f0
/* 80AE3088  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80AE308C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80AE3090  38 A0 00 00 */	li r5, 0
/* 80AE3094  7F A6 EB 78 */	mr r6, r29
/* 80AE3098  4B 5A 07 C9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AE309C  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 80AE30A0  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 80AE30A4  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 80AE30A8  4B 5A 18 0D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80AE30AC  38 1D 08 64 */	addi r0, r29, 0x864
/* 80AE30B0  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 80AE30B4  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 80AE30B8  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 80AE30BC  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 80AE30C0  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80AE30C4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AE30C8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AE30CC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80AE30D0  4B 59 39 DD */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80AE30D4  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80AE30D8  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80AE30DC  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80AE30E0  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80AE30E4  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80AE30E8  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80AE30EC  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80AE30F0  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80AE30F4  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80AE30F8  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80AE30FC  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80AE3100  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80AE3104  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80AE3108  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80AE310C  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80AE3110  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80AE3114  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80AE3118  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80AE311C  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80AE3120  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80AE3124  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80AE3128  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80AE312C  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80AE3130  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80AE3134  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80AE3138  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80AE313C  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80AE3140  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80AE3144  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80AE3148  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80AE314C  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80AE3150  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80AE3154  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80AE3158  41 82 00 14 */	beq lbl_80AE316C
/* 80AE315C  7F A3 EB 78 */	mr r3, r29
/* 80AE3160  4B 66 5B 11 */	bl setEnvTevColor__8daNpcT_cFv
/* 80AE3164  7F A3 EB 78 */	mr r3, r29
/* 80AE3168  4B 66 5B 65 */	bl setRoomNo__8daNpcT_cFv
lbl_80AE316C:
/* 80AE316C  38 00 00 01 */	li r0, 1
/* 80AE3170  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80AE3174  7F A3 EB 78 */	mr r3, r29
/* 80AE3178  48 00 04 89 */	bl Execute__11daNpc_Sha_cFv
/* 80AE317C  38 00 00 00 */	li r0, 0
/* 80AE3180  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80AE3184:
/* 80AE3184  7F C3 F3 78 */	mr r3, r30
lbl_80AE3188:
/* 80AE3188  39 61 00 30 */	addi r11, r1, 0x30
/* 80AE318C  4B 87 F0 9D */	bl _restgpr_29
/* 80AE3190  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AE3194  7C 08 03 A6 */	mtlr r0
/* 80AE3198  38 21 00 30 */	addi r1, r1, 0x30
/* 80AE319C  4E 80 00 20 */	blr 
