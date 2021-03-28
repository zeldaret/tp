lbl_80AC9968:
/* 80AC9968  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC996C  7C 08 02 A6 */	mflr r0
/* 80AC9970  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC9974  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AC9978  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AC997C  7C 7F 1B 78 */	mr r31, r3
/* 80AC9980  3C 60 80 AD */	lis r3, l_bmdData@ha
/* 80AC9984  38 83 B4 50 */	addi r4, r3, l_bmdData@l
/* 80AC9988  80 04 00 04 */	lwz r0, 4(r4)
/* 80AC998C  54 00 10 3A */	slwi r0, r0, 2
/* 80AC9990  3C 60 80 AD */	lis r3, l_resNameList@ha
/* 80AC9994  38 63 B4 70 */	addi r3, r3, l_resNameList@l
/* 80AC9998  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AC999C  80 84 00 00 */	lwz r4, 0(r4)
/* 80AC99A0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80AC99A4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80AC99A8  3C A5 00 02 */	addis r5, r5, 2
/* 80AC99AC  38 C0 00 80 */	li r6, 0x80
/* 80AC99B0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80AC99B4  4B 57 29 38 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AC99B8  7C 7E 1B 78 */	mr r30, r3
/* 80AC99BC  38 60 00 58 */	li r3, 0x58
/* 80AC99C0  4B 80 52 8C */	b __nw__FUl
/* 80AC99C4  7C 60 1B 79 */	or. r0, r3, r3
/* 80AC99C8  41 82 00 4C */	beq lbl_80AC9A14
/* 80AC99CC  38 1F 05 80 */	addi r0, r31, 0x580
/* 80AC99D0  90 01 00 08 */	stw r0, 8(r1)
/* 80AC99D4  38 00 00 00 */	li r0, 0
/* 80AC99D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AC99DC  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80AC99E0  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80AC99E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AC99E8  7F C4 F3 78 */	mr r4, r30
/* 80AC99EC  38 A0 00 00 */	li r5, 0
/* 80AC99F0  38 C0 00 00 */	li r6, 0
/* 80AC99F4  38 E0 00 00 */	li r7, 0
/* 80AC99F8  39 00 FF FF */	li r8, -1
/* 80AC99FC  3D 20 80 AD */	lis r9, lit_4215@ha
/* 80AC9A00  C0 29 B3 FC */	lfs f1, lit_4215@l(r9)
/* 80AC9A04  39 20 00 00 */	li r9, 0
/* 80AC9A08  39 40 FF FF */	li r10, -1
/* 80AC9A0C  4B 54 6D C4 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80AC9A10  7C 60 1B 78 */	mr r0, r3
lbl_80AC9A14:
/* 80AC9A14  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80AC9A18  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80AC9A1C  28 03 00 00 */	cmplwi r3, 0
/* 80AC9A20  41 82 00 1C */	beq lbl_80AC9A3C
/* 80AC9A24  80 03 00 04 */	lwz r0, 4(r3)
/* 80AC9A28  28 00 00 00 */	cmplwi r0, 0
/* 80AC9A2C  40 82 00 10 */	bne lbl_80AC9A3C
/* 80AC9A30  4B 54 78 E0 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80AC9A34  38 00 00 00 */	li r0, 0
/* 80AC9A38  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_80AC9A3C:
/* 80AC9A3C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80AC9A40  28 03 00 00 */	cmplwi r3, 0
/* 80AC9A44  40 82 00 0C */	bne lbl_80AC9A50
/* 80AC9A48  38 60 00 00 */	li r3, 0
/* 80AC9A4C  48 00 00 5C */	b lbl_80AC9AA8
lbl_80AC9A50:
/* 80AC9A50  80 63 00 04 */	lwz r3, 4(r3)
/* 80AC9A54  93 E3 00 14 */	stw r31, 0x14(r3)
/* 80AC9A58  7F E3 FB 78 */	mr r3, r31
/* 80AC9A5C  38 80 00 00 */	li r4, 0
/* 80AC9A60  38 A0 00 00 */	li r5, 0
/* 80AC9A64  4B 68 09 24 */	b setFaceMotionAnm__8daNpcT_cFib
/* 80AC9A68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AC9A6C  41 82 00 38 */	beq lbl_80AC9AA4
/* 80AC9A70  7F E3 FB 78 */	mr r3, r31
/* 80AC9A74  38 80 00 00 */	li r4, 0
/* 80AC9A78  3C A0 80 AD */	lis r5, lit_4089@ha
/* 80AC9A7C  C0 25 B3 F0 */	lfs f1, lit_4089@l(r5)
/* 80AC9A80  38 A0 00 00 */	li r5, 0
/* 80AC9A84  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80AC9A88  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80AC9A8C  7D 89 03 A6 */	mtctr r12
/* 80AC9A90  4E 80 04 21 */	bctrl 
/* 80AC9A94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AC9A98  41 82 00 0C */	beq lbl_80AC9AA4
/* 80AC9A9C  38 60 00 01 */	li r3, 1
/* 80AC9AA0  48 00 00 08 */	b lbl_80AC9AA8
lbl_80AC9AA4:
/* 80AC9AA4  38 60 00 00 */	li r3, 0
lbl_80AC9AA8:
/* 80AC9AA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AC9AAC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AC9AB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC9AB4  7C 08 03 A6 */	mtlr r0
/* 80AC9AB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC9ABC  4E 80 00 20 */	blr 
