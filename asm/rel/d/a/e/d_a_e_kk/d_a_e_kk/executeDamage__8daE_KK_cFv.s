lbl_806FCA28:
/* 806FCA28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806FCA2C  7C 08 02 A6 */	mflr r0
/* 806FCA30  90 01 00 24 */	stw r0, 0x24(r1)
/* 806FCA34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806FCA38  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806FCA3C  7C 7F 1B 78 */	mr r31, r3
/* 806FCA40  3C 80 80 70 */	lis r4, lit_3792@ha
/* 806FCA44  3B C4 F5 E8 */	addi r30, r4, lit_3792@l
/* 806FCA48  80 03 06 64 */	lwz r0, 0x664(r3)
/* 806FCA4C  2C 00 00 02 */	cmpwi r0, 2
/* 806FCA50  41 82 01 50 */	beq lbl_806FCBA0
/* 806FCA54  40 80 00 14 */	bge lbl_806FCA68
/* 806FCA58  2C 00 00 00 */	cmpwi r0, 0
/* 806FCA5C  41 82 00 18 */	beq lbl_806FCA74
/* 806FCA60  40 80 00 B8 */	bge lbl_806FCB18
/* 806FCA64  48 00 01 B8 */	b lbl_806FCC1C
lbl_806FCA68:
/* 806FCA68  2C 00 00 04 */	cmpwi r0, 4
/* 806FCA6C  40 80 01 B0 */	bge lbl_806FCC1C
/* 806FCA70  48 00 01 40 */	b lbl_806FCBB0
lbl_806FCA74:
/* 806FCA74  38 80 00 08 */	li r4, 8
/* 806FCA78  38 A0 00 00 */	li r5, 0
/* 806FCA7C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 806FCA80  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806FCA84  4B FF DF E5 */	bl setBck__8daE_KK_cFiUcff
/* 806FCA88  7F E3 FB 78 */	mr r3, r31
/* 806FCA8C  38 9F 06 98 */	addi r4, r31, 0x698
/* 806FCA90  4B FF EC 31 */	bl mDeadEffSet__8daE_KK_cFR4cXyz
/* 806FCA94  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 806FCA98  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 806FCA9C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007037E@ha */
/* 806FCAA0  38 03 03 7E */	addi r0, r3, 0x037E /* 0x0007037E@l */
/* 806FCAA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806FCAA8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806FCAAC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806FCAB0  80 63 00 00 */	lwz r3, 0(r3)
/* 806FCAB4  38 81 00 0C */	addi r4, r1, 0xc
/* 806FCAB8  38 BF 06 98 */	addi r5, r31, 0x698
/* 806FCABC  38 C0 00 00 */	li r6, 0
/* 806FCAC0  38 E0 00 00 */	li r7, 0
/* 806FCAC4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806FCAC8  FC 40 08 90 */	fmr f2, f1
/* 806FCACC  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 806FCAD0  FC 80 18 90 */	fmr f4, f3
/* 806FCAD4  39 00 00 00 */	li r8, 0
/* 806FCAD8  4B BA EE AC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806FCADC  38 00 00 01 */	li r0, 1
/* 806FCAE0  98 1F 06 7D */	stb r0, 0x67d(r31)
/* 806FCAE4  80 1F 0A 60 */	lwz r0, 0xa60(r31)
/* 806FCAE8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806FCAEC  90 1F 0A 60 */	stw r0, 0xa60(r31)
/* 806FCAF0  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 806FCAF4  4B B6 AE 60 */	b cM_rndF__Ff
/* 806FCAF8  FC 00 08 1E */	fctiwz f0, f1
/* 806FCAFC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806FCB00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FCB04  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 806FCB08  98 1F 06 7C */	stb r0, 0x67c(r31)
/* 806FCB0C  38 00 00 02 */	li r0, 2
/* 806FCB10  90 1F 06 64 */	stw r0, 0x664(r31)
/* 806FCB14  48 00 01 08 */	b lbl_806FCC1C
lbl_806FCB18:
/* 806FCB18  88 1F 06 7C */	lbz r0, 0x67c(r31)
/* 806FCB1C  28 00 00 00 */	cmplwi r0, 0
/* 806FCB20  40 82 00 1C */	bne lbl_806FCB3C
/* 806FCB24  38 80 00 0C */	li r4, 0xc
/* 806FCB28  38 A0 00 00 */	li r5, 0
/* 806FCB2C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 806FCB30  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806FCB34  4B FF DF 35 */	bl setBck__8daE_KK_cFiUcff
/* 806FCB38  48 00 00 18 */	b lbl_806FCB50
lbl_806FCB3C:
/* 806FCB3C  38 80 00 0D */	li r4, 0xd
/* 806FCB40  38 A0 00 00 */	li r5, 0
/* 806FCB44  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 806FCB48  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806FCB4C  4B FF DF 1D */	bl setBck__8daE_KK_cFiUcff
lbl_806FCB50:
/* 806FCB50  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007037F@ha */
/* 806FCB54  38 03 03 7F */	addi r0, r3, 0x037F /* 0x0007037F@l */
/* 806FCB58  90 01 00 08 */	stw r0, 8(r1)
/* 806FCB5C  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806FCB60  38 81 00 08 */	addi r4, r1, 8
/* 806FCB64  38 A0 00 00 */	li r5, 0
/* 806FCB68  38 C0 FF FF */	li r6, -1
/* 806FCB6C  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 806FCB70  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806FCB74  7D 89 03 A6 */	mtctr r12
/* 806FCB78  4E 80 04 21 */	bctrl 
/* 806FCB7C  88 7F 06 7C */	lbz r3, 0x67c(r31)
/* 806FCB80  38 03 00 01 */	addi r0, r3, 1
/* 806FCB84  98 1F 06 7C */	stb r0, 0x67c(r31)
/* 806FCB88  88 1F 06 7C */	lbz r0, 0x67c(r31)
/* 806FCB8C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 806FCB90  98 1F 06 7C */	stb r0, 0x67c(r31)
/* 806FCB94  38 00 00 03 */	li r0, 3
/* 806FCB98  90 1F 06 64 */	stw r0, 0x664(r31)
/* 806FCB9C  48 00 00 80 */	b lbl_806FCC1C
lbl_806FCBA0:
/* 806FCBA0  38 7F 05 2C */	addi r3, r31, 0x52c
/* 806FCBA4  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 806FCBA8  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 806FCBAC  4B B7 2E D4 */	b cLib_addCalc0__FPfff
lbl_806FCBB0:
/* 806FCBB0  80 1F 0A 60 */	lwz r0, 0xa60(r31)
/* 806FCBB4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806FCBB8  90 1F 0A 60 */	stw r0, 0xa60(r31)
/* 806FCBBC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806FCBC0  38 80 00 01 */	li r4, 1
/* 806FCBC4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806FCBC8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806FCBCC  40 82 00 18 */	bne lbl_806FCBE4
/* 806FCBD0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806FCBD4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806FCBD8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806FCBDC  41 82 00 08 */	beq lbl_806FCBE4
/* 806FCBE0  38 80 00 00 */	li r4, 0
lbl_806FCBE4:
/* 806FCBE4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806FCBE8  41 82 00 34 */	beq lbl_806FCC1C
/* 806FCBEC  7F E3 FB 78 */	mr r3, r31
/* 806FCBF0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806FCBF4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806FCBF8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806FCBFC  4B 91 DB 14 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FCC00  3C 63 00 01 */	addis r3, r3, 1
/* 806FCC04  38 03 80 00 */	addi r0, r3, -32768
/* 806FCC08  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 806FCC0C  7F E3 FB 78 */	mr r3, r31
/* 806FCC10  38 80 00 04 */	li r4, 4
/* 806FCC14  38 A0 00 00 */	li r5, 0
/* 806FCC18  4B FF E0 69 */	bl setActionMode__8daE_KK_cFii
lbl_806FCC1C:
/* 806FCC1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806FCC20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806FCC24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806FCC28  7C 08 03 A6 */	mtlr r0
/* 806FCC2C  38 21 00 20 */	addi r1, r1, 0x20
/* 806FCC30  4E 80 00 20 */	blr 
