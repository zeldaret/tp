lbl_80AD5A7C:
/* 80AD5A7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD5A80  7C 08 02 A6 */	mflr r0
/* 80AD5A84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD5A88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AD5A8C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AD5A90  7C 7F 1B 78 */	mr r31, r3
/* 80AD5A94  3C 60 80 AD */	lis r3, l_bmdData@ha /* 0x80AD7E04@ha */
/* 80AD5A98  38 83 7E 04 */	addi r4, r3, l_bmdData@l /* 0x80AD7E04@l */
/* 80AD5A9C  80 04 00 04 */	lwz r0, 4(r4)
/* 80AD5AA0  54 00 10 3A */	slwi r0, r0, 2
/* 80AD5AA4  3C 60 80 AD */	lis r3, l_resNameList@ha /* 0x80AD7E2C@ha */
/* 80AD5AA8  38 63 7E 2C */	addi r3, r3, l_resNameList@l /* 0x80AD7E2C@l */
/* 80AD5AAC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AD5AB0  80 84 00 00 */	lwz r4, 0(r4)
/* 80AD5AB4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD5AB8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AD5ABC  3C A5 00 02 */	addis r5, r5, 2
/* 80AD5AC0  38 C0 00 80 */	li r6, 0x80
/* 80AD5AC4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80AD5AC8  4B 56 68 25 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AD5ACC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AD5AD0  40 82 00 0C */	bne lbl_80AD5ADC
/* 80AD5AD4  38 60 00 00 */	li r3, 0
/* 80AD5AD8  48 00 00 D4 */	b lbl_80AD5BAC
lbl_80AD5ADC:
/* 80AD5ADC  38 60 00 58 */	li r3, 0x58
/* 80AD5AE0  4B 7F 91 6D */	bl __nw__FUl
/* 80AD5AE4  7C 60 1B 79 */	or. r0, r3, r3
/* 80AD5AE8  41 82 00 4C */	beq lbl_80AD5B34
/* 80AD5AEC  38 1F 05 80 */	addi r0, r31, 0x580
/* 80AD5AF0  90 01 00 08 */	stw r0, 8(r1)
/* 80AD5AF4  38 00 00 00 */	li r0, 0
/* 80AD5AF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AD5AFC  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80AD5B00  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80AD5B04  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AD5B08  7F C4 F3 78 */	mr r4, r30
/* 80AD5B0C  38 A0 00 00 */	li r5, 0
/* 80AD5B10  38 C0 00 00 */	li r6, 0
/* 80AD5B14  38 E0 00 00 */	li r7, 0
/* 80AD5B18  39 00 FF FF */	li r8, -1
/* 80AD5B1C  3D 20 80 AD */	lis r9, lit_4260@ha /* 0x80AD7D4C@ha */
/* 80AD5B20  C0 29 7D 4C */	lfs f1, lit_4260@l(r9)  /* 0x80AD7D4C@l */
/* 80AD5B24  39 20 00 00 */	li r9, 0
/* 80AD5B28  39 40 FF FF */	li r10, -1
/* 80AD5B2C  4B 53 AC A5 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80AD5B30  7C 60 1B 78 */	mr r0, r3
lbl_80AD5B34:
/* 80AD5B34  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80AD5B38  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80AD5B3C  28 03 00 00 */	cmplwi r3, 0
/* 80AD5B40  41 82 00 10 */	beq lbl_80AD5B50
/* 80AD5B44  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD5B48  28 03 00 00 */	cmplwi r3, 0
/* 80AD5B4C  40 82 00 0C */	bne lbl_80AD5B58
lbl_80AD5B50:
/* 80AD5B50  38 60 00 00 */	li r3, 0
/* 80AD5B54  48 00 00 58 */	b lbl_80AD5BAC
lbl_80AD5B58:
/* 80AD5B58  93 E3 00 14 */	stw r31, 0x14(r3)
/* 80AD5B5C  7F E3 FB 78 */	mr r3, r31
/* 80AD5B60  38 80 00 00 */	li r4, 0
/* 80AD5B64  38 A0 00 00 */	li r5, 0
/* 80AD5B68  4B 67 48 21 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80AD5B6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AD5B70  41 82 00 38 */	beq lbl_80AD5BA8
/* 80AD5B74  7F E3 FB 78 */	mr r3, r31
/* 80AD5B78  38 80 00 00 */	li r4, 0
/* 80AD5B7C  3C A0 80 AD */	lis r5, lit_4135@ha /* 0x80AD7D40@ha */
/* 80AD5B80  C0 25 7D 40 */	lfs f1, lit_4135@l(r5)  /* 0x80AD7D40@l */
/* 80AD5B84  38 A0 00 00 */	li r5, 0
/* 80AD5B88  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80AD5B8C  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80AD5B90  7D 89 03 A6 */	mtctr r12
/* 80AD5B94  4E 80 04 21 */	bctrl 
/* 80AD5B98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AD5B9C  41 82 00 0C */	beq lbl_80AD5BA8
/* 80AD5BA0  38 60 00 01 */	li r3, 1
/* 80AD5BA4  48 00 00 08 */	b lbl_80AD5BAC
lbl_80AD5BA8:
/* 80AD5BA8  38 60 00 00 */	li r3, 0
lbl_80AD5BAC:
/* 80AD5BAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AD5BB0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AD5BB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD5BB8  7C 08 03 A6 */	mtlr r0
/* 80AD5BBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD5BC0  4E 80 00 20 */	blr 
