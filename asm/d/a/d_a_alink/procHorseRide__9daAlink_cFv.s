lbl_800EFDC4:
/* 800EFDC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800EFDC8  7C 08 02 A6 */	mflr r0
/* 800EFDCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 800EFDD0  39 61 00 30 */	addi r11, r1, 0x30
/* 800EFDD4  48 27 24 05 */	bl _savegpr_28
/* 800EFDD8  7C 7C 1B 78 */	mr r28, r3
/* 800EFDDC  3B FC 1F D0 */	addi r31, r28, 0x1fd0
/* 800EFDE0  83 A3 28 18 */	lwz r29, 0x2818(r3)
/* 800EFDE4  28 1D 00 00 */	cmplwi r29, 0
/* 800EFDE8  40 82 00 10 */	bne lbl_800EFDF8
/* 800EFDEC  38 80 00 00 */	li r4, 0
/* 800EFDF0  4B FC A2 E1 */	bl checkNextAction__9daAlink_cFi
/* 800EFDF4  48 00 05 80 */	b lbl_800F0374
lbl_800EFDF8:
/* 800EFDF8  7F BE EB 78 */	mr r30, r29
/* 800EFDFC  38 00 00 07 */	li r0, 7
/* 800EFE00  98 1C 2F 99 */	stb r0, 0x2f99(r28)
/* 800EFE04  38 61 00 10 */	addi r3, r1, 0x10
/* 800EFE08  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 800EFE0C  38 BC 37 C8 */	addi r5, r28, 0x37c8
/* 800EFE10  48 17 6D 25 */	bl __mi__4cXyzCFRC3Vec
/* 800EFE14  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 800EFE18  38 81 00 10 */	addi r4, r1, 0x10
/* 800EFE1C  7C 65 1B 78 */	mr r5, r3
/* 800EFE20  48 25 72 71 */	bl PSVECAdd
/* 800EFE24  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 800EFE28  D0 1C 37 C8 */	stfs f0, 0x37c8(r28)
/* 800EFE2C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 800EFE30  D0 1C 37 CC */	stfs f0, 0x37cc(r28)
/* 800EFE34  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 800EFE38  D0 1C 37 D0 */	stfs f0, 0x37d0(r28)
/* 800EFE3C  88 9C 2F C0 */	lbz r4, 0x2fc0(r28)
/* 800EFE40  28 04 00 02 */	cmplwi r4, 2
/* 800EFE44  40 82 00 FC */	bne lbl_800EFF40
/* 800EFE48  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800EFE4C  C0 02 92 9C */	lfs f0, lit_5944(r2)
/* 800EFE50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EFE54  4C 41 13 82 */	cror 2, 1, 2
/* 800EFE58  40 82 00 18 */	bne lbl_800EFE70
/* 800EFE5C  38 00 00 05 */	li r0, 5
/* 800EFE60  98 1C 2F 93 */	stb r0, 0x2f93(r28)
/* 800EFE64  38 00 00 13 */	li r0, 0x13
/* 800EFE68  98 1C 2F AB */	stb r0, 0x2fab(r28)
/* 800EFE6C  48 00 00 1C */	b lbl_800EFE88
lbl_800EFE70:
/* 800EFE70  C0 02 93 48 */	lfs f0, lit_8130(r2)
/* 800EFE74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EFE78  4C 41 13 82 */	cror 2, 1, 2
/* 800EFE7C  40 82 00 0C */	bne lbl_800EFE88
/* 800EFE80  38 00 00 04 */	li r0, 4
/* 800EFE84  98 1C 2F 92 */	stb r0, 0x2f92(r28)
lbl_800EFE88:
/* 800EFE88  80 1D 17 44 */	lwz r0, 0x1744(r29)
/* 800EFE8C  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 800EFE90  41 82 00 3C */	beq lbl_800EFECC
/* 800EFE94  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800EFE98  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 800EFE9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EFEA0  40 81 00 10 */	ble lbl_800EFEB0
/* 800EFEA4  7F 83 E3 78 */	mr r3, r28
/* 800EFEA8  48 00 30 39 */	bl procHorseRunInit__9daAlink_cFv
/* 800EFEAC  48 00 04 C8 */	b lbl_800F0374
lbl_800EFEB0:
/* 800EFEB0  C0 02 93 24 */	lfs f0, lit_7450(r2)
/* 800EFEB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EFEB8  4C 41 13 82 */	cror 2, 1, 2
/* 800EFEBC  40 82 02 C0 */	bne lbl_800F017C
/* 800EFEC0  7F 83 E3 78 */	mr r3, r28
/* 800EFEC4  4B FF D6 19 */	bl setSyncHorsePos__9daAlink_cFv
/* 800EFEC8  48 00 02 B4 */	b lbl_800F017C
lbl_800EFECC:
/* 800EFECC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800EFED0  C0 02 93 24 */	lfs f0, lit_7450(r2)
/* 800EFED4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EFED8  4C 41 13 82 */	cror 2, 1, 2
/* 800EFEDC  40 82 00 34 */	bne lbl_800EFF10
/* 800EFEE0  C0 02 93 8C */	lfs f0, lit_8783(r2)
/* 800EFEE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EFEE8  40 80 00 28 */	bge lbl_800EFF10
/* 800EFEEC  C0 7C 04 D4 */	lfs f3, 0x4d4(r28)
/* 800EFEF0  C0 5C 34 78 */	lfs f2, 0x3478(r28)
/* 800EFEF4  C0 22 94 E0 */	lfs f1, lit_19379(r2)
/* 800EFEF8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 800EFEFC  EC 01 00 32 */	fmuls f0, f1, f0
/* 800EFF00  EC 02 00 32 */	fmuls f0, f2, f0
/* 800EFF04  EC 03 00 28 */	fsubs f0, f3, f0
/* 800EFF08  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 800EFF0C  48 00 02 70 */	b lbl_800F017C
lbl_800EFF10:
/* 800EFF10  C0 02 93 8C */	lfs f0, lit_8783(r2)
/* 800EFF14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EFF18  40 81 02 64 */	ble lbl_800F017C
/* 800EFF1C  7F 83 E3 78 */	mr r3, r28
/* 800EFF20  4B FF D5 BD */	bl setSyncHorsePos__9daAlink_cFv
/* 800EFF24  80 1D 17 4C */	lwz r0, 0x174c(r29)
/* 800EFF28  60 00 00 80 */	ori r0, r0, 0x80
/* 800EFF2C  90 1D 17 4C */	stw r0, 0x174c(r29)
/* 800EFF30  80 1D 17 4C */	lwz r0, 0x174c(r29)
/* 800EFF34  60 00 00 10 */	ori r0, r0, 0x10
/* 800EFF38  90 1D 17 4C */	stw r0, 0x174c(r29)
/* 800EFF3C  48 00 02 40 */	b lbl_800F017C
lbl_800EFF40:
/* 800EFF40  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800EFF44  C0 02 94 E4 */	lfs f0, lit_19380(r2)
/* 800EFF48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EFF4C  4C 41 13 82 */	cror 2, 1, 2
/* 800EFF50  40 82 00 DC */	bne lbl_800F002C
/* 800EFF54  38 00 00 04 */	li r0, 4
/* 800EFF58  98 1C 2F 92 */	stb r0, 0x2f92(r28)
/* 800EFF5C  7F 83 E3 78 */	mr r3, r28
/* 800EFF60  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800EFF64  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 800EFF68  7D 89 03 A6 */	mtctr r12
/* 800EFF6C  4E 80 04 21 */	bctrl 
/* 800EFF70  28 03 00 00 */	cmplwi r3, 0
/* 800EFF74  41 82 00 24 */	beq lbl_800EFF98
/* 800EFF78  88 1C 2F C0 */	lbz r0, 0x2fc0(r28)
/* 800EFF7C  28 00 00 00 */	cmplwi r0, 0
/* 800EFF80  41 82 00 18 */	beq lbl_800EFF98
/* 800EFF84  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800EFF88  C0 02 94 E8 */	lfs f0, lit_19381(r2)
/* 800EFF8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EFF90  4C 41 13 82 */	cror 2, 1, 2
/* 800EFF94  40 82 00 18 */	bne lbl_800EFFAC
lbl_800EFF98:
/* 800EFF98  38 00 00 05 */	li r0, 5
/* 800EFF9C  98 1C 2F 93 */	stb r0, 0x2f93(r28)
/* 800EFFA0  38 00 00 13 */	li r0, 0x13
/* 800EFFA4  98 1C 2F AB */	stb r0, 0x2fab(r28)
/* 800EFFA8  48 00 00 0C */	b lbl_800EFFB4
lbl_800EFFAC:
/* 800EFFAC  38 00 00 03 */	li r0, 3
/* 800EFFB0  98 1C 2F AB */	stb r0, 0x2fab(r28)
lbl_800EFFB4:
/* 800EFFB4  7F 83 E3 78 */	mr r3, r28
/* 800EFFB8  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800EFFBC  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 800EFFC0  7D 89 03 A6 */	mtctr r12
/* 800EFFC4  4E 80 04 21 */	bctrl 
/* 800EFFC8  28 03 00 00 */	cmplwi r3, 0
/* 800EFFCC  41 82 00 44 */	beq lbl_800F0010
/* 800EFFD0  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 800EFFD4  80 63 00 04 */	lwz r3, 4(r3)
/* 800EFFD8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800EFFDC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800EFFE0  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 800EFFE4  38 81 00 08 */	addi r4, r1, 8
/* 800EFFE8  4B F1 CC 19 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 800EFFEC  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 800EFFF0  A8 01 00 0C */	lha r0, 0xc(r1)
/* 800EFFF4  7C 00 00 D0 */	neg r0, r0
/* 800EFFF8  7C 04 07 34 */	extsh r4, r0
/* 800EFFFC  38 A0 00 04 */	li r5, 4
/* 800F0000  38 C0 07 D0 */	li r6, 0x7d0
/* 800F0004  38 E0 01 90 */	li r7, 0x190
/* 800F0008  48 18 05 39 */	bl cLib_addCalcAngleS__FPsssss
/* 800F000C  48 00 00 D4 */	b lbl_800F00E0
lbl_800F0010:
/* 800F0010  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 800F0014  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 800F0018  38 A0 00 04 */	li r5, 4
/* 800F001C  38 C0 07 D0 */	li r6, 0x7d0
/* 800F0020  38 E0 01 90 */	li r7, 0x190
/* 800F0024  48 18 05 1D */	bl cLib_addCalcAngleS__FPsssss
/* 800F0028  48 00 00 B8 */	b lbl_800F00E0
lbl_800F002C:
/* 800F002C  C0 02 94 94 */	lfs f0, lit_16210(r2)
/* 800F0030  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F0034  4C 41 13 82 */	cror 2, 1, 2
/* 800F0038  40 82 00 A8 */	bne lbl_800F00E0
/* 800F003C  88 7C 2F AB */	lbz r3, 0x2fab(r28)
/* 800F0040  38 00 00 01 */	li r0, 1
/* 800F0044  7C 00 20 30 */	slw r0, r0, r4
/* 800F0048  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800F004C  7C 60 03 78 */	or r0, r3, r0
/* 800F0050  98 1C 2F AB */	stb r0, 0x2fab(r28)
/* 800F0054  88 1C 2F C0 */	lbz r0, 0x2fc0(r28)
/* 800F0058  28 00 00 00 */	cmplwi r0, 0
/* 800F005C  40 82 00 40 */	bne lbl_800F009C
/* 800F0060  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800F0064  C0 02 94 EC */	lfs f0, lit_19382(r2)
/* 800F0068  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F006C  4C 41 13 82 */	cror 2, 1, 2
/* 800F0070  40 82 00 70 */	bne lbl_800F00E0
/* 800F0074  7F 83 E3 78 */	mr r3, r28
/* 800F0078  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800F007C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800F0080  7D 89 03 A6 */	mtctr r12
/* 800F0084  4E 80 04 21 */	bctrl 
/* 800F0088  28 03 00 00 */	cmplwi r3, 0
/* 800F008C  41 82 00 54 */	beq lbl_800F00E0
/* 800F0090  38 00 00 04 */	li r0, 4
/* 800F0094  98 1C 2F 92 */	stb r0, 0x2f92(r28)
/* 800F0098  48 00 00 48 */	b lbl_800F00E0
lbl_800F009C:
/* 800F009C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800F00A0  C0 02 93 94 */	lfs f0, lit_8785(r2)
/* 800F00A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F00A8  4C 41 13 82 */	cror 2, 1, 2
/* 800F00AC  40 82 00 34 */	bne lbl_800F00E0
/* 800F00B0  7F 83 E3 78 */	mr r3, r28
/* 800F00B4  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800F00B8  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800F00BC  7D 89 03 A6 */	mtctr r12
/* 800F00C0  4E 80 04 21 */	bctrl 
/* 800F00C4  28 03 00 00 */	cmplwi r3, 0
/* 800F00C8  41 82 00 18 */	beq lbl_800F00E0
/* 800F00CC  38 00 00 05 */	li r0, 5
/* 800F00D0  98 1C 2F 93 */	stb r0, 0x2f93(r28)
/* 800F00D4  88 1C 2F AB */	lbz r0, 0x2fab(r28)
/* 800F00D8  60 00 00 10 */	ori r0, r0, 0x10
/* 800F00DC  98 1C 2F AB */	stb r0, 0x2fab(r28)
lbl_800F00E0:
/* 800F00E0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800F00E4  C0 02 94 B4 */	lfs f0, lit_17382(r2)
/* 800F00E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F00EC  4C 41 13 82 */	cror 2, 1, 2
/* 800F00F0  40 82 00 30 */	bne lbl_800F0120
/* 800F00F4  C0 02 94 04 */	lfs f0, lit_13794(r2)
/* 800F00F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F00FC  40 80 00 24 */	bge lbl_800F0120
/* 800F0100  C0 7C 04 D4 */	lfs f3, 0x4d4(r28)
/* 800F0104  C0 5C 34 78 */	lfs f2, 0x3478(r28)
/* 800F0108  C0 22 93 F8 */	lfs f1, lit_13700(r2)
/* 800F010C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 800F0110  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F0114  EC 02 00 32 */	fmuls f0, f2, f0
/* 800F0118  EC 03 00 28 */	fsubs f0, f3, f0
/* 800F011C  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
lbl_800F0120:
/* 800F0120  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800F0124  C0 02 94 94 */	lfs f0, lit_16210(r2)
/* 800F0128  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F012C  4C 41 13 82 */	cror 2, 1, 2
/* 800F0130  40 82 00 4C */	bne lbl_800F017C
/* 800F0134  7F 83 E3 78 */	mr r3, r28
/* 800F0138  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800F013C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800F0140  7D 89 03 A6 */	mtctr r12
/* 800F0144  4E 80 04 21 */	bctrl 
/* 800F0148  28 03 00 00 */	cmplwi r3, 0
/* 800F014C  41 82 00 30 */	beq lbl_800F017C
/* 800F0150  A8 1C 30 0C */	lha r0, 0x300c(r28)
/* 800F0154  2C 00 00 00 */	cmpwi r0, 0
/* 800F0158  41 82 00 24 */	beq lbl_800F017C
/* 800F015C  7F 83 E3 78 */	mr r3, r28
/* 800F0160  4B FF D3 7D */	bl setSyncHorsePos__9daAlink_cFv
/* 800F0164  80 1D 17 4C */	lwz r0, 0x174c(r29)
/* 800F0168  60 00 00 80 */	ori r0, r0, 0x80
/* 800F016C  90 1D 17 4C */	stw r0, 0x174c(r29)
/* 800F0170  80 1D 17 4C */	lwz r0, 0x174c(r29)
/* 800F0174  60 00 00 10 */	ori r0, r0, 0x10
/* 800F0178  90 1D 17 4C */	stw r0, 0x174c(r29)
lbl_800F017C:
/* 800F017C  7F E3 FB 78 */	mr r3, r31
/* 800F0180  48 06 E3 4D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F0184  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F0188  41 82 01 E8 */	beq lbl_800F0370
/* 800F018C  80 7C 20 60 */	lwz r3, 0x2060(r28)
/* 800F0190  83 E3 00 1C */	lwz r31, 0x1c(r3)
/* 800F0194  7F 83 E3 78 */	mr r3, r28
/* 800F0198  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800F019C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800F01A0  7D 89 03 A6 */	mtctr r12
/* 800F01A4  4E 80 04 21 */	bctrl 
/* 800F01A8  28 03 00 00 */	cmplwi r3, 0
/* 800F01AC  41 82 00 58 */	beq lbl_800F0204
/* 800F01B0  7F A3 EB 78 */	mr r3, r29
/* 800F01B4  39 9D 18 EC */	addi r12, r29, 0x18ec
/* 800F01B8  48 27 1E CD */	bl __ptmf_scall
/* 800F01BC  60 00 00 00 */	nop 
/* 800F01C0  A8 1C 30 0C */	lha r0, 0x300c(r28)
/* 800F01C4  2C 00 00 00 */	cmpwi r0, 0
/* 800F01C8  40 82 00 78 */	bne lbl_800F0240
/* 800F01CC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 800F01D0  3C 60 80 42 */	lis r3, l_horseBaseAnime@ha
/* 800F01D4  C4 03 55 8C */	lfsu f0, l_horseBaseAnime@l(r3)
/* 800F01D8  EC 01 00 2A */	fadds f0, f1, f0
/* 800F01DC  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 800F01E0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 800F01E4  C0 03 00 04 */	lfs f0, 4(r3)
/* 800F01E8  EC 01 00 2A */	fadds f0, f1, f0
/* 800F01EC  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 800F01F0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 800F01F4  C0 03 00 08 */	lfs f0, 8(r3)
/* 800F01F8  EC 01 00 2A */	fadds f0, f1, f0
/* 800F01FC  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 800F0200  48 00 00 40 */	b lbl_800F0240
lbl_800F0204:
/* 800F0204  7F C3 F3 78 */	mr r3, r30
/* 800F0208  4B F4 7A A9 */	bl setPlayerRide__10e_wb_classFv
/* 800F020C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 800F0210  3C 60 80 42 */	lis r3, l_boarBaseAnime@ha
/* 800F0214  C4 03 55 A4 */	lfsu f0, l_boarBaseAnime@l(r3)
/* 800F0218  EC 01 00 2A */	fadds f0, f1, f0
/* 800F021C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 800F0220  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 800F0224  C0 03 00 04 */	lfs f0, 4(r3)
/* 800F0228  EC 01 00 2A */	fadds f0, f1, f0
/* 800F022C  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 800F0230  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 800F0234  C0 03 00 08 */	lfs f0, 8(r3)
/* 800F0238  EC 01 00 2A */	fadds f0, f1, f0
/* 800F023C  D0 1F 00 1C */	stfs f0, 0x1c(r31)
lbl_800F0240:
/* 800F0240  38 00 00 04 */	li r0, 4
/* 800F0244  98 1C 2F 92 */	stb r0, 0x2f92(r28)
/* 800F0248  38 00 00 05 */	li r0, 5
/* 800F024C  98 1C 2F 93 */	stb r0, 0x2f93(r28)
/* 800F0250  38 00 00 13 */	li r0, 0x13
/* 800F0254  98 1C 2F AB */	stb r0, 0x2fab(r28)
/* 800F0258  88 1C 2F C0 */	lbz r0, 0x2fc0(r28)
/* 800F025C  28 00 00 02 */	cmplwi r0, 2
/* 800F0260  40 82 00 A4 */	bne lbl_800F0304
/* 800F0264  38 00 00 00 */	li r0, 0
/* 800F0268  98 1C 2F C0 */	stb r0, 0x2fc0(r28)
/* 800F026C  4B FF C5 71 */	bl checkHorseDashAccept__9daAlink_cFv
/* 800F0270  2C 03 00 00 */	cmpwi r3, 0
/* 800F0274  41 82 00 D4 */	beq lbl_800F0348
/* 800F0278  7F 83 E3 78 */	mr r3, r28
/* 800F027C  38 80 00 4F */	li r4, 0x4f
/* 800F0280  3C A0 80 39 */	lis r5, m__19daAlinkHIO_horse_c0@ha
/* 800F0284  38 A5 E5 A4 */	addi r5, r5, m__19daAlinkHIO_horse_c0@l
/* 800F0288  3B C5 00 28 */	addi r30, r5, 0x28
/* 800F028C  7F C5 F3 78 */	mr r5, r30
/* 800F0290  4B FB CE 65 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800F0294  7F 83 E3 78 */	mr r3, r28
/* 800F0298  38 80 00 4F */	li r4, 0x4f
/* 800F029C  4B FB C1 B5 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800F02A0  A0 83 00 00 */	lhz r4, 0(r3)
/* 800F02A4  7F 83 E3 78 */	mr r3, r28
/* 800F02A8  38 A0 00 02 */	li r5, 2
/* 800F02AC  7F C6 F3 78 */	mr r6, r30
/* 800F02B0  4B FB D8 09 */	bl setUnderAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UNDERPC16daAlinkHIO_anm_c
/* 800F02B4  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800F02B8  60 00 10 00 */	ori r0, r0, 0x1000
/* 800F02BC  90 1C 05 74 */	stw r0, 0x574(r28)
/* 800F02C0  7F 83 E3 78 */	mr r3, r28
/* 800F02C4  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001001B@ha */
/* 800F02C8  38 84 00 1B */	addi r4, r4, 0x001B /* 0x0001001B@l */
/* 800F02CC  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800F02D0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800F02D4  7D 89 03 A6 */	mtctr r12
/* 800F02D8  4E 80 04 21 */	bctrl 
/* 800F02DC  3C 60 80 39 */	lis r3, m__19daAlinkHIO_horse_c0@ha
/* 800F02E0  38 63 E5 A4 */	addi r3, r3, m__19daAlinkHIO_horse_c0@l
/* 800F02E4  A8 03 00 56 */	lha r0, 0x56(r3)
/* 800F02E8  B0 1C 30 A6 */	sth r0, 0x30a6(r28)
/* 800F02EC  A8 03 00 54 */	lha r0, 0x54(r3)
/* 800F02F0  B0 1C 30 04 */	sth r0, 0x3004(r28)
/* 800F02F4  80 1D 17 44 */	lwz r0, 0x1744(r29)
/* 800F02F8  64 00 00 01 */	oris r0, r0, 1
/* 800F02FC  90 1D 17 44 */	stw r0, 0x1744(r29)
/* 800F0300  48 00 00 48 */	b lbl_800F0348
lbl_800F0304:
/* 800F0304  A8 1C 30 0C */	lha r0, 0x300c(r28)
/* 800F0308  2C 00 00 00 */	cmpwi r0, 0
/* 800F030C  40 82 00 3C */	bne lbl_800F0348
/* 800F0310  7F 83 E3 78 */	mr r3, r28
/* 800F0314  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800F0318  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800F031C  7D 89 03 A6 */	mtctr r12
/* 800F0320  4E 80 04 21 */	bctrl 
/* 800F0324  28 03 00 00 */	cmplwi r3, 0
/* 800F0328  41 82 00 20 */	beq lbl_800F0348
/* 800F032C  7F 83 E3 78 */	mr r3, r28
/* 800F0330  38 80 00 51 */	li r4, 0x51
/* 800F0334  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800F0338  C0 42 93 34 */	lfs f2, lit_7710(r2)
/* 800F033C  38 A0 FF FF */	li r5, -1
/* 800F0340  C0 62 93 24 */	lfs f3, lit_7450(r2)
/* 800F0344  4B FB CC C9 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
lbl_800F0348:
/* 800F0348  38 00 00 1E */	li r0, 0x1e
/* 800F034C  98 1C 2F B4 */	stb r0, 0x2fb4(r28)
/* 800F0350  A8 1C 30 0E */	lha r0, 0x300e(r28)
/* 800F0354  2C 00 00 00 */	cmpwi r0, 0
/* 800F0358  41 82 00 10 */	beq lbl_800F0368
/* 800F035C  7F 83 E3 78 */	mr r3, r28
/* 800F0360  38 80 00 00 */	li r4, 0
/* 800F0364  4B FC 90 91 */	bl swordEquip__9daAlink_cFi
lbl_800F0368:
/* 800F0368  7F 83 E3 78 */	mr r3, r28
/* 800F036C  48 00 06 15 */	bl procHorseWaitInit__9daAlink_cFv
lbl_800F0370:
/* 800F0370  38 60 00 01 */	li r3, 1
lbl_800F0374:
/* 800F0374  39 61 00 30 */	addi r11, r1, 0x30
/* 800F0378  48 27 1E AD */	bl _restgpr_28
/* 800F037C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800F0380  7C 08 03 A6 */	mtlr r0
/* 800F0384  38 21 00 30 */	addi r1, r1, 0x30
/* 800F0388  4E 80 00 20 */	blr 
