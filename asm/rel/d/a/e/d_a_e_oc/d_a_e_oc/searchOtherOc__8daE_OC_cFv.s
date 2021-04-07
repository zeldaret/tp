lbl_8072CC10:
/* 8072CC10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8072CC14  7C 08 02 A6 */	mflr r0
/* 8072CC18  90 01 00 24 */	stw r0, 0x24(r1)
/* 8072CC1C  39 61 00 20 */	addi r11, r1, 0x20
/* 8072CC20  4B C3 55 BD */	bl _savegpr_29
/* 8072CC24  7C 7E 1B 78 */	mr r30, r3
/* 8072CC28  3C 60 80 73 */	lis r3, lit_1109@ha /* 0x80736000@ha */
/* 8072CC2C  3B E3 60 00 */	addi r31, r3, lit_1109@l /* 0x80736000@l */
/* 8072CC30  88 1E 06 E3 */	lbz r0, 0x6e3(r30)
/* 8072CC34  28 00 00 00 */	cmplwi r0, 0
/* 8072CC38  40 82 01 58 */	bne lbl_8072CD90
/* 8072CC3C  38 00 00 00 */	li r0, 0
/* 8072CC40  98 1E 06 DD */	stb r0, 0x6dd(r30)
/* 8072CC44  90 1F 00 40 */	stw r0, 0x40(r31)
/* 8072CC48  90 1F 00 44 */	stw r0, 0x44(r31)
/* 8072CC4C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8072CC50  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8072CC54  3C 60 80 73 */	lis r3, s_other_oc__FPvPv@ha /* 0x8072C938@ha */
/* 8072CC58  38 63 C9 38 */	addi r3, r3, s_other_oc__FPvPv@l /* 0x8072C938@l */
/* 8072CC5C  7F C4 F3 78 */	mr r4, r30
/* 8072CC60  4B 8F 46 D9 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8072CC64  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 8072CC68  90 1E 06 68 */	stw r0, 0x668(r30)
/* 8072CC6C  A8 1E 06 C6 */	lha r0, 0x6c6(r30)
/* 8072CC70  2C 00 00 00 */	cmpwi r0, 0
/* 8072CC74  40 82 00 AC */	bne lbl_8072CD20
/* 8072CC78  80 1E 06 A8 */	lwz r0, 0x6a8(r30)
/* 8072CC7C  2C 00 00 00 */	cmpwi r0, 0
/* 8072CC80  41 82 00 0C */	beq lbl_8072CC8C
/* 8072CC84  2C 00 00 01 */	cmpwi r0, 1
/* 8072CC88  40 82 00 98 */	bne lbl_8072CD20
lbl_8072CC8C:
/* 8072CC8C  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 8072CC90  90 1E 06 70 */	stw r0, 0x670(r30)
/* 8072CC94  80 9E 06 70 */	lwz r4, 0x670(r30)
/* 8072CC98  28 04 00 00 */	cmplwi r4, 0
/* 8072CC9C  41 82 00 84 */	beq lbl_8072CD20
/* 8072CCA0  80 04 06 70 */	lwz r0, 0x670(r4)
/* 8072CCA4  7C 00 F0 40 */	cmplw r0, r30
/* 8072CCA8  40 82 00 78 */	bne lbl_8072CD20
/* 8072CCAC  3B A0 20 00 */	li r29, 0x2000
/* 8072CCB0  88 1E 06 E9 */	lbz r0, 0x6e9(r30)
/* 8072CCB4  28 00 00 00 */	cmplwi r0, 0
/* 8072CCB8  41 82 00 14 */	beq lbl_8072CCCC
/* 8072CCBC  88 04 06 E9 */	lbz r0, 0x6e9(r4)
/* 8072CCC0  28 00 00 00 */	cmplwi r0, 0
/* 8072CCC4  41 82 00 08 */	beq lbl_8072CCCC
/* 8072CCC8  3B A0 48 00 */	li r29, 0x4800
lbl_8072CCCC:
/* 8072CCCC  7F C3 F3 78 */	mr r3, r30
/* 8072CCD0  4B FF FF 05 */	bl getVisionAngle__8daE_OC_cFP10fopAc_ac_c
/* 8072CCD4  7C 63 07 34 */	extsh r3, r3
/* 8072CCD8  7F A0 07 34 */	extsh r0, r29
/* 8072CCDC  7C 03 00 00 */	cmpw r3, r0
/* 8072CCE0  41 81 00 40 */	bgt lbl_8072CD20
/* 8072CCE4  80 7E 06 70 */	lwz r3, 0x670(r30)
/* 8072CCE8  7F C4 F3 78 */	mr r4, r30
/* 8072CCEC  4B FF FE E9 */	bl getVisionAngle__8daE_OC_cFP10fopAc_ac_c
/* 8072CCF0  7C 63 07 34 */	extsh r3, r3
/* 8072CCF4  7F A0 07 34 */	extsh r0, r29
/* 8072CCF8  7C 03 00 00 */	cmpw r3, r0
/* 8072CCFC  41 81 00 24 */	bgt lbl_8072CD20
/* 8072CD00  7F C3 F3 78 */	mr r3, r30
/* 8072CD04  38 80 00 02 */	li r4, 2
/* 8072CD08  38 A0 00 00 */	li r5, 0
/* 8072CD0C  48 00 0F B1 */	bl setActionMode__8daE_OC_cFii
/* 8072CD10  80 7E 06 70 */	lwz r3, 0x670(r30)
/* 8072CD14  38 80 00 02 */	li r4, 2
/* 8072CD18  38 A0 00 00 */	li r5, 0
/* 8072CD1C  48 00 0F A1 */	bl setActionMode__8daE_OC_cFii
lbl_8072CD20:
/* 8072CD20  80 7E 06 6C */	lwz r3, 0x66c(r30)
/* 8072CD24  28 03 00 00 */	cmplwi r3, 0
/* 8072CD28  41 82 00 10 */	beq lbl_8072CD38
/* 8072CD2C  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 8072CD30  7C 03 00 40 */	cmplw r3, r0
/* 8072CD34  41 82 00 20 */	beq lbl_8072CD54
lbl_8072CD38:
/* 8072CD38  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 8072CD3C  90 1E 06 6C */	stw r0, 0x66c(r30)
/* 8072CD40  80 1E 06 6C */	lwz r0, 0x66c(r30)
/* 8072CD44  28 00 00 00 */	cmplwi r0, 0
/* 8072CD48  41 82 00 0C */	beq lbl_8072CD54
/* 8072CD4C  38 00 00 01 */	li r0, 1
/* 8072CD50  98 1E 06 DD */	stb r0, 0x6dd(r30)
lbl_8072CD54:
/* 8072CD54  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 8072CD58  28 03 00 00 */	cmplwi r3, 0
/* 8072CD5C  41 82 00 34 */	beq lbl_8072CD90
/* 8072CD60  48 00 4F B9 */	bl checkBeforeDeath__8daE_OC_cFv
/* 8072CD64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072CD68  41 82 00 28 */	beq lbl_8072CD90
/* 8072CD6C  38 00 00 02 */	li r0, 2
/* 8072CD70  98 1E 06 DD */	stb r0, 0x6dd(r30)
/* 8072CD74  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 8072CD78  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8072CD7C  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 8072CD80  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8072CD84  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 8072CD88  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8072CD8C  D0 1E 06 84 */	stfs f0, 0x684(r30)
lbl_8072CD90:
/* 8072CD90  39 61 00 20 */	addi r11, r1, 0x20
/* 8072CD94  4B C3 54 95 */	bl _restgpr_29
/* 8072CD98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8072CD9C  7C 08 03 A6 */	mtlr r0
/* 8072CDA0  38 21 00 20 */	addi r1, r1, 0x20
/* 8072CDA4  4E 80 00 20 */	blr 
