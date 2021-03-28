lbl_80D46FCC:
/* 80D46FCC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D46FD0  7C 08 02 A6 */	mflr r0
/* 80D46FD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D46FD8  39 61 00 40 */	addi r11, r1, 0x40
/* 80D46FDC  4B 61 B1 EC */	b _savegpr_24
/* 80D46FE0  7C 7D 1B 78 */	mr r29, r3
/* 80D46FE4  3C 80 80 D5 */	lis r4, m__14daPeru_Param_c@ha
/* 80D46FE8  3B E4 C0 60 */	addi r31, r4, m__14daPeru_Param_c@l
/* 80D46FEC  3C 80 80 D5 */	lis r4, cNullVec__6Z2Calc@ha
/* 80D46FF0  3B 44 C1 DC */	addi r26, r4, cNullVec__6Z2Calc@l
/* 80D46FF4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D46FF8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D46FFC  40 82 00 40 */	bne lbl_80D4703C
/* 80D47000  28 1D 00 00 */	cmplwi r29, 0
/* 80D47004  41 82 00 2C */	beq lbl_80D47030
/* 80D47008  38 1A 00 40 */	addi r0, r26, 0x40
/* 80D4700C  90 01 00 08 */	stw r0, 8(r1)
/* 80D47010  38 9A 00 58 */	addi r4, r26, 0x58
/* 80D47014  38 BA 00 E4 */	addi r5, r26, 0xe4
/* 80D47018  38 DA 02 18 */	addi r6, r26, 0x218
/* 80D4701C  38 E0 00 04 */	li r7, 4
/* 80D47020  39 1A 02 68 */	addi r8, r26, 0x268
/* 80D47024  39 20 00 04 */	li r9, 4
/* 80D47028  39 5A 00 28 */	addi r10, r26, 0x28
/* 80D4702C  48 00 4E 01 */	bl __ct__8daPeru_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80D47030:
/* 80D47030  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80D47034  60 00 00 08 */	ori r0, r0, 8
/* 80D47038  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80D4703C:
/* 80D4703C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D47040  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D47044  28 00 00 FF */	cmplwi r0, 0xff
/* 80D47048  40 82 00 08 */	bne lbl_80D47050
/* 80D4704C  38 00 00 00 */	li r0, 0
lbl_80D47050:
/* 80D47050  98 1D 11 28 */	stb r0, 0x1128(r29)
/* 80D47054  7F A3 EB 78 */	mr r3, r29
/* 80D47058  48 00 06 05 */	bl typeInitialize__8daPeru_cFv
/* 80D4705C  2C 03 00 05 */	cmpwi r3, 5
/* 80D47060  40 82 00 0C */	bne lbl_80D4706C
/* 80D47064  38 60 00 05 */	li r3, 5
/* 80D47068  48 00 01 8C */	b lbl_80D471F4
lbl_80D4706C:
/* 80D4706C  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80D47070  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80D47074  28 03 FF FF */	cmplwi r3, 0xffff
/* 80D47078  38 00 FF FF */	li r0, -1
/* 80D4707C  41 82 00 08 */	beq lbl_80D47084
/* 80D47080  7C 60 1B 78 */	mr r0, r3
lbl_80D47084:
/* 80D47084  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80D47088  4B 46 54 F4 */	b dKy_darkworld_check__Fv
/* 80D4708C  98 7D 0A 89 */	stb r3, 0xa89(r29)
/* 80D47090  7F A3 EB 78 */	mr r3, r29
/* 80D47094  88 1D 11 28 */	lbz r0, 0x1128(r29)
/* 80D47098  54 00 10 3A */	slwi r0, r0, 2
/* 80D4709C  38 9A 00 4C */	addi r4, r26, 0x4c
/* 80D470A0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D470A4  38 BA 00 40 */	addi r5, r26, 0x40
/* 80D470A8  4B 40 13 50 */	b loadRes__8daNpcT_cFPCScPPCc
/* 80D470AC  7C 7E 1B 78 */	mr r30, r3
/* 80D470B0  2C 1E 00 04 */	cmpwi r30, 4
/* 80D470B4  40 82 01 3C */	bne lbl_80D471F0
/* 80D470B8  7F A3 EB 78 */	mr r3, r29
/* 80D470BC  3C 80 80 D4 */	lis r4, createHeapCallBack__8daPeru_cFP10fopAc_ac_c@ha
/* 80D470C0  38 84 78 40 */	addi r4, r4, createHeapCallBack__8daPeru_cFP10fopAc_ac_c@l
/* 80D470C4  38 A0 32 00 */	li r5, 0x3200
/* 80D470C8  4B 2D 33 E8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D470CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D470D0  40 82 00 0C */	bne lbl_80D470DC
/* 80D470D4  38 60 00 05 */	li r3, 5
/* 80D470D8  48 00 01 1C */	b lbl_80D471F4
lbl_80D470DC:
/* 80D470DC  7F A3 EB 78 */	mr r3, r29
/* 80D470E0  48 00 07 D9 */	bl isDelete__8daPeru_cFv
/* 80D470E4  2C 03 00 00 */	cmpwi r3, 0
/* 80D470E8  41 82 00 0C */	beq lbl_80D470F4
/* 80D470EC  38 60 00 05 */	li r3, 5
/* 80D470F0  48 00 01 04 */	b lbl_80D471F4
lbl_80D470F4:
/* 80D470F4  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80D470F8  80 63 00 04 */	lwz r3, 4(r3)
/* 80D470FC  38 03 00 24 */	addi r0, r3, 0x24
/* 80D47100  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80D47104  7F A3 EB 78 */	mr r3, r29
/* 80D47108  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80D4710C  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 80D47110  FC 60 08 90 */	fmr f3, f1
/* 80D47114  C0 9F 00 A0 */	lfs f4, 0xa0(r31)
/* 80D47118  C0 BF 00 A4 */	lfs f5, 0xa4(r31)
/* 80D4711C  FC C0 20 90 */	fmr f6, f4
/* 80D47120  4B 2D 34 28 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80D47124  38 7D 05 80 */	addi r3, r29, 0x580
/* 80D47128  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D4712C  38 BD 05 38 */	addi r5, r29, 0x538
/* 80D47130  38 C0 00 03 */	li r6, 3
/* 80D47134  38 E0 00 01 */	li r7, 1
/* 80D47138  4B 57 93 F8 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80D4713C  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80D47140  90 01 00 08 */	stw r0, 8(r1)
/* 80D47144  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80D47148  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D4714C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80D47150  7F A6 EB 78 */	mr r6, r29
/* 80D47154  38 E0 00 01 */	li r7, 1
/* 80D47158  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80D4715C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80D47160  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80D47164  4B 32 F0 E4 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80D47168  38 7D 08 64 */	addi r3, r29, 0x864
/* 80D4716C  38 9F 00 00 */	addi r4, r31, 0
/* 80D47170  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80D47174  FC 00 00 1E */	fctiwz f0, f0
/* 80D47178  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80D4717C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80D47180  38 A0 00 00 */	li r5, 0
/* 80D47184  7F A6 EB 78 */	mr r6, r29
/* 80D47188  4B 33 C6 D8 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D4718C  3B 00 00 00 */	li r24, 0
/* 80D47190  3B E0 00 00 */	li r31, 0
/* 80D47194  3C 60 80 3B */	lis r3, mCcDCyl__8daNpcT_c@ha
/* 80D47198  3B 43 36 D8 */	addi r26, r3, mCcDCyl__8daNpcT_c@l
/* 80D4719C  3B 7D 08 64 */	addi r27, r29, 0x864
/* 80D471A0  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80D471A4  3B 83 7F A4 */	addi r28, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
lbl_80D471A8:
/* 80D471A8  7F 3D FA 14 */	add r25, r29, r31
/* 80D471AC  38 79 0E 88 */	addi r3, r25, 0xe88
/* 80D471B0  7F 44 D3 78 */	mr r4, r26
/* 80D471B4  4B 33 D7 00 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D471B8  93 79 0E CC */	stw r27, 0xecc(r25)
/* 80D471BC  93 99 0F 2C */	stw r28, 0xf2c(r25)
/* 80D471C0  3B 18 00 01 */	addi r24, r24, 1
/* 80D471C4  2C 18 00 02 */	cmpwi r24, 2
/* 80D471C8  3B FF 01 3C */	addi r31, r31, 0x13c
/* 80D471CC  41 80 FF DC */	blt lbl_80D471A8
/* 80D471D0  7F A3 EB 78 */	mr r3, r29
/* 80D471D4  48 00 07 19 */	bl reset__8daPeru_cFv
/* 80D471D8  38 00 00 01 */	li r0, 1
/* 80D471DC  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80D471E0  7F A3 EB 78 */	mr r3, r29
/* 80D471E4  48 00 05 A1 */	bl Execute__8daPeru_cFv
/* 80D471E8  38 00 00 00 */	li r0, 0
/* 80D471EC  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80D471F0:
/* 80D471F0  7F C3 F3 78 */	mr r3, r30
lbl_80D471F4:
/* 80D471F4  39 61 00 40 */	addi r11, r1, 0x40
/* 80D471F8  4B 61 B0 1C */	b _restgpr_24
/* 80D471FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D47200  7C 08 03 A6 */	mtlr r0
/* 80D47204  38 21 00 40 */	addi r1, r1, 0x40
/* 80D47208  4E 80 00 20 */	blr 
