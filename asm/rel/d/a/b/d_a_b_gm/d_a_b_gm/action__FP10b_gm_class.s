lbl_805EF9BC:
/* 805EF9BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805EF9C0  7C 08 02 A6 */	mflr r0
/* 805EF9C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 805EF9C8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805EF9CC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805EF9D0  7C 7E 1B 78 */	mr r30, r3
/* 805EF9D4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805EF9D8  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 805EF9DC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805EF9E0  4B A2 AD 30 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805EF9E4  B0 7E 05 C4 */	sth r3, 0x5c4(r30)
/* 805EF9E8  7F C3 F3 78 */	mr r3, r30
/* 805EF9EC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805EF9F0  4B A2 AD F0 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805EF9F4  D0 3E 05 C8 */	stfs f1, 0x5c8(r30)
/* 805EF9F8  7F C3 F3 78 */	mr r3, r30
/* 805EF9FC  4B FF E6 B9 */	bl damage_check__FP10b_gm_class
/* 805EFA00  38 00 00 00 */	li r0, 0
/* 805EFA04  98 1E 1A D6 */	stb r0, 0x1ad6(r30)
/* 805EFA08  A8 1E 07 1E */	lha r0, 0x71e(r30)
/* 805EFA0C  28 00 00 0B */	cmplwi r0, 0xb
/* 805EFA10  41 81 00 60 */	bgt lbl_805EFA70
/* 805EFA14  3C 60 80 5F */	lis r3, lit_4656@ha
/* 805EFA18  38 63 44 44 */	addi r3, r3, lit_4656@l
/* 805EFA1C  54 00 10 3A */	slwi r0, r0, 2
/* 805EFA20  7C 03 00 2E */	lwzx r0, r3, r0
/* 805EFA24  7C 09 03 A6 */	mtctr r0
/* 805EFA28  4E 80 04 20 */	bctr 
lbl_805EFA2C:
/* 805EFA2C  7F C3 F3 78 */	mr r3, r30
/* 805EFA30  4B FF ED 81 */	bl b_gm_wait__FP10b_gm_class
/* 805EFA34  48 00 00 3C */	b lbl_805EFA70
lbl_805EFA38:
/* 805EFA38  7F C3 F3 78 */	mr r3, r30
/* 805EFA3C  4B FF EE 4D */	bl b_gm_move__FP10b_gm_class
/* 805EFA40  48 00 00 30 */	b lbl_805EFA70
lbl_805EFA44:
/* 805EFA44  7F C3 F3 78 */	mr r3, r30
/* 805EFA48  4B FF F4 09 */	bl b_gm_beam__FP10b_gm_class
/* 805EFA4C  48 00 00 24 */	b lbl_805EFA70
lbl_805EFA50:
/* 805EFA50  7F C3 F3 78 */	mr r3, r30
/* 805EFA54  4B FF F5 BD */	bl b_gm_kogoma__FP10b_gm_class
/* 805EFA58  48 00 00 18 */	b lbl_805EFA70
lbl_805EFA5C:
/* 805EFA5C  7F C3 F3 78 */	mr r3, r30
/* 805EFA60  4B FF FA A5 */	bl b_gm_damage__FP10b_gm_class
/* 805EFA64  48 00 00 0C */	b lbl_805EFA70
lbl_805EFA68:
/* 805EFA68  7F C3 F3 78 */	mr r3, r30
/* 805EFA6C  4B FF FB C5 */	bl b_gm_drop__FP10b_gm_class
lbl_805EFA70:
/* 805EFA70  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805EFA74  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805EFA78  80 63 00 00 */	lwz r3, 0(r3)
/* 805EFA7C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 805EFA80  4B A1 C9 5C */	b mDoMtx_YrotS__FPA4_fs
/* 805EFA84  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805EFA88  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805EFA8C  80 63 00 00 */	lwz r3, 0(r3)
/* 805EFA90  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 805EFA94  4B A1 C9 08 */	b mDoMtx_XrotM__FPA4_fs
/* 805EFA98  3C 60 80 5F */	lis r3, lit_3794@ha
/* 805EFA9C  C0 03 41 A4 */	lfs f0, lit_3794@l(r3)
/* 805EFAA0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805EFAA4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805EFAA8  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 805EFAAC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805EFAB0  38 61 00 14 */	addi r3, r1, 0x14
/* 805EFAB4  38 81 00 08 */	addi r4, r1, 8
/* 805EFAB8  4B C8 14 34 */	b MtxPosition__FP4cXyzP4cXyz
/* 805EFABC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805EFAC0  38 81 00 08 */	addi r4, r1, 8
/* 805EFAC4  7C 65 1B 78 */	mr r5, r3
/* 805EFAC8  4B D5 75 C8 */	b PSVECAdd
/* 805EFACC  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 805EFAD0  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 805EFAD4  38 A0 00 02 */	li r5, 2
/* 805EFAD8  38 C0 10 00 */	li r6, 0x1000
/* 805EFADC  4B C8 0B 2C */	b cLib_addCalcAngleS2__FPssss
/* 805EFAE0  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 805EFAE4  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 805EFAE8  38 A0 00 02 */	li r5, 2
/* 805EFAEC  38 C0 10 00 */	li r6, 0x1000
/* 805EFAF0  4B C8 0B 18 */	b cLib_addCalcAngleS2__FPssss
/* 805EFAF4  88 1E 05 66 */	lbz r0, 0x566(r30)
/* 805EFAF8  7C 00 07 75 */	extsb. r0, r0
/* 805EFAFC  41 82 00 14 */	beq lbl_805EFB10
/* 805EFB00  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805EFB04  80 03 05 88 */	lwz r0, 0x588(r3)
/* 805EFB08  64 00 02 00 */	oris r0, r0, 0x200
/* 805EFB0C  90 03 05 88 */	stw r0, 0x588(r3)
lbl_805EFB10:
/* 805EFB10  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805EFB14  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805EFB18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805EFB1C  7C 08 03 A6 */	mtlr r0
/* 805EFB20  38 21 00 30 */	addi r1, r1, 0x30
/* 805EFB24  4E 80 00 20 */	blr 
