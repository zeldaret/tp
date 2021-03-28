lbl_801EBE58:
/* 801EBE58  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801EBE5C  7C 08 02 A6 */	mflr r0
/* 801EBE60  90 01 00 34 */	stw r0, 0x34(r1)
/* 801EBE64  39 61 00 30 */	addi r11, r1, 0x30
/* 801EBE68  48 17 63 75 */	bl _savegpr_29
/* 801EBE6C  7C 7E 1B 78 */	mr r30, r3
/* 801EBE70  7C 9F 23 78 */	mr r31, r4
/* 801EBE74  3B A0 00 00 */	li r29, 0
lbl_801EBE78:
/* 801EBE78  2C 1D 00 02 */	cmpwi r29, 2
/* 801EBE7C  40 82 00 1C */	bne lbl_801EBE98
/* 801EBE80  7F C3 F3 78 */	mr r3, r30
/* 801EBE84  7F A4 EB 78 */	mr r4, r29
/* 801EBE88  38 1D 06 B4 */	addi r0, r29, 0x6b4
/* 801EBE8C  7C BE 00 AE */	lbzx r5, r30, r0
/* 801EBE90  48 00 1C 85 */	bl setSelectItem__12dMenu_Ring_cFiUc
/* 801EBE94  48 00 00 58 */	b lbl_801EBEEC
lbl_801EBE98:
/* 801EBE98  88 1E 06 CD */	lbz r0, 0x6cd(r30)
/* 801EBE9C  7C 1D 00 00 */	cmpw r29, r0
/* 801EBEA0  40 82 00 28 */	bne lbl_801EBEC8
/* 801EBEA4  7F C3 F3 78 */	mr r3, r30
/* 801EBEA8  88 9E 06 CB */	lbz r4, 0x6cb(r30)
/* 801EBEAC  38 A0 00 00 */	li r5, 0
/* 801EBEB0  48 00 2B D5 */	bl getItem__12dMenu_Ring_cFiUc
/* 801EBEB4  7C 65 1B 78 */	mr r5, r3
/* 801EBEB8  7F C3 F3 78 */	mr r3, r30
/* 801EBEBC  7F A4 EB 78 */	mr r4, r29
/* 801EBEC0  48 00 1C 55 */	bl setSelectItem__12dMenu_Ring_cFiUc
/* 801EBEC4  48 00 00 28 */	b lbl_801EBEEC
lbl_801EBEC8:
/* 801EBEC8  7C BE EA 14 */	add r5, r30, r29
/* 801EBECC  7F C3 F3 78 */	mr r3, r30
/* 801EBED0  88 85 06 B4 */	lbz r4, 0x6b4(r5)
/* 801EBED4  88 A5 06 B8 */	lbz r5, 0x6b8(r5)
/* 801EBED8  48 00 2B AD */	bl getItem__12dMenu_Ring_cFiUc
/* 801EBEDC  7C 65 1B 78 */	mr r5, r3
/* 801EBEE0  7F C3 F3 78 */	mr r3, r30
/* 801EBEE4  7F A4 EB 78 */	mr r4, r29
/* 801EBEE8  48 00 1C 2D */	bl setSelectItem__12dMenu_Ring_cFiUc
lbl_801EBEEC:
/* 801EBEEC  3B BD 00 01 */	addi r29, r29, 1
/* 801EBEF0  2C 1D 00 04 */	cmpwi r29, 4
/* 801EBEF4  41 80 FF 84 */	blt lbl_801EBE78
/* 801EBEF8  88 1E 06 AA */	lbz r0, 0x6aa(r30)
/* 801EBEFC  28 00 00 FF */	cmplwi r0, 0xff
/* 801EBF00  41 82 00 28 */	beq lbl_801EBF28
/* 801EBF04  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801EBF08  7C 7E 02 14 */	add r3, r30, r0
/* 801EBF0C  C0 03 03 8C */	lfs f0, 0x38c(r3)
/* 801EBF10  D0 1E 05 18 */	stfs f0, 0x518(r30)
/* 801EBF14  88 1E 06 AA */	lbz r0, 0x6aa(r30)
/* 801EBF18  54 00 10 3A */	slwi r0, r0, 2
/* 801EBF1C  7C 7E 02 14 */	add r3, r30, r0
/* 801EBF20  C0 03 03 EC */	lfs f0, 0x3ec(r3)
/* 801EBF24  D0 1E 05 28 */	stfs f0, 0x528(r30)
lbl_801EBF28:
/* 801EBF28  88 1E 06 AB */	lbz r0, 0x6ab(r30)
/* 801EBF2C  28 00 00 FF */	cmplwi r0, 0xff
/* 801EBF30  41 82 00 28 */	beq lbl_801EBF58
/* 801EBF34  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801EBF38  7C 7E 02 14 */	add r3, r30, r0
/* 801EBF3C  C0 03 03 8C */	lfs f0, 0x38c(r3)
/* 801EBF40  D0 1E 05 1C */	stfs f0, 0x51c(r30)
/* 801EBF44  88 1E 06 AB */	lbz r0, 0x6ab(r30)
/* 801EBF48  54 00 10 3A */	slwi r0, r0, 2
/* 801EBF4C  7C 7E 02 14 */	add r3, r30, r0
/* 801EBF50  C0 03 03 EC */	lfs f0, 0x3ec(r3)
/* 801EBF54  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_801EBF58:
/* 801EBF58  88 1E 06 AC */	lbz r0, 0x6ac(r30)
/* 801EBF5C  28 00 00 FF */	cmplwi r0, 0xff
/* 801EBF60  41 82 00 28 */	beq lbl_801EBF88
/* 801EBF64  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801EBF68  7C 7E 02 14 */	add r3, r30, r0
/* 801EBF6C  C0 03 03 8C */	lfs f0, 0x38c(r3)
/* 801EBF70  D0 1E 05 20 */	stfs f0, 0x520(r30)
/* 801EBF74  88 1E 06 AC */	lbz r0, 0x6ac(r30)
/* 801EBF78  54 00 10 3A */	slwi r0, r0, 2
/* 801EBF7C  7C 7E 02 14 */	add r3, r30, r0
/* 801EBF80  C0 03 03 EC */	lfs f0, 0x3ec(r3)
/* 801EBF84  D0 1E 05 30 */	stfs f0, 0x530(r30)
lbl_801EBF88:
/* 801EBF88  88 1E 06 AD */	lbz r0, 0x6ad(r30)
/* 801EBF8C  28 00 00 FF */	cmplwi r0, 0xff
/* 801EBF90  41 82 00 28 */	beq lbl_801EBFB8
/* 801EBF94  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801EBF98  7C 7E 02 14 */	add r3, r30, r0
/* 801EBF9C  C0 03 03 8C */	lfs f0, 0x38c(r3)
/* 801EBFA0  D0 1E 05 24 */	stfs f0, 0x524(r30)
/* 801EBFA4  88 1E 06 AD */	lbz r0, 0x6ad(r30)
/* 801EBFA8  54 00 10 3A */	slwi r0, r0, 2
/* 801EBFAC  7C 7E 02 14 */	add r3, r30, r0
/* 801EBFB0  C0 03 03 EC */	lfs f0, 0x3ec(r3)
/* 801EBFB4  D0 1E 05 34 */	stfs f0, 0x534(r30)
lbl_801EBFB8:
/* 801EBFB8  88 1E 06 B3 */	lbz r0, 0x6b3(r30)
/* 801EBFBC  28 00 00 00 */	cmplwi r0, 0
/* 801EBFC0  40 82 00 60 */	bne lbl_801EC020
/* 801EBFC4  3C 60 80 43 */	lis r3, g_ringHIO@ha
/* 801EBFC8  38 63 FA FC */	addi r3, r3, g_ringHIO@l
/* 801EBFCC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 801EBFD0  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 801EBFD4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 801EBFD8  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 801EBFDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EBFE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EBFE4  38 80 00 00 */	li r4, 0
/* 801EBFE8  4B E4 6A 75 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EBFEC  88 9E 06 B4 */	lbz r4, 0x6b4(r30)
/* 801EBFF0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EBFF4  7C 04 00 40 */	cmplw r4, r0
/* 801EBFF8  40 82 00 1C */	bne lbl_801EC014
/* 801EBFFC  38 60 00 00 */	li r3, 0
/* 801EC000  4B E4 1D C9 */	bl dComIfGs_getMixItemIndex__Fi
/* 801EC004  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 801EC008  88 1E 06 B8 */	lbz r0, 0x6b8(r30)
/* 801EC00C  7C 00 18 40 */	cmplw r0, r3
/* 801EC010  41 82 00 70 */	beq lbl_801EC080
lbl_801EC014:
/* 801EC014  38 00 00 01 */	li r0, 1
/* 801EC018  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 801EC01C  48 00 00 64 */	b lbl_801EC080
lbl_801EC020:
/* 801EC020  28 00 00 01 */	cmplwi r0, 1
/* 801EC024  40 82 00 5C */	bne lbl_801EC080
/* 801EC028  3C 60 80 43 */	lis r3, g_ringHIO@ha
/* 801EC02C  38 63 FA FC */	addi r3, r3, g_ringHIO@l
/* 801EC030  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 801EC034  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 801EC038  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 801EC03C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 801EC040  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EC044  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EC048  38 80 00 01 */	li r4, 1
/* 801EC04C  4B E4 6A 11 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 801EC050  88 9E 06 B5 */	lbz r4, 0x6b5(r30)
/* 801EC054  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EC058  7C 04 00 40 */	cmplw r4, r0
/* 801EC05C  40 82 00 1C */	bne lbl_801EC078
/* 801EC060  38 60 00 01 */	li r3, 1
/* 801EC064  4B E4 1D 65 */	bl dComIfGs_getMixItemIndex__Fi
/* 801EC068  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 801EC06C  88 1E 06 B9 */	lbz r0, 0x6b9(r30)
/* 801EC070  7C 00 18 40 */	cmplw r0, r3
/* 801EC074  41 82 00 0C */	beq lbl_801EC080
lbl_801EC078:
/* 801EC078  38 00 00 01 */	li r0, 1
/* 801EC07C  B0 1E 06 76 */	sth r0, 0x676(r30)
lbl_801EC080:
/* 801EC080  A8 1E 06 74 */	lha r0, 0x674(r30)
/* 801EC084  2C 00 00 01 */	cmpwi r0, 1
/* 801EC088  40 82 00 48 */	bne lbl_801EC0D0
/* 801EC08C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801EC090  41 82 00 08 */	beq lbl_801EC098
/* 801EC094  48 03 29 41 */	bl dMeter2Info_set2DVibrationM__Fv
lbl_801EC098:
/* 801EC098  38 00 00 4F */	li r0, 0x4f
/* 801EC09C  90 01 00 18 */	stw r0, 0x18(r1)
/* 801EC0A0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801EC0A4  38 81 00 18 */	addi r4, r1, 0x18
/* 801EC0A8  38 A0 00 00 */	li r5, 0
/* 801EC0AC  38 C0 00 00 */	li r6, 0
/* 801EC0B0  38 E0 00 00 */	li r7, 0
/* 801EC0B4  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EC0B8  FC 40 08 90 */	fmr f2, f1
/* 801EC0BC  C0 62 A9 C0 */	lfs f3, lit_4465(r2)
/* 801EC0C0  FC 80 18 90 */	fmr f4, f3
/* 801EC0C4  39 00 00 00 */	li r8, 0
/* 801EC0C8  48 0B F8 BD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801EC0CC  48 00 01 28 */	b lbl_801EC1F4
lbl_801EC0D0:
/* 801EC0D0  A8 1E 06 76 */	lha r0, 0x676(r30)
/* 801EC0D4  2C 00 00 01 */	cmpwi r0, 1
/* 801EC0D8  40 82 00 48 */	bne lbl_801EC120
/* 801EC0DC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801EC0E0  41 82 00 08 */	beq lbl_801EC0E8
/* 801EC0E4  48 03 28 F1 */	bl dMeter2Info_set2DVibrationM__Fv
lbl_801EC0E8:
/* 801EC0E8  38 00 00 4F */	li r0, 0x4f
/* 801EC0EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EC0F0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801EC0F4  38 81 00 14 */	addi r4, r1, 0x14
/* 801EC0F8  38 A0 00 00 */	li r5, 0
/* 801EC0FC  38 C0 00 00 */	li r6, 0
/* 801EC100  38 E0 00 00 */	li r7, 0
/* 801EC104  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EC108  FC 40 08 90 */	fmr f2, f1
/* 801EC10C  C0 62 A9 C0 */	lfs f3, lit_4465(r2)
/* 801EC110  FC 80 18 90 */	fmr f4, f3
/* 801EC114  39 00 00 00 */	li r8, 0
/* 801EC118  48 0B F8 6D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801EC11C  48 00 00 D8 */	b lbl_801EC1F4
lbl_801EC120:
/* 801EC120  A8 1E 06 78 */	lha r0, 0x678(r30)
/* 801EC124  2C 00 00 01 */	cmpwi r0, 1
/* 801EC128  40 82 00 48 */	bne lbl_801EC170
/* 801EC12C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801EC130  41 82 00 08 */	beq lbl_801EC138
/* 801EC134  48 03 28 A1 */	bl dMeter2Info_set2DVibrationM__Fv
lbl_801EC138:
/* 801EC138  38 00 00 4F */	li r0, 0x4f
/* 801EC13C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801EC140  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801EC144  38 81 00 10 */	addi r4, r1, 0x10
/* 801EC148  38 A0 00 00 */	li r5, 0
/* 801EC14C  38 C0 00 00 */	li r6, 0
/* 801EC150  38 E0 00 00 */	li r7, 0
/* 801EC154  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EC158  FC 40 08 90 */	fmr f2, f1
/* 801EC15C  C0 62 A9 C0 */	lfs f3, lit_4465(r2)
/* 801EC160  FC 80 18 90 */	fmr f4, f3
/* 801EC164  39 00 00 00 */	li r8, 0
/* 801EC168  48 0B F8 1D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801EC16C  48 00 00 88 */	b lbl_801EC1F4
lbl_801EC170:
/* 801EC170  A8 1E 06 7A */	lha r0, 0x67a(r30)
/* 801EC174  2C 00 00 01 */	cmpwi r0, 1
/* 801EC178  40 82 00 48 */	bne lbl_801EC1C0
/* 801EC17C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801EC180  41 82 00 08 */	beq lbl_801EC188
/* 801EC184  48 03 28 51 */	bl dMeter2Info_set2DVibrationM__Fv
lbl_801EC188:
/* 801EC188  38 00 00 B4 */	li r0, 0xb4
/* 801EC18C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801EC190  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801EC194  38 81 00 0C */	addi r4, r1, 0xc
/* 801EC198  38 A0 00 00 */	li r5, 0
/* 801EC19C  38 C0 00 00 */	li r6, 0
/* 801EC1A0  38 E0 00 00 */	li r7, 0
/* 801EC1A4  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EC1A8  FC 40 08 90 */	fmr f2, f1
/* 801EC1AC  C0 62 A9 C0 */	lfs f3, lit_4465(r2)
/* 801EC1B0  FC 80 18 90 */	fmr f4, f3
/* 801EC1B4  39 00 00 00 */	li r8, 0
/* 801EC1B8  48 0B F7 CD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801EC1BC  48 00 00 38 */	b lbl_801EC1F4
lbl_801EC1C0:
/* 801EC1C0  38 00 00 4A */	li r0, 0x4a
/* 801EC1C4  90 01 00 08 */	stw r0, 8(r1)
/* 801EC1C8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801EC1CC  38 81 00 08 */	addi r4, r1, 8
/* 801EC1D0  38 A0 00 00 */	li r5, 0
/* 801EC1D4  38 C0 00 00 */	li r6, 0
/* 801EC1D8  38 E0 00 00 */	li r7, 0
/* 801EC1DC  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EC1E0  FC 40 08 90 */	fmr f2, f1
/* 801EC1E4  C0 62 A9 C0 */	lfs f3, lit_4465(r2)
/* 801EC1E8  FC 80 18 90 */	fmr f4, f3
/* 801EC1EC  39 00 00 00 */	li r8, 0
/* 801EC1F0  48 0B F7 95 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801EC1F4:
/* 801EC1F4  39 61 00 30 */	addi r11, r1, 0x30
/* 801EC1F8  48 17 60 31 */	bl _restgpr_29
/* 801EC1FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801EC200  7C 08 03 A6 */	mtlr r0
/* 801EC204  38 21 00 30 */	addi r1, r1, 0x30
/* 801EC208  4E 80 00 20 */	blr 
