lbl_807CC004:
/* 807CC004  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807CC008  7C 08 02 A6 */	mflr r0
/* 807CC00C  90 01 00 34 */	stw r0, 0x34(r1)
/* 807CC010  39 61 00 30 */	addi r11, r1, 0x30
/* 807CC014  4B B9 61 C9 */	bl _savegpr_29
/* 807CC018  7C 7E 1B 78 */	mr r30, r3
/* 807CC01C  3C 80 80 7D */	lis r4, lit_3907@ha /* 0x807CECA8@ha */
/* 807CC020  3B E4 EC A8 */	addi r31, r4, lit_3907@l /* 0x807CECA8@l */
/* 807CC024  38 00 00 00 */	li r0, 0
/* 807CC028  98 03 13 91 */	stb r0, 0x1391(r3)
/* 807CC02C  4B FF FB D5 */	bl setAlphaType__8daE_VA_cFv
/* 807CC030  7F C3 F3 78 */	mr r3, r30
/* 807CC034  4B FF 7B 25 */	bl damage_check__8daE_VA_cFv
/* 807CC038  38 A0 00 00 */	li r5, 0
/* 807CC03C  38 60 00 00 */	li r3, 0
/* 807CC040  38 00 00 04 */	li r0, 4
/* 807CC044  7C 09 03 A6 */	mtctr r0
lbl_807CC048:
/* 807CC048  7C 9E 1A 14 */	add r4, r30, r3
/* 807CC04C  80 04 20 64 */	lwz r0, 0x2064(r4)
/* 807CC050  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807CC054  90 04 20 64 */	stw r0, 0x2064(r4)
/* 807CC058  88 1E 13 7F */	lbz r0, 0x137f(r30)
/* 807CC05C  28 00 00 00 */	cmplwi r0, 0
/* 807CC060  41 82 00 34 */	beq lbl_807CC094
/* 807CC064  2C 05 00 00 */	cmpwi r5, 0
/* 807CC068  40 82 00 2C */	bne lbl_807CC094
/* 807CC06C  80 04 20 90 */	lwz r0, 0x2090(r4)
/* 807CC070  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807CC074  90 04 20 90 */	stw r0, 0x2090(r4)
/* 807CC078  80 04 21 00 */	lwz r0, 0x2100(r4)
/* 807CC07C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807CC080  90 04 21 00 */	stw r0, 0x2100(r4)
/* 807CC084  80 04 21 00 */	lwz r0, 0x2100(r4)
/* 807CC088  60 00 00 04 */	ori r0, r0, 4
/* 807CC08C  90 04 21 00 */	stw r0, 0x2100(r4)
/* 807CC090  48 00 00 50 */	b lbl_807CC0E0
lbl_807CC094:
/* 807CC094  80 04 20 90 */	lwz r0, 0x2090(r4)
/* 807CC098  60 00 00 01 */	ori r0, r0, 1
/* 807CC09C  90 04 20 90 */	stw r0, 0x2090(r4)
/* 807CC0A0  A8 1E 13 3E */	lha r0, 0x133e(r30)
/* 807CC0A4  2C 00 00 00 */	cmpwi r0, 0
/* 807CC0A8  41 82 00 20 */	beq lbl_807CC0C8
/* 807CC0AC  80 04 21 00 */	lwz r0, 0x2100(r4)
/* 807CC0B0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807CC0B4  90 04 21 00 */	stw r0, 0x2100(r4)
/* 807CC0B8  80 04 21 00 */	lwz r0, 0x2100(r4)
/* 807CC0BC  60 00 00 04 */	ori r0, r0, 4
/* 807CC0C0  90 04 21 00 */	stw r0, 0x2100(r4)
/* 807CC0C4  48 00 00 1C */	b lbl_807CC0E0
lbl_807CC0C8:
/* 807CC0C8  80 04 21 00 */	lwz r0, 0x2100(r4)
/* 807CC0CC  60 00 00 01 */	ori r0, r0, 1
/* 807CC0D0  90 04 21 00 */	stw r0, 0x2100(r4)
/* 807CC0D4  80 04 21 00 */	lwz r0, 0x2100(r4)
/* 807CC0D8  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 807CC0DC  90 04 21 00 */	stw r0, 0x2100(r4)
lbl_807CC0E0:
/* 807CC0E0  38 A5 00 01 */	addi r5, r5, 1
/* 807CC0E4  38 63 01 38 */	addi r3, r3, 0x138
/* 807CC0E8  42 00 FF 60 */	bdnz lbl_807CC048
/* 807CC0EC  3B A0 00 01 */	li r29, 1
/* 807CC0F0  38 00 00 00 */	li r0, 0
/* 807CC0F4  98 1E 13 86 */	stb r0, 0x1386(r30)
/* 807CC0F8  98 1E 13 88 */	stb r0, 0x1388(r30)
/* 807CC0FC  80 1E 13 1C */	lwz r0, 0x131c(r30)
/* 807CC100  28 00 00 14 */	cmplwi r0, 0x14
/* 807CC104  41 81 01 1C */	bgt lbl_807CC220
/* 807CC108  3C 60 80 7D */	lis r3, lit_8207@ha /* 0x807CF330@ha */
/* 807CC10C  38 63 F3 30 */	addi r3, r3, lit_8207@l /* 0x807CF330@l */
/* 807CC110  54 00 10 3A */	slwi r0, r0, 2
/* 807CC114  7C 03 00 2E */	lwzx r0, r3, r0
/* 807CC118  7C 09 03 A6 */	mtctr r0
/* 807CC11C  4E 80 04 20 */	bctr 
lbl_807CC120:
/* 807CC120  7F C3 F3 78 */	mr r3, r30
/* 807CC124  4B FF A4 41 */	bl executeDemoOpWait__8daE_VA_cFv
/* 807CC128  3B A0 00 00 */	li r29, 0
/* 807CC12C  48 00 00 F4 */	b lbl_807CC220
lbl_807CC130:
/* 807CC130  7F C3 F3 78 */	mr r3, r30
/* 807CC134  4B FF A6 71 */	bl executeDemoOp__8daE_VA_cFv
/* 807CC138  3B A0 00 00 */	li r29, 0
/* 807CC13C  48 00 00 E4 */	b lbl_807CC220
lbl_807CC140:
/* 807CC140  7F C3 F3 78 */	mr r3, r30
/* 807CC144  4B FF B3 F1 */	bl executeClearWait__8daE_VA_cFv
/* 807CC148  48 00 00 D8 */	b lbl_807CC220
lbl_807CC14C:
/* 807CC14C  7F C3 F3 78 */	mr r3, r30
/* 807CC150  4B FF B4 F1 */	bl executeClearChase__8daE_VA_cFv
/* 807CC154  48 00 00 CC */	b lbl_807CC220
lbl_807CC158:
/* 807CC158  7F C3 F3 78 */	mr r3, r30
/* 807CC15C  4B FF B6 E1 */	bl executeClearAttack__8daE_VA_cFv
/* 807CC160  48 00 00 C0 */	b lbl_807CC220
lbl_807CC164:
/* 807CC164  7F C3 F3 78 */	mr r3, r30
/* 807CC168  4B FF B9 25 */	bl executeTransWait__8daE_VA_cFv
/* 807CC16C  48 00 00 B4 */	b lbl_807CC220
lbl_807CC170:
/* 807CC170  7F C3 F3 78 */	mr r3, r30
/* 807CC174  4B FF BB 01 */	bl executeTransChase__8daE_VA_cFv
/* 807CC178  48 00 00 A8 */	b lbl_807CC220
lbl_807CC17C:
/* 807CC17C  7F C3 F3 78 */	mr r3, r30
/* 807CC180  4B FF BD 55 */	bl executeTransAttack__8daE_VA_cFv
/* 807CC184  48 00 00 9C */	b lbl_807CC220
lbl_807CC188:
/* 807CC188  7F C3 F3 78 */	mr r3, r30
/* 807CC18C  4B FF C2 11 */	bl executeTransBiteDamage__8daE_VA_cFv
/* 807CC190  48 00 00 90 */	b lbl_807CC220
lbl_807CC194:
/* 807CC194  7F C3 F3 78 */	mr r3, r30
/* 807CC198  4B FF C6 C9 */	bl executeTransDamage__8daE_VA_cFv
/* 807CC19C  48 00 00 84 */	b lbl_807CC220
lbl_807CC1A0:
/* 807CC1A0  7F C3 F3 78 */	mr r3, r30
/* 807CC1A4  4B FF C8 E1 */	bl executeTransThrough__8daE_VA_cFv
/* 807CC1A8  48 00 00 78 */	b lbl_807CC220
lbl_807CC1AC:
/* 807CC1AC  7F C3 F3 78 */	mr r3, r30
/* 807CC1B0  4B FF C9 C9 */	bl executeOpaciWait__8daE_VA_cFv
/* 807CC1B4  48 00 00 6C */	b lbl_807CC220
lbl_807CC1B8:
/* 807CC1B8  7F C3 F3 78 */	mr r3, r30
/* 807CC1BC  4B FF CF A1 */	bl executeOpaciFly__8daE_VA_cFv
/* 807CC1C0  48 00 00 60 */	b lbl_807CC220
lbl_807CC1C4:
/* 807CC1C4  7F C3 F3 78 */	mr r3, r30
/* 807CC1C8  4B FF E5 75 */	bl executeOpaciDown__8daE_VA_cFv
/* 807CC1CC  48 00 00 54 */	b lbl_807CC220
lbl_807CC1D0:
/* 807CC1D0  7F C3 F3 78 */	mr r3, r30
/* 807CC1D4  4B FF E8 AD */	bl executeOpaciDownDamage__8daE_VA_cFv
/* 807CC1D8  48 00 00 48 */	b lbl_807CC220
lbl_807CC1DC:
/* 807CC1DC  7F C3 F3 78 */	mr r3, r30
/* 807CC1E0  4B FF DA AD */	bl executeOpaciChase__8daE_VA_cFv
/* 807CC1E4  48 00 00 3C */	b lbl_807CC220
lbl_807CC1E8:
/* 807CC1E8  7F C3 F3 78 */	mr r3, r30
/* 807CC1EC  4B FF E1 79 */	bl executeOpaciAttack__8daE_VA_cFv
/* 807CC1F0  48 00 00 30 */	b lbl_807CC220
lbl_807CC1F4:
/* 807CC1F4  7F C3 F3 78 */	mr r3, r30
/* 807CC1F8  4B FF D8 49 */	bl executeOpaciDamage__8daE_VA_cFv
/* 807CC1FC  48 00 00 24 */	b lbl_807CC220
lbl_807CC200:
/* 807CC200  7F C3 F3 78 */	mr r3, r30
/* 807CC204  4B FF EA DD */	bl executeOpaciFlip__8daE_VA_cFv
/* 807CC208  48 00 00 18 */	b lbl_807CC220
lbl_807CC20C:
/* 807CC20C  7F C3 F3 78 */	mr r3, r30
/* 807CC210  4B FF EB A9 */	bl executeOpaciFadeAway__8daE_VA_cFv
/* 807CC214  48 00 00 0C */	b lbl_807CC220
lbl_807CC218:
/* 807CC218  7F C3 F3 78 */	mr r3, r30
/* 807CC21C  4B FF EF A9 */	bl executeOpaciDeath__8daE_VA_cFv
lbl_807CC220:
/* 807CC220  2C 1D 00 00 */	cmpwi r29, 0
/* 807CC224  41 82 00 1C */	beq lbl_807CC240
/* 807CC228  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CC22C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CC230  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807CC234  80 03 05 88 */	lwz r0, 0x588(r3)
/* 807CC238  64 00 02 00 */	oris r0, r0, 0x200
/* 807CC23C  90 03 05 88 */	stw r0, 0x588(r3)
lbl_807CC240:
/* 807CC240  88 1E 13 8E */	lbz r0, 0x138e(r30)
/* 807CC244  28 00 00 00 */	cmplwi r0, 0
/* 807CC248  40 82 00 24 */	bne lbl_807CC26C
/* 807CC24C  4B 99 31 D9 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 807CC250  2C 03 00 00 */	cmpwi r3, 0
/* 807CC254  41 82 00 34 */	beq lbl_807CC288
/* 807CC258  38 00 00 14 */	li r0, 0x14
/* 807CC25C  90 1E 13 58 */	stw r0, 0x1358(r30)
/* 807CC260  38 00 00 01 */	li r0, 1
/* 807CC264  98 1E 13 8E */	stb r0, 0x138e(r30)
/* 807CC268  48 00 00 20 */	b lbl_807CC288
lbl_807CC26C:
/* 807CC26C  4B 99 31 B9 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 807CC270  2C 03 00 00 */	cmpwi r3, 0
/* 807CC274  40 82 00 14 */	bne lbl_807CC288
/* 807CC278  38 00 00 14 */	li r0, 0x14
/* 807CC27C  90 1E 13 58 */	stw r0, 0x1358(r30)
/* 807CC280  38 00 00 00 */	li r0, 0
/* 807CC284  98 1E 13 8E */	stb r0, 0x138e(r30)
lbl_807CC288:
/* 807CC288  7F C3 F3 78 */	mr r3, r30
/* 807CC28C  38 9E 1B 00 */	addi r4, r30, 0x1b00
/* 807CC290  4B 84 E4 3D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 807CC294  38 7E 14 F8 */	addi r3, r30, 0x14f8
/* 807CC298  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CC29C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CC2A0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807CC2A4  4B 8A A8 09 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 807CC2A8  80 1E 13 74 */	lwz r0, 0x1374(r30)
/* 807CC2AC  2C 00 00 03 */	cmpwi r0, 3
/* 807CC2B0  41 82 00 D4 */	beq lbl_807CC384
/* 807CC2B4  40 80 00 1C */	bge lbl_807CC2D0
/* 807CC2B8  2C 00 00 01 */	cmpwi r0, 1
/* 807CC2BC  41 82 00 68 */	beq lbl_807CC324
/* 807CC2C0  40 80 00 88 */	bge lbl_807CC348
/* 807CC2C4  2C 00 00 00 */	cmpwi r0, 0
/* 807CC2C8  40 80 00 18 */	bge lbl_807CC2E0
/* 807CC2CC  48 00 01 1C */	b lbl_807CC3E8
lbl_807CC2D0:
/* 807CC2D0  2C 00 00 05 */	cmpwi r0, 5
/* 807CC2D4  41 82 00 E4 */	beq lbl_807CC3B8
/* 807CC2D8  40 80 01 10 */	bge lbl_807CC3E8
/* 807CC2DC  48 00 00 CC */	b lbl_807CC3A8
lbl_807CC2E0:
/* 807CC2E0  4B 99 31 45 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 807CC2E4  2C 03 00 00 */	cmpwi r3, 0
/* 807CC2E8  41 82 00 18 */	beq lbl_807CC300
/* 807CC2EC  38 7E 13 14 */	addi r3, r30, 0x1314
/* 807CC2F0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807CC2F4  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 807CC2F8  4B AA 44 49 */	bl cLib_chaseF__FPfff
/* 807CC2FC  48 00 00 14 */	b lbl_807CC310
lbl_807CC300:
/* 807CC300  38 7E 13 14 */	addi r3, r30, 0x1314
/* 807CC304  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CC308  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 807CC30C  4B AA 44 35 */	bl cLib_chaseF__FPfff
lbl_807CC310:
/* 807CC310  38 60 00 02 */	li r3, 2
/* 807CC314  38 80 00 00 */	li r4, 0
/* 807CC318  C0 3E 13 14 */	lfs f1, 0x1314(r30)
/* 807CC31C  4B 9D C4 F1 */	bl dKy_custom_colset__FUcUcf
/* 807CC320  48 00 00 C8 */	b lbl_807CC3E8
lbl_807CC324:
/* 807CC324  38 7E 13 14 */	addi r3, r30, 0x1314
/* 807CC328  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807CC32C  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 807CC330  4B AA 44 11 */	bl cLib_chaseF__FPfff
/* 807CC334  38 60 00 00 */	li r3, 0
/* 807CC338  38 80 00 01 */	li r4, 1
/* 807CC33C  C0 3E 13 14 */	lfs f1, 0x1314(r30)
/* 807CC340  4B 9D C4 CD */	bl dKy_custom_colset__FUcUcf
/* 807CC344  48 00 00 A4 */	b lbl_807CC3E8
lbl_807CC348:
/* 807CC348  38 7E 13 14 */	addi r3, r30, 0x1314
/* 807CC34C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CC350  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 807CC354  4B AA 43 ED */	bl cLib_chaseF__FPfff
/* 807CC358  38 60 00 02 */	li r3, 2
/* 807CC35C  38 80 00 01 */	li r4, 1
/* 807CC360  C0 3E 13 14 */	lfs f1, 0x1314(r30)
/* 807CC364  4B 9D C4 A9 */	bl dKy_custom_colset__FUcUcf
/* 807CC368  C0 3E 13 14 */	lfs f1, 0x1314(r30)
/* 807CC36C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CC370  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807CC374  40 82 00 74 */	bne lbl_807CC3E8
/* 807CC378  38 00 00 00 */	li r0, 0
/* 807CC37C  90 1E 13 74 */	stw r0, 0x1374(r30)
/* 807CC380  48 00 00 68 */	b lbl_807CC3E8
lbl_807CC384:
/* 807CC384  38 7E 13 14 */	addi r3, r30, 0x1314
/* 807CC388  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807CC38C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 807CC390  4B AA 43 B1 */	bl cLib_chaseF__FPfff
/* 807CC394  38 60 00 01 */	li r3, 1
/* 807CC398  38 80 00 04 */	li r4, 4
/* 807CC39C  C0 3E 13 14 */	lfs f1, 0x1314(r30)
/* 807CC3A0  4B 9D C4 6D */	bl dKy_custom_colset__FUcUcf
/* 807CC3A4  48 00 00 44 */	b lbl_807CC3E8
lbl_807CC3A8:
/* 807CC3A8  38 7E 13 14 */	addi r3, r30, 0x1314
/* 807CC3AC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807CC3B0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 807CC3B4  4B AA 43 8D */	bl cLib_chaseF__FPfff
lbl_807CC3B8:
/* 807CC3B8  38 60 00 03 */	li r3, 3
/* 807CC3BC  38 80 00 02 */	li r4, 2
/* 807CC3C0  C0 3E 13 14 */	lfs f1, 0x1314(r30)
/* 807CC3C4  4B 9D C4 49 */	bl dKy_custom_colset__FUcUcf
/* 807CC3C8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807CC3CC  C0 1E 13 14 */	lfs f0, 0x1314(r30)
/* 807CC3D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807CC3D4  40 82 00 14 */	bne lbl_807CC3E8
/* 807CC3D8  38 00 00 00 */	li r0, 0
/* 807CC3DC  90 1E 13 74 */	stw r0, 0x1374(r30)
/* 807CC3E0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CC3E4  D0 1E 13 14 */	stfs f0, 0x1314(r30)
lbl_807CC3E8:
/* 807CC3E8  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 807CC3EC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807CC3F0  7C 03 00 50 */	subf r0, r3, r0
/* 807CC3F4  C0 3F 01 E0 */	lfs f1, 0x1e0(r31)
/* 807CC3F8  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 807CC3FC  EC 21 00 32 */	fmuls f1, f1, f0
/* 807CC400  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807CC404  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 807CC408  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 807CC40C  7C 04 04 2E */	lfsx f0, r4, r0
/* 807CC410  EC 01 00 32 */	fmuls f0, f1, f0
/* 807CC414  FC 00 00 1E */	fctiwz f0, f0
/* 807CC418  D8 01 00 08 */	stfd f0, 8(r1)
/* 807CC41C  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 807CC420  38 7E 13 04 */	addi r3, r30, 0x1304
/* 807CC424  7C 84 02 14 */	add r4, r4, r0
/* 807CC428  C0 04 00 04 */	lfs f0, 4(r4)
/* 807CC42C  EC 01 00 32 */	fmuls f0, f1, f0
/* 807CC430  FC 00 00 1E */	fctiwz f0, f0
/* 807CC434  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807CC438  80 81 00 14 */	lwz r4, 0x14(r1)
/* 807CC43C  38 A0 00 08 */	li r5, 8
/* 807CC440  38 C0 04 00 */	li r6, 0x400
/* 807CC444  38 E0 00 40 */	li r7, 0x40
/* 807CC448  4B AA 40 F9 */	bl cLib_addCalcAngleS__FPsssss
/* 807CC44C  38 7E 13 08 */	addi r3, r30, 0x1308
/* 807CC450  7F A4 EB 78 */	mr r4, r29
/* 807CC454  38 A0 00 08 */	li r5, 8
/* 807CC458  38 C0 04 00 */	li r6, 0x400
/* 807CC45C  38 E0 00 40 */	li r7, 0x40
/* 807CC460  4B AA 40 E1 */	bl cLib_addCalcAngleS__FPsssss
/* 807CC464  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807CC468  7C 03 07 74 */	extsb r3, r0
/* 807CC46C  4B 86 0C 01 */	bl dComIfGp_getReverb__Fi
/* 807CC470  7C 65 1B 78 */	mr r5, r3
/* 807CC474  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807CC478  38 80 00 00 */	li r4, 0
/* 807CC47C  4B 84 4C 35 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 807CC480  88 1E 13 8A */	lbz r0, 0x138a(r30)
/* 807CC484  28 00 00 00 */	cmplwi r0, 0
/* 807CC488  41 82 00 20 */	beq lbl_807CC4A8
/* 807CC48C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807CC490  7C 03 07 74 */	extsb r3, r0
/* 807CC494  4B 86 0B D9 */	bl dComIfGp_getReverb__Fi
/* 807CC498  7C 65 1B 78 */	mr r5, r3
/* 807CC49C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807CC4A0  38 80 00 00 */	li r4, 0
/* 807CC4A4  4B 84 4C 0D */	bl play__16mDoExt_McaMorfSOFUlSc
lbl_807CC4A8:
/* 807CC4A8  80 7E 12 4C */	lwz r3, 0x124c(r30)
/* 807CC4AC  4B 84 0F 7D */	bl play__14mDoExt_baseAnmFv
/* 807CC4B0  80 7E 12 50 */	lwz r3, 0x1250(r30)
/* 807CC4B4  4B 84 0F 75 */	bl play__14mDoExt_baseAnmFv
/* 807CC4B8  39 61 00 30 */	addi r11, r1, 0x30
/* 807CC4BC  4B B9 5D 6D */	bl _restgpr_29
/* 807CC4C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807CC4C4  7C 08 03 A6 */	mtlr r0
/* 807CC4C8  38 21 00 30 */	addi r1, r1, 0x30
/* 807CC4CC  4E 80 00 20 */	blr 
