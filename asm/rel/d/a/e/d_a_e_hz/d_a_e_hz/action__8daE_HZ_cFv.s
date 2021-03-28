lbl_806EEEE4:
/* 806EEEE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806EEEE8  7C 08 02 A6 */	mflr r0
/* 806EEEEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 806EEEF0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806EEEF4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806EEEF8  7C 7F 1B 78 */	mr r31, r3
/* 806EEEFC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806EEF00  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 806EEF04  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 806EEF08  4B 92 B8 D8 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806EEF0C  D0 3F 06 A4 */	stfs f1, 0x6a4(r31)
/* 806EEF10  7F E3 FB 78 */	mr r3, r31
/* 806EEF14  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 806EEF18  4B 92 B7 F8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806EEF1C  B0 7F 06 B0 */	sth r3, 0x6b0(r31)
/* 806EEF20  7F E3 FB 78 */	mr r3, r31
/* 806EEF24  4B FF FA 55 */	bl damage_check__8daE_HZ_cFv
/* 806EEF28  80 1F 06 C0 */	lwz r0, 0x6c0(r31)
/* 806EEF2C  2C 00 00 0A */	cmpwi r0, 0xa
/* 806EEF30  41 82 00 20 */	beq lbl_806EEF50
/* 806EEF34  7F E3 FB 78 */	mr r3, r31
/* 806EEF38  4B FF FE D9 */	bl checkWaterSurface__8daE_HZ_cFv
/* 806EEF3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EEF40  41 82 00 10 */	beq lbl_806EEF50
/* 806EEF44  7F E3 FB 78 */	mr r3, r31
/* 806EEF48  38 80 00 0A */	li r4, 0xa
/* 806EEF4C  4B FF BB 91 */	bl setActionMode__8daE_HZ_cFi
lbl_806EEF50:
/* 806EEF50  38 00 00 04 */	li r0, 4
/* 806EEF54  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806EEF58  38 00 00 01 */	li r0, 1
/* 806EEF5C  98 1F 05 66 */	stb r0, 0x566(r31)
/* 806EEF60  80 1F 06 C0 */	lwz r0, 0x6c0(r31)
/* 806EEF64  28 00 00 0B */	cmplwi r0, 0xb
/* 806EEF68  41 81 00 C8 */	bgt lbl_806EF030
/* 806EEF6C  3C 60 80 6F */	lis r3, lit_5940@ha
/* 806EEF70  38 63 09 B8 */	addi r3, r3, lit_5940@l
/* 806EEF74  54 00 10 3A */	slwi r0, r0, 2
/* 806EEF78  7C 03 00 2E */	lwzx r0, r3, r0
/* 806EEF7C  7C 09 03 A6 */	mtctr r0
/* 806EEF80  4E 80 04 20 */	bctr 
lbl_806EEF84:
/* 806EEF84  7F E3 FB 78 */	mr r3, r31
/* 806EEF88  4B FF C4 65 */	bl executeWait__8daE_HZ_cFv
/* 806EEF8C  48 00 00 A4 */	b lbl_806EF030
lbl_806EEF90:
/* 806EEF90  38 00 00 00 */	li r0, 0
/* 806EEF94  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806EEF98  7F E3 FB 78 */	mr r3, r31
/* 806EEF9C  4B FF C8 7D */	bl executeHide__8daE_HZ_cFv
/* 806EEFA0  48 00 00 90 */	b lbl_806EF030
lbl_806EEFA4:
/* 806EEFA4  7F E3 FB 78 */	mr r3, r31
/* 806EEFA8  4B FF CD 9D */	bl executeAttack__8daE_HZ_cFv
/* 806EEFAC  48 00 00 84 */	b lbl_806EF030
lbl_806EEFB0:
/* 806EEFB0  7F E3 FB 78 */	mr r3, r31
/* 806EEFB4  4B FF D3 95 */	bl executeAway__8daE_HZ_cFv
/* 806EEFB8  48 00 00 78 */	b lbl_806EF030
lbl_806EEFBC:
/* 806EEFBC  7F E3 FB 78 */	mr r3, r31
/* 806EEFC0  4B FF DB A5 */	bl executeWind__8daE_HZ_cFv
/* 806EEFC4  48 00 00 6C */	b lbl_806EF030
lbl_806EEFC8:
/* 806EEFC8  7F E3 FB 78 */	mr r3, r31
/* 806EEFCC  4B FF E8 D9 */	bl executeDamage__8daE_HZ_cFv
/* 806EEFD0  48 00 00 60 */	b lbl_806EF030
lbl_806EEFD4:
/* 806EEFD4  38 00 00 00 */	li r0, 0
/* 806EEFD8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806EEFDC  7F E3 FB 78 */	mr r3, r31
/* 806EEFE0  4B FF EA C9 */	bl executeDeath__8daE_HZ_cFv
/* 806EEFE4  48 00 00 4C */	b lbl_806EF030
lbl_806EEFE8:
/* 806EEFE8  7F E3 FB 78 */	mr r3, r31
/* 806EEFEC  4B FF E5 C5 */	bl executeChance__8daE_HZ_cFv
/* 806EEFF0  48 00 00 40 */	b lbl_806EF030
lbl_806EEFF4:
/* 806EEFF4  7F E3 FB 78 */	mr r3, r31
/* 806EEFF8  4B FF ED F1 */	bl executeWindChance__8daE_HZ_cFv
/* 806EEFFC  48 00 00 34 */	b lbl_806EF030
lbl_806EF000:
/* 806EF000  7F E3 FB 78 */	mr r3, r31
/* 806EF004  4B FF F1 1D */	bl executeWindWalk__8daE_HZ_cFv
/* 806EF008  48 00 00 28 */	b lbl_806EF030
lbl_806EF00C:
/* 806EF00C  38 00 00 00 */	li r0, 0
/* 806EF010  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806EF014  7F E3 FB 78 */	mr r3, r31
/* 806EF018  4B FF F3 A5 */	bl executeWaterDeath__8daE_HZ_cFv
/* 806EF01C  48 00 00 14 */	b lbl_806EF030
lbl_806EF020:
/* 806EF020  38 00 00 00 */	li r0, 0
/* 806EF024  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806EF028  7F E3 FB 78 */	mr r3, r31
/* 806EF02C  4B FF F7 F5 */	bl executeDeathWait__8daE_HZ_cFv
lbl_806EF030:
/* 806EF030  80 1F 06 C0 */	lwz r0, 0x6c0(r31)
/* 806EF034  2C 00 00 00 */	cmpwi r0, 0
/* 806EF038  41 82 00 0C */	beq lbl_806EF044
/* 806EF03C  2C 00 00 01 */	cmpwi r0, 1
/* 806EF040  40 82 00 0C */	bne lbl_806EF04C
lbl_806EF044:
/* 806EF044  38 00 00 01 */	li r0, 1
/* 806EF048  98 1F 06 E7 */	stb r0, 0x6e7(r31)
lbl_806EF04C:
/* 806EF04C  88 1F 05 66 */	lbz r0, 0x566(r31)
/* 806EF050  7C 00 07 75 */	extsb. r0, r0
/* 806EF054  41 82 00 6C */	beq lbl_806EF0C0
/* 806EF058  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 806EF05C  80 63 00 04 */	lwz r3, 4(r3)
/* 806EF060  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806EF064  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806EF068  38 63 03 60 */	addi r3, r3, 0x360
/* 806EF06C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806EF070  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806EF074  4B C5 74 3C */	b PSMTXCopy
/* 806EF078  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806EF07C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806EF080  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806EF084  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806EF088  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806EF08C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806EF090  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806EF094  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806EF098  3C 60 80 6F */	lis r3, lit_4263@ha
/* 806EF09C  C0 03 08 C4 */	lfs f0, lit_4263@l(r3)
/* 806EF0A0  D0 01 00 08 */	stfs f0, 8(r1)
/* 806EF0A4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806EF0A8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806EF0AC  7F E3 FB 78 */	mr r3, r31
/* 806EF0B0  38 9F 05 C8 */	addi r4, r31, 0x5c8
/* 806EF0B4  38 A1 00 14 */	addi r5, r1, 0x14
/* 806EF0B8  38 C1 00 08 */	addi r6, r1, 8
/* 806EF0BC  48 00 13 41 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
lbl_806EF0C0:
/* 806EF0C0  7F E3 FB 78 */	mr r3, r31
/* 806EF0C4  4B FF C0 79 */	bl checkFall__8daE_HZ_cFv
/* 806EF0C8  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 806EF0CC  38 80 00 00 */	li r4, 0
/* 806EF0D0  4B BD 2A AC */	b setLinkSearch__15Z2CreatureEnemyFb
/* 806EF0D4  7F E3 FB 78 */	mr r3, r31
/* 806EF0D8  38 80 00 00 */	li r4, 0
/* 806EF0DC  4B 92 B5 F0 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806EF0E0  88 1F 06 E4 */	lbz r0, 0x6e4(r31)
/* 806EF0E4  28 00 00 00 */	cmplwi r0, 0
/* 806EF0E8  41 82 00 1C */	beq lbl_806EF104
/* 806EF0EC  38 7F 0A F8 */	addi r3, r31, 0xaf8
/* 806EF0F0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806EF0F4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806EF0F8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806EF0FC  4B 98 79 B0 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806EF100  48 00 00 10 */	b lbl_806EF110
lbl_806EF104:
/* 806EF104  80 1F 0B 24 */	lwz r0, 0xb24(r31)
/* 806EF108  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 806EF10C  90 1F 0B 24 */	stw r0, 0xb24(r31)
lbl_806EF110:
/* 806EF110  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806EF114  7C 03 07 74 */	extsb r3, r0
/* 806EF118  4B 93 DF 54 */	b dComIfGp_getReverb__Fi
/* 806EF11C  7C 65 1B 78 */	mr r5, r3
/* 806EF120  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 806EF124  38 80 00 00 */	li r4, 0
/* 806EF128  4B 92 1F 88 */	b play__16mDoExt_McaMorfSOFUlSc
/* 806EF12C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806EF130  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806EF134  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806EF138  7C 08 03 A6 */	mtlr r0
/* 806EF13C  38 21 00 30 */	addi r1, r1, 0x30
/* 806EF140  4E 80 00 20 */	blr 
