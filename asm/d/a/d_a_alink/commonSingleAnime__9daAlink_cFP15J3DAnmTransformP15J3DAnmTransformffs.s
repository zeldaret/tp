lbl_800ACD40:
/* 800ACD40  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800ACD44  7C 08 02 A6 */	mflr r0
/* 800ACD48  90 01 00 64 */	stw r0, 0x64(r1)
/* 800ACD4C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 800ACD50  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 800ACD54  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 800ACD58  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 800ACD5C  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 800ACD60  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 800ACD64  39 61 00 30 */	addi r11, r1, 0x30
/* 800ACD68  48 2B 54 6D */	bl _savegpr_27
/* 800ACD6C  7C 7B 1B 78 */	mr r27, r3
/* 800ACD70  7C 9C 23 78 */	mr r28, r4
/* 800ACD74  7C BD 2B 78 */	mr r29, r5
/* 800ACD78  FF C0 08 90 */	fmr f30, f1
/* 800ACD7C  FF E0 10 90 */	fmr f31, f2
/* 800ACD80  7C DE 33 78 */	mr r30, r6
/* 800ACD84  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 800ACD88  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 800ACD8C  B0 03 1F 6C */	sth r0, 0x1f6c(r3)
/* 800ACD90  B0 03 1F A8 */	sth r0, 0x1fa8(r3)
/* 800ACD94  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800ACD98  4B FF F9 A1 */	bl setDoubleAnimeBlendRatio__9daAlink_cFf
/* 800ACD9C  93 9B 1F 2C */	stw r28, 0x1f2c(r27)
/* 800ACDA0  38 00 00 00 */	li r0, 0
/* 800ACDA4  90 1B 1F 34 */	stw r0, 0x1f34(r27)
/* 800ACDA8  7F C0 07 35 */	extsh. r0, r30
/* 800ACDAC  40 80 00 0C */	bge lbl_800ACDB8
/* 800ACDB0  AB FC 00 06 */	lha r31, 6(r28)
/* 800ACDB4  48 00 00 08 */	b lbl_800ACDBC
lbl_800ACDB8:
/* 800ACDB8  7F DF F3 78 */	mr r31, r30
lbl_800ACDBC:
/* 800ACDBC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800ACDC0  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 800ACDC4  40 80 00 28 */	bge lbl_800ACDEC
/* 800ACDC8  7F E0 07 34 */	extsh r0, r31
/* 800ACDCC  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800ACDD0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800ACDD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 800ACDD8  3C 00 43 30 */	lis r0, 0x4330
/* 800ACDDC  90 01 00 08 */	stw r0, 8(r1)
/* 800ACDE0  C8 01 00 08 */	lfd f0, 8(r1)
/* 800ACDE4  EF A0 08 28 */	fsubs f29, f0, f1
/* 800ACDE8  48 00 00 08 */	b lbl_800ACDF0
lbl_800ACDEC:
/* 800ACDEC  FF A0 F8 90 */	fmr f29, f31
lbl_800ACDF0:
/* 800ACDF0  80 1B 05 70 */	lwz r0, 0x570(r27)
/* 800ACDF4  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800ACDF8  41 82 00 8C */	beq lbl_800ACE84
/* 800ACDFC  80 1B 31 A0 */	lwz r0, 0x31a0(r27)
/* 800ACE00  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800ACE04  41 82 00 80 */	beq lbl_800ACE84
/* 800ACE08  7F 63 DB 78 */	mr r3, r27
/* 800ACE0C  48 01 2F A5 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 800ACE10  2C 03 00 00 */	cmpwi r3, 0
/* 800ACE14  41 82 00 40 */	beq lbl_800ACE54
/* 800ACE18  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 800ACE1C  28 00 00 0E */	cmplwi r0, 0xe
/* 800ACE20  41 82 00 34 */	beq lbl_800ACE54
/* 800ACE24  A0 1B 2F DC */	lhz r0, 0x2fdc(r27)
/* 800ACE28  28 00 01 03 */	cmplwi r0, 0x103
/* 800ACE2C  40 82 00 28 */	bne lbl_800ACE54
/* 800ACE30  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha /* 0x8038E7F4@ha */
/* 800ACE34  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l /* 0x8038E7F4@l */
/* 800ACE38  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 800ACE3C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800ACE40  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 800ACE44  EC 01 00 24 */	fdivs f0, f1, f0
/* 800ACE48  EC 02 00 32 */	fmuls f0, f2, f0
/* 800ACE4C  EF DE 00 32 */	fmuls f30, f30, f0
/* 800ACE50  48 00 00 34 */	b lbl_800ACE84
lbl_800ACE54:
/* 800ACE54  7F 63 DB 78 */	mr r3, r27
/* 800ACE58  48 01 2F 59 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 800ACE5C  2C 03 00 00 */	cmpwi r3, 0
/* 800ACE60  40 82 00 24 */	bne lbl_800ACE84
/* 800ACE64  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha /* 0x8038E7F4@ha */
/* 800ACE68  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l /* 0x8038E7F4@l */
/* 800ACE6C  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 800ACE70  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800ACE74  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800ACE78  EC 01 00 24 */	fdivs f0, f1, f0
/* 800ACE7C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800ACE80  EF DE 00 32 */	fmuls f30, f30, f0
lbl_800ACE84:
/* 800ACE84  7F 63 DB 78 */	mr r3, r27
/* 800ACE88  38 9B 1F D0 */	addi r4, r27, 0x1fd0
/* 800ACE8C  88 BC 00 04 */	lbz r5, 4(r28)
/* 800ACE90  FC 00 F8 1E */	fctiwz f0, f31
/* 800ACE94  D8 01 00 08 */	stfd f0, 8(r1)
/* 800ACE98  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 800ACE9C  7F E7 FB 78 */	mr r7, r31
/* 800ACEA0  FC 20 F0 90 */	fmr f1, f30
/* 800ACEA4  FC 40 E8 90 */	fmr f2, f29
/* 800ACEA8  4B FF F4 ED */	bl setFrameCtrl__9daAlink_cFP16daPy_frameCtrl_cUcssff
/* 800ACEAC  D3 BC 00 08 */	stfs f29, 8(r28)
/* 800ACEB0  28 1D 00 00 */	cmplwi r29, 0
/* 800ACEB4  41 82 00 7C */	beq lbl_800ACF30
/* 800ACEB8  93 BB 1F 44 */	stw r29, 0x1f44(r27)
/* 800ACEBC  7F C0 07 35 */	extsh. r0, r30
/* 800ACEC0  40 80 00 0C */	bge lbl_800ACECC
/* 800ACEC4  A8 FD 00 06 */	lha r7, 6(r29)
/* 800ACEC8  48 00 00 08 */	b lbl_800ACED0
lbl_800ACECC:
/* 800ACECC  7F C7 F3 78 */	mr r7, r30
lbl_800ACED0:
/* 800ACED0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800ACED4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 800ACED8  40 80 00 28 */	bge lbl_800ACF00
/* 800ACEDC  7C E0 07 34 */	extsh r0, r7
/* 800ACEE0  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800ACEE4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800ACEE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800ACEEC  3C 00 43 30 */	lis r0, 0x4330
/* 800ACEF0  90 01 00 08 */	stw r0, 8(r1)
/* 800ACEF4  C8 01 00 08 */	lfd f0, 8(r1)
/* 800ACEF8  EF A0 08 28 */	fsubs f29, f0, f1
/* 800ACEFC  48 00 00 08 */	b lbl_800ACF04
lbl_800ACF00:
/* 800ACF00  FF A0 F8 90 */	fmr f29, f31
lbl_800ACF04:
/* 800ACF04  7F 63 DB 78 */	mr r3, r27
/* 800ACF08  38 9B 20 18 */	addi r4, r27, 0x2018
/* 800ACF0C  88 BD 00 04 */	lbz r5, 4(r29)
/* 800ACF10  FC 00 F8 1E */	fctiwz f0, f31
/* 800ACF14  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 800ACF18  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 800ACF1C  FC 20 F0 90 */	fmr f1, f30
/* 800ACF20  FC 40 E8 90 */	fmr f2, f29
/* 800ACF24  4B FF F4 71 */	bl setFrameCtrl__9daAlink_cFP16daPy_frameCtrl_cUcssff
/* 800ACF28  D3 BD 00 08 */	stfs f29, 8(r29)
/* 800ACF2C  48 00 00 08 */	b lbl_800ACF34
lbl_800ACF30:
/* 800ACF30  93 9B 1F 44 */	stw r28, 0x1f44(r27)
lbl_800ACF34:
/* 800ACF34  38 00 00 00 */	li r0, 0
/* 800ACF38  90 1B 1F 4C */	stw r0, 0x1f4c(r27)
/* 800ACF3C  7F 63 DB 78 */	mr r3, r27
/* 800ACF40  38 80 00 00 */	li r4, 0
/* 800ACF44  48 01 22 C1 */	bl setBasAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDER
/* 800ACF48  38 00 00 00 */	li r0, 0
/* 800ACF4C  98 1B 2F 8C */	stb r0, 0x2f8c(r27)
/* 800ACF50  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 800ACF54  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 800ACF58  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 800ACF5C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 800ACF60  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 800ACF64  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 800ACF68  39 61 00 30 */	addi r11, r1, 0x30
/* 800ACF6C  48 2B 52 B5 */	bl _restgpr_27
/* 800ACF70  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800ACF74  7C 08 03 A6 */	mtlr r0
/* 800ACF78  38 21 00 60 */	addi r1, r1, 0x60
/* 800ACF7C  4E 80 00 20 */	blr 
