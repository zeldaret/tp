lbl_806C4AB4:
/* 806C4AB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806C4AB8  7C 08 02 A6 */	mflr r0
/* 806C4ABC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806C4AC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806C4AC4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806C4AC8  7C 7E 1B 78 */	mr r30, r3
/* 806C4ACC  3C 60 80 6C */	lis r3, lit_3906@ha /* 0x806C74E8@ha */
/* 806C4AD0  3B E3 74 E8 */	addi r31, r3, lit_3906@l /* 0x806C74E8@l */
/* 806C4AD4  A8 1E 06 D0 */	lha r0, 0x6d0(r30)
/* 806C4AD8  2C 00 00 00 */	cmpwi r0, 0
/* 806C4ADC  40 82 01 D0 */	bne lbl_806C4CAC
/* 806C4AE0  38 7E 0A E4 */	addi r3, r30, 0xae4
/* 806C4AE4  4B 9B F9 7D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806C4AE8  28 03 00 00 */	cmplwi r3, 0
/* 806C4AEC  41 82 01 0C */	beq lbl_806C4BF8
/* 806C4AF0  38 00 00 06 */	li r0, 6
/* 806C4AF4  B0 1E 06 D0 */	sth r0, 0x6d0(r30)
/* 806C4AF8  38 7E 0A E4 */	addi r3, r30, 0xae4
/* 806C4AFC  4B 9B F9 FD */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 806C4B00  90 7E 0C 24 */	stw r3, 0xc24(r30)
/* 806C4B04  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806C4B08  80 9E 0C 24 */	lwz r4, 0xc24(r30)
/* 806C4B0C  38 A0 00 2D */	li r5, 0x2d
/* 806C4B10  38 C0 00 00 */	li r6, 0
/* 806C4B14  4B 9C 2A 01 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 806C4B18  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 806C4B1C  2C 00 00 1A */	cmpwi r0, 0x1a
/* 806C4B20  41 82 00 0C */	beq lbl_806C4B2C
/* 806C4B24  2C 00 00 13 */	cmpwi r0, 0x13
/* 806C4B28  40 82 00 60 */	bne lbl_806C4B88
lbl_806C4B2C:
/* 806C4B2C  7F C3 F3 78 */	mr r3, r30
/* 806C4B30  38 80 00 13 */	li r4, 0x13
/* 806C4B34  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 806C4B38  38 A0 00 00 */	li r5, 0
/* 806C4B3C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C4B40  4B FF D2 AD */	bl body_anm_init__FP10e_gb_classifUcf
/* 806C4B44  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015B@ha */
/* 806C4B48  38 03 01 5B */	addi r0, r3, 0x015B /* 0x0007015B@l */
/* 806C4B4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806C4B50  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806C4B54  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806C4B58  80 63 00 00 */	lwz r3, 0(r3)
/* 806C4B5C  38 81 00 0C */	addi r4, r1, 0xc
/* 806C4B60  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 806C4B64  38 C0 00 00 */	li r6, 0
/* 806C4B68  38 E0 00 00 */	li r7, 0
/* 806C4B6C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C4B70  FC 40 08 90 */	fmr f2, f1
/* 806C4B74  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 806C4B78  FC 80 18 90 */	fmr f4, f3
/* 806C4B7C  39 00 00 00 */	li r8, 0
/* 806C4B80  4B BE 6E 05 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806C4B84  48 00 00 74 */	b lbl_806C4BF8
lbl_806C4B88:
/* 806C4B88  2C 00 00 18 */	cmpwi r0, 0x18
/* 806C4B8C  41 82 00 14 */	beq lbl_806C4BA0
/* 806C4B90  2C 00 00 19 */	cmpwi r0, 0x19
/* 806C4B94  41 82 00 0C */	beq lbl_806C4BA0
/* 806C4B98  2C 00 00 12 */	cmpwi r0, 0x12
/* 806C4B9C  40 82 00 5C */	bne lbl_806C4BF8
lbl_806C4BA0:
/* 806C4BA0  7F C3 F3 78 */	mr r3, r30
/* 806C4BA4  38 80 00 12 */	li r4, 0x12
/* 806C4BA8  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 806C4BAC  38 A0 00 00 */	li r5, 0
/* 806C4BB0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C4BB4  4B FF D2 39 */	bl body_anm_init__FP10e_gb_classifUcf
/* 806C4BB8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015A@ha */
/* 806C4BBC  38 03 01 5A */	addi r0, r3, 0x015A /* 0x0007015A@l */
/* 806C4BC0  90 01 00 08 */	stw r0, 8(r1)
/* 806C4BC4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806C4BC8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806C4BCC  80 63 00 00 */	lwz r3, 0(r3)
/* 806C4BD0  38 81 00 08 */	addi r4, r1, 8
/* 806C4BD4  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 806C4BD8  38 C0 00 00 */	li r6, 0
/* 806C4BDC  38 E0 00 00 */	li r7, 0
/* 806C4BE0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C4BE4  FC 40 08 90 */	fmr f2, f1
/* 806C4BE8  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 806C4BEC  FC 80 18 90 */	fmr f4, f3
/* 806C4BF0  39 00 00 00 */	li r8, 0
/* 806C4BF4  4B BE 6D 91 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_806C4BF8:
/* 806C4BF8  80 BE 06 8C */	lwz r5, 0x68c(r30)
/* 806C4BFC  2C 05 00 12 */	cmpwi r5, 0x12
/* 806C4C00  40 82 00 5C */	bne lbl_806C4C5C
/* 806C4C04  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806C4C08  38 80 00 01 */	li r4, 1
/* 806C4C0C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806C4C10  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806C4C14  40 82 00 18 */	bne lbl_806C4C2C
/* 806C4C18  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806C4C1C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806C4C20  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806C4C24  41 82 00 08 */	beq lbl_806C4C2C
/* 806C4C28  38 80 00 00 */	li r4, 0
lbl_806C4C2C:
/* 806C4C2C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806C4C30  41 82 00 2C */	beq lbl_806C4C5C
/* 806C4C34  7F C3 F3 78 */	mr r3, r30
/* 806C4C38  38 80 00 19 */	li r4, 0x19
/* 806C4C3C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806C4C40  38 A0 00 02 */	li r5, 2
/* 806C4C44  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C4C48  4B FF D1 A5 */	bl body_anm_init__FP10e_gb_classifUcf
/* 806C4C4C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 806C4C50  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806C4C54  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 806C4C58  48 00 00 54 */	b lbl_806C4CAC
lbl_806C4C5C:
/* 806C4C5C  2C 05 00 13 */	cmpwi r5, 0x13
/* 806C4C60  40 82 00 4C */	bne lbl_806C4CAC
/* 806C4C64  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806C4C68  38 80 00 01 */	li r4, 1
/* 806C4C6C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806C4C70  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806C4C74  40 82 00 18 */	bne lbl_806C4C8C
/* 806C4C78  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806C4C7C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806C4C80  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806C4C84  41 82 00 08 */	beq lbl_806C4C8C
/* 806C4C88  38 80 00 00 */	li r4, 0
lbl_806C4C8C:
/* 806C4C8C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806C4C90  41 82 00 1C */	beq lbl_806C4CAC
/* 806C4C94  7F C3 F3 78 */	mr r3, r30
/* 806C4C98  38 80 00 1A */	li r4, 0x1a
/* 806C4C9C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806C4CA0  38 A0 00 02 */	li r5, 2
/* 806C4CA4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C4CA8  4B FF D1 45 */	bl body_anm_init__FP10e_gb_classifUcf
lbl_806C4CAC:
/* 806C4CAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806C4CB0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806C4CB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806C4CB8  7C 08 03 A6 */	mtlr r0
/* 806C4CBC  38 21 00 20 */	addi r1, r1, 0x20
/* 806C4CC0  4E 80 00 20 */	blr 
