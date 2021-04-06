lbl_80BC4848:
/* 80BC4848  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BC484C  7C 08 02 A6 */	mflr r0
/* 80BC4850  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BC4854  39 61 00 20 */	addi r11, r1, 0x20
/* 80BC4858  4B 79 D9 85 */	bl _savegpr_29
/* 80BC485C  3C 80 80 BC */	lis r4, M_attr__14daObjCatDoor_c@ha /* 0x80BC49B4@ha */
/* 80BC4860  3B A4 49 B4 */	addi r29, r4, M_attr__14daObjCatDoor_c@l /* 0x80BC49B4@l */
/* 80BC4864  7C 7E 1B 78 */	mr r30, r3
/* 80BC4868  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BC486C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BC4870  40 82 00 30 */	bne lbl_80BC48A0
/* 80BC4874  7F C0 F3 79 */	or. r0, r30, r30
/* 80BC4878  41 82 00 1C */	beq lbl_80BC4894
/* 80BC487C  7C 1F 03 78 */	mr r31, r0
/* 80BC4880  4B 45 42 E5 */	bl __ct__10fopAc_ac_cFv
/* 80BC4884  38 7F 05 74 */	addi r3, r31, 0x574
/* 80BC4888  4B 4B 70 E9 */	bl __ct__4dBgWFv
/* 80BC488C  38 7F 06 6C */	addi r3, r31, 0x66c
/* 80BC4890  4B 4B 70 E1 */	bl __ct__4dBgWFv
lbl_80BC4894:
/* 80BC4894  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80BC4898  60 00 00 08 */	ori r0, r0, 8
/* 80BC489C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80BC48A0:
/* 80BC48A0  38 7E 05 68 */	addi r3, r30, 0x568
/* 80BC48A4  3C 80 80 BC */	lis r4, l_arcName@ha /* 0x80BC49E0@ha */
/* 80BC48A8  38 84 49 E0 */	addi r4, r4, l_arcName@l /* 0x80BC49E0@l */
/* 80BC48AC  80 84 00 00 */	lwz r4, 0(r4)
/* 80BC48B0  4B 46 86 0D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BC48B4  7C 7F 1B 78 */	mr r31, r3
/* 80BC48B8  2C 1F 00 04 */	cmpwi r31, 4
/* 80BC48BC  40 82 00 D4 */	bne lbl_80BC4990
/* 80BC48C0  7F C3 F3 78 */	mr r3, r30
/* 80BC48C4  3C 80 80 BC */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha /* 0x80BC42C4@ha */
/* 80BC48C8  38 84 42 C4 */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l /* 0x80BC42C4@l */
/* 80BC48CC  38 A0 25 20 */	li r5, 0x2520
/* 80BC48D0  4B 45 5B E1 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BC48D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BC48D8  40 82 00 0C */	bne lbl_80BC48E4
/* 80BC48DC  3B E0 00 05 */	li r31, 5
/* 80BC48E0  48 00 00 B0 */	b lbl_80BC4990
lbl_80BC48E4:
/* 80BC48E4  7F C3 F3 78 */	mr r3, r30
/* 80BC48E8  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 80BC48EC  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 80BC48F0  C0 7D 00 14 */	lfs f3, 0x14(r29)
/* 80BC48F4  C0 9D 00 18 */	lfs f4, 0x18(r29)
/* 80BC48F8  C0 BD 00 1C */	lfs f5, 0x1c(r29)
/* 80BC48FC  C0 DD 00 20 */	lfs f6, 0x20(r29)
/* 80BC4900  4B 45 5C 49 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BC4904  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC4908  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC490C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BC4910  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BC4914  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BC4918  7C 05 07 74 */	extsb r5, r0
/* 80BC491C  4B 47 0A 45 */	bl isSwitch__10dSv_info_cCFii
/* 80BC4920  2C 03 00 00 */	cmpwi r3, 0
/* 80BC4924  41 82 00 18 */	beq lbl_80BC493C
/* 80BC4928  38 00 88 00 */	li r0, -30720
/* 80BC492C  B0 1E 06 64 */	sth r0, 0x664(r30)
/* 80BC4930  38 00 78 00 */	li r0, 0x7800
/* 80BC4934  B0 1E 07 5C */	sth r0, 0x75c(r30)
/* 80BC4938  48 00 00 50 */	b lbl_80BC4988
lbl_80BC493C:
/* 80BC493C  38 00 00 00 */	li r0, 0
/* 80BC4940  90 1E 06 24 */	stw r0, 0x624(r30)
/* 80BC4944  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BC4948  98 1E 05 7D */	stb r0, 0x57d(r30)
/* 80BC494C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC4950  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC4954  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80BC4958  7F A3 EB 78 */	mr r3, r29
/* 80BC495C  38 9E 05 74 */	addi r4, r30, 0x574
/* 80BC4960  7F C5 F3 78 */	mr r5, r30
/* 80BC4964  4B 4B 00 A5 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80BC4968  38 00 00 00 */	li r0, 0
/* 80BC496C  90 1E 07 1C */	stw r0, 0x71c(r30)
/* 80BC4970  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BC4974  98 1E 06 75 */	stb r0, 0x675(r30)
/* 80BC4978  7F A3 EB 78 */	mr r3, r29
/* 80BC497C  38 9E 06 6C */	addi r4, r30, 0x66c
/* 80BC4980  7F C5 F3 78 */	mr r5, r30
/* 80BC4984  4B 4B 00 85 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80BC4988:
/* 80BC4988  7F C3 F3 78 */	mr r3, r30
/* 80BC498C  4B FF FA 69 */	bl initBaseMtx__14daObjCatDoor_cFv
lbl_80BC4990:
/* 80BC4990  7F E3 FB 78 */	mr r3, r31
/* 80BC4994  39 61 00 20 */	addi r11, r1, 0x20
/* 80BC4998  4B 79 D8 91 */	bl _restgpr_29
/* 80BC499C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BC49A0  7C 08 03 A6 */	mtlr r0
/* 80BC49A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80BC49A8  4E 80 00 20 */	blr 
