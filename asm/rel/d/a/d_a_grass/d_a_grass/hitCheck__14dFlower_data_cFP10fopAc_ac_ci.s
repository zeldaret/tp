lbl_80521A3C:
/* 80521A3C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80521A40  7C 08 02 A6 */	mflr r0
/* 80521A44  90 01 00 44 */	stw r0, 0x44(r1)
/* 80521A48  39 61 00 40 */	addi r11, r1, 0x40
/* 80521A4C  4B E4 07 8D */	bl _savegpr_28
/* 80521A50  7C 7E 1B 78 */	mr r30, r3
/* 80521A54  7C BF 2B 78 */	mr r31, r5
/* 80521A58  3C 60 80 52 */	lis r3, __vt__15dCcMassS_HitInf@ha /* 0x805278B8@ha */
/* 80521A5C  38 03 78 B8 */	addi r0, r3, __vt__15dCcMassS_HitInf@l /* 0x805278B8@l */
/* 80521A60  90 01 00 28 */	stw r0, 0x28(r1)
/* 80521A64  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80521A68  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80521A6C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80521A70  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80521A74  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80521A78  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80521A7C  88 1E 00 00 */	lbz r0, 0(r30)
/* 80521A80  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80521A84  41 82 00 14 */	beq lbl_80521A98
/* 80521A88  3C 60 80 52 */	lis r3, lit_5839@ha /* 0x80523178@ha */
/* 80521A8C  C0 03 31 78 */	lfs f0, lit_5839@l(r3)  /* 0x80523178@l */
/* 80521A90  EC 01 00 2A */	fadds f0, f1, f0
/* 80521A94  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_80521A98:
/* 80521A98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80521A9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80521AA0  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 80521AA4  38 81 00 0C */	addi r4, r1, 0xc
/* 80521AA8  38 A1 00 08 */	addi r5, r1, 8
/* 80521AAC  38 C1 00 18 */	addi r6, r1, 0x18
/* 80521AB0  4B B6 3D FD */	bl Chk__12dCcMassS_MngFP4cXyzPP10fopAc_ac_cP15dCcMassS_HitInf
/* 80521AB4  7C 7D 1B 78 */	mr r29, r3
/* 80521AB8  3B 80 00 00 */	li r28, 0
/* 80521ABC  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80521AC0  41 82 00 30 */	beq lbl_80521AF0
/* 80521AC4  7F 80 E3 78 */	mr r0, r28
/* 80521AC8  80 61 00 08 */	lwz r3, 8(r1)
/* 80521ACC  28 03 00 00 */	cmplwi r3, 0
/* 80521AD0  41 82 00 14 */	beq lbl_80521AE4
/* 80521AD4  A8 63 00 08 */	lha r3, 8(r3)
/* 80521AD8  2C 03 02 FC */	cmpwi r3, 0x2fc
/* 80521ADC  41 82 00 08 */	beq lbl_80521AE4
/* 80521AE0  38 00 00 01 */	li r0, 1
lbl_80521AE4:
/* 80521AE4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80521AE8  41 82 00 08 */	beq lbl_80521AF0
/* 80521AEC  3B 80 00 01 */	li r28, 1
lbl_80521AF0:
/* 80521AF0  57 A3 07 BD */	rlwinm. r3, r29, 0, 0x1e, 0x1e
/* 80521AF4  40 82 00 98 */	bne lbl_80521B8C
/* 80521AF8  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80521AFC  40 82 00 90 */	bne lbl_80521B8C
/* 80521B00  88 1E 00 01 */	lbz r0, 1(r30)
/* 80521B04  7C 00 07 74 */	extsb r0, r0
/* 80521B08  2C 00 00 08 */	cmpwi r0, 8
/* 80521B0C  41 80 00 C8 */	blt lbl_80521BD4
/* 80521B10  3C 60 80 45 */	lis r3, m_flower__9daGrass_c@ha /* 0x80450DB4@ha */
/* 80521B14  80 A3 0D B4 */	lwz r5, m_flower__9daGrass_c@l(r3)  /* 0x80450DB4@l */
/* 80521B18  1C 60 00 38 */	mulli r3, r0, 0x38
/* 80521B1C  3F 83 00 01 */	addis r28, r3, 1
/* 80521B20  3B 9C 19 54 */	addi r28, r28, 0x1954
/* 80521B24  7F 85 E2 14 */	add r28, r5, r28
/* 80521B28  A8 7C 00 02 */	lha r3, 2(r28)
/* 80521B2C  54 60 04 24 */	rlwinm r0, r3, 0, 0x10, 0x12
/* 80521B30  7C 1D 07 34 */	extsh r29, r0
/* 80521B34  54 60 9F 7E */	rlwinm r0, r3, 0x13, 0x1d, 0x1f
/* 80521B38  1C 60 00 38 */	mulli r3, r0, 0x38
/* 80521B3C  3C 83 00 01 */	addis r4, r3, 1
/* 80521B40  38 84 19 54 */	addi r4, r4, 0x1954
/* 80521B44  7C 85 22 14 */	add r4, r5, r4
/* 80521B48  38 7C 00 04 */	addi r3, r28, 4
/* 80521B4C  A8 84 00 04 */	lha r4, 4(r4)
/* 80521B50  38 A0 00 08 */	li r5, 8
/* 80521B54  38 C0 0F A0 */	li r6, 0xfa0
/* 80521B58  38 E0 00 64 */	li r7, 0x64
/* 80521B5C  4B D4 E9 E5 */	bl cLib_addCalcAngleS__FPsssss
/* 80521B60  7C 60 07 35 */	extsh. r0, r3
/* 80521B64  40 82 00 70 */	bne lbl_80521BD4
/* 80521B68  38 7C 00 02 */	addi r3, r28, 2
/* 80521B6C  7F A4 EB 78 */	mr r4, r29
/* 80521B70  38 A0 03 20 */	li r5, 0x320
/* 80521B74  4B D4 F0 1D */	bl cLib_chaseAngleS__FPsss
/* 80521B78  2C 03 00 00 */	cmpwi r3, 0
/* 80521B7C  41 82 00 58 */	beq lbl_80521BD4
/* 80521B80  7F C3 F3 78 */	mr r3, r30
/* 80521B84  4B FF EF 55 */	bl deleteAnm__14dFlower_data_cFv
/* 80521B88  48 00 00 4C */	b lbl_80521BD4
lbl_80521B8C:
/* 80521B8C  28 03 00 00 */	cmplwi r3, 0
/* 80521B90  41 82 00 18 */	beq lbl_80521BA8
/* 80521B94  7F C3 F3 78 */	mr r3, r30
/* 80521B98  80 81 00 08 */	lwz r4, 8(r1)
/* 80521B9C  7F A5 EB 78 */	mr r5, r29
/* 80521BA0  7F E6 FB 78 */	mr r6, r31
/* 80521BA4  4B FF ED E5 */	bl WorkCo__14dFlower_data_cFP10fopAc_ac_cUli
lbl_80521BA8:
/* 80521BA8  88 1E 00 00 */	lbz r0, 0(r30)
/* 80521BAC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80521BB0  40 82 00 24 */	bne lbl_80521BD4
/* 80521BB4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80521BB8  41 82 00 1C */	beq lbl_80521BD4
/* 80521BBC  7F C3 F3 78 */	mr r3, r30
/* 80521BC0  80 81 00 08 */	lwz r4, 8(r1)
/* 80521BC4  7F A5 EB 78 */	mr r5, r29
/* 80521BC8  7F E6 FB 78 */	mr r6, r31
/* 80521BCC  38 E1 00 18 */	addi r7, r1, 0x18
/* 80521BD0  4B FF F1 2D */	bl WorkAt__14dFlower_data_cFP10fopAc_ac_cUliP15dCcMassS_HitInf
lbl_80521BD4:
/* 80521BD4  3C 60 80 52 */	lis r3, __vt__15dCcMassS_HitInf@ha /* 0x805278B8@ha */
/* 80521BD8  38 03 78 B8 */	addi r0, r3, __vt__15dCcMassS_HitInf@l /* 0x805278B8@l */
/* 80521BDC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80521BE0  39 61 00 40 */	addi r11, r1, 0x40
/* 80521BE4  4B E4 06 41 */	bl _restgpr_28
/* 80521BE8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80521BEC  7C 08 03 A6 */	mtlr r0
/* 80521BF0  38 21 00 40 */	addi r1, r1, 0x40
/* 80521BF4  4E 80 00 20 */	blr 
