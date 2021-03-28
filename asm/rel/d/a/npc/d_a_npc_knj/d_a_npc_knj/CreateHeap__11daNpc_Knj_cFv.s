lbl_80A43848:
/* 80A43848  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A4384C  7C 08 02 A6 */	mflr r0
/* 80A43850  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A43854  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A43858  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A4385C  7C 7F 1B 78 */	mr r31, r3
/* 80A43860  3C 60 80 A4 */	lis r3, l_bmdData@ha
/* 80A43864  38 83 55 F0 */	addi r4, r3, l_bmdData@l
/* 80A43868  80 04 00 04 */	lwz r0, 4(r4)
/* 80A4386C  54 00 10 3A */	slwi r0, r0, 2
/* 80A43870  3C 60 80 A4 */	lis r3, l_resNameList@ha
/* 80A43874  38 63 56 08 */	addi r3, r3, l_resNameList@l
/* 80A43878  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A4387C  80 84 00 00 */	lwz r4, 0(r4)
/* 80A43880  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80A43884  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80A43888  3C A5 00 02 */	addis r5, r5, 2
/* 80A4388C  38 C0 00 80 */	li r6, 0x80
/* 80A43890  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80A43894  4B 5F 8A 58 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A43898  7C 7E 1B 78 */	mr r30, r3
/* 80A4389C  38 60 00 58 */	li r3, 0x58
/* 80A438A0  4B 88 B3 AC */	b __nw__FUl
/* 80A438A4  7C 60 1B 79 */	or. r0, r3, r3
/* 80A438A8  41 82 00 4C */	beq lbl_80A438F4
/* 80A438AC  38 1F 05 80 */	addi r0, r31, 0x580
/* 80A438B0  90 01 00 08 */	stw r0, 8(r1)
/* 80A438B4  3C 00 00 08 */	lis r0, 8
/* 80A438B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A438BC  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020084@ha */
/* 80A438C0  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11020084@l */
/* 80A438C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A438C8  7F C4 F3 78 */	mr r4, r30
/* 80A438CC  38 A0 00 00 */	li r5, 0
/* 80A438D0  38 C0 00 00 */	li r6, 0
/* 80A438D4  38 E0 00 00 */	li r7, 0
/* 80A438D8  39 00 FF FF */	li r8, -1
/* 80A438DC  3D 20 80 A4 */	lis r9, lit_4215@ha
/* 80A438E0  C0 29 55 A8 */	lfs f1, lit_4215@l(r9)
/* 80A438E4  39 20 00 00 */	li r9, 0
/* 80A438E8  39 40 FF FF */	li r10, -1
/* 80A438EC  4B 5C CE E4 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A438F0  7C 60 1B 78 */	mr r0, r3
lbl_80A438F4:
/* 80A438F4  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80A438F8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80A438FC  28 03 00 00 */	cmplwi r3, 0
/* 80A43900  41 82 00 1C */	beq lbl_80A4391C
/* 80A43904  80 03 00 04 */	lwz r0, 4(r3)
/* 80A43908  28 00 00 00 */	cmplwi r0, 0
/* 80A4390C  40 82 00 10 */	bne lbl_80A4391C
/* 80A43910  4B 5C DA 00 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80A43914  38 00 00 00 */	li r0, 0
/* 80A43918  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_80A4391C:
/* 80A4391C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80A43920  28 03 00 00 */	cmplwi r3, 0
/* 80A43924  40 82 00 0C */	bne lbl_80A43930
/* 80A43928  38 60 00 00 */	li r3, 0
/* 80A4392C  48 00 00 5C */	b lbl_80A43988
lbl_80A43930:
/* 80A43930  80 63 00 04 */	lwz r3, 4(r3)
/* 80A43934  93 E3 00 14 */	stw r31, 0x14(r3)
/* 80A43938  7F E3 FB 78 */	mr r3, r31
/* 80A4393C  38 80 00 00 */	li r4, 0
/* 80A43940  38 A0 00 00 */	li r5, 0
/* 80A43944  4B 70 6A 44 */	b setFaceMotionAnm__8daNpcT_cFib
/* 80A43948  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A4394C  41 82 00 38 */	beq lbl_80A43984
/* 80A43950  7F E3 FB 78 */	mr r3, r31
/* 80A43954  38 80 00 00 */	li r4, 0
/* 80A43958  3C A0 80 A4 */	lis r5, lit_4089@ha
/* 80A4395C  C0 25 55 9C */	lfs f1, lit_4089@l(r5)
/* 80A43960  38 A0 00 00 */	li r5, 0
/* 80A43964  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80A43968  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80A4396C  7D 89 03 A6 */	mtctr r12
/* 80A43970  4E 80 04 21 */	bctrl 
/* 80A43974  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A43978  41 82 00 0C */	beq lbl_80A43984
/* 80A4397C  38 60 00 01 */	li r3, 1
/* 80A43980  48 00 00 08 */	b lbl_80A43988
lbl_80A43984:
/* 80A43984  38 60 00 00 */	li r3, 0
lbl_80A43988:
/* 80A43988  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A4398C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A43990  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A43994  7C 08 03 A6 */	mtlr r0
/* 80A43998  38 21 00 20 */	addi r1, r1, 0x20
/* 80A4399C  4E 80 00 20 */	blr 
