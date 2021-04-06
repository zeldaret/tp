lbl_8059CC60:
/* 8059CC60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059CC64  7C 08 02 A6 */	mflr r0
/* 8059CC68  90 01 00 34 */	stw r0, 0x34(r1)
/* 8059CC6C  39 61 00 30 */	addi r11, r1, 0x30
/* 8059CC70  4B DC 55 6D */	bl _savegpr_29
/* 8059CC74  7C 7D 1B 78 */	mr r29, r3
/* 8059CC78  38 7D 05 F0 */	addi r3, r29, 0x5f0
/* 8059CC7C  4B AE 79 DD */	bl ChkCoHit__12dCcD_GObjInfFv
/* 8059CC80  28 03 00 00 */	cmplwi r3, 0
/* 8059CC84  40 82 00 14 */	bne lbl_8059CC98
/* 8059CC88  7F A3 EB 78 */	mr r3, r29
/* 8059CC8C  38 80 00 00 */	li r4, 0
/* 8059CC90  4B FF FD 69 */	bl setAction__15daObjYobikusa_cFQ215daObjYobikusa_c6Mode_e
/* 8059CC94  48 00 00 98 */	b lbl_8059CD2C
lbl_8059CC98:
/* 8059CC98  38 7D 06 D8 */	addi r3, r29, 0x6d8
/* 8059CC9C  4B AE 69 ED */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 8059CCA0  7C 7E 1B 78 */	mr r30, r3
/* 8059CCA4  7F A3 EB 78 */	mr r3, r29
/* 8059CCA8  7F C4 F3 78 */	mr r4, r30
/* 8059CCAC  4B A7 DA 65 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8059CCB0  7C 7F 1B 78 */	mr r31, r3
/* 8059CCB4  7F A3 EB 78 */	mr r3, r29
/* 8059CCB8  7F C4 F3 78 */	mr r4, r30
/* 8059CCBC  4B A7 DC A9 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8059CCC0  3C 60 80 5A */	lis r3, M_attr__15daObjYobikusa_c@ha /* 0x8059DE7C@ha */
/* 8059CCC4  38 63 DE 7C */	addi r3, r3, M_attr__15daObjYobikusa_c@l /* 0x8059DE7C@l */
/* 8059CCC8  C0 43 00 04 */	lfs f2, 4(r3)
/* 8059CCCC  3C 60 80 5A */	lis r3, lit_3724@ha /* 0x8059DEC0@ha */
/* 8059CCD0  C0 03 DE C0 */	lfs f0, lit_3724@l(r3)  /* 0x8059DEC0@l */
/* 8059CCD4  EC 02 00 24 */	fdivs f0, f2, f0
/* 8059CCD8  FC 00 00 50 */	fneg f0, f0
/* 8059CCDC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8059CCE0  EC 20 10 2A */	fadds f1, f0, f2
/* 8059CCE4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8059CCE8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8059CCEC  57 E5 04 38 */	rlwinm r5, r31, 0, 0x10, 0x1c
/* 8059CCF0  7C 64 2A 14 */	add r3, r4, r5
/* 8059CCF4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8059CCF8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8059CCFC  FC 00 00 1E */	fctiwz f0, f0
/* 8059CD00  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059CD04  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8059CD08  B0 1D 07 4E */	sth r0, 0x74e(r29)
/* 8059CD0C  7C 04 2C 2E */	lfsx f0, r4, r5
/* 8059CD10  EC 01 00 32 */	fmuls f0, f1, f0
/* 8059CD14  FC 00 00 1E */	fctiwz f0, f0
/* 8059CD18  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8059CD1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059CD20  B0 1D 07 50 */	sth r0, 0x750(r29)
/* 8059CD24  7F A3 EB 78 */	mr r3, r29
/* 8059CD28  48 00 07 2D */	bl setNewLeaf__15daObjYobikusa_cFv
lbl_8059CD2C:
/* 8059CD2C  39 61 00 30 */	addi r11, r1, 0x30
/* 8059CD30  4B DC 54 F9 */	bl _restgpr_29
/* 8059CD34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059CD38  7C 08 03 A6 */	mtlr r0
/* 8059CD3C  38 21 00 30 */	addi r1, r1, 0x30
/* 8059CD40  4E 80 00 20 */	blr 
