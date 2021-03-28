lbl_806BA24C:
/* 806BA24C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BA250  7C 08 02 A6 */	mflr r0
/* 806BA254  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BA258  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BA25C  7C 7F 1B 78 */	mr r31, r3
/* 806BA260  88 03 06 16 */	lbz r0, 0x616(r3)
/* 806BA264  2C 00 00 01 */	cmpwi r0, 1
/* 806BA268  41 82 00 1C */	beq lbl_806BA284
/* 806BA26C  40 80 00 5C */	bge lbl_806BA2C8
/* 806BA270  2C 00 00 00 */	cmpwi r0, 0
/* 806BA274  40 80 00 08 */	bge lbl_806BA27C
/* 806BA278  48 00 00 50 */	b lbl_806BA2C8
lbl_806BA27C:
/* 806BA27C  4B FF FF 0D */	bl DamageChk__8daE_FK_cFv
/* 806BA280  48 00 00 48 */	b lbl_806BA2C8
lbl_806BA284:
/* 806BA284  80 9F 0C 30 */	lwz r4, 0xc30(r31)
/* 806BA288  38 A0 00 01 */	li r5, 1
/* 806BA28C  88 04 00 11 */	lbz r0, 0x11(r4)
/* 806BA290  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806BA294  40 82 00 1C */	bne lbl_806BA2B0
/* 806BA298  3C 60 80 6C */	lis r3, lit_3827@ha
/* 806BA29C  C0 23 B6 D4 */	lfs f1, lit_3827@l(r3)
/* 806BA2A0  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 806BA2A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806BA2A8  41 82 00 08 */	beq lbl_806BA2B0
/* 806BA2AC  38 A0 00 00 */	li r5, 0
lbl_806BA2B0:
/* 806BA2B0  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 806BA2B4  41 82 00 14 */	beq lbl_806BA2C8
/* 806BA2B8  38 00 00 01 */	li r0, 1
/* 806BA2BC  98 1F 06 15 */	stb r0, 0x615(r31)
/* 806BA2C0  38 00 00 00 */	li r0, 0
/* 806BA2C4  98 1F 06 16 */	stb r0, 0x616(r31)
lbl_806BA2C8:
/* 806BA2C8  7F E3 FB 78 */	mr r3, r31
/* 806BA2CC  4B FF F9 4D */	bl SpeedChk__8daE_FK_cFv
/* 806BA2D0  7F E3 FB 78 */	mr r3, r31
/* 806BA2D4  4B FF F8 59 */	bl SpeedSet__8daE_FK_cFv
/* 806BA2D8  7F E3 FB 78 */	mr r3, r31
/* 806BA2DC  4B FF F9 41 */	bl SetAnmSpeed__8daE_FK_cFv
/* 806BA2E0  7F E3 FB 78 */	mr r3, r31
/* 806BA2E4  4B FF F9 31 */	bl HsAngleSet__8daE_FK_cFv
/* 806BA2E8  7F E3 FB 78 */	mr r3, r31
/* 806BA2EC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806BA2F0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806BA2F4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806BA2F8  4B 96 04 18 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806BA2FC  7C 64 1B 78 */	mr r4, r3
/* 806BA300  7F E3 FB 78 */	mr r3, r31
/* 806BA304  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 806BA308  7C 00 20 50 */	subf r0, r0, r4
/* 806BA30C  7C 04 07 34 */	extsh r4, r0
/* 806BA310  4B FF F8 A5 */	bl TnNeckSet__8daE_FK_cFs
/* 806BA314  7F E3 FB 78 */	mr r3, r31
/* 806BA318  4B FF F9 09 */	bl TgChk__8daE_FK_cFv
/* 806BA31C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BA320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BA324  7C 08 03 A6 */	mtlr r0
/* 806BA328  38 21 00 10 */	addi r1, r1, 0x10
/* 806BA32C  4E 80 00 20 */	blr 
