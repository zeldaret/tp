lbl_806FCC34:
/* 806FCC34  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 806FCC38  7C 08 02 A6 */	mflr r0
/* 806FCC3C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 806FCC40  39 61 00 C0 */	addi r11, r1, 0xc0
/* 806FCC44  4B C6 55 98 */	b _savegpr_29
/* 806FCC48  7C 7E 1B 78 */	mr r30, r3
/* 806FCC4C  3C 60 80 70 */	lis r3, lit_3792@ha
/* 806FCC50  3B E3 F5 E8 */	addi r31, r3, lit_3792@l
/* 806FCC54  38 61 00 38 */	addi r3, r1, 0x38
/* 806FCC58  4B 97 B0 10 */	b __ct__11dBgS_LinChkFv
/* 806FCC5C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806FCC60  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806FCC64  80 63 00 00 */	lwz r3, 0(r3)
/* 806FCC68  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806FCC6C  4B 90 F7 70 */	b mDoMtx_YrotS__FPA4_fs
/* 806FCC70  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FCC74  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806FCC78  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806FCC7C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806FCC80  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 806FCC84  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806FCC88  38 61 00 2C */	addi r3, r1, 0x2c
/* 806FCC8C  38 81 00 20 */	addi r4, r1, 0x20
/* 806FCC90  4B B7 42 5C */	b MtxPosition__FP4cXyzP4cXyz
/* 806FCC94  38 61 00 14 */	addi r3, r1, 0x14
/* 806FCC98  38 81 00 20 */	addi r4, r1, 0x20
/* 806FCC9C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806FCCA0  4B B6 9E 44 */	b __pl__4cXyzCFRC3Vec
/* 806FCCA4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806FCCA8  D0 1E 07 4C */	stfs f0, 0x74c(r30)
/* 806FCCAC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806FCCB0  D0 1E 07 50 */	stfs f0, 0x750(r30)
/* 806FCCB4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806FCCB8  D0 1E 07 54 */	stfs f0, 0x754(r30)
/* 806FCCBC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806FCCC0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806FCCC4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806FCCC8  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 806FCCCC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806FCCD0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806FCCD4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806FCCD8  EC 01 00 2A */	fadds f0, f1, f0
/* 806FCCDC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806FCCE0  38 61 00 38 */	addi r3, r1, 0x38
/* 806FCCE4  38 81 00 2C */	addi r4, r1, 0x2c
/* 806FCCE8  38 BE 07 4C */	addi r5, r30, 0x74c
/* 806FCCEC  7F C6 F3 78 */	mr r6, r30
/* 806FCCF0  4B 97 B0 74 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806FCCF4  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 806FCCF8  2C 00 00 02 */	cmpwi r0, 2
/* 806FCCFC  41 82 00 E0 */	beq lbl_806FCDDC
/* 806FCD00  40 80 00 14 */	bge lbl_806FCD14
/* 806FCD04  2C 00 00 00 */	cmpwi r0, 0
/* 806FCD08  41 82 00 18 */	beq lbl_806FCD20
/* 806FCD0C  40 80 00 6C */	bge lbl_806FCD78
/* 806FCD10  48 00 02 14 */	b lbl_806FCF24
lbl_806FCD14:
/* 806FCD14  2C 00 00 04 */	cmpwi r0, 4
/* 806FCD18  40 80 02 0C */	bge lbl_806FCF24
/* 806FCD1C  48 00 01 18 */	b lbl_806FCE34
lbl_806FCD20:
/* 806FCD20  38 00 00 00 */	li r0, 0
/* 806FCD24  98 1E 06 7C */	stb r0, 0x67c(r30)
/* 806FCD28  7F C3 F3 78 */	mr r3, r30
/* 806FCD2C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806FCD30  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806FCD34  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806FCD38  4B 91 DA A8 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FCD3C  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 806FCD40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FCD44  40 81 00 28 */	ble lbl_806FCD6C
/* 806FCD48  7F C3 F3 78 */	mr r3, r30
/* 806FCD4C  38 80 00 1C */	li r4, 0x1c
/* 806FCD50  38 A0 00 02 */	li r5, 2
/* 806FCD54  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806FCD58  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806FCD5C  4B FF DD 0D */	bl setBck__8daE_KK_cFiUcff
/* 806FCD60  38 00 00 01 */	li r0, 1
/* 806FCD64  90 1E 06 64 */	stw r0, 0x664(r30)
/* 806FCD68  48 00 01 BC */	b lbl_806FCF24
lbl_806FCD6C:
/* 806FCD6C  38 00 00 02 */	li r0, 2
/* 806FCD70  90 1E 06 64 */	stw r0, 0x664(r30)
/* 806FCD74  48 00 01 B0 */	b lbl_806FCF24
lbl_806FCD78:
/* 806FCD78  7F C3 F3 78 */	mr r3, r30
/* 806FCD7C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806FCD80  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 806FCD84  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806FCD88  4B 91 DA 58 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FCD8C  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 806FCD90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FCD94  40 81 00 40 */	ble lbl_806FCDD4
/* 806FCD98  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 806FCD9C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806FCDA0  7F C3 F3 78 */	mr r3, r30
/* 806FCDA4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806FCDA8  4B 91 DA 38 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FCDAC  3C 60 80 70 */	lis r3, l_HIO@ha
/* 806FCDB0  38 63 F8 90 */	addi r3, r3, l_HIO@l
/* 806FCDB4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 806FCDB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FCDBC  40 81 01 68 */	ble lbl_806FCF24
/* 806FCDC0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FCDC4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806FCDC8  7F C3 F3 78 */	mr r3, r30
/* 806FCDCC  4B FF E5 21 */	bl nextActionCheck__8daE_KK_cFv
/* 806FCDD0  48 00 01 54 */	b lbl_806FCF24
lbl_806FCDD4:
/* 806FCDD4  38 00 00 02 */	li r0, 2
/* 806FCDD8  90 1E 06 64 */	stw r0, 0x664(r30)
lbl_806FCDDC:
/* 806FCDDC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806FCDE0  4B B6 AB 74 */	b cM_rndF__Ff
/* 806FCDE4  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 806FCDE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FCDEC  40 80 00 20 */	bge lbl_806FCE0C
/* 806FCDF0  7F C3 F3 78 */	mr r3, r30
/* 806FCDF4  38 80 00 05 */	li r4, 5
/* 806FCDF8  38 A0 00 00 */	li r5, 0
/* 806FCDFC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806FCE00  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806FCE04  4B FF DC 65 */	bl setBck__8daE_KK_cFiUcff
/* 806FCE08  48 00 00 1C */	b lbl_806FCE24
lbl_806FCE0C:
/* 806FCE0C  7F C3 F3 78 */	mr r3, r30
/* 806FCE10  38 80 00 06 */	li r4, 6
/* 806FCE14  38 A0 00 00 */	li r5, 0
/* 806FCE18  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806FCE1C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806FCE20  4B FF DC 49 */	bl setBck__8daE_KK_cFiUcff
lbl_806FCE24:
/* 806FCE24  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 806FCE28  38 03 00 01 */	addi r0, r3, 1
/* 806FCE2C  90 1E 06 64 */	stw r0, 0x664(r30)
/* 806FCE30  48 00 00 F4 */	b lbl_806FCF24
lbl_806FCE34:
/* 806FCE34  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FCE38  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806FCE3C  FC 00 00 1E */	fctiwz f0, f0
/* 806FCE40  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 806FCE44  80 01 00 AC */	lwz r0, 0xac(r1)
/* 806FCE48  2C 00 00 18 */	cmpwi r0, 0x18
/* 806FCE4C  40 82 00 4C */	bne lbl_806FCE98
/* 806FCE50  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 806FCE54  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806FCE58  38 00 00 00 */	li r0, 0
/* 806FCE5C  98 1E 06 7E */	stb r0, 0x67e(r30)
/* 806FCE60  80 1E 07 64 */	lwz r0, 0x764(r30)
/* 806FCE64  2C 00 00 06 */	cmpwi r0, 6
/* 806FCE68  40 82 00 30 */	bne lbl_806FCE98
/* 806FCE6C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007037C@ha */
/* 806FCE70  38 03 03 7C */	addi r0, r3, 0x037C /* 0x0007037C@l */
/* 806FCE74  90 01 00 10 */	stw r0, 0x10(r1)
/* 806FCE78  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FCE7C  38 81 00 10 */	addi r4, r1, 0x10
/* 806FCE80  38 A0 00 00 */	li r5, 0
/* 806FCE84  38 C0 FF FF */	li r6, -1
/* 806FCE88  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806FCE8C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806FCE90  7D 89 03 A6 */	mtctr r12
/* 806FCE94  4E 80 04 21 */	bctrl 
lbl_806FCE98:
/* 806FCE98  80 1E 07 64 */	lwz r0, 0x764(r30)
/* 806FCE9C  2C 00 00 05 */	cmpwi r0, 5
/* 806FCEA0  40 82 00 4C */	bne lbl_806FCEEC
/* 806FCEA4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FCEA8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806FCEAC  FC 00 00 1E */	fctiwz f0, f0
/* 806FCEB0  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 806FCEB4  80 01 00 AC */	lwz r0, 0xac(r1)
/* 806FCEB8  2C 00 00 1B */	cmpwi r0, 0x1b
/* 806FCEBC  40 82 00 30 */	bne lbl_806FCEEC
/* 806FCEC0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007037B@ha */
/* 806FCEC4  38 03 03 7B */	addi r0, r3, 0x037B /* 0x0007037B@l */
/* 806FCEC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806FCECC  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FCED0  38 81 00 0C */	addi r4, r1, 0xc
/* 806FCED4  38 A0 00 00 */	li r5, 0
/* 806FCED8  38 C0 FF FF */	li r6, -1
/* 806FCEDC  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806FCEE0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806FCEE4  7D 89 03 A6 */	mtctr r12
/* 806FCEE8  4E 80 04 21 */	bctrl 
lbl_806FCEEC:
/* 806FCEEC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FCEF0  38 80 00 01 */	li r4, 1
/* 806FCEF4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806FCEF8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806FCEFC  40 82 00 18 */	bne lbl_806FCF14
/* 806FCF00  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806FCF04  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806FCF08  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806FCF0C  41 82 00 08 */	beq lbl_806FCF14
/* 806FCF10  38 80 00 00 */	li r4, 0
lbl_806FCF14:
/* 806FCF14  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806FCF18  41 82 00 0C */	beq lbl_806FCF24
/* 806FCF1C  7F C3 F3 78 */	mr r3, r30
/* 806FCF20  4B FF E3 CD */	bl nextActionCheck__8daE_KK_cFv
lbl_806FCF24:
/* 806FCF24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806FCF28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806FCF2C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806FCF30  38 81 00 38 */	addi r4, r1, 0x38
/* 806FCF34  4B 97 74 80 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806FCF38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806FCF3C  41 82 00 3C */	beq lbl_806FCF78
/* 806FCF40  88 1E 06 7C */	lbz r0, 0x67c(r30)
/* 806FCF44  28 00 00 00 */	cmplwi r0, 0
/* 806FCF48  40 82 00 30 */	bne lbl_806FCF78
/* 806FCF4C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FCF50  3C 80 00 04 */	lis r4, 4
/* 806FCF54  38 A0 00 28 */	li r5, 0x28
/* 806FCF58  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806FCF5C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806FCF60  7D 89 03 A6 */	mtctr r12
/* 806FCF64  4E 80 04 21 */	bctrl 
/* 806FCF68  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 806FCF6C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806FCF70  38 00 00 01 */	li r0, 1
/* 806FCF74  98 1E 06 7C */	stb r0, 0x67c(r30)
lbl_806FCF78:
/* 806FCF78  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FCF7C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806FCF80  FC 00 00 1E */	fctiwz f0, f0
/* 806FCF84  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 806FCF88  80 01 00 AC */	lwz r0, 0xac(r1)
/* 806FCF8C  2C 00 00 19 */	cmpwi r0, 0x19
/* 806FCF90  40 80 00 38 */	bge lbl_806FCFC8
/* 806FCF94  7F C3 F3 78 */	mr r3, r30
/* 806FCF98  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806FCF9C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806FCFA0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806FCFA4  4B 91 D7 6C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FCFA8  7C 64 1B 78 */	mr r4, r3
/* 806FCFAC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806FCFB0  38 A0 00 01 */	li r5, 1
/* 806FCFB4  38 C0 05 00 */	li r6, 0x500
/* 806FCFB8  4B B7 36 50 */	b cLib_addCalcAngleS2__FPssss
/* 806FCFBC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806FCFC0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806FCFC4  48 00 00 1C */	b lbl_806FCFE0
lbl_806FCFC8:
/* 806FCFC8  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 806FCFCC  80 01 00 AC */	lwz r0, 0xac(r1)
/* 806FCFD0  2C 00 00 21 */	cmpwi r0, 0x21
/* 806FCFD4  41 80 00 0C */	blt lbl_806FCFE0
/* 806FCFD8  38 00 00 01 */	li r0, 1
/* 806FCFDC  98 1E 06 7E */	stb r0, 0x67e(r30)
lbl_806FCFE0:
/* 806FCFE0  80 1E 07 64 */	lwz r0, 0x764(r30)
/* 806FCFE4  2C 00 00 1C */	cmpwi r0, 0x1c
/* 806FCFE8  40 82 00 5C */	bne lbl_806FD044
/* 806FCFEC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FCFF0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806FCFF4  FC 00 00 1E */	fctiwz f0, f0
/* 806FCFF8  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 806FCFFC  80 01 00 AC */	lwz r0, 0xac(r1)
/* 806FD000  2C 00 00 00 */	cmpwi r0, 0
/* 806FD004  41 82 00 14 */	beq lbl_806FD018
/* 806FD008  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 806FD00C  80 01 00 AC */	lwz r0, 0xac(r1)
/* 806FD010  2C 00 00 0A */	cmpwi r0, 0xa
/* 806FD014  40 82 00 30 */	bne lbl_806FD044
lbl_806FD018:
/* 806FD018  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007037D@ha */
/* 806FD01C  38 03 03 7D */	addi r0, r3, 0x037D /* 0x0007037D@l */
/* 806FD020  90 01 00 08 */	stw r0, 8(r1)
/* 806FD024  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FD028  38 81 00 08 */	addi r4, r1, 8
/* 806FD02C  38 A0 00 00 */	li r5, 0
/* 806FD030  38 C0 FF FF */	li r6, -1
/* 806FD034  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806FD038  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806FD03C  7D 89 03 A6 */	mtctr r12
/* 806FD040  4E 80 04 21 */	bctrl 
lbl_806FD044:
/* 806FD044  38 61 00 38 */	addi r3, r1, 0x38
/* 806FD048  38 80 FF FF */	li r4, -1
/* 806FD04C  4B 97 AC 90 */	b __dt__11dBgS_LinChkFv
/* 806FD050  39 61 00 C0 */	addi r11, r1, 0xc0
/* 806FD054  4B C6 51 D4 */	b _restgpr_29
/* 806FD058  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 806FD05C  7C 08 03 A6 */	mtlr r0
/* 806FD060  38 21 00 C0 */	addi r1, r1, 0xc0
/* 806FD064  4E 80 00 20 */	blr 
