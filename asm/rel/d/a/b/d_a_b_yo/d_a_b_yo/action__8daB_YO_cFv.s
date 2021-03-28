lbl_806374BC:
/* 806374BC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806374C0  7C 08 02 A6 */	mflr r0
/* 806374C4  90 01 00 44 */	stw r0, 0x44(r1)
/* 806374C8  39 61 00 40 */	addi r11, r1, 0x40
/* 806374CC  4B D2 AD 10 */	b _savegpr_29
/* 806374D0  7C 7E 1B 78 */	mr r30, r3
/* 806374D4  3C 80 80 64 */	lis r4, lit_3788@ha
/* 806374D8  3B E4 97 F4 */	addi r31, r4, lit_3788@l
/* 806374DC  4B FF 89 3D */	bl damage_check__8daB_YO_cFv
/* 806374E0  80 1E 0F 70 */	lwz r0, 0xf70(r30)
/* 806374E4  2C 00 00 00 */	cmpwi r0, 0
/* 806374E8  41 82 00 28 */	beq lbl_80637510
/* 806374EC  2C 00 00 09 */	cmpwi r0, 9
/* 806374F0  40 82 00 10 */	bne lbl_80637500
/* 806374F4  C0 1F 02 20 */	lfs f0, 0x220(r31)
/* 806374F8  D0 1E 05 34 */	stfs f0, 0x534(r30)
/* 806374FC  48 00 00 14 */	b lbl_80637510
lbl_80637500:
/* 80637500  3C 60 80 64 */	lis r3, l_HIO@ha
/* 80637504  38 63 9F 84 */	addi r3, r3, l_HIO@l
/* 80637508  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8063750C  D0 1E 05 34 */	stfs f0, 0x534(r30)
lbl_80637510:
/* 80637510  88 1E 0F B5 */	lbz r0, 0xfb5(r30)
/* 80637514  28 00 00 00 */	cmplwi r0, 0
/* 80637518  40 82 00 18 */	bne lbl_80637530
/* 8063751C  80 1E 0F 70 */	lwz r0, 0xf70(r30)
/* 80637520  2C 00 00 09 */	cmpwi r0, 9
/* 80637524  41 82 00 0C */	beq lbl_80637530
/* 80637528  7F C3 F3 78 */	mr r3, r30
/* 8063752C  4B FF 95 71 */	bl setChillEffect__8daB_YO_cFv
lbl_80637530:
/* 80637530  88 1E 0F B7 */	lbz r0, 0xfb7(r30)
/* 80637534  28 00 00 01 */	cmplwi r0, 1
/* 80637538  40 82 00 70 */	bne lbl_806375A8
/* 8063753C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80637540  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80637544  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80637548  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8063754C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80637550  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80637554  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80637558  38 00 00 FF */	li r0, 0xff
/* 8063755C  90 01 00 08 */	stw r0, 8(r1)
/* 80637560  38 80 00 00 */	li r4, 0
/* 80637564  90 81 00 0C */	stw r4, 0xc(r1)
/* 80637568  38 00 FF FF */	li r0, -1
/* 8063756C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80637570  90 81 00 14 */	stw r4, 0x14(r1)
/* 80637574  90 81 00 18 */	stw r4, 0x18(r1)
/* 80637578  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8063757C  80 9E 1B 7C */	lwz r4, 0x1b7c(r30)
/* 80637580  38 A0 00 00 */	li r5, 0
/* 80637584  3C C0 00 01 */	lis r6, 0x0001 /* 0x000087B0@ha */
/* 80637588  38 C6 87 B0 */	addi r6, r6, 0x87B0 /* 0x000087B0@l */
/* 8063758C  38 E1 00 20 */	addi r7, r1, 0x20
/* 80637590  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80637594  39 20 00 00 */	li r9, 0
/* 80637598  39 40 00 00 */	li r10, 0
/* 8063759C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806375A0  4B A1 5F 2C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806375A4  90 7E 1B 7C */	stw r3, 0x1b7c(r30)
lbl_806375A8:
/* 806375A8  38 00 00 00 */	li r0, 0
/* 806375AC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806375B0  80 1E 0F A0 */	lwz r0, 0xfa0(r30)
/* 806375B4  2C 00 00 00 */	cmpwi r0, 0
/* 806375B8  41 82 00 0C */	beq lbl_806375C4
/* 806375BC  38 00 00 04 */	li r0, 4
/* 806375C0  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_806375C4:
/* 806375C4  3B A0 00 01 */	li r29, 1
/* 806375C8  80 1E 0F 70 */	lwz r0, 0xf70(r30)
/* 806375CC  28 00 00 09 */	cmplwi r0, 9
/* 806375D0  41 81 00 94 */	bgt lbl_80637664
/* 806375D4  3C 60 80 64 */	lis r3, lit_7266@ha
/* 806375D8  38 63 9D D0 */	addi r3, r3, lit_7266@l
/* 806375DC  54 00 10 3A */	slwi r0, r0, 2
/* 806375E0  7C 03 00 2E */	lwzx r0, r3, r0
/* 806375E4  7C 09 03 A6 */	mtctr r0
/* 806375E8  4E 80 04 20 */	bctr 
lbl_806375EC:
/* 806375EC  7F C3 F3 78 */	mr r3, r30
/* 806375F0  4B FF 99 39 */	bl executeOpening__8daB_YO_cFv
/* 806375F4  3B A0 00 00 */	li r29, 0
/* 806375F8  48 00 00 6C */	b lbl_80637664
lbl_806375FC:
/* 806375FC  7F C3 F3 78 */	mr r3, r30
/* 80637600  4B FF B3 CD */	bl executeChase__8daB_YO_cFv
/* 80637604  48 00 00 60 */	b lbl_80637664
lbl_80637608:
/* 80637608  7F C3 F3 78 */	mr r3, r30
/* 8063760C  4B FF BB C1 */	bl executeSeriousDemo__8daB_YO_cFv
/* 80637610  48 00 00 54 */	b lbl_80637664
lbl_80637614:
/* 80637614  7F C3 F3 78 */	mr r3, r30
/* 80637618  4B FF CA 29 */	bl executeJump__8daB_YO_cFv
/* 8063761C  48 00 00 48 */	b lbl_80637664
lbl_80637620:
/* 80637620  7F C3 F3 78 */	mr r3, r30
/* 80637624  4B FF CF 25 */	bl executeAttackIce__8daB_YO_cFv
/* 80637628  48 00 00 3C */	b lbl_80637664
lbl_8063762C:
/* 8063762C  7F C3 F3 78 */	mr r3, r30
/* 80637630  4B FF D1 3D */	bl executeAttackYose__8daB_YO_cFv
/* 80637634  48 00 00 30 */	b lbl_80637664
lbl_80637638:
/* 80637638  7F C3 F3 78 */	mr r3, r30
/* 8063763C  4B FF D7 C9 */	bl executeAttackBody__8daB_YO_cFv
/* 80637640  48 00 00 24 */	b lbl_80637664
lbl_80637644:
/* 80637644  7F C3 F3 78 */	mr r3, r30
/* 80637648  4B FF DC 81 */	bl executeDemoRevival__8daB_YO_cFv
/* 8063764C  48 00 00 18 */	b lbl_80637664
lbl_80637650:
/* 80637650  7F C3 F3 78 */	mr r3, r30
/* 80637654  4B FF E1 45 */	bl executeDamage__8daB_YO_cFv
/* 80637658  48 00 00 0C */	b lbl_80637664
lbl_8063765C:
/* 8063765C  7F C3 F3 78 */	mr r3, r30
/* 80637660  4B FF E4 5D */	bl executeDeath__8daB_YO_cFv
lbl_80637664:
/* 80637664  2C 1D 00 00 */	cmpwi r29, 0
/* 80637668  41 82 00 1C */	beq lbl_80637684
/* 8063766C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80637670  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80637674  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80637678  80 03 05 88 */	lwz r0, 0x588(r3)
/* 8063767C  64 00 02 00 */	oris r0, r0, 0x200
/* 80637680  90 03 05 88 */	stw r0, 0x588(r3)
lbl_80637684:
/* 80637684  7F C3 F3 78 */	mr r3, r30
/* 80637688  38 9E 0F 34 */	addi r4, r30, 0xf34
/* 8063768C  4B FF F8 11 */	bl reviseIceCenterPos__8daB_YO_cFP4cXyz
/* 80637690  88 1E 0F A8 */	lbz r0, 0xfa8(r30)
/* 80637694  28 00 00 05 */	cmplwi r0, 5
/* 80637698  41 80 00 68 */	blt lbl_80637700
/* 8063769C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806376A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806376A4  3B A3 09 78 */	addi r29, r3, 0x978
/* 806376A8  7F A3 EB 78 */	mr r3, r29
/* 806376AC  38 80 00 14 */	li r4, 0x14
/* 806376B0  4B 9F D5 38 */	b isSwitch__12dSv_danBit_cCFi
/* 806376B4  2C 03 00 00 */	cmpwi r3, 0
/* 806376B8  40 82 00 18 */	bne lbl_806376D0
/* 806376BC  7F A3 EB 78 */	mr r3, r29
/* 806376C0  38 80 00 16 */	li r4, 0x16
/* 806376C4  4B 9F D5 24 */	b isSwitch__12dSv_danBit_cCFi
/* 806376C8  2C 03 00 00 */	cmpwi r3, 0
/* 806376CC  41 82 00 14 */	beq lbl_806376E0
lbl_806376D0:
/* 806376D0  7F A3 EB 78 */	mr r3, r29
/* 806376D4  38 80 00 15 */	li r4, 0x15
/* 806376D8  4B 9F D4 E8 */	b offSwitch__12dSv_danBit_cFi
/* 806376DC  48 00 00 24 */	b lbl_80637700
lbl_806376E0:
/* 806376E0  7F A3 EB 78 */	mr r3, r29
/* 806376E4  38 80 00 15 */	li r4, 0x15
/* 806376E8  4B 9F D5 00 */	b isSwitch__12dSv_danBit_cCFi
/* 806376EC  2C 03 00 00 */	cmpwi r3, 0
/* 806376F0  41 82 00 10 */	beq lbl_80637700
/* 806376F4  7F A3 EB 78 */	mr r3, r29
/* 806376F8  38 80 00 15 */	li r4, 0x15
/* 806376FC  4B 9F D4 9C */	b onSwitch__12dSv_danBit_cFi
lbl_80637700:
/* 80637700  88 1E 0F B7 */	lbz r0, 0xfb7(r30)
/* 80637704  28 00 00 00 */	cmplwi r0, 0
/* 80637708  40 82 00 38 */	bne lbl_80637740
/* 8063770C  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 80637710  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80637714  C0 5F 02 24 */	lfs f2, 0x224(r31)
/* 80637718  4B C3 90 28 */	b cLib_chaseF__FPfff
/* 8063771C  C0 3E 0F B8 */	lfs f1, 0xfb8(r30)
/* 80637720  C0 1F 02 28 */	lfs f0, 0x228(r31)
/* 80637724  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80637728  40 81 00 48 */	ble lbl_80637770
/* 8063772C  38 7E 0F BC */	addi r3, r30, 0xfbc
/* 80637730  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80637734  C0 5F 02 2C */	lfs f2, 0x22c(r31)
/* 80637738  4B C3 90 08 */	b cLib_chaseF__FPfff
/* 8063773C  48 00 00 34 */	b lbl_80637770
lbl_80637740:
/* 80637740  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 80637744  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80637748  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8063774C  4B C3 8F F4 */	b cLib_chaseF__FPfff
/* 80637750  C0 3E 0F B8 */	lfs f1, 0xfb8(r30)
/* 80637754  C0 1F 02 28 */	lfs f0, 0x228(r31)
/* 80637758  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063775C  40 80 00 14 */	bge lbl_80637770
/* 80637760  38 7E 0F BC */	addi r3, r30, 0xfbc
/* 80637764  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80637768  C0 5F 01 60 */	lfs f2, 0x160(r31)
/* 8063776C  4B C3 8F D4 */	b cLib_chaseF__FPfff
lbl_80637770:
/* 80637770  88 1E 0F C0 */	lbz r0, 0xfc0(r30)
/* 80637774  28 00 00 07 */	cmplwi r0, 7
/* 80637778  41 81 01 30 */	bgt lbl_806378A8
/* 8063777C  3C 60 80 64 */	lis r3, lit_7267@ha
/* 80637780  38 63 9D B0 */	addi r3, r3, lit_7267@l
/* 80637784  54 00 10 3A */	slwi r0, r0, 2
/* 80637788  7C 03 00 2E */	lwzx r0, r3, r0
/* 8063778C  7C 09 03 A6 */	mtctr r0
/* 80637790  4E 80 04 20 */	bctr 
lbl_80637794:
/* 80637794  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80637798  D0 1E 0F C4 */	stfs f0, 0xfc4(r30)
/* 8063779C  38 60 00 00 */	li r3, 0
/* 806377A0  38 80 00 00 */	li r4, 0
/* 806377A4  C0 3E 0F C4 */	lfs f1, 0xfc4(r30)
/* 806377A8  4B B7 10 64 */	b dKy_custom_colset__FUcUcf
/* 806377AC  48 00 00 FC */	b lbl_806378A8
lbl_806377B0:
/* 806377B0  38 7E 0F C4 */	addi r3, r30, 0xfc4
/* 806377B4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806377B8  C0 5F 02 30 */	lfs f2, 0x230(r31)
/* 806377BC  4B C3 8F 84 */	b cLib_chaseF__FPfff
/* 806377C0  38 60 00 00 */	li r3, 0
/* 806377C4  38 80 00 04 */	li r4, 4
/* 806377C8  C0 3E 0F C4 */	lfs f1, 0xfc4(r30)
/* 806377CC  4B B7 10 40 */	b dKy_custom_colset__FUcUcf
/* 806377D0  48 00 00 D8 */	b lbl_806378A8
lbl_806377D4:
/* 806377D4  38 7E 0F C4 */	addi r3, r30, 0xfc4
/* 806377D8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806377DC  FC 40 08 90 */	fmr f2, f1
/* 806377E0  4B C3 8F 60 */	b cLib_chaseF__FPfff
/* 806377E4  38 60 00 04 */	li r3, 4
/* 806377E8  38 80 00 05 */	li r4, 5
/* 806377EC  C0 3E 0F C4 */	lfs f1, 0xfc4(r30)
/* 806377F0  4B B7 10 1C */	b dKy_custom_colset__FUcUcf
/* 806377F4  48 00 00 B4 */	b lbl_806378A8
lbl_806377F8:
/* 806377F8  38 7E 0F C4 */	addi r3, r30, 0xfc4
/* 806377FC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80637800  FC 40 08 90 */	fmr f2, f1
/* 80637804  4B C3 8F 3C */	b cLib_chaseF__FPfff
/* 80637808  38 60 00 05 */	li r3, 5
/* 8063780C  38 80 00 01 */	li r4, 1
/* 80637810  C0 3E 0F C4 */	lfs f1, 0xfc4(r30)
/* 80637814  4B B7 0F F8 */	b dKy_custom_colset__FUcUcf
/* 80637818  48 00 00 90 */	b lbl_806378A8
lbl_8063781C:
/* 8063781C  38 7E 0F C4 */	addi r3, r30, 0xfc4
/* 80637820  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80637824  C0 5F 02 34 */	lfs f2, 0x234(r31)
/* 80637828  4B C3 8F 18 */	b cLib_chaseF__FPfff
/* 8063782C  38 60 00 01 */	li r3, 1
/* 80637830  38 80 00 02 */	li r4, 2
/* 80637834  C0 3E 0F C4 */	lfs f1, 0xfc4(r30)
/* 80637838  4B B7 0F D4 */	b dKy_custom_colset__FUcUcf
/* 8063783C  48 00 00 6C */	b lbl_806378A8
lbl_80637840:
/* 80637840  38 7E 0F C4 */	addi r3, r30, 0xfc4
/* 80637844  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80637848  C0 5F 02 34 */	lfs f2, 0x234(r31)
/* 8063784C  4B C3 8E F4 */	b cLib_chaseF__FPfff
/* 80637850  38 60 00 02 */	li r3, 2
/* 80637854  38 80 00 01 */	li r4, 1
/* 80637858  C0 3E 0F C4 */	lfs f1, 0xfc4(r30)
/* 8063785C  4B B7 0F B0 */	b dKy_custom_colset__FUcUcf
/* 80637860  48 00 00 48 */	b lbl_806378A8
lbl_80637864:
/* 80637864  38 7E 0F C4 */	addi r3, r30, 0xfc4
/* 80637868  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8063786C  C0 5F 02 34 */	lfs f2, 0x234(r31)
/* 80637870  4B C3 8E D0 */	b cLib_chaseF__FPfff
/* 80637874  38 60 00 01 */	li r3, 1
/* 80637878  38 80 00 03 */	li r4, 3
/* 8063787C  C0 3E 0F C4 */	lfs f1, 0xfc4(r30)
/* 80637880  4B B7 0F 8C */	b dKy_custom_colset__FUcUcf
/* 80637884  48 00 00 24 */	b lbl_806378A8
lbl_80637888:
/* 80637888  38 7E 0F C4 */	addi r3, r30, 0xfc4
/* 8063788C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80637890  C0 5F 01 18 */	lfs f2, 0x118(r31)
/* 80637894  4B C3 8E AC */	b cLib_chaseF__FPfff
/* 80637898  38 60 00 03 */	li r3, 3
/* 8063789C  38 80 00 00 */	li r4, 0
/* 806378A0  C0 3E 0F C4 */	lfs f1, 0xfc4(r30)
/* 806378A4  4B B7 0F 68 */	b dKy_custom_colset__FUcUcf
lbl_806378A8:
/* 806378A8  7F C3 F3 78 */	mr r3, r30
/* 806378AC  4B FF F7 9D */	bl calcPlayerBufPos__8daB_YO_cFv
/* 806378B0  7F C3 F3 78 */	mr r3, r30
/* 806378B4  38 80 00 00 */	li r4, 0
/* 806378B8  4B 9E 2E 14 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806378BC  88 1E 0F B5 */	lbz r0, 0xfb5(r30)
/* 806378C0  28 00 00 03 */	cmplwi r0, 3
/* 806378C4  41 82 00 18 */	beq lbl_806378DC
/* 806378C8  38 7E 10 5C */	addi r3, r30, 0x105c
/* 806378CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806378D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806378D4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806378D8  4B A3 F1 D4 */	b CrrPos__9dBgS_AcchFR4dBgS
lbl_806378DC:
/* 806378DC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806378E0  7C 03 07 74 */	extsb r3, r0
/* 806378E4  4B 9F 57 88 */	b dComIfGp_getReverb__Fi
/* 806378E8  7C 65 1B 78 */	mr r5, r3
/* 806378EC  80 7E 05 F4 */	lwz r3, 0x5f4(r30)
/* 806378F0  38 80 00 00 */	li r4, 0
/* 806378F4  4B 9D 97 BC */	b play__16mDoExt_McaMorfSOFUlSc
/* 806378F8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806378FC  7C 03 07 74 */	extsb r3, r0
/* 80637900  4B 9F 57 6C */	b dComIfGp_getReverb__Fi
/* 80637904  7C 65 1B 78 */	mr r5, r3
/* 80637908  80 7E 05 F8 */	lwz r3, 0x5f8(r30)
/* 8063790C  38 80 00 00 */	li r4, 0
/* 80637910  4B 9D 97 A0 */	b play__16mDoExt_McaMorfSOFUlSc
/* 80637914  88 1E 0F CD */	lbz r0, 0xfcd(r30)
/* 80637918  28 00 00 00 */	cmplwi r0, 0
/* 8063791C  41 82 00 0C */	beq lbl_80637928
/* 80637920  80 7E 05 D8 */	lwz r3, 0x5d8(r30)
/* 80637924  4B 9D 5B 04 */	b play__14mDoExt_baseAnmFv
lbl_80637928:
/* 80637928  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8063792C  4B 9D 5A FC */	b play__14mDoExt_baseAnmFv
/* 80637930  88 1E 0F CC */	lbz r0, 0xfcc(r30)
/* 80637934  28 00 00 00 */	cmplwi r0, 0
/* 80637938  41 82 00 0C */	beq lbl_80637944
/* 8063793C  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 80637940  4B 9D 5A E8 */	b play__14mDoExt_baseAnmFv
lbl_80637944:
/* 80637944  88 1E 0F D1 */	lbz r0, 0xfd1(r30)
/* 80637948  28 00 00 00 */	cmplwi r0, 0
/* 8063794C  41 82 00 0C */	beq lbl_80637958
/* 80637950  80 7E 05 E4 */	lwz r3, 0x5e4(r30)
/* 80637954  4B 9D 5A D4 */	b play__14mDoExt_baseAnmFv
lbl_80637958:
/* 80637958  80 7E 10 14 */	lwz r3, 0x1014(r30)
/* 8063795C  28 03 00 00 */	cmplwi r3, 0
/* 80637960  41 82 00 08 */	beq lbl_80637968
/* 80637964  4B A4 40 5C */	b Move__4dBgWFv
lbl_80637968:
/* 80637968  80 7E 10 18 */	lwz r3, 0x1018(r30)
/* 8063796C  28 03 00 00 */	cmplwi r3, 0
/* 80637970  41 82 00 08 */	beq lbl_80637978
/* 80637974  4B A4 40 4C */	b Move__4dBgWFv
lbl_80637978:
/* 80637978  39 61 00 40 */	addi r11, r1, 0x40
/* 8063797C  4B D2 A8 AC */	b _restgpr_29
/* 80637980  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80637984  7C 08 03 A6 */	mtlr r0
/* 80637988  38 21 00 40 */	addi r1, r1, 0x40
/* 8063798C  4E 80 00 20 */	blr 
