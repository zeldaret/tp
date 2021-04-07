lbl_80AC082C:
/* 80AC082C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AC0830  7C 08 02 A6 */	mflr r0
/* 80AC0834  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AC0838  39 61 00 40 */	addi r11, r1, 0x40
/* 80AC083C  4B 8A 19 91 */	bl _savegpr_25
/* 80AC0840  7C 7A 1B 78 */	mr r26, r3
/* 80AC0844  3C 60 80 AC */	lis r3, m__18daNpc_Saru_Param_c@ha /* 0x80AC44F8@ha */
/* 80AC0848  3B A3 44 F8 */	addi r29, r3, m__18daNpc_Saru_Param_c@l /* 0x80AC44F8@l */
/* 80AC084C  88 1A 0A 89 */	lbz r0, 0xa89(r26)
/* 80AC0850  20 00 00 01 */	subfic r0, r0, 1
/* 80AC0854  7C 00 00 34 */	cntlzw r0, r0
/* 80AC0858  54 05 F0 B8 */	rlwinm r5, r0, 0x1e, 2, 0x1c
/* 80AC085C  3C 60 80 AC */	lis r3, l_bmdData@ha /* 0x80AC46C4@ha */
/* 80AC0860  38 83 46 C4 */	addi r4, r3, l_bmdData@l /* 0x80AC46C4@l */
/* 80AC0864  7C 64 2A 14 */	add r3, r4, r5
/* 80AC0868  80 03 00 04 */	lwz r0, 4(r3)
/* 80AC086C  54 00 10 3A */	slwi r0, r0, 2
/* 80AC0870  3C 60 80 AC */	lis r3, l_resNameList@ha /* 0x80AC46FC@ha */
/* 80AC0874  38 63 46 FC */	addi r3, r3, l_resNameList@l /* 0x80AC46FC@l */
/* 80AC0878  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AC087C  7C 84 28 2E */	lwzx r4, r4, r5
/* 80AC0880  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AC0884  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AC0888  3F 85 00 02 */	addis r28, r5, 2
/* 80AC088C  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80AC0890  7F 85 E3 78 */	mr r5, r28
/* 80AC0894  38 C0 00 80 */	li r6, 0x80
/* 80AC0898  4B 57 BA 55 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AC089C  7C 79 1B 79 */	or. r25, r3, r3
/* 80AC08A0  40 82 00 0C */	bne lbl_80AC08AC
/* 80AC08A4  38 60 00 00 */	li r3, 0
/* 80AC08A8  48 00 01 94 */	b lbl_80AC0A3C
lbl_80AC08AC:
/* 80AC08AC  38 60 00 58 */	li r3, 0x58
/* 80AC08B0  4B 80 E3 9D */	bl __nw__FUl
/* 80AC08B4  7C 60 1B 79 */	or. r0, r3, r3
/* 80AC08B8  41 82 00 48 */	beq lbl_80AC0900
/* 80AC08BC  38 1A 05 80 */	addi r0, r26, 0x580
/* 80AC08C0  90 01 00 08 */	stw r0, 8(r1)
/* 80AC08C4  3C 00 00 08 */	lis r0, 8
/* 80AC08C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AC08CC  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020084@ha */
/* 80AC08D0  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11020084@l */
/* 80AC08D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AC08D8  7F 24 CB 78 */	mr r4, r25
/* 80AC08DC  38 A0 00 00 */	li r5, 0
/* 80AC08E0  38 C0 00 00 */	li r6, 0
/* 80AC08E4  38 E0 00 00 */	li r7, 0
/* 80AC08E8  39 00 FF FF */	li r8, -1
/* 80AC08EC  C0 3D 00 C8 */	lfs f1, 0xc8(r29)
/* 80AC08F0  39 20 00 00 */	li r9, 0
/* 80AC08F4  39 40 FF FF */	li r10, -1
/* 80AC08F8  4B 54 FE D9 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80AC08FC  7C 60 1B 78 */	mr r0, r3
lbl_80AC0900:
/* 80AC0900  90 1A 05 78 */	stw r0, 0x578(r26)
/* 80AC0904  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 80AC0908  28 03 00 00 */	cmplwi r3, 0
/* 80AC090C  41 82 00 10 */	beq lbl_80AC091C
/* 80AC0910  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AC0914  28 05 00 00 */	cmplwi r5, 0
/* 80AC0918  40 82 00 0C */	bne lbl_80AC0924
lbl_80AC091C:
/* 80AC091C  38 60 00 00 */	li r3, 0
/* 80AC0920  48 00 01 1C */	b lbl_80AC0A3C
lbl_80AC0924:
/* 80AC0924  38 C0 00 00 */	li r6, 0
/* 80AC0928  3C 60 80 AC */	lis r3, ctrlJointCallBack__12daNpc_Saru_cFP8J3DJointi@ha /* 0x80AC0B0C@ha */
/* 80AC092C  38 83 0B 0C */	addi r4, r3, ctrlJointCallBack__12daNpc_Saru_cFP8J3DJointi@l /* 0x80AC0B0C@l */
/* 80AC0930  48 00 00 18 */	b lbl_80AC0948
lbl_80AC0934:
/* 80AC0934  80 79 00 28 */	lwz r3, 0x28(r25)
/* 80AC0938  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80AC093C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AC0940  90 83 00 04 */	stw r4, 4(r3)
/* 80AC0944  38 C6 00 01 */	addi r6, r6, 1
lbl_80AC0948:
/* 80AC0948  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80AC094C  A0 19 00 2C */	lhz r0, 0x2c(r25)
/* 80AC0950  7C 03 00 40 */	cmplw r3, r0
/* 80AC0954  41 80 FF E0 */	blt lbl_80AC0934
/* 80AC0958  93 45 00 14 */	stw r26, 0x14(r5)
/* 80AC095C  3B 60 00 00 */	li r27, 0
/* 80AC0960  3B 20 00 00 */	li r25, 0
/* 80AC0964  3B DD 00 C0 */	addi r30, r29, 0xc0
/* 80AC0968  3C 60 80 AC */	lis r3, l_bmdData@ha /* 0x80AC46C4@ha */
/* 80AC096C  3B E3 46 C4 */	addi r31, r3, l_bmdData@l /* 0x80AC46C4@l */
lbl_80AC0970:
/* 80AC0970  7C 1E C8 2E */	lwzx r0, r30, r25
/* 80AC0974  54 00 18 38 */	slwi r0, r0, 3
/* 80AC0978  7C 7F 02 14 */	add r3, r31, r0
/* 80AC097C  80 83 00 00 */	lwz r4, 0(r3)
/* 80AC0980  2C 04 00 00 */	cmpwi r4, 0
/* 80AC0984  41 80 00 28 */	blt lbl_80AC09AC
/* 80AC0988  80 03 00 04 */	lwz r0, 4(r3)
/* 80AC098C  54 00 10 3A */	slwi r0, r0, 2
/* 80AC0990  3C 60 80 AC */	lis r3, l_resNameList@ha /* 0x80AC46FC@ha */
/* 80AC0994  38 63 46 FC */	addi r3, r3, l_resNameList@l /* 0x80AC46FC@l */
/* 80AC0998  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AC099C  7F 85 E3 78 */	mr r5, r28
/* 80AC09A0  38 C0 00 80 */	li r6, 0x80
/* 80AC09A4  4B 57 B9 49 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AC09A8  48 00 00 08 */	b lbl_80AC09B0
lbl_80AC09AC:
/* 80AC09AC  38 60 00 00 */	li r3, 0
lbl_80AC09B0:
/* 80AC09B0  28 03 00 00 */	cmplwi r3, 0
/* 80AC09B4  41 82 00 20 */	beq lbl_80AC09D4
/* 80AC09B8  3C 80 00 08 */	lis r4, 8
/* 80AC09BC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80AC09C0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80AC09C4  4B 55 42 91 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80AC09C8  38 19 0E 44 */	addi r0, r25, 0xe44
/* 80AC09CC  7C 7A 01 2E */	stwx r3, r26, r0
/* 80AC09D0  48 00 00 10 */	b lbl_80AC09E0
lbl_80AC09D4:
/* 80AC09D4  38 60 00 00 */	li r3, 0
/* 80AC09D8  38 19 0E 44 */	addi r0, r25, 0xe44
/* 80AC09DC  7C 7A 01 2E */	stwx r3, r26, r0
lbl_80AC09E0:
/* 80AC09E0  3B 7B 00 01 */	addi r27, r27, 1
/* 80AC09E4  2C 1B 00 02 */	cmpwi r27, 2
/* 80AC09E8  3B 39 00 04 */	addi r25, r25, 4
/* 80AC09EC  41 80 FF 84 */	blt lbl_80AC0970
/* 80AC09F0  7F 43 D3 78 */	mr r3, r26
/* 80AC09F4  38 80 00 00 */	li r4, 0
/* 80AC09F8  38 A0 00 00 */	li r5, 0
/* 80AC09FC  4B 68 99 8D */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80AC0A00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AC0A04  41 82 00 34 */	beq lbl_80AC0A38
/* 80AC0A08  7F 43 D3 78 */	mr r3, r26
/* 80AC0A0C  38 80 00 00 */	li r4, 0
/* 80AC0A10  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80AC0A14  38 A0 00 00 */	li r5, 0
/* 80AC0A18  81 9A 0E 3C */	lwz r12, 0xe3c(r26)
/* 80AC0A1C  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80AC0A20  7D 89 03 A6 */	mtctr r12
/* 80AC0A24  4E 80 04 21 */	bctrl 
/* 80AC0A28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AC0A2C  41 82 00 0C */	beq lbl_80AC0A38
/* 80AC0A30  38 60 00 01 */	li r3, 1
/* 80AC0A34  48 00 00 08 */	b lbl_80AC0A3C
lbl_80AC0A38:
/* 80AC0A38  38 60 00 00 */	li r3, 0
lbl_80AC0A3C:
/* 80AC0A3C  39 61 00 40 */	addi r11, r1, 0x40
/* 80AC0A40  4B 8A 17 D9 */	bl _restgpr_25
/* 80AC0A44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AC0A48  7C 08 03 A6 */	mtlr r0
/* 80AC0A4C  38 21 00 40 */	addi r1, r1, 0x40
/* 80AC0A50  4E 80 00 20 */	blr 
