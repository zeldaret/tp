lbl_8071E8A4:
/* 8071E8A4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8071E8A8  7C 08 02 A6 */	mflr r0
/* 8071E8AC  90 01 00 84 */	stw r0, 0x84(r1)
/* 8071E8B0  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8071E8B4  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8071E8B8  39 61 00 70 */	addi r11, r1, 0x70
/* 8071E8BC  4B C4 39 05 */	bl _savegpr_22
/* 8071E8C0  7C 7F 1B 78 */	mr r31, r3
/* 8071E8C4  3C 60 80 72 */	lis r3, cNullVec__6Z2Calc@ha /* 0x8071F6E0@ha */
/* 8071E8C8  3B 03 F6 E0 */	addi r24, r3, cNullVec__6Z2Calc@l /* 0x8071F6E0@l */
/* 8071E8CC  3C 60 80 72 */	lis r3, lit_3776@ha /* 0x8071F640@ha */
/* 8071E8D0  3B 43 F6 40 */	addi r26, r3, lit_3776@l /* 0x8071F640@l */
/* 8071E8D4  4B 8F 99 D5 */	bl cDmrNowMidnaTalk__Fv
/* 8071E8D8  2C 03 00 00 */	cmpwi r3, 0
/* 8071E8DC  41 82 00 0C */	beq lbl_8071E8E8
/* 8071E8E0  38 60 00 01 */	li r3, 1
/* 8071E8E4  48 00 05 C8 */	b lbl_8071EEAC
lbl_8071E8E8:
/* 8071E8E8  88 1F 09 B4 */	lbz r0, 0x9b4(r31)
/* 8071E8EC  7C 00 07 75 */	extsb. r0, r0
/* 8071E8F0  41 82 00 0C */	beq lbl_8071E8FC
/* 8071E8F4  38 60 00 01 */	li r3, 1
/* 8071E8F8  48 00 05 B4 */	b lbl_8071EEAC
lbl_8071E8FC:
/* 8071E8FC  88 1F 06 00 */	lbz r0, 0x600(r31)
/* 8071E900  7C 00 07 75 */	extsb. r0, r0
/* 8071E904  41 82 00 0C */	beq lbl_8071E910
/* 8071E908  7F E3 FB 78 */	mr r3, r31
/* 8071E90C  4B 8F B3 71 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8071E910:
/* 8071E910  A8 7F 05 D8 */	lha r3, 0x5d8(r31)
/* 8071E914  38 03 00 01 */	addi r0, r3, 1
/* 8071E918  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 8071E91C  38 60 00 00 */	li r3, 0
/* 8071E920  38 00 00 02 */	li r0, 2
/* 8071E924  7C 09 03 A6 */	mtctr r0
lbl_8071E928:
/* 8071E928  38 A3 05 F4 */	addi r5, r3, 0x5f4
/* 8071E92C  7C 9F 2A AE */	lhax r4, r31, r5
/* 8071E930  2C 04 00 00 */	cmpwi r4, 0
/* 8071E934  41 82 00 0C */	beq lbl_8071E940
/* 8071E938  38 04 FF FF */	addi r0, r4, -1
/* 8071E93C  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_8071E940:
/* 8071E940  38 63 00 02 */	addi r3, r3, 2
/* 8071E944  42 00 FF E4 */	bdnz lbl_8071E928
/* 8071E948  A8 7F 05 F8 */	lha r3, 0x5f8(r31)
/* 8071E94C  2C 03 00 00 */	cmpwi r3, 0
/* 8071E950  41 82 00 0C */	beq lbl_8071E95C
/* 8071E954  38 03 FF FF */	addi r0, r3, -1
/* 8071E958  B0 1F 05 F8 */	sth r0, 0x5f8(r31)
lbl_8071E95C:
/* 8071E95C  7F E3 FB 78 */	mr r3, r31
/* 8071E960  4B FF FD 65 */	bl action__FP13e_mk_bo_class
/* 8071E964  38 7F 05 FA */	addi r3, r31, 0x5fa
/* 8071E968  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8071E96C  38 A0 00 04 */	li r5, 4
/* 8071E970  38 C0 10 00 */	li r6, 0x1000
/* 8071E974  4B B5 1C 95 */	bl cLib_addCalcAngleS2__FPssss
/* 8071E978  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8071E97C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8071E980  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8071E984  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8071E988  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8071E98C  4B C2 7F 5D */	bl PSMTXTrans
/* 8071E990  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8071E994  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8071E998  A8 9F 05 FA */	lha r4, 0x5fa(r31)
/* 8071E99C  4B 8E DA 99 */	bl mDoMtx_YrotM__FPA4_fs
/* 8071E9A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8071E9A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8071E9A8  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 8071E9AC  4B 8E DB 21 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8071E9B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8071E9B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8071E9B8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8071E9BC  4B 8E DA 79 */	bl mDoMtx_YrotM__FPA4_fs
/* 8071E9C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8071E9C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8071E9C8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 8071E9CC  4B 8E D9 D1 */	bl mDoMtx_XrotM__FPA4_fs
/* 8071E9D0  80 1F 04 A4 */	lwz r0, 0x4a4(r31)
/* 8071E9D4  90 01 00 20 */	stw r0, 0x20(r1)
/* 8071E9D8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8071E9DC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8071E9E0  38 81 00 20 */	addi r4, r1, 0x20
/* 8071E9E4  4B 8F AE 15 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8071E9E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8071E9EC  40 82 00 0C */	bne lbl_8071E9F8
/* 8071E9F0  38 60 00 01 */	li r3, 1
/* 8071E9F4  48 00 04 B8 */	b lbl_8071EEAC
lbl_8071E9F8:
/* 8071E9F8  C3 FE 04 EC */	lfs f31, 0x4ec(r30)
/* 8071E9FC  FC 20 F8 90 */	fmr f1, f31
/* 8071EA00  FC 40 F8 90 */	fmr f2, f31
/* 8071EA04  FC 60 F8 90 */	fmr f3, f31
/* 8071EA08  4B 8E E4 31 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8071EA0C  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8071EA10  FC 40 08 90 */	fmr f2, f1
/* 8071EA14  C0 7F 05 F0 */	lfs f3, 0x5f0(r31)
/* 8071EA18  4B 8E E3 85 */	bl transM__14mDoMtx_stack_cFfff
/* 8071EA1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8071EA20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8071EA24  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 8071EA28  38 84 00 24 */	addi r4, r4, 0x24
/* 8071EA2C  4B C2 7A 85 */	bl PSMTXCopy
/* 8071EA30  88 1E 07 07 */	lbz r0, 0x707(r30)
/* 8071EA34  2C 00 00 06 */	cmpwi r0, 6
/* 8071EA38  40 82 00 14 */	bne lbl_8071EA4C
/* 8071EA3C  38 00 00 00 */	li r0, 0
/* 8071EA40  98 1E 07 07 */	stb r0, 0x707(r30)
/* 8071EA44  7F E3 FB 78 */	mr r3, r31
/* 8071EA48  4B 8F B2 35 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8071EA4C:
/* 8071EA4C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8071EA50  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 8071EA54  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8071EA58  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8071EA5C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8071EA60  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 8071EA64  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8071EA68  7C 03 07 74 */	extsb r3, r0
/* 8071EA6C  4B 90 E6 01 */	bl dComIfGp_getReverb__Fi
/* 8071EA70  7C 65 1B 78 */	mr r5, r3
/* 8071EA74  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 8071EA78  38 80 00 00 */	li r4, 0
/* 8071EA7C  81 9F 05 C8 */	lwz r12, 0x5c8(r31)
/* 8071EA80  81 8C 00 08 */	lwz r12, 8(r12)
/* 8071EA84  7D 89 03 A6 */	mtctr r12
/* 8071EA88  4E 80 04 21 */	bctrl 
/* 8071EA8C  88 1F 09 98 */	lbz r0, 0x998(r31)
/* 8071EA90  7C 00 07 75 */	extsb. r0, r0
/* 8071EA94  41 82 02 F0 */	beq lbl_8071ED84
/* 8071EA98  3A E0 00 04 */	li r23, 4
/* 8071EA9C  A8 1F 05 DA */	lha r0, 0x5da(r31)
/* 8071EAA0  2C 00 00 02 */	cmpwi r0, 2
/* 8071EAA4  40 82 00 08 */	bne lbl_8071EAAC
/* 8071EAA8  3A E0 00 02 */	li r23, 2
lbl_8071EAAC:
/* 8071EAAC  3B 20 00 00 */	li r25, 0
/* 8071EAB0  3B 60 00 00 */	li r27, 0
/* 8071EAB4  3B 80 00 00 */	li r28, 0
/* 8071EAB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8071EABC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8071EAC0  48 00 02 48 */	b lbl_8071ED08
lbl_8071EAC4:
/* 8071EAC4  A8 1F 05 DA */	lha r0, 0x5da(r31)
/* 8071EAC8  2C 00 00 02 */	cmpwi r0, 2
/* 8071EACC  41 80 00 EC */	blt lbl_8071EBB8
/* 8071EAD0  2C 19 00 02 */	cmpwi r25, 2
/* 8071EAD4  40 80 00 74 */	bge lbl_8071EB48
/* 8071EAD8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8071EADC  38 00 00 FF */	li r0, 0xff
/* 8071EAE0  90 01 00 08 */	stw r0, 8(r1)
/* 8071EAE4  38 80 00 00 */	li r4, 0
/* 8071EAE8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8071EAEC  38 00 FF FF */	li r0, -1
/* 8071EAF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8071EAF4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8071EAF8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8071EAFC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8071EB00  3A DC 0C 18 */	addi r22, r28, 0xc18
/* 8071EB04  7C 9E B0 2E */	lwzx r4, r30, r22
/* 8071EB08  38 A0 00 00 */	li r5, 0
/* 8071EB0C  38 D8 00 28 */	addi r6, r24, 0x28
/* 8071EB10  7C C6 DA 2E */	lhzx r6, r6, r27
/* 8071EB14  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 8071EB18  39 00 00 00 */	li r8, 0
/* 8071EB1C  39 20 00 00 */	li r9, 0
/* 8071EB20  39 40 00 00 */	li r10, 0
/* 8071EB24  C0 3A 00 04 */	lfs f1, 4(r26)
/* 8071EB28  4B 92 E9 A5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8071EB2C  7C 7E B1 2E */	stwx r3, r30, r22
/* 8071EB30  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8071EB34  38 63 02 10 */	addi r3, r3, 0x210
/* 8071EB38  7C 9E B0 2E */	lwzx r4, r30, r22
/* 8071EB3C  4B 92 CD DD */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8071EB40  7C 76 1B 78 */	mr r22, r3
/* 8071EB44  48 00 01 58 */	b lbl_8071EC9C
lbl_8071EB48:
/* 8071EB48  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8071EB4C  38 00 00 FF */	li r0, 0xff
/* 8071EB50  90 01 00 08 */	stw r0, 8(r1)
/* 8071EB54  38 80 00 00 */	li r4, 0
/* 8071EB58  90 81 00 0C */	stw r4, 0xc(r1)
/* 8071EB5C  38 00 FF FF */	li r0, -1
/* 8071EB60  90 01 00 10 */	stw r0, 0x10(r1)
/* 8071EB64  90 81 00 14 */	stw r4, 0x14(r1)
/* 8071EB68  90 81 00 18 */	stw r4, 0x18(r1)
/* 8071EB6C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8071EB70  3A DC 09 94 */	addi r22, r28, 0x994
/* 8071EB74  7C 9F B0 2E */	lwzx r4, r31, r22
/* 8071EB78  38 A0 00 00 */	li r5, 0
/* 8071EB7C  38 D8 00 28 */	addi r6, r24, 0x28
/* 8071EB80  7C C6 DA 2E */	lhzx r6, r6, r27
/* 8071EB84  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 8071EB88  39 00 00 00 */	li r8, 0
/* 8071EB8C  39 20 00 00 */	li r9, 0
/* 8071EB90  39 40 00 00 */	li r10, 0
/* 8071EB94  C0 3A 00 04 */	lfs f1, 4(r26)
/* 8071EB98  4B 92 E9 35 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8071EB9C  7C 7F B1 2E */	stwx r3, r31, r22
/* 8071EBA0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8071EBA4  38 63 02 10 */	addi r3, r3, 0x210
/* 8071EBA8  7C 9F B0 2E */	lwzx r4, r31, r22
/* 8071EBAC  4B 92 CD 6D */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8071EBB0  7C 76 1B 78 */	mr r22, r3
/* 8071EBB4  48 00 00 E8 */	b lbl_8071EC9C
lbl_8071EBB8:
/* 8071EBB8  2C 19 00 02 */	cmpwi r25, 2
/* 8071EBBC  40 80 00 74 */	bge lbl_8071EC30
/* 8071EBC0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8071EBC4  38 00 00 FF */	li r0, 0xff
/* 8071EBC8  90 01 00 08 */	stw r0, 8(r1)
/* 8071EBCC  38 80 00 00 */	li r4, 0
/* 8071EBD0  90 81 00 0C */	stw r4, 0xc(r1)
/* 8071EBD4  38 00 FF FF */	li r0, -1
/* 8071EBD8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8071EBDC  90 81 00 14 */	stw r4, 0x14(r1)
/* 8071EBE0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8071EBE4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8071EBE8  3A DC 0C 18 */	addi r22, r28, 0xc18
/* 8071EBEC  7C 9E B0 2E */	lwzx r4, r30, r22
/* 8071EBF0  38 A0 00 00 */	li r5, 0
/* 8071EBF4  38 D8 00 20 */	addi r6, r24, 0x20
/* 8071EBF8  7C C6 DA 2E */	lhzx r6, r6, r27
/* 8071EBFC  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 8071EC00  39 00 00 00 */	li r8, 0
/* 8071EC04  39 20 00 00 */	li r9, 0
/* 8071EC08  39 40 00 00 */	li r10, 0
/* 8071EC0C  C0 3A 00 04 */	lfs f1, 4(r26)
/* 8071EC10  4B 92 E8 BD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8071EC14  7C 7E B1 2E */	stwx r3, r30, r22
/* 8071EC18  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8071EC1C  38 63 02 10 */	addi r3, r3, 0x210
/* 8071EC20  7C 9E B0 2E */	lwzx r4, r30, r22
/* 8071EC24  4B 92 CC F5 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8071EC28  7C 76 1B 78 */	mr r22, r3
/* 8071EC2C  48 00 00 70 */	b lbl_8071EC9C
lbl_8071EC30:
/* 8071EC30  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8071EC34  38 00 00 FF */	li r0, 0xff
/* 8071EC38  90 01 00 08 */	stw r0, 8(r1)
/* 8071EC3C  38 80 00 00 */	li r4, 0
/* 8071EC40  90 81 00 0C */	stw r4, 0xc(r1)
/* 8071EC44  38 00 FF FF */	li r0, -1
/* 8071EC48  90 01 00 10 */	stw r0, 0x10(r1)
/* 8071EC4C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8071EC50  90 81 00 18 */	stw r4, 0x18(r1)
/* 8071EC54  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8071EC58  3A DC 09 94 */	addi r22, r28, 0x994
/* 8071EC5C  7C 9F B0 2E */	lwzx r4, r31, r22
/* 8071EC60  38 A0 00 00 */	li r5, 0
/* 8071EC64  38 D8 00 20 */	addi r6, r24, 0x20
/* 8071EC68  7C C6 DA 2E */	lhzx r6, r6, r27
/* 8071EC6C  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 8071EC70  39 00 00 00 */	li r8, 0
/* 8071EC74  39 20 00 00 */	li r9, 0
/* 8071EC78  39 40 00 00 */	li r10, 0
/* 8071EC7C  C0 3A 00 04 */	lfs f1, 4(r26)
/* 8071EC80  4B 92 E8 4D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8071EC84  7C 7F B1 2E */	stwx r3, r31, r22
/* 8071EC88  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8071EC8C  38 63 02 10 */	addi r3, r3, 0x210
/* 8071EC90  7C 9F B0 2E */	lwzx r4, r31, r22
/* 8071EC94  4B 92 CC 85 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8071EC98  7C 76 1B 78 */	mr r22, r3
lbl_8071EC9C:
/* 8071EC9C  28 16 00 00 */	cmplwi r22, 0
/* 8071ECA0  41 82 00 5C */	beq lbl_8071ECFC
/* 8071ECA4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8071ECA8  38 63 00 24 */	addi r3, r3, 0x24
/* 8071ECAC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8071ECB0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8071ECB4  4B C2 77 FD */	bl PSMTXCopy
/* 8071ECB8  88 1F 09 98 */	lbz r0, 0x998(r31)
/* 8071ECBC  2C 00 00 02 */	cmpwi r0, 2
/* 8071ECC0  40 82 00 14 */	bne lbl_8071ECD4
/* 8071ECC4  C0 3A 00 88 */	lfs f1, 0x88(r26)
/* 8071ECC8  FC 40 08 90 */	fmr f2, f1
/* 8071ECCC  C0 7A 00 8C */	lfs f3, 0x8c(r26)
/* 8071ECD0  4B 8E E0 CD */	bl transM__14mDoMtx_stack_cFfff
lbl_8071ECD4:
/* 8071ECD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8071ECD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8071ECDC  38 96 00 68 */	addi r4, r22, 0x68
/* 8071ECE0  38 B6 00 98 */	addi r5, r22, 0x98
/* 8071ECE4  38 D6 00 A4 */	addi r6, r22, 0xa4
/* 8071ECE8  4B B6 1B 21 */	bl func_80280808
/* 8071ECEC  C0 36 00 9C */	lfs f1, 0x9c(r22)
/* 8071ECF0  C0 16 00 98 */	lfs f0, 0x98(r22)
/* 8071ECF4  D0 16 00 B0 */	stfs f0, 0xb0(r22)
/* 8071ECF8  D0 36 00 B4 */	stfs f1, 0xb4(r22)
lbl_8071ECFC:
/* 8071ECFC  3B 39 00 01 */	addi r25, r25, 1
/* 8071ED00  3B 7B 00 02 */	addi r27, r27, 2
/* 8071ED04  3B 9C 00 04 */	addi r28, r28, 4
lbl_8071ED08:
/* 8071ED08  7C 19 B8 00 */	cmpw r25, r23
/* 8071ED0C  41 80 FD B8 */	blt lbl_8071EAC4
/* 8071ED10  88 1F 09 98 */	lbz r0, 0x998(r31)
/* 8071ED14  2C 00 00 02 */	cmpwi r0, 2
/* 8071ED18  40 82 00 6C */	bne lbl_8071ED84
/* 8071ED1C  38 00 00 00 */	li r0, 0
/* 8071ED20  98 1F 09 98 */	stb r0, 0x998(r31)
/* 8071ED24  3B 20 00 00 */	li r25, 0
/* 8071ED28  3A C0 00 00 */	li r22, 0
/* 8071ED2C  3A F8 00 30 */	addi r23, r24, 0x30
lbl_8071ED30:
/* 8071ED30  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8071ED34  38 80 00 00 */	li r4, 0
/* 8071ED38  90 81 00 08 */	stw r4, 8(r1)
/* 8071ED3C  38 00 FF FF */	li r0, -1
/* 8071ED40  90 01 00 0C */	stw r0, 0xc(r1)
/* 8071ED44  90 81 00 10 */	stw r4, 0x10(r1)
/* 8071ED48  90 81 00 14 */	stw r4, 0x14(r1)
/* 8071ED4C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8071ED50  38 80 00 00 */	li r4, 0
/* 8071ED54  7C B7 B2 2E */	lhzx r5, r23, r22
/* 8071ED58  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8071ED5C  38 E0 00 00 */	li r7, 0
/* 8071ED60  39 00 00 00 */	li r8, 0
/* 8071ED64  39 20 00 00 */	li r9, 0
/* 8071ED68  39 40 00 FF */	li r10, 0xff
/* 8071ED6C  C0 3A 00 04 */	lfs f1, 4(r26)
/* 8071ED70  4B 92 DD 21 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8071ED74  3B 39 00 01 */	addi r25, r25, 1
/* 8071ED78  2C 19 00 02 */	cmpwi r25, 2
/* 8071ED7C  3A D6 00 02 */	addi r22, r22, 2
/* 8071ED80  41 80 FF B0 */	blt lbl_8071ED30
lbl_8071ED84:
/* 8071ED84  88 1F 09 B5 */	lbz r0, 0x9b5(r31)
/* 8071ED88  7C 00 07 75 */	extsb. r0, r0
/* 8071ED8C  41 82 01 1C */	beq lbl_8071EEA8
/* 8071ED90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8071ED94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8071ED98  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8071ED9C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8071EDA0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8071EDA4  4B C2 7B 45 */	bl PSMTXTrans
/* 8071EDA8  FC 20 F8 90 */	fmr f1, f31
/* 8071EDAC  FC 40 F8 90 */	fmr f2, f31
/* 8071EDB0  FC 60 F8 90 */	fmr f3, f31
/* 8071EDB4  4B 8E E0 85 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8071EDB8  80 7F 09 B8 */	lwz r3, 0x9b8(r31)
/* 8071EDBC  80 83 00 04 */	lwz r4, 4(r3)
/* 8071EDC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8071EDC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8071EDC8  38 84 00 24 */	addi r4, r4, 0x24
/* 8071EDCC  4B C2 76 E5 */	bl PSMTXCopy
/* 8071EDD0  80 7F 09 B8 */	lwz r3, 0x9b8(r31)
/* 8071EDD4  38 80 00 00 */	li r4, 0
/* 8071EDD8  38 A0 00 00 */	li r5, 0
/* 8071EDDC  38 C0 00 00 */	li r6, 0
/* 8071EDE0  4B 8F 17 E9 */	bl play__14mDoExt_McaMorfFP3VecUlSc
/* 8071EDE4  80 7F 09 BC */	lwz r3, 0x9bc(r31)
/* 8071EDE8  4B 8E E6 41 */	bl play__14mDoExt_baseAnmFv
/* 8071EDEC  80 7F 09 B8 */	lwz r3, 0x9b8(r31)
/* 8071EDF0  4B 8F 18 BD */	bl modelCalc__14mDoExt_McaMorfFv
/* 8071EDF4  D3 E1 00 30 */	stfs f31, 0x30(r1)
/* 8071EDF8  D3 E1 00 34 */	stfs f31, 0x34(r1)
/* 8071EDFC  D3 E1 00 38 */	stfs f31, 0x38(r1)
/* 8071EE00  3B 80 00 00 */	li r28, 0
/* 8071EE04  3A C0 00 00 */	li r22, 0
/* 8071EE08  3A E0 00 00 */	li r23, 0
/* 8071EE0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8071EE10  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8071EE14  3B 18 00 34 */	addi r24, r24, 0x34
lbl_8071EE18:
/* 8071EE18  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8071EE1C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8071EE20  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8071EE24  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8071EE28  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8071EE2C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8071EE30  2C 1C 00 01 */	cmpwi r28, 1
/* 8071EE34  41 80 00 0C */	blt lbl_8071EE40
/* 8071EE38  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 8071EE3C  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_8071EE40:
/* 8071EE40  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 8071EE44  38 00 00 FF */	li r0, 0xff
/* 8071EE48  90 01 00 08 */	stw r0, 8(r1)
/* 8071EE4C  38 80 00 00 */	li r4, 0
/* 8071EE50  90 81 00 0C */	stw r4, 0xc(r1)
/* 8071EE54  38 00 FF FF */	li r0, -1
/* 8071EE58  90 01 00 10 */	stw r0, 0x10(r1)
/* 8071EE5C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8071EE60  90 81 00 18 */	stw r4, 0x18(r1)
/* 8071EE64  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8071EE68  3B 77 09 A4 */	addi r27, r23, 0x9a4
/* 8071EE6C  7C 9F D8 2E */	lwzx r4, r31, r27
/* 8071EE70  38 A0 00 00 */	li r5, 0
/* 8071EE74  7C D8 B2 2E */	lhzx r6, r24, r22
/* 8071EE78  38 E1 00 24 */	addi r7, r1, 0x24
/* 8071EE7C  39 1F 01 0C */	addi r8, r31, 0x10c
/* 8071EE80  39 20 00 00 */	li r9, 0
/* 8071EE84  39 41 00 30 */	addi r10, r1, 0x30
/* 8071EE88  C0 3A 00 04 */	lfs f1, 4(r26)
/* 8071EE8C  4B 92 E6 41 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8071EE90  7C 7F D9 2E */	stwx r3, r31, r27
/* 8071EE94  3B 9C 00 01 */	addi r28, r28, 1
/* 8071EE98  2C 1C 00 04 */	cmpwi r28, 4
/* 8071EE9C  3A D6 00 02 */	addi r22, r22, 2
/* 8071EEA0  3A F7 00 04 */	addi r23, r23, 4
/* 8071EEA4  41 80 FF 74 */	blt lbl_8071EE18
lbl_8071EEA8:
/* 8071EEA8  38 60 00 01 */	li r3, 1
lbl_8071EEAC:
/* 8071EEAC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8071EEB0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8071EEB4  39 61 00 70 */	addi r11, r1, 0x70
/* 8071EEB8  4B C4 33 55 */	bl _restgpr_22
/* 8071EEBC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8071EEC0  7C 08 03 A6 */	mtlr r0
/* 8071EEC4  38 21 00 80 */	addi r1, r1, 0x80
/* 8071EEC8  4E 80 00 20 */	blr 
