lbl_806DD800:
/* 806DD800  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 806DD804  7C 08 02 A6 */	mflr r0
/* 806DD808  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 806DD80C  39 61 00 E0 */	addi r11, r1, 0xe0
/* 806DD810  4B C8 49 B9 */	bl _savegpr_24
/* 806DD814  7C 7F 1B 78 */	mr r31, r3
/* 806DD818  3C 60 80 6E */	lis r3, lit_1109@ha /* 0x806DF288@ha */
/* 806DD81C  3B A3 F2 88 */	addi r29, r3, lit_1109@l /* 0x806DF288@l */
/* 806DD820  3C 60 80 6E */	lis r3, lit_3763@ha /* 0x806DEE38@ha */
/* 806DD824  3B C3 EE 38 */	addi r30, r3, lit_3763@l /* 0x806DEE38@l */
/* 806DD828  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 806DD82C  38 83 0C 98 */	addi r4, r3, struct_80450C98+0x0@l /* 0x80450C98@l */
/* 806DD830  88 64 00 00 */	lbz r3, 0(r4)
/* 806DD834  28 03 00 00 */	cmplwi r3, 0
/* 806DD838  41 82 00 0C */	beq lbl_806DD844
/* 806DD83C  38 03 FF FF */	addi r0, r3, -1
/* 806DD840  98 04 00 00 */	stb r0, 0(r4)
lbl_806DD844:
/* 806DD844  A8 1F 0D 38 */	lha r0, 0xd38(r31)
/* 806DD848  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 806DD84C  40 82 00 0C */	bne lbl_806DD858
/* 806DD850  38 60 00 01 */	li r3, 1
/* 806DD854  48 00 0C 4C */	b lbl_806DE4A0
lbl_806DD858:
/* 806DD858  38 00 00 7B */	li r0, 0x7b
/* 806DD85C  B0 01 00 22 */	sth r0, 0x22(r1)
/* 806DD860  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 806DD864  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 806DD868  38 81 00 22 */	addi r4, r1, 0x22
/* 806DD86C  4B 93 BF 8D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 806DD870  90 7D 00 6C */	stw r3, 0x6c(r29)
/* 806DD874  38 00 00 7C */	li r0, 0x7c
/* 806DD878  B0 01 00 20 */	sth r0, 0x20(r1)
/* 806DD87C  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 806DD880  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 806DD884  38 81 00 20 */	addi r4, r1, 0x20
/* 806DD888  4B 93 BF 71 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 806DD88C  90 7D 00 70 */	stw r3, 0x70(r29)
/* 806DD890  A8 7F 06 54 */	lha r3, 0x654(r31)
/* 806DD894  38 03 00 01 */	addi r0, r3, 1
/* 806DD898  B0 1F 06 54 */	sth r0, 0x654(r31)
/* 806DD89C  38 60 00 00 */	li r3, 0
/* 806DD8A0  38 00 00 05 */	li r0, 5
/* 806DD8A4  7C 09 03 A6 */	mtctr r0
lbl_806DD8A8:
/* 806DD8A8  38 A3 06 74 */	addi r5, r3, 0x674
/* 806DD8AC  7C 9F 2A AE */	lhax r4, r31, r5
/* 806DD8B0  2C 04 00 00 */	cmpwi r4, 0
/* 806DD8B4  41 82 00 0C */	beq lbl_806DD8C0
/* 806DD8B8  38 04 FF FF */	addi r0, r4, -1
/* 806DD8BC  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_806DD8C0:
/* 806DD8C0  38 63 00 02 */	addi r3, r3, 2
/* 806DD8C4  42 00 FF E4 */	bdnz lbl_806DD8A8
/* 806DD8C8  A8 7F 06 7E */	lha r3, 0x67e(r31)
/* 806DD8CC  2C 03 00 00 */	cmpwi r3, 0
/* 806DD8D0  41 82 00 0C */	beq lbl_806DD8DC
/* 806DD8D4  38 03 FF FF */	addi r0, r3, -1
/* 806DD8D8  B0 1F 06 7E */	sth r0, 0x67e(r31)
lbl_806DD8DC:
/* 806DD8DC  88 7F 06 AA */	lbz r3, 0x6aa(r31)
/* 806DD8E0  7C 60 07 75 */	extsb. r0, r3
/* 806DD8E4  41 82 00 0C */	beq lbl_806DD8F0
/* 806DD8E8  38 03 FF FF */	addi r0, r3, -1
/* 806DD8EC  98 1F 06 AA */	stb r0, 0x6aa(r31)
lbl_806DD8F0:
/* 806DD8F0  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 806DD8F4  D0 1F 06 9C */	stfs f0, 0x69c(r31)
/* 806DD8F8  7F E3 FB 78 */	mr r3, r31
/* 806DD8FC  4B FF DE 6D */	bl action__FP11e_gob_class
/* 806DD900  7F E3 FB 78 */	mr r3, r31
/* 806DD904  4B FF AD 21 */	bl damage_check__FP11e_gob_class
/* 806DD908  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806DD90C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806DD910  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 806DD914  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 806DD918  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 806DD91C  EC 42 00 2A */	fadds f2, f2, f0
/* 806DD920  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 806DD924  4B C6 8F C5 */	bl PSMTXTrans
/* 806DD928  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806DD92C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806DD930  A8 9F 06 A0 */	lha r4, 0x6a0(r31)
/* 806DD934  4B 92 EA 69 */	bl mDoMtx_XrotM__FPA4_fs
/* 806DD938  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806DD93C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806DD940  A8 9F 06 A2 */	lha r4, 0x6a2(r31)
/* 806DD944  4B 92 EB 89 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806DD948  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806DD94C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806DD950  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806DD954  4B 92 EA E1 */	bl mDoMtx_YrotM__FPA4_fs
/* 806DD958  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806DD95C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806DD960  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 806DD964  4B 92 EA 39 */	bl mDoMtx_XrotM__FPA4_fs
/* 806DD968  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806DD96C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806DD970  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 806DD974  4B 92 EB 59 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806DD978  3B 7D 00 4C */	addi r27, r29, 0x4c
/* 806DD97C  C0 3B 00 08 */	lfs f1, 8(r27)
/* 806DD980  FC 40 08 90 */	fmr f2, f1
/* 806DD984  FC 60 08 90 */	fmr f3, f1
/* 806DD988  4B 92 F4 B1 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806DD98C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 806DD990  C0 5F 06 80 */	lfs f2, 0x680(r31)
/* 806DD994  C0 7F 06 84 */	lfs f3, 0x684(r31)
/* 806DD998  4B 92 F4 05 */	bl transM__14mDoMtx_stack_cFfff
/* 806DD99C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806DD9A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806DD9A4  A8 9F 06 B2 */	lha r4, 0x6b2(r31)
/* 806DD9A8  4B 92 E9 F5 */	bl mDoMtx_XrotM__FPA4_fs
/* 806DD9AC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 806DD9B0  C0 1F 06 80 */	lfs f0, 0x680(r31)
/* 806DD9B4  FC 40 00 50 */	fneg f2, f0
/* 806DD9B8  C0 1F 06 84 */	lfs f0, 0x684(r31)
/* 806DD9BC  FC 60 00 50 */	fneg f3, f0
/* 806DD9C0  4B 92 F3 DD */	bl transM__14mDoMtx_stack_cFfff
/* 806DD9C4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DD9C8  83 83 00 04 */	lwz r28, 4(r3)
/* 806DD9CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806DD9D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806DD9D4  38 9C 00 24 */	addi r4, r28, 0x24
/* 806DD9D8  4B C6 8A D9 */	bl PSMTXCopy
/* 806DD9DC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806DD9E0  7C 03 07 74 */	extsb r3, r0
/* 806DD9E4  4B 94 F6 89 */	bl dComIfGp_getReverb__Fi
/* 806DD9E8  7C 65 1B 78 */	mr r5, r3
/* 806DD9EC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DD9F0  38 80 00 00 */	li r4, 0
/* 806DD9F4  4B 93 36 BD */	bl play__16mDoExt_McaMorfSOFUlSc
/* 806DD9F8  80 1F 06 48 */	lwz r0, 0x648(r31)
/* 806DD9FC  2C 00 00 1B */	cmpwi r0, 0x1b
/* 806DDA00  40 82 00 D4 */	bne lbl_806DDAD4
/* 806DDA04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806DDA08  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806DDA0C  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806DDA10  38 00 00 FF */	li r0, 0xff
/* 806DDA14  90 01 00 08 */	stw r0, 8(r1)
/* 806DDA18  38 80 00 00 */	li r4, 0
/* 806DDA1C  90 81 00 0C */	stw r4, 0xc(r1)
/* 806DDA20  38 00 FF FF */	li r0, -1
/* 806DDA24  90 01 00 10 */	stw r0, 0x10(r1)
/* 806DDA28  90 81 00 14 */	stw r4, 0x14(r1)
/* 806DDA2C  90 81 00 18 */	stw r4, 0x18(r1)
/* 806DDA30  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806DDA34  80 9F 0D 30 */	lwz r4, 0xd30(r31)
/* 806DDA38  38 A0 00 00 */	li r5, 0
/* 806DDA3C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008459@ha */
/* 806DDA40  38 C6 84 59 */	addi r6, r6, 0x8459 /* 0x00008459@l */
/* 806DDA44  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 806DDA48  39 00 00 00 */	li r8, 0
/* 806DDA4C  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 806DDA50  39 5D 00 80 */	addi r10, r29, 0x80
/* 806DDA54  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 806DDA58  4B 96 FA 75 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806DDA5C  90 7F 0D 30 */	stw r3, 0xd30(r31)
/* 806DDA60  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806DDA64  38 00 00 FF */	li r0, 0xff
/* 806DDA68  90 01 00 08 */	stw r0, 8(r1)
/* 806DDA6C  38 80 00 00 */	li r4, 0
/* 806DDA70  90 81 00 0C */	stw r4, 0xc(r1)
/* 806DDA74  38 00 FF FF */	li r0, -1
/* 806DDA78  90 01 00 10 */	stw r0, 0x10(r1)
/* 806DDA7C  90 81 00 14 */	stw r4, 0x14(r1)
/* 806DDA80  90 81 00 18 */	stw r4, 0x18(r1)
/* 806DDA84  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806DDA88  80 9F 0D 34 */	lwz r4, 0xd34(r31)
/* 806DDA8C  38 A0 00 00 */	li r5, 0
/* 806DDA90  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000845A@ha */
/* 806DDA94  38 C6 84 5A */	addi r6, r6, 0x845A /* 0x0000845A@l */
/* 806DDA98  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 806DDA9C  39 00 00 00 */	li r8, 0
/* 806DDAA0  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 806DDAA4  39 5D 00 80 */	addi r10, r29, 0x80
/* 806DDAA8  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 806DDAAC  4B 96 FA 21 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806DDAB0  90 7F 0D 34 */	stw r3, 0xd34(r31)
/* 806DDAB4  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806DDAB8  38 63 02 10 */	addi r3, r3, 0x210
/* 806DDABC  80 9F 0D 30 */	lwz r4, 0xd30(r31)
/* 806DDAC0  4B 96 DD F5 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 806DDAC4  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806DDAC8  38 63 02 10 */	addi r3, r3, 0x210
/* 806DDACC  80 9F 0D 34 */	lwz r4, 0xd34(r31)
/* 806DDAD0  4B 96 DD E5 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
lbl_806DDAD4:
/* 806DDAD4  80 1F 06 48 */	lwz r0, 0x648(r31)
/* 806DDAD8  2C 00 00 26 */	cmpwi r0, 0x26
/* 806DDADC  40 82 00 64 */	bne lbl_806DDB40
/* 806DDAE0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DDAE4  38 63 00 0C */	addi r3, r3, 0xc
/* 806DDAE8  C0 3E 01 D0 */	lfs f1, 0x1d0(r30)
/* 806DDAEC  4B C4 A9 41 */	bl checkPass__12J3DFrameCtrlFf
/* 806DDAF0  2C 03 00 00 */	cmpwi r3, 0
/* 806DDAF4  40 82 00 1C */	bne lbl_806DDB10
/* 806DDAF8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DDAFC  38 63 00 0C */	addi r3, r3, 0xc
/* 806DDB00  C0 3E 01 D4 */	lfs f1, 0x1d4(r30)
/* 806DDB04  4B C4 A9 29 */	bl checkPass__12J3DFrameCtrlFf
/* 806DDB08  2C 03 00 00 */	cmpwi r3, 0
/* 806DDB0C  41 82 03 C4 */	beq lbl_806DDED0
lbl_806DDB10:
/* 806DDB10  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003003C@ha */
/* 806DDB14  38 03 00 3C */	addi r0, r3, 0x003C /* 0x0003003C@l */
/* 806DDB18  90 01 00 50 */	stw r0, 0x50(r1)
/* 806DDB1C  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806DDB20  38 81 00 50 */	addi r4, r1, 0x50
/* 806DDB24  38 A0 00 00 */	li r5, 0
/* 806DDB28  38 C0 FF FF */	li r6, -1
/* 806DDB2C  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806DDB30  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806DDB34  7D 89 03 A6 */	mtctr r12
/* 806DDB38  4E 80 04 21 */	bctrl 
/* 806DDB3C  48 00 03 94 */	b lbl_806DDED0
lbl_806DDB40:
/* 806DDB40  2C 00 00 22 */	cmpwi r0, 0x22
/* 806DDB44  40 82 00 4C */	bne lbl_806DDB90
/* 806DDB48  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DDB4C  38 63 00 0C */	addi r3, r3, 0xc
/* 806DDB50  C0 3E 01 D8 */	lfs f1, 0x1d8(r30)
/* 806DDB54  4B C4 A8 D9 */	bl checkPass__12J3DFrameCtrlFf
/* 806DDB58  2C 03 00 00 */	cmpwi r3, 0
/* 806DDB5C  41 82 03 74 */	beq lbl_806DDED0
/* 806DDB60  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003003C@ha */
/* 806DDB64  38 03 00 3C */	addi r0, r3, 0x003C /* 0x0003003C@l */
/* 806DDB68  90 01 00 4C */	stw r0, 0x4c(r1)
/* 806DDB6C  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806DDB70  38 81 00 4C */	addi r4, r1, 0x4c
/* 806DDB74  38 A0 00 00 */	li r5, 0
/* 806DDB78  38 C0 FF FF */	li r6, -1
/* 806DDB7C  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806DDB80  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806DDB84  7D 89 03 A6 */	mtctr r12
/* 806DDB88  4E 80 04 21 */	bctrl 
/* 806DDB8C  48 00 03 44 */	b lbl_806DDED0
lbl_806DDB90:
/* 806DDB90  2C 00 00 04 */	cmpwi r0, 4
/* 806DDB94  40 82 00 4C */	bne lbl_806DDBE0
/* 806DDB98  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DDB9C  38 63 00 0C */	addi r3, r3, 0xc
/* 806DDBA0  C0 3E 01 DC */	lfs f1, 0x1dc(r30)
/* 806DDBA4  4B C4 A8 89 */	bl checkPass__12J3DFrameCtrlFf
/* 806DDBA8  2C 03 00 00 */	cmpwi r3, 0
/* 806DDBAC  41 82 03 24 */	beq lbl_806DDED0
/* 806DDBB0  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003003C@ha */
/* 806DDBB4  38 03 00 3C */	addi r0, r3, 0x003C /* 0x0003003C@l */
/* 806DDBB8  90 01 00 48 */	stw r0, 0x48(r1)
/* 806DDBBC  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806DDBC0  38 81 00 48 */	addi r4, r1, 0x48
/* 806DDBC4  38 A0 00 00 */	li r5, 0
/* 806DDBC8  38 C0 FF FF */	li r6, -1
/* 806DDBCC  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806DDBD0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806DDBD4  7D 89 03 A6 */	mtctr r12
/* 806DDBD8  4E 80 04 21 */	bctrl 
/* 806DDBDC  48 00 02 F4 */	b lbl_806DDED0
lbl_806DDBE0:
/* 806DDBE0  2C 00 00 13 */	cmpwi r0, 0x13
/* 806DDBE4  40 82 00 4C */	bne lbl_806DDC30
/* 806DDBE8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DDBEC  38 63 00 0C */	addi r3, r3, 0xc
/* 806DDBF0  C0 3E 01 E0 */	lfs f1, 0x1e0(r30)
/* 806DDBF4  4B C4 A8 39 */	bl checkPass__12J3DFrameCtrlFf
/* 806DDBF8  2C 03 00 00 */	cmpwi r3, 0
/* 806DDBFC  41 82 02 D4 */	beq lbl_806DDED0
/* 806DDC00  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003003C@ha */
/* 806DDC04  38 03 00 3C */	addi r0, r3, 0x003C /* 0x0003003C@l */
/* 806DDC08  90 01 00 44 */	stw r0, 0x44(r1)
/* 806DDC0C  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806DDC10  38 81 00 44 */	addi r4, r1, 0x44
/* 806DDC14  38 A0 00 00 */	li r5, 0
/* 806DDC18  38 C0 FF FF */	li r6, -1
/* 806DDC1C  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806DDC20  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806DDC24  7D 89 03 A6 */	mtctr r12
/* 806DDC28  4E 80 04 21 */	bctrl 
/* 806DDC2C  48 00 02 A4 */	b lbl_806DDED0
lbl_806DDC30:
/* 806DDC30  2C 00 00 11 */	cmpwi r0, 0x11
/* 806DDC34  40 82 00 A8 */	bne lbl_806DDCDC
/* 806DDC38  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DDC3C  38 63 00 0C */	addi r3, r3, 0xc
/* 806DDC40  C0 3E 01 E4 */	lfs f1, 0x1e4(r30)
/* 806DDC44  4B C4 A7 E9 */	bl checkPass__12J3DFrameCtrlFf
/* 806DDC48  2C 03 00 00 */	cmpwi r3, 0
/* 806DDC4C  41 82 00 30 */	beq lbl_806DDC7C
/* 806DDC50  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003003C@ha */
/* 806DDC54  38 03 00 3C */	addi r0, r3, 0x003C /* 0x0003003C@l */
/* 806DDC58  90 01 00 40 */	stw r0, 0x40(r1)
/* 806DDC5C  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806DDC60  38 81 00 40 */	addi r4, r1, 0x40
/* 806DDC64  38 A0 00 00 */	li r5, 0
/* 806DDC68  38 C0 FF FF */	li r6, -1
/* 806DDC6C  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806DDC70  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806DDC74  7D 89 03 A6 */	mtctr r12
/* 806DDC78  4E 80 04 21 */	bctrl 
lbl_806DDC7C:
/* 806DDC7C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DDC80  38 63 00 0C */	addi r3, r3, 0xc
/* 806DDC84  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 806DDC88  4B C4 A7 A5 */	bl checkPass__12J3DFrameCtrlFf
/* 806DDC8C  2C 03 00 00 */	cmpwi r3, 0
/* 806DDC90  40 82 00 1C */	bne lbl_806DDCAC
/* 806DDC94  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DDC98  38 63 00 0C */	addi r3, r3, 0xc
/* 806DDC9C  C0 3E 01 54 */	lfs f1, 0x154(r30)
/* 806DDCA0  4B C4 A7 8D */	bl checkPass__12J3DFrameCtrlFf
/* 806DDCA4  2C 03 00 00 */	cmpwi r3, 0
/* 806DDCA8  41 82 02 28 */	beq lbl_806DDED0
lbl_806DDCAC:
/* 806DDCAC  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003003D@ha */
/* 806DDCB0  38 03 00 3D */	addi r0, r3, 0x003D /* 0x0003003D@l */
/* 806DDCB4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 806DDCB8  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806DDCBC  38 81 00 3C */	addi r4, r1, 0x3c
/* 806DDCC0  38 A0 00 00 */	li r5, 0
/* 806DDCC4  38 C0 FF FF */	li r6, -1
/* 806DDCC8  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806DDCCC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806DDCD0  7D 89 03 A6 */	mtctr r12
/* 806DDCD4  4E 80 04 21 */	bctrl 
/* 806DDCD8  48 00 01 F8 */	b lbl_806DDED0
lbl_806DDCDC:
/* 806DDCDC  2C 00 00 24 */	cmpwi r0, 0x24
/* 806DDCE0  40 82 00 94 */	bne lbl_806DDD74
/* 806DDCE4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DDCE8  38 63 00 0C */	addi r3, r3, 0xc
/* 806DDCEC  C0 3E 01 E8 */	lfs f1, 0x1e8(r30)
/* 806DDCF0  4B C4 A7 3D */	bl checkPass__12J3DFrameCtrlFf
/* 806DDCF4  2C 03 00 00 */	cmpwi r3, 0
/* 806DDCF8  40 82 00 4C */	bne lbl_806DDD44
/* 806DDCFC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DDD00  38 63 00 0C */	addi r3, r3, 0xc
/* 806DDD04  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 806DDD08  4B C4 A7 25 */	bl checkPass__12J3DFrameCtrlFf
/* 806DDD0C  2C 03 00 00 */	cmpwi r3, 0
/* 806DDD10  40 82 00 34 */	bne lbl_806DDD44
/* 806DDD14  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DDD18  38 63 00 0C */	addi r3, r3, 0xc
/* 806DDD1C  C0 3E 01 EC */	lfs f1, 0x1ec(r30)
/* 806DDD20  4B C4 A7 0D */	bl checkPass__12J3DFrameCtrlFf
/* 806DDD24  2C 03 00 00 */	cmpwi r3, 0
/* 806DDD28  40 82 00 1C */	bne lbl_806DDD44
/* 806DDD2C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DDD30  38 63 00 0C */	addi r3, r3, 0xc
/* 806DDD34  C0 3E 01 F0 */	lfs f1, 0x1f0(r30)
/* 806DDD38  4B C4 A6 F5 */	bl checkPass__12J3DFrameCtrlFf
/* 806DDD3C  2C 03 00 00 */	cmpwi r3, 0
/* 806DDD40  41 82 01 90 */	beq lbl_806DDED0
lbl_806DDD44:
/* 806DDD44  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003003D@ha */
/* 806DDD48  38 03 00 3D */	addi r0, r3, 0x003D /* 0x0003003D@l */
/* 806DDD4C  90 01 00 38 */	stw r0, 0x38(r1)
/* 806DDD50  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806DDD54  38 81 00 38 */	addi r4, r1, 0x38
/* 806DDD58  38 A0 00 00 */	li r5, 0
/* 806DDD5C  38 C0 FF FF */	li r6, -1
/* 806DDD60  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806DDD64  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806DDD68  7D 89 03 A6 */	mtctr r12
/* 806DDD6C  4E 80 04 21 */	bctrl 
/* 806DDD70  48 00 01 60 */	b lbl_806DDED0
lbl_806DDD74:
/* 806DDD74  2C 00 00 18 */	cmpwi r0, 0x18
/* 806DDD78  41 82 00 0C */	beq lbl_806DDD84
/* 806DDD7C  2C 00 00 17 */	cmpwi r0, 0x17
/* 806DDD80  40 82 00 64 */	bne lbl_806DDDE4
lbl_806DDD84:
/* 806DDD84  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DDD88  38 63 00 0C */	addi r3, r3, 0xc
/* 806DDD8C  C0 3E 01 F4 */	lfs f1, 0x1f4(r30)
/* 806DDD90  4B C4 A6 9D */	bl checkPass__12J3DFrameCtrlFf
/* 806DDD94  2C 03 00 00 */	cmpwi r3, 0
/* 806DDD98  40 82 00 1C */	bne lbl_806DDDB4
/* 806DDD9C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DDDA0  38 63 00 0C */	addi r3, r3, 0xc
/* 806DDDA4  C0 3E 01 F8 */	lfs f1, 0x1f8(r30)
/* 806DDDA8  4B C4 A6 85 */	bl checkPass__12J3DFrameCtrlFf
/* 806DDDAC  2C 03 00 00 */	cmpwi r3, 0
/* 806DDDB0  41 82 01 20 */	beq lbl_806DDED0
lbl_806DDDB4:
/* 806DDDB4  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003003D@ha */
/* 806DDDB8  38 03 00 3D */	addi r0, r3, 0x003D /* 0x0003003D@l */
/* 806DDDBC  90 01 00 34 */	stw r0, 0x34(r1)
/* 806DDDC0  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806DDDC4  38 81 00 34 */	addi r4, r1, 0x34
/* 806DDDC8  38 A0 00 00 */	li r5, 0
/* 806DDDCC  38 C0 FF FF */	li r6, -1
/* 806DDDD0  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806DDDD4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806DDDD8  7D 89 03 A6 */	mtctr r12
/* 806DDDDC  4E 80 04 21 */	bctrl 
/* 806DDDE0  48 00 00 F0 */	b lbl_806DDED0
lbl_806DDDE4:
/* 806DDDE4  2C 00 00 1D */	cmpwi r0, 0x1d
/* 806DDDE8  40 82 00 4C */	bne lbl_806DDE34
/* 806DDDEC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DDDF0  38 63 00 0C */	addi r3, r3, 0xc
/* 806DDDF4  C0 3E 01 FC */	lfs f1, 0x1fc(r30)
/* 806DDDF8  4B C4 A6 35 */	bl checkPass__12J3DFrameCtrlFf
/* 806DDDFC  2C 03 00 00 */	cmpwi r3, 0
/* 806DDE00  41 82 00 D0 */	beq lbl_806DDED0
/* 806DDE04  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003003E@ha */
/* 806DDE08  38 03 00 3E */	addi r0, r3, 0x003E /* 0x0003003E@l */
/* 806DDE0C  90 01 00 30 */	stw r0, 0x30(r1)
/* 806DDE10  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806DDE14  38 81 00 30 */	addi r4, r1, 0x30
/* 806DDE18  38 A0 00 00 */	li r5, 0
/* 806DDE1C  38 C0 FF FF */	li r6, -1
/* 806DDE20  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806DDE24  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806DDE28  7D 89 03 A6 */	mtctr r12
/* 806DDE2C  4E 80 04 21 */	bctrl 
/* 806DDE30  48 00 00 A0 */	b lbl_806DDED0
lbl_806DDE34:
/* 806DDE34  2C 00 00 19 */	cmpwi r0, 0x19
/* 806DDE38  40 82 00 4C */	bne lbl_806DDE84
/* 806DDE3C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DDE40  38 63 00 0C */	addi r3, r3, 0xc
/* 806DDE44  C0 3E 02 00 */	lfs f1, 0x200(r30)
/* 806DDE48  4B C4 A5 E5 */	bl checkPass__12J3DFrameCtrlFf
/* 806DDE4C  2C 03 00 00 */	cmpwi r3, 0
/* 806DDE50  41 82 00 80 */	beq lbl_806DDED0
/* 806DDE54  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070205@ha */
/* 806DDE58  38 03 02 05 */	addi r0, r3, 0x0205 /* 0x00070205@l */
/* 806DDE5C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 806DDE60  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806DDE64  38 81 00 2C */	addi r4, r1, 0x2c
/* 806DDE68  38 A0 00 00 */	li r5, 0
/* 806DDE6C  38 C0 FF FF */	li r6, -1
/* 806DDE70  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806DDE74  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806DDE78  7D 89 03 A6 */	mtctr r12
/* 806DDE7C  4E 80 04 21 */	bctrl 
/* 806DDE80  48 00 00 50 */	b lbl_806DDED0
lbl_806DDE84:
/* 806DDE84  2C 00 00 1A */	cmpwi r0, 0x1a
/* 806DDE88  40 82 00 48 */	bne lbl_806DDED0
/* 806DDE8C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DDE90  38 63 00 0C */	addi r3, r3, 0xc
/* 806DDE94  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 806DDE98  4B C4 A5 95 */	bl checkPass__12J3DFrameCtrlFf
/* 806DDE9C  2C 03 00 00 */	cmpwi r3, 0
/* 806DDEA0  41 82 00 30 */	beq lbl_806DDED0
/* 806DDEA4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070205@ha */
/* 806DDEA8  38 03 02 05 */	addi r0, r3, 0x0205 /* 0x00070205@l */
/* 806DDEAC  90 01 00 28 */	stw r0, 0x28(r1)
/* 806DDEB0  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806DDEB4  38 81 00 28 */	addi r4, r1, 0x28
/* 806DDEB8  38 A0 00 00 */	li r5, 0
/* 806DDEBC  38 C0 FF FF */	li r6, -1
/* 806DDEC0  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806DDEC4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806DDEC8  7D 89 03 A6 */	mtctr r12
/* 806DDECC  4E 80 04 21 */	bctrl 
lbl_806DDED0:
/* 806DDED0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DDED4  4B 93 33 19 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 806DDED8  88 1F 06 DA */	lbz r0, 0x6da(r31)
/* 806DDEDC  7C 00 07 75 */	extsb. r0, r0
/* 806DDEE0  40 82 00 40 */	bne lbl_806DDF20
/* 806DDEE4  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806DDEE8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806DDEEC  38 63 04 50 */	addi r3, r3, 0x450
/* 806DDEF0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806DDEF4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806DDEF8  4B C6 85 B9 */	bl PSMTXCopy
/* 806DDEFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806DDF00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806DDF04  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806DDF08  D0 1F 06 DC */	stfs f0, 0x6dc(r31)
/* 806DDF0C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806DDF10  D0 1F 06 E0 */	stfs f0, 0x6e0(r31)
/* 806DDF14  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806DDF18  D0 1F 06 E4 */	stfs f0, 0x6e4(r31)
/* 806DDF1C  48 00 02 58 */	b lbl_806DE174
lbl_806DDF20:
/* 806DDF20  38 7F 06 DC */	addi r3, r31, 0x6dc
/* 806DDF24  38 9F 06 E8 */	addi r4, r31, 0x6e8
/* 806DDF28  7C 65 1B 78 */	mr r5, r3
/* 806DDF2C  4B C6 91 65 */	bl PSVECAdd
/* 806DDF30  C0 3F 06 EC */	lfs f1, 0x6ec(r31)
/* 806DDF34  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 806DDF38  EC 01 00 28 */	fsubs f0, f1, f0
/* 806DDF3C  D0 1F 06 EC */	stfs f0, 0x6ec(r31)
/* 806DDF40  3B 01 00 6C */	addi r24, r1, 0x6c
/* 806DDF44  7F 03 C3 78 */	mr r3, r24
/* 806DDF48  4B 99 96 35 */	bl __ct__11dBgS_GndChkFv
/* 806DDF4C  3C 60 80 6E */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x806DF240@ha */
/* 806DDF50  38 63 F2 40 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x806DF240@l */
/* 806DDF54  90 61 00 7C */	stw r3, 0x7c(r1)
/* 806DDF58  3B A3 00 0C */	addi r29, r3, 0xc
/* 806DDF5C  93 A1 00 8C */	stw r29, 0x8c(r1)
/* 806DDF60  3B 43 00 18 */	addi r26, r3, 0x18
/* 806DDF64  93 41 00 A8 */	stw r26, 0xa8(r1)
/* 806DDF68  3B 23 00 24 */	addi r25, r3, 0x24
/* 806DDF6C  93 21 00 B8 */	stw r25, 0xb8(r1)
/* 806DDF70  38 78 00 3C */	addi r3, r24, 0x3c
/* 806DDF74  4B 99 AE F5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 806DDF78  C0 1F 06 DC */	lfs f0, 0x6dc(r31)
/* 806DDF7C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806DDF80  C0 3F 06 E0 */	lfs f1, 0x6e0(r31)
/* 806DDF84  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 806DDF88  C0 1F 06 E4 */	lfs f0, 0x6e4(r31)
/* 806DDF8C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806DDF90  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 806DDF94  EC 01 00 2A */	fadds f0, f1, f0
/* 806DDF98  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 806DDF9C  7F 03 C3 78 */	mr r3, r24
/* 806DDFA0  38 81 00 60 */	addi r4, r1, 0x60
/* 806DDFA4  4B B8 9D 85 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 806DDFA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806DDFAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806DDFB0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806DDFB4  7F 04 C3 78 */	mr r4, r24
/* 806DDFB8  4B 99 64 E9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 806DDFBC  C0 1F 06 E0 */	lfs f0, 0x6e0(r31)
/* 806DDFC0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806DDFC4  4C 40 13 82 */	cror 2, 0, 2
/* 806DDFC8  40 82 00 F0 */	bne lbl_806DE0B8
/* 806DDFCC  D0 3F 06 E0 */	stfs f1, 0x6e0(r31)
/* 806DDFD0  88 1F 06 DA */	lbz r0, 0x6da(r31)
/* 806DDFD4  2C 00 00 01 */	cmpwi r0, 1
/* 806DDFD8  40 82 00 CC */	bne lbl_806DE0A4
/* 806DDFDC  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 806DDFE0  D0 1F 06 EC */	stfs f0, 0x6ec(r31)
/* 806DDFE4  C0 3F 06 F0 */	lfs f1, 0x6f0(r31)
/* 806DDFE8  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 806DDFEC  EC 01 00 32 */	fmuls f0, f1, f0
/* 806DDFF0  D0 1F 06 F0 */	stfs f0, 0x6f0(r31)
/* 806DDFF4  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 806DDFF8  D0 1F 06 E8 */	stfs f0, 0x6e8(r31)
/* 806DDFFC  38 00 00 02 */	li r0, 2
/* 806DE000  98 1F 06 DA */	stb r0, 0x6da(r31)
/* 806DE004  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806DE008  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806DE00C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806DE010  38 80 00 00 */	li r4, 0
/* 806DE014  90 81 00 08 */	stw r4, 8(r1)
/* 806DE018  38 00 FF FF */	li r0, -1
/* 806DE01C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806DE020  90 81 00 10 */	stw r4, 0x10(r1)
/* 806DE024  90 81 00 14 */	stw r4, 0x14(r1)
/* 806DE028  90 81 00 18 */	stw r4, 0x18(r1)
/* 806DE02C  38 80 00 00 */	li r4, 0
/* 806DE030  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008455@ha */
/* 806DE034  38 A5 84 55 */	addi r5, r5, 0x8455 /* 0x00008455@l */
/* 806DE038  38 DF 06 DC */	addi r6, r31, 0x6dc
/* 806DE03C  38 E0 00 00 */	li r7, 0
/* 806DE040  39 00 00 00 */	li r8, 0
/* 806DE044  39 20 00 00 */	li r9, 0
/* 806DE048  39 40 00 FF */	li r10, 0xff
/* 806DE04C  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 806DE050  4B 96 EA 41 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806DE054  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806DE058  7C 03 07 74 */	extsb r3, r0
/* 806DE05C  4B 94 F0 11 */	bl dComIfGp_getReverb__Fi
/* 806DE060  7C 67 1B 78 */	mr r7, r3
/* 806DE064  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070203@ha */
/* 806DE068  38 03 02 03 */	addi r0, r3, 0x0203 /* 0x00070203@l */
/* 806DE06C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806DE070  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806DE074  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806DE078  80 63 00 00 */	lwz r3, 0(r3)
/* 806DE07C  38 81 00 24 */	addi r4, r1, 0x24
/* 806DE080  38 BF 06 DC */	addi r5, r31, 0x6dc
/* 806DE084  38 C0 00 00 */	li r6, 0
/* 806DE088  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 806DE08C  FC 40 08 90 */	fmr f2, f1
/* 806DE090  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 806DE094  FC 80 18 90 */	fmr f4, f3
/* 806DE098  39 00 00 00 */	li r8, 0
/* 806DE09C  4B BC D8 E9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806DE0A0  48 00 00 58 */	b lbl_806DE0F8
lbl_806DE0A4:
/* 806DE0A4  C0 1E 01 90 */	lfs f0, 0x190(r30)
/* 806DE0A8  D0 1F 06 EC */	stfs f0, 0x6ec(r31)
/* 806DE0AC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 806DE0B0  D0 1F 06 F0 */	stfs f0, 0x6f0(r31)
/* 806DE0B4  48 00 00 44 */	b lbl_806DE0F8
lbl_806DE0B8:
/* 806DE0B8  88 1F 06 DA */	lbz r0, 0x6da(r31)
/* 806DE0BC  2C 00 00 01 */	cmpwi r0, 1
/* 806DE0C0  40 82 00 20 */	bne lbl_806DE0E0
/* 806DE0C4  A8 7F 06 F6 */	lha r3, 0x6f6(r31)
/* 806DE0C8  38 03 07 D0 */	addi r0, r3, 0x7d0
/* 806DE0CC  B0 1F 06 F6 */	sth r0, 0x6f6(r31)
/* 806DE0D0  A8 7F 06 F4 */	lha r3, 0x6f4(r31)
/* 806DE0D4  38 03 03 20 */	addi r0, r3, 0x320
/* 806DE0D8  B0 1F 06 F4 */	sth r0, 0x6f4(r31)
/* 806DE0DC  48 00 00 1C */	b lbl_806DE0F8
lbl_806DE0E0:
/* 806DE0E0  A8 7F 06 F6 */	lha r3, 0x6f6(r31)
/* 806DE0E4  38 03 E4 A8 */	addi r0, r3, -7000
/* 806DE0E8  B0 1F 06 F6 */	sth r0, 0x6f6(r31)
/* 806DE0EC  A8 7F 06 F4 */	lha r3, 0x6f4(r31)
/* 806DE0F0  38 03 F8 30 */	addi r0, r3, -2000
/* 806DE0F4  B0 1F 06 F4 */	sth r0, 0x6f4(r31)
lbl_806DE0F8:
/* 806DE0F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806DE0FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806DE100  C0 3F 06 DC */	lfs f1, 0x6dc(r31)
/* 806DE104  C0 5F 06 E0 */	lfs f2, 0x6e0(r31)
/* 806DE108  C0 7F 06 E4 */	lfs f3, 0x6e4(r31)
/* 806DE10C  4B C6 87 DD */	bl PSMTXTrans
/* 806DE110  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806DE114  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806DE118  A8 9F 06 F6 */	lha r4, 0x6f6(r31)
/* 806DE11C  4B 92 E3 19 */	bl mDoMtx_YrotM__FPA4_fs
/* 806DE120  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806DE124  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806DE128  A8 9F 06 F4 */	lha r4, 0x6f4(r31)
/* 806DE12C  4B 92 E2 71 */	bl mDoMtx_XrotM__FPA4_fs
/* 806DE130  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806DE134  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806DE138  A8 9F 06 F8 */	lha r4, 0x6f8(r31)
/* 806DE13C  4B 92 E3 91 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806DE140  C0 3B 00 08 */	lfs f1, 8(r27)
/* 806DE144  FC 40 08 90 */	fmr f2, f1
/* 806DE148  FC 60 08 90 */	fmr f3, f1
/* 806DE14C  4B 92 EC ED */	bl scaleM__14mDoMtx_stack_cFfff
/* 806DE150  3C 60 80 6E */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x806DF240@ha */
/* 806DE154  38 03 F2 40 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l /* 0x806DF240@l */
/* 806DE158  90 01 00 7C */	stw r0, 0x7c(r1)
/* 806DE15C  93 A1 00 8C */	stw r29, 0x8c(r1)
/* 806DE160  93 41 00 A8 */	stw r26, 0xa8(r1)
/* 806DE164  93 21 00 B8 */	stw r25, 0xb8(r1)
/* 806DE168  38 61 00 6C */	addi r3, r1, 0x6c
/* 806DE16C  38 80 00 00 */	li r4, 0
/* 806DE170  4B 99 94 81 */	bl __dt__11dBgS_GndChkFv
lbl_806DE174:
/* 806DE174  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806DE178  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806DE17C  80 9F 06 4C */	lwz r4, 0x64c(r31)
/* 806DE180  38 84 00 24 */	addi r4, r4, 0x24
/* 806DE184  4B C6 83 2D */	bl PSMTXCopy
/* 806DE188  A8 1F 06 56 */	lha r0, 0x656(r31)
/* 806DE18C  2C 00 00 05 */	cmpwi r0, 5
/* 806DE190  41 82 00 0C */	beq lbl_806DE19C
/* 806DE194  2C 00 00 08 */	cmpwi r0, 8
/* 806DE198  40 82 00 60 */	bne lbl_806DE1F8
lbl_806DE19C:
/* 806DE19C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806DE1A0  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 806DE1A4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806DE1A8  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 806DE1AC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806DE1B0  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 806DE1B4  C0 5F 05 3C */	lfs f2, 0x53c(r31)
/* 806DE1B8  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 806DE1BC  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 806DE1C0  EC 01 00 2A */	fadds f0, f1, f0
/* 806DE1C4  EC 02 00 2A */	fadds f0, f2, f0
/* 806DE1C8  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 806DE1CC  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 806DE1D0  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 806DE1D4  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 806DE1D8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 806DE1DC  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 806DE1E0  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 806DE1E4  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 806DE1E8  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 806DE1EC  EC 01 00 2A */	fadds f0, f1, f0
/* 806DE1F0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 806DE1F4  48 00 00 64 */	b lbl_806DE258
lbl_806DE1F8:
/* 806DE1F8  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806DE1FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806DE200  38 63 04 80 */	addi r3, r3, 0x480
/* 806DE204  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806DE208  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806DE20C  80 84 00 00 */	lwz r4, 0(r4)
/* 806DE210  4B C6 82 A1 */	bl PSMTXCopy
/* 806DE214  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 806DE218  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806DE21C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 806DE220  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806DE224  38 61 00 60 */	addi r3, r1, 0x60
/* 806DE228  38 9F 05 38 */	addi r4, r31, 0x538
/* 806DE22C  4B B9 2C C1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806DE230  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 806DE234  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 806DE238  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 806DE23C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 806DE240  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 806DE244  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 806DE248  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 806DE24C  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 806DE250  EC 01 00 2A */	fadds f0, f1, f0
/* 806DE254  D0 1F 05 54 */	stfs f0, 0x554(r31)
lbl_806DE258:
/* 806DE258  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806DE25C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806DE260  38 63 00 30 */	addi r3, r3, 0x30
/* 806DE264  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806DE268  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806DE26C  80 84 00 00 */	lwz r4, 0(r4)
/* 806DE270  4B C6 82 41 */	bl PSMTXCopy
/* 806DE274  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 806DE278  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806DE27C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 806DE280  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 806DE284  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806DE288  38 61 00 60 */	addi r3, r1, 0x60
/* 806DE28C  38 81 00 54 */	addi r4, r1, 0x54
/* 806DE290  4B B9 2C 5D */	bl MtxPosition__FP4cXyzP4cXyz
/* 806DE294  A8 1F 06 7E */	lha r0, 0x67e(r31)
/* 806DE298  2C 00 00 00 */	cmpwi r0, 0
/* 806DE29C  41 82 00 14 */	beq lbl_806DE2B0
/* 806DE2A0  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 806DE2A4  C0 1E 02 04 */	lfs f0, 0x204(r30)
/* 806DE2A8  EC 01 00 2A */	fadds f0, f1, f0
/* 806DE2AC  D0 01 00 5C */	stfs f0, 0x5c(r1)
lbl_806DE2B0:
/* 806DE2B0  38 7F 0C E4 */	addi r3, r31, 0xce4
/* 806DE2B4  38 81 00 54 */	addi r4, r1, 0x54
/* 806DE2B8  4B B9 13 91 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806DE2BC  38 7F 0C E4 */	addi r3, r31, 0xce4
/* 806DE2C0  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 806DE2C4  4B B9 14 45 */	bl SetR__8cM3dGSphFf
/* 806DE2C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806DE2CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806DE2D0  3B 23 23 3C */	addi r25, r3, 0x233c
/* 806DE2D4  7F 23 CB 78 */	mr r3, r25
/* 806DE2D8  38 9F 0B C0 */	addi r4, r31, 0xbc0
/* 806DE2DC  4B B8 68 CD */	bl Set__4cCcSFP8cCcD_Obj
/* 806DE2E0  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 806DE2E4  7C 00 07 75 */	extsb. r0, r0
/* 806DE2E8  41 82 00 24 */	beq lbl_806DE30C
/* 806DE2EC  80 1F 0C 5C */	lwz r0, 0xc5c(r31)
/* 806DE2F0  60 00 00 01 */	ori r0, r0, 1
/* 806DE2F4  90 1F 0C 5C */	stw r0, 0xc5c(r31)
/* 806DE2F8  38 00 00 02 */	li r0, 2
/* 806DE2FC  98 1F 0C 7A */	stb r0, 0xc7a(r31)
/* 806DE300  38 00 00 00 */	li r0, 0
/* 806DE304  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 806DE308  48 00 00 18 */	b lbl_806DE320
lbl_806DE30C:
/* 806DE30C  80 1F 0C 5C */	lwz r0, 0xc5c(r31)
/* 806DE310  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806DE314  90 1F 0C 5C */	stw r0, 0xc5c(r31)
/* 806DE318  38 00 00 00 */	li r0, 0
/* 806DE31C  98 1F 0C 7A */	stb r0, 0xc7a(r31)
lbl_806DE320:
/* 806DE320  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806DE324  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806DE328  38 63 03 00 */	addi r3, r3, 0x300
/* 806DE32C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806DE330  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806DE334  80 84 00 00 */	lwz r4, 0(r4)
/* 806DE338  4B C6 81 79 */	bl PSMTXCopy
/* 806DE33C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 806DE340  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806DE344  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 806DE348  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806DE34C  38 61 00 60 */	addi r3, r1, 0x60
/* 806DE350  38 9F 0D 24 */	addi r4, r31, 0xd24
/* 806DE354  4B B9 2B 99 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806DE358  88 7F 0D 1D */	lbz r3, 0xd1d(r31)
/* 806DE35C  7C 60 07 75 */	extsb. r0, r3
/* 806DE360  41 82 00 F0 */	beq lbl_806DE450
/* 806DE364  7C 60 07 74 */	extsb r0, r3
/* 806DE368  2C 00 00 01 */	cmpwi r0, 1
/* 806DE36C  40 82 00 4C */	bne lbl_806DE3B8
/* 806DE370  88 1F 0D 1E */	lbz r0, 0xd1e(r31)
/* 806DE374  7C 00 07 75 */	extsb. r0, r0
/* 806DE378  40 82 00 1C */	bne lbl_806DE394
/* 806DE37C  38 00 00 01 */	li r0, 1
/* 806DE380  98 1F 0D 1E */	stb r0, 0xd1e(r31)
/* 806DE384  38 7F 09 50 */	addi r3, r31, 0x950
/* 806DE388  38 9F 0D 24 */	addi r4, r31, 0xd24
/* 806DE38C  4B 9A 66 ED */	bl StartCAt__8dCcD_SphFR4cXyz
/* 806DE390  48 00 00 10 */	b lbl_806DE3A0
lbl_806DE394:
/* 806DE394  38 7F 09 50 */	addi r3, r31, 0x950
/* 806DE398  38 9F 0D 24 */	addi r4, r31, 0xd24
/* 806DE39C  4B 9A 67 29 */	bl MoveCAt__8dCcD_SphFR4cXyz
lbl_806DE3A0:
/* 806DE3A0  38 7F 0A 74 */	addi r3, r31, 0xa74
/* 806DE3A4  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 806DE3A8  C0 1B 00 08 */	lfs f0, 8(r27)
/* 806DE3AC  EC 21 00 32 */	fmuls f1, f1, f0
/* 806DE3B0  4B B9 13 59 */	bl SetR__8cM3dGSphFf
/* 806DE3B4  48 00 00 64 */	b lbl_806DE418
lbl_806DE3B8:
/* 806DE3B8  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806DE3BC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806DE3C0  38 63 00 30 */	addi r3, r3, 0x30
/* 806DE3C4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806DE3C8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806DE3CC  80 84 00 00 */	lwz r4, 0(r4)
/* 806DE3D0  4B C6 80 E1 */	bl PSMTXCopy
/* 806DE3D4  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 806DE3D8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806DE3DC  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 806DE3E0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 806DE3E4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 806DE3E8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806DE3EC  38 61 00 60 */	addi r3, r1, 0x60
/* 806DE3F0  38 81 00 54 */	addi r4, r1, 0x54
/* 806DE3F4  4B B9 2A F9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806DE3F8  38 7F 0A 74 */	addi r3, r31, 0xa74
/* 806DE3FC  38 81 00 54 */	addi r4, r1, 0x54
/* 806DE400  4B B9 12 49 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806DE404  38 7F 0A 74 */	addi r3, r31, 0xa74
/* 806DE408  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 806DE40C  C0 1B 00 08 */	lfs f0, 8(r27)
/* 806DE410  EC 21 00 32 */	fmuls f1, f1, f0
/* 806DE414  4B B9 12 F5 */	bl SetR__8cM3dGSphFf
lbl_806DE418:
/* 806DE418  38 00 00 00 */	li r0, 0
/* 806DE41C  98 1F 0D 1D */	stb r0, 0xd1d(r31)
/* 806DE420  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806DE424  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806DE428  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806DE42C  80 03 05 70 */	lwz r0, 0x570(r3)
/* 806DE430  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 806DE434  41 82 00 10 */	beq lbl_806DE444
/* 806DE438  38 00 00 02 */	li r0, 2
/* 806DE43C  98 1F 09 C7 */	stb r0, 0x9c7(r31)
/* 806DE440  48 00 00 48 */	b lbl_806DE488
lbl_806DE444:
/* 806DE444  38 00 00 07 */	li r0, 7
/* 806DE448  98 1F 09 C7 */	stb r0, 0x9c7(r31)
/* 806DE44C  48 00 00 3C */	b lbl_806DE488
lbl_806DE450:
/* 806DE450  38 00 00 00 */	li r0, 0
/* 806DE454  98 1F 0D 1E */	stb r0, 0xd1e(r31)
/* 806DE458  C0 3F 0D 24 */	lfs f1, 0xd24(r31)
/* 806DE45C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 806DE460  C0 1F 0D 28 */	lfs f0, 0xd28(r31)
/* 806DE464  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806DE468  C0 1F 0D 2C */	lfs f0, 0xd2c(r31)
/* 806DE46C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 806DE470  C0 1E 02 08 */	lfs f0, 0x208(r30)
/* 806DE474  EC 01 00 2A */	fadds f0, f1, f0
/* 806DE478  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806DE47C  38 7F 0A 74 */	addi r3, r31, 0xa74
/* 806DE480  38 81 00 54 */	addi r4, r1, 0x54
/* 806DE484  4B B9 11 C5 */	bl SetC__8cM3dGSphFRC4cXyz
lbl_806DE488:
/* 806DE488  7F 23 CB 78 */	mr r3, r25
/* 806DE48C  38 9F 09 50 */	addi r4, r31, 0x950
/* 806DE490  4B B8 67 19 */	bl Set__4cCcSFP8cCcD_Obj
/* 806DE494  7F E3 FB 78 */	mr r3, r31
/* 806DE498  4B FF E1 3D */	bl demo_camera__FP11e_gob_class
/* 806DE49C  38 60 00 01 */	li r3, 1
lbl_806DE4A0:
/* 806DE4A0  39 61 00 E0 */	addi r11, r1, 0xe0
/* 806DE4A4  4B C8 3D 71 */	bl _restgpr_24
/* 806DE4A8  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 806DE4AC  7C 08 03 A6 */	mtlr r0
/* 806DE4B0  38 21 00 E0 */	addi r1, r1, 0xe0
/* 806DE4B4  4E 80 00 20 */	blr 
