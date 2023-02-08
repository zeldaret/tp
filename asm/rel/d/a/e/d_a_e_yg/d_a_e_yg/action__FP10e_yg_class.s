lbl_807FAA34:
/* 807FAA34  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 807FAA38  7C 08 02 A6 */	mflr r0
/* 807FAA3C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 807FAA40  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 807FAA44  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 807FAA48  39 61 00 D0 */	addi r11, r1, 0xd0
/* 807FAA4C  4B B6 77 75 */	bl _savegpr_22
/* 807FAA50  7C 7C 1B 78 */	mr r28, r3
/* 807FAA54  3C 80 80 80 */	lis r4, lit_3801@ha /* 0x807FCCB4@ha */
/* 807FAA58  3B C4 CC B4 */	addi r30, r4, lit_3801@l /* 0x807FCCB4@l */
/* 807FAA5C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807FAA60  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807FAA64  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807FAA68  4B 81 FD 79 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807FAA6C  D0 3C 06 80 */	stfs f1, 0x680(r28)
/* 807FAA70  7F 83 E3 78 */	mr r3, r28
/* 807FAA74  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807FAA78  4B 81 FC 99 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807FAA7C  B0 7C 06 84 */	sth r3, 0x684(r28)
/* 807FAA80  7F 83 E3 78 */	mr r3, r28
/* 807FAA84  4B FF F8 61 */	bl damage_check__FP10e_yg_class
/* 807FAA88  3B 60 00 00 */	li r27, 0
/* 807FAA8C  3B 40 00 01 */	li r26, 1
/* 807FAA90  3B 20 00 00 */	li r25, 0
/* 807FAA94  3B 00 00 01 */	li r24, 1
/* 807FAA98  3A E0 00 01 */	li r23, 1
/* 807FAA9C  38 61 00 48 */	addi r3, r1, 0x48
/* 807FAAA0  4B 87 CD 11 */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 807FAAA4  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807FAAA8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807FAAAC  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 807FAAB0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807FAAB4  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 807FAAB8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807FAABC  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 807FAAC0  EC 01 00 2A */	fadds f0, f1, f0
/* 807FAAC4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807FAAC8  38 61 00 48 */	addi r3, r1, 0x48
/* 807FAACC  38 81 00 3C */	addi r4, r1, 0x3c
/* 807FAAD0  4B A6 D2 59 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 807FAAD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807FAAD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807FAADC  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 807FAAE0  7F A3 EB 78 */	mr r3, r29
/* 807FAAE4  38 81 00 48 */	addi r4, r1, 0x48
/* 807FAAE8  4B 87 99 B9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 807FAAEC  D0 3C 06 90 */	stfs f1, 0x690(r28)
/* 807FAAF0  3A C0 00 00 */	li r22, 0
/* 807FAAF4  A8 1C 06 7E */	lha r0, 0x67e(r28)
/* 807FAAF8  28 00 00 0A */	cmplwi r0, 0xa
/* 807FAAFC  41 81 00 A8 */	bgt lbl_807FABA4
/* 807FAB00  3C 60 80 80 */	lis r3, lit_4898@ha /* 0x807FCE94@ha */
/* 807FAB04  38 63 CE 94 */	addi r3, r3, lit_4898@l /* 0x807FCE94@l */
/* 807FAB08  54 00 10 3A */	slwi r0, r0, 2
/* 807FAB0C  7C 03 00 2E */	lwzx r0, r3, r0
/* 807FAB10  7C 09 03 A6 */	mtctr r0
/* 807FAB14  4E 80 04 20 */	bctr 
lbl_807FAB18:
/* 807FAB18  7F 83 E3 78 */	mr r3, r28
/* 807FAB1C  4B FF E2 BD */	bl e_yg_normal__FP10e_yg_class
/* 807FAB20  7C 7B 1B 78 */	mr r27, r3
/* 807FAB24  3B 20 00 01 */	li r25, 1
/* 807FAB28  48 00 00 7C */	b lbl_807FABA4
lbl_807FAB2C:
/* 807FAB2C  7F 83 E3 78 */	mr r3, r28
/* 807FAB30  4B FF E6 25 */	bl e_yg_attack__FP10e_yg_class
/* 807FAB34  7C 7B 1B 78 */	mr r27, r3
/* 807FAB38  3A C0 00 01 */	li r22, 1
/* 807FAB3C  48 00 00 68 */	b lbl_807FABA4
lbl_807FAB40:
/* 807FAB40  7F 83 E3 78 */	mr r3, r28
/* 807FAB44  4B FF F0 75 */	bl e_yg_dokuro__FP10e_yg_class
/* 807FAB48  48 00 00 5C */	b lbl_807FABA4
lbl_807FAB4C:
/* 807FAB4C  7F 83 E3 78 */	mr r3, r28
/* 807FAB50  4B FF EE 81 */	bl e_yg_swim__FP10e_yg_class
/* 807FAB54  3B 40 00 00 */	li r26, 0
/* 807FAB58  48 00 00 4C */	b lbl_807FABA4
lbl_807FAB5C:
/* 807FAB5C  7F 83 E3 78 */	mr r3, r28
/* 807FAB60  4B FF F3 99 */	bl e_yg_damage__FP10e_yg_class
/* 807FAB64  3B 40 FF FF */	li r26, -1
/* 807FAB68  3A E0 00 00 */	li r23, 0
/* 807FAB6C  3B 00 00 00 */	li r24, 0
/* 807FAB70  48 00 00 34 */	b lbl_807FABA4
lbl_807FAB74:
/* 807FAB74  7F 83 E3 78 */	mr r3, r28
/* 807FAB78  4B FF F5 D5 */	bl e_yg_wolfbite__FP10e_yg_class
/* 807FAB7C  3A E0 00 00 */	li r23, 0
/* 807FAB80  3B 40 FF FF */	li r26, -1
/* 807FAB84  3B 00 00 00 */	li r24, 0
/* 807FAB88  48 00 00 1C */	b lbl_807FABA4
lbl_807FAB8C:
/* 807FAB8C  7F 83 E3 78 */	mr r3, r28
/* 807FAB90  4B FF F6 F5 */	bl e_yg_standby__FP10e_yg_class
/* 807FAB94  38 61 00 48 */	addi r3, r1, 0x48
/* 807FAB98  38 80 FF FF */	li r4, -1
/* 807FAB9C  4B 87 CC AD */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 807FABA0  48 00 04 74 */	b lbl_807FB014
lbl_807FABA4:
/* 807FABA4  7E C0 07 75 */	extsb. r0, r22
/* 807FABA8  41 82 00 14 */	beq lbl_807FABBC
/* 807FABAC  38 7C 05 D8 */	addi r3, r28, 0x5d8
/* 807FABB0  38 80 00 01 */	li r4, 1
/* 807FABB4  4B AC 6F C9 */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 807FABB8  48 00 00 10 */	b lbl_807FABC8
lbl_807FABBC:
/* 807FABBC  38 7C 05 D8 */	addi r3, r28, 0x5d8
/* 807FABC0  38 80 00 00 */	li r4, 0
/* 807FABC4  4B AC 6F B9 */	bl setLinkSearch__15Z2CreatureEnemyFb
lbl_807FABC8:
/* 807FABC8  7F 00 07 75 */	extsb. r0, r24
/* 807FABCC  41 82 00 1C */	beq lbl_807FABE8
/* 807FABD0  A8 1C 05 62 */	lha r0, 0x562(r28)
/* 807FABD4  2C 00 00 00 */	cmpwi r0, 0
/* 807FABD8  40 81 00 10 */	ble lbl_807FABE8
/* 807FABDC  38 00 00 04 */	li r0, 4
/* 807FABE0  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 807FABE4  48 00 00 18 */	b lbl_807FABFC
lbl_807FABE8:
/* 807FABE8  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 807FABEC  54 00 00 3E */	slwi r0, r0, 0
/* 807FABF0  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 807FABF4  38 00 00 00 */	li r0, 0
/* 807FABF8  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_807FABFC:
/* 807FABFC  7F 20 07 75 */	extsb. r0, r25
/* 807FAC00  41 82 01 70 */	beq lbl_807FAD70
/* 807FAC04  38 00 FF FF */	li r0, -1
/* 807FAC08  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 807FAC0C  A8 1C 06 7C */	lha r0, 0x67c(r28)
/* 807FAC10  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 807FAC14  40 82 01 5C */	bne lbl_807FAD70
/* 807FAC18  7F 83 E3 78 */	mr r3, r28
/* 807FAC1C  4B FF DE C9 */	bl search_dokuro__FP10e_yg_class
/* 807FAC20  7C 78 1B 79 */	or. r24, r3, r3
/* 807FAC24  41 82 01 4C */	beq lbl_807FAD70
/* 807FAC28  38 61 00 18 */	addi r3, r1, 0x18
/* 807FAC2C  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 807FAC30  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 807FAC34  4B A6 BF 01 */	bl __mi__4cXyzCFRC3Vec
/* 807FAC38  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807FAC3C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807FAC40  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807FAC44  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807FAC48  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807FAC4C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807FAC50  38 61 00 3C */	addi r3, r1, 0x3c
/* 807FAC54  4B B4 C4 E5 */	bl PSVECSquareMag
/* 807FAC58  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807FAC5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FAC60  40 81 00 58 */	ble lbl_807FACB8
/* 807FAC64  FC 00 08 34 */	frsqrte f0, f1
/* 807FAC68  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807FAC6C  FC 44 00 32 */	fmul f2, f4, f0
/* 807FAC70  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807FAC74  FC 00 00 32 */	fmul f0, f0, f0
/* 807FAC78  FC 01 00 32 */	fmul f0, f1, f0
/* 807FAC7C  FC 03 00 28 */	fsub f0, f3, f0
/* 807FAC80  FC 02 00 32 */	fmul f0, f2, f0
/* 807FAC84  FC 44 00 32 */	fmul f2, f4, f0
/* 807FAC88  FC 00 00 32 */	fmul f0, f0, f0
/* 807FAC8C  FC 01 00 32 */	fmul f0, f1, f0
/* 807FAC90  FC 03 00 28 */	fsub f0, f3, f0
/* 807FAC94  FC 02 00 32 */	fmul f0, f2, f0
/* 807FAC98  FC 44 00 32 */	fmul f2, f4, f0
/* 807FAC9C  FC 00 00 32 */	fmul f0, f0, f0
/* 807FACA0  FC 01 00 32 */	fmul f0, f1, f0
/* 807FACA4  FC 03 00 28 */	fsub f0, f3, f0
/* 807FACA8  FC 02 00 32 */	fmul f0, f2, f0
/* 807FACAC  FC 21 00 32 */	fmul f1, f1, f0
/* 807FACB0  FC 20 08 18 */	frsp f1, f1
/* 807FACB4  48 00 00 88 */	b lbl_807FAD3C
lbl_807FACB8:
/* 807FACB8  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807FACBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FACC0  40 80 00 10 */	bge lbl_807FACD0
/* 807FACC4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807FACC8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807FACCC  48 00 00 70 */	b lbl_807FAD3C
lbl_807FACD0:
/* 807FACD0  D0 21 00 08 */	stfs f1, 8(r1)
/* 807FACD4  80 81 00 08 */	lwz r4, 8(r1)
/* 807FACD8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807FACDC  3C 00 7F 80 */	lis r0, 0x7f80
/* 807FACE0  7C 03 00 00 */	cmpw r3, r0
/* 807FACE4  41 82 00 14 */	beq lbl_807FACF8
/* 807FACE8  40 80 00 40 */	bge lbl_807FAD28
/* 807FACEC  2C 03 00 00 */	cmpwi r3, 0
/* 807FACF0  41 82 00 20 */	beq lbl_807FAD10
/* 807FACF4  48 00 00 34 */	b lbl_807FAD28
lbl_807FACF8:
/* 807FACF8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807FACFC  41 82 00 0C */	beq lbl_807FAD08
/* 807FAD00  38 00 00 01 */	li r0, 1
/* 807FAD04  48 00 00 28 */	b lbl_807FAD2C
lbl_807FAD08:
/* 807FAD08  38 00 00 02 */	li r0, 2
/* 807FAD0C  48 00 00 20 */	b lbl_807FAD2C
lbl_807FAD10:
/* 807FAD10  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807FAD14  41 82 00 0C */	beq lbl_807FAD20
/* 807FAD18  38 00 00 05 */	li r0, 5
/* 807FAD1C  48 00 00 10 */	b lbl_807FAD2C
lbl_807FAD20:
/* 807FAD20  38 00 00 03 */	li r0, 3
/* 807FAD24  48 00 00 08 */	b lbl_807FAD2C
lbl_807FAD28:
/* 807FAD28  38 00 00 04 */	li r0, 4
lbl_807FAD2C:
/* 807FAD2C  2C 00 00 01 */	cmpwi r0, 1
/* 807FAD30  40 82 00 0C */	bne lbl_807FAD3C
/* 807FAD34  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807FAD38  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807FAD3C:
/* 807FAD3C  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 807FAD40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FAD44  40 80 00 2C */	bge lbl_807FAD70
/* 807FAD48  28 18 00 00 */	cmplwi r24, 0
/* 807FAD4C  41 82 00 0C */	beq lbl_807FAD58
/* 807FAD50  80 18 00 04 */	lwz r0, 4(r24)
/* 807FAD54  48 00 00 08 */	b lbl_807FAD5C
lbl_807FAD58:
/* 807FAD58  38 00 FF FF */	li r0, -1
lbl_807FAD5C:
/* 807FAD5C  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 807FAD60  38 00 00 02 */	li r0, 2
/* 807FAD64  B0 1C 06 7E */	sth r0, 0x67e(r28)
/* 807FAD68  38 00 00 00 */	li r0, 0
/* 807FAD6C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_807FAD70:
/* 807FAD70  7F 60 07 75 */	extsb. r0, r27
/* 807FAD74  41 82 00 6C */	beq lbl_807FADE0
/* 807FAD78  C0 3C 06 80 */	lfs f1, 0x680(r28)
/* 807FAD7C  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 807FAD80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FAD84  40 80 00 5C */	bge lbl_807FADE0
/* 807FAD88  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807FAD8C  80 03 05 80 */	lwz r0, 0x580(r3)
/* 807FAD90  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 807FAD94  41 82 00 4C */	beq lbl_807FADE0
/* 807FAD98  38 00 00 00 */	li r0, 0
/* 807FAD9C  B0 1C 06 7E */	sth r0, 0x67e(r28)
/* 807FADA0  38 00 00 05 */	li r0, 5
/* 807FADA4  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807FADA8  7F 83 E3 78 */	mr r3, r28
/* 807FADAC  38 80 00 08 */	li r4, 8
/* 807FADB0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807FADB4  38 A0 00 00 */	li r5, 0
/* 807FADB8  FC 40 08 90 */	fmr f2, f1
/* 807FADBC  4B FF D5 D9 */	bl anm_init__FP10e_yg_classifUcf
/* 807FADC0  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 807FADC4  4B A6 CB 91 */	bl cM_rndF__Ff
/* 807FADC8  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 807FADCC  EC 00 08 2A */	fadds f0, f0, f1
/* 807FADD0  FC 00 00 1E */	fctiwz f0, f0
/* 807FADD4  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 807FADD8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807FADDC  B0 1C 06 86 */	sth r0, 0x686(r28)
lbl_807FADE0:
/* 807FADE0  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 807FADE4  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 807FADE8  38 A0 00 02 */	li r5, 2
/* 807FADEC  38 C0 20 00 */	li r6, 0x2000
/* 807FADF0  4B A7 58 19 */	bl cLib_addCalcAngleS2__FPssss
/* 807FADF4  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 807FADF8  A8 9C 04 DC */	lha r4, 0x4dc(r28)
/* 807FADFC  38 A0 00 02 */	li r5, 2
/* 807FAE00  38 C0 20 00 */	li r6, 0x2000
/* 807FAE04  4B A7 58 05 */	bl cLib_addCalcAngleS2__FPssss
/* 807FAE08  38 7C 04 E8 */	addi r3, r28, 0x4e8
/* 807FAE0C  A8 9C 04 E0 */	lha r4, 0x4e0(r28)
/* 807FAE10  38 A0 00 02 */	li r5, 2
/* 807FAE14  38 C0 20 00 */	li r6, 0x2000
/* 807FAE18  4B A7 57 F1 */	bl cLib_addCalcAngleS2__FPssss
/* 807FAE1C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807FAE20  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807FAE24  80 63 00 00 */	lwz r3, 0(r3)
/* 807FAE28  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 807FAE2C  4B 81 15 B1 */	bl mDoMtx_YrotS__FPA4_fs
/* 807FAE30  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807FAE34  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807FAE38  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807FAE3C  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 807FAE40  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807FAE44  38 61 00 3C */	addi r3, r1, 0x3c
/* 807FAE48  38 81 00 30 */	addi r4, r1, 0x30
/* 807FAE4C  4B A7 60 A1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807FAE50  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 807FAE54  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 807FAE58  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807FAE5C  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 807FAE60  38 61 00 0C */	addi r3, r1, 0xc
/* 807FAE64  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 807FAE68  3C A0 80 80 */	lis r5, l_HIO@ha /* 0x807FD06C@ha */
/* 807FAE6C  38 A5 D0 6C */	addi r5, r5, l_HIO@l /* 0x807FD06C@l */
/* 807FAE70  C0 25 00 08 */	lfs f1, 8(r5)
/* 807FAE74  4B A6 BD 11 */	bl __ml__4cXyzCFf
/* 807FAE78  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 807FAE7C  38 81 00 0C */	addi r4, r1, 0xc
/* 807FAE80  7C 65 1B 78 */	mr r5, r3
/* 807FAE84  4B B4 C2 0D */	bl PSVECAdd
/* 807FAE88  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 807FAE8C  C0 1C 05 30 */	lfs f0, 0x530(r28)
/* 807FAE90  EC 01 00 2A */	fadds f0, f1, f0
/* 807FAE94  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 807FAE98  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 807FAE9C  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 807FAEA0  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 807FAEA4  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 807FAEA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FAEAC  40 80 00 08 */	bge lbl_807FAEB4
/* 807FAEB0  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_807FAEB4:
/* 807FAEB4  7E E0 07 75 */	extsb. r0, r23
/* 807FAEB8  41 82 00 48 */	beq lbl_807FAF00
/* 807FAEBC  80 1C 09 1C */	lwz r0, 0x91c(r28)
/* 807FAEC0  60 00 00 01 */	ori r0, r0, 1
/* 807FAEC4  90 1C 09 1C */	stw r0, 0x91c(r28)
/* 807FAEC8  34 7C 08 B4 */	addic. r3, r28, 0x8b4
/* 807FAECC  41 82 00 40 */	beq lbl_807FAF0C
/* 807FAED0  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 807FAED4  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 807FAED8  C0 03 00 00 */	lfs f0, 0(r3)
/* 807FAEDC  EC 02 00 32 */	fmuls f0, f2, f0
/* 807FAEE0  EC 01 00 2A */	fadds f0, f1, f0
/* 807FAEE4  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 807FAEE8  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 807FAEEC  C0 03 00 08 */	lfs f0, 8(r3)
/* 807FAEF0  EC 02 00 32 */	fmuls f0, f2, f0
/* 807FAEF4  EC 01 00 2A */	fadds f0, f1, f0
/* 807FAEF8  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 807FAEFC  48 00 00 10 */	b lbl_807FAF0C
lbl_807FAF00:
/* 807FAF00  80 1C 09 1C */	lwz r0, 0x91c(r28)
/* 807FAF04  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807FAF08  90 1C 09 1C */	stw r0, 0x91c(r28)
lbl_807FAF0C:
/* 807FAF0C  38 7C 06 D8 */	addi r3, r28, 0x6d8
/* 807FAF10  7F A4 EB 78 */	mr r4, r29
/* 807FAF14  4B 87 BB 99 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 807FAF18  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 807FAF1C  C0 3C 06 90 */	lfs f1, 0x690(r28)
/* 807FAF20  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 807FAF24  EC 01 00 28 */	fsubs f0, f1, f0
/* 807FAF28  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807FAF2C  4C 40 13 82 */	cror 2, 0, 2
/* 807FAF30  40 82 00 10 */	bne lbl_807FAF40
/* 807FAF34  38 00 00 01 */	li r0, 1
/* 807FAF38  98 1C 08 B0 */	stb r0, 0x8b0(r28)
/* 807FAF3C  48 00 00 0C */	b lbl_807FAF48
lbl_807FAF40:
/* 807FAF40  38 00 00 00 */	li r0, 0
/* 807FAF44  98 1C 08 B0 */	stb r0, 0x8b0(r28)
lbl_807FAF48:
/* 807FAF48  C3 FE 00 04 */	lfs f31, 4(r30)
/* 807FAF4C  7F 40 07 74 */	extsb r0, r26
/* 807FAF50  2C 00 00 01 */	cmpwi r0, 1
/* 807FAF54  40 82 00 3C */	bne lbl_807FAF90
/* 807FAF58  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 807FAF5C  C0 3C 06 90 */	lfs f1, 0x690(r28)
/* 807FAF60  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 807FAF64  EC 01 00 28 */	fsubs f0, f1, f0
/* 807FAF68  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807FAF6C  4C 40 13 82 */	cror 2, 0, 2
/* 807FAF70  40 82 00 84 */	bne lbl_807FAFF4
/* 807FAF74  38 00 00 03 */	li r0, 3
/* 807FAF78  B0 1C 06 7E */	sth r0, 0x67e(r28)
/* 807FAF7C  38 00 00 00 */	li r0, 0
/* 807FAF80  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807FAF84  7F 83 E3 78 */	mr r3, r28
/* 807FAF88  4B FF D6 89 */	bl sibuki_set__FP10e_yg_class
/* 807FAF8C  48 00 00 68 */	b lbl_807FAFF4
lbl_807FAF90:
/* 807FAF90  7F 40 07 75 */	extsb. r0, r26
/* 807FAF94  40 82 00 60 */	bne lbl_807FAFF4
/* 807FAF98  C3 FE 01 00 */	lfs f31, 0x100(r30)
/* 807FAF9C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807FAFA0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807FAFA4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 807FAFA8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807FAFAC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 807FAFB0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807FAFB4  C0 1C 06 90 */	lfs f0, 0x690(r28)
/* 807FAFB8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807FAFBC  38 7C 0B 9C */	addi r3, r28, 0xb9c
/* 807FAFC0  38 81 00 24 */	addi r4, r1, 0x24
/* 807FAFC4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807FAFC8  C0 5E 00 D4 */	lfs f2, 0xd4(r30)
/* 807FAFCC  4B 82 21 41 */	bl fopAcM_effHamonSet__FPUlPC4cXyzff
/* 807FAFD0  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 807FAFD4  C0 3C 06 90 */	lfs f1, 0x690(r28)
/* 807FAFD8  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 807FAFDC  EC 01 00 28 */	fsubs f0, f1, f0
/* 807FAFE0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807FAFE4  40 81 00 10 */	ble lbl_807FAFF4
/* 807FAFE8  38 00 00 00 */	li r0, 0
/* 807FAFEC  B0 1C 06 7E */	sth r0, 0x67e(r28)
/* 807FAFF0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_807FAFF4:
/* 807FAFF4  38 7C 06 94 */	addi r3, r28, 0x694
/* 807FAFF8  FC 20 F8 90 */	fmr f1, f31
/* 807FAFFC  C0 5E 01 08 */	lfs f2, 0x108(r30)
/* 807FB000  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 807FB004  4B A7 4A 39 */	bl cLib_addCalc2__FPffff
/* 807FB008  38 61 00 48 */	addi r3, r1, 0x48
/* 807FB00C  38 80 FF FF */	li r4, -1
/* 807FB010  4B 87 C8 39 */	bl __dt__18dBgS_ObjGndChk_SplFv
lbl_807FB014:
/* 807FB014  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 807FB018  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 807FB01C  39 61 00 D0 */	addi r11, r1, 0xd0
/* 807FB020  4B B6 71 ED */	bl _restgpr_22
/* 807FB024  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 807FB028  7C 08 03 A6 */	mtlr r0
/* 807FB02C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 807FB030  4E 80 00 20 */	blr 
