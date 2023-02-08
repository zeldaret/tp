lbl_8049CCF0:
/* 8049CCF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049CCF4  7C 08 02 A6 */	mflr r0
/* 8049CCF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049CCFC  39 61 00 30 */	addi r11, r1, 0x30
/* 8049CD00  4B EC 54 D1 */	bl _savegpr_26
/* 8049CD04  7C 7D 1B 78 */	mr r29, r3
/* 8049CD08  7C 9E 23 78 */	mr r30, r4
/* 8049CD0C  7C BA 2B 79 */	or. r26, r5, r5
/* 8049CD10  3C 60 80 4A */	lis r3, lit_3768@ha /* 0x8049DC84@ha */
/* 8049CD14  3B E3 DC 84 */	addi r31, r3, lit_3768@l /* 0x8049DC84@l */
/* 8049CD18  41 82 00 14 */	beq lbl_8049CD2C
/* 8049CD1C  38 7A 00 58 */	addi r3, r26, 0x58
/* 8049CD20  4B BE 69 69 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 8049CD24  7C 7C 1B 78 */	mr r28, r3
/* 8049CD28  48 00 00 08 */	b lbl_8049CD30
lbl_8049CD2C:
/* 8049CD2C  3B 80 00 00 */	li r28, 0
lbl_8049CD30:
/* 8049CD30  7F 83 E3 78 */	mr r3, r28
/* 8049CD34  4B C3 4A 55 */	bl notSwordHitVibActor__9daAlink_cFP10fopAc_ac_c
/* 8049CD38  2C 03 00 00 */	cmpwi r3, 0
/* 8049CD3C  40 82 00 B8 */	bne lbl_8049CDF4
/* 8049CD40  28 1C 00 00 */	cmplwi r28, 0
/* 8049CD44  41 82 00 18 */	beq lbl_8049CD5C
/* 8049CD48  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 8049CD4C  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8049CD50  41 82 00 0C */	beq lbl_8049CD5C
/* 8049CD54  3B 60 00 01 */	li r27, 1
/* 8049CD58  48 00 00 74 */	b lbl_8049CDCC
lbl_8049CD5C:
/* 8049CD5C  3B 60 00 09 */	li r27, 9
/* 8049CD60  28 1C 00 00 */	cmplwi r28, 0
/* 8049CD64  41 82 00 68 */	beq lbl_8049CDCC
/* 8049CD68  7F 43 D3 78 */	mr r3, r26
/* 8049CD6C  4B BE 76 3D */	bl GetAtHitGObj__12dCcD_GObjInfFv
/* 8049CD70  28 03 00 00 */	cmplwi r3, 0
/* 8049CD74  41 82 00 58 */	beq lbl_8049CDCC
/* 8049CD78  7F 43 D3 78 */	mr r3, r26
/* 8049CD7C  4B BE 76 2D */	bl GetAtHitGObj__12dCcD_GObjInfFv
/* 8049CD80  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8049CD84  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8049CD88  41 82 00 44 */	beq lbl_8049CDCC
/* 8049CD8C  88 FD 09 48 */	lbz r7, 0x948(r29)
/* 8049CD90  3C 60 00 04 */	lis r3, 0x0004 /* 0x00040018@ha */
/* 8049CD94  38 03 00 18 */	addi r0, r3, 0x0018 /* 0x00040018@l */
/* 8049CD98  90 01 00 08 */	stw r0, 8(r1)
/* 8049CD9C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8049CDA0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8049CDA4  80 63 00 00 */	lwz r3, 0(r3)
/* 8049CDA8  38 81 00 08 */	addi r4, r1, 8
/* 8049CDAC  7F C5 F3 78 */	mr r5, r30
/* 8049CDB0  38 C0 00 2D */	li r6, 0x2d
/* 8049CDB4  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 8049CDB8  FC 40 08 90 */	fmr f2, f1
/* 8049CDBC  C0 7F 01 34 */	lfs f3, 0x134(r31)
/* 8049CDC0  FC 80 18 90 */	fmr f4, f3
/* 8049CDC4  39 00 00 00 */	li r8, 0
/* 8049CDC8  4B E0 EB BD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8049CDCC:
/* 8049CDCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049CDD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049CDD4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8049CDD8  7F 64 DB 78 */	mr r4, r27
/* 8049CDDC  7F 85 E3 78 */	mr r5, r28
/* 8049CDE0  7F C6 F3 78 */	mr r6, r30
/* 8049CDE4  38 FD 04 DC */	addi r7, r29, 0x4dc
/* 8049CDE8  39 00 00 00 */	li r8, 0
/* 8049CDEC  39 20 00 00 */	li r9, 0
/* 8049CDF0  4B BA F4 29 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_8049CDF4:
/* 8049CDF4  7F A3 EB 78 */	mr r3, r29
/* 8049CDF8  4B FF D2 55 */	bl setBlur__9daArrow_cFv
/* 8049CDFC  38 00 00 08 */	li r0, 8
/* 8049CE00  90 1D 00 B0 */	stw r0, 0xb0(r29)
/* 8049CE04  3C 60 80 4A */	lis r3, lit_5506@ha /* 0x8049DE68@ha */
/* 8049CE08  38 83 DE 68 */	addi r4, r3, lit_5506@l /* 0x8049DE68@l */
/* 8049CE0C  80 64 00 00 */	lwz r3, 0(r4)
/* 8049CE10  80 04 00 04 */	lwz r0, 4(r4)
/* 8049CE14  90 7D 0A 28 */	stw r3, 0xa28(r29)
/* 8049CE18  90 1D 0A 2C */	stw r0, 0xa2c(r29)
/* 8049CE1C  80 04 00 08 */	lwz r0, 8(r4)
/* 8049CE20  90 1D 0A 30 */	stw r0, 0xa30(r29)
/* 8049CE24  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8049CE28  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8049CE2C  38 00 00 05 */	li r0, 5
/* 8049CE30  B0 1D 09 56 */	sth r0, 0x956(r29)
/* 8049CE34  38 60 00 01 */	li r3, 1
/* 8049CE38  39 61 00 30 */	addi r11, r1, 0x30
/* 8049CE3C  4B EC 53 E1 */	bl _restgpr_26
/* 8049CE40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049CE44  7C 08 03 A6 */	mtlr r0
/* 8049CE48  38 21 00 30 */	addi r1, r1, 0x30
/* 8049CE4C  4E 80 00 20 */	blr 
