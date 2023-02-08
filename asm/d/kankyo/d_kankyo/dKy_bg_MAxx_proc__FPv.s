lbl_801ACD24:
/* 801ACD24  94 21 FD D0 */	stwu r1, -0x230(r1)
/* 801ACD28  7C 08 02 A6 */	mflr r0
/* 801ACD2C  90 01 02 34 */	stw r0, 0x234(r1)
/* 801ACD30  DB E1 02 20 */	stfd f31, 0x220(r1)
/* 801ACD34  F3 E1 02 28 */	psq_st f31, 552(r1), 0, 0 /* qr0 */
/* 801ACD38  DB C1 02 10 */	stfd f30, 0x210(r1)
/* 801ACD3C  F3 C1 02 18 */	psq_st f30, 536(r1), 0, 0 /* qr0 */
/* 801ACD40  DB A1 02 00 */	stfd f29, 0x200(r1)
/* 801ACD44  F3 A1 02 08 */	psq_st f29, 520(r1), 0, 0 /* qr0 */
/* 801ACD48  39 61 02 00 */	addi r11, r1, 0x200
/* 801ACD4C  48 1B 54 5D */	bl _savegpr_16
/* 801ACD50  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 801ACD54  3B A4 CA 54 */	addi r29, r4, g_env_light@l /* 0x8042CA54@l */
/* 801ACD58  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801ACD5C  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801ACD60  88 1E 5D 70 */	lbz r0, 0x5d70(r30)
/* 801ACD64  7C 00 07 74 */	extsb r0, r0
/* 801ACD68  3A DE 5D 74 */	addi r22, r30, 0x5d74
/* 801ACD6C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 801ACD70  7F 96 00 2E */	lwzx r28, r22, r0
/* 801ACD74  83 7E 5D AC */	lwz r27, 0x5dac(r30)
/* 801ACD78  28 03 00 00 */	cmplwi r3, 0
/* 801ACD7C  41 82 0E 10 */	beq lbl_801ADB8C
/* 801ACD80  28 1B 00 00 */	cmplwi r27, 0
/* 801ACD84  41 82 0E 08 */	beq lbl_801ADB8C
/* 801ACD88  83 43 00 04 */	lwz r26, 4(r3)
/* 801ACD8C  3A A0 00 00 */	li r21, 0
/* 801ACD90  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 801ACD94  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 801ACD98  3B 0D 81 98 */	la r24, l_alphaCompInfo(r13) /* 80450718-_SDA_BASE_ */
/* 801ACD9C  3A 2D 81 88 */	la r17, l_zmodeUpEnable(r13) /* 80450708-_SDA_BASE_ */
/* 801ACDA0  3A ED 81 90 */	la r23, l_alphaCompInfoOPA(r13) /* 80450710-_SDA_BASE_ */
/* 801ACDA4  3A 4D 81 8C */	la r18, l_zmodeUpDisable(r13) /* 8045070C-_SDA_BASE_ */
/* 801ACDA8  3C 60 80 39 */	lis r3, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801ACDAC  3A 83 4C 6C */	addi r20, r3, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801ACDB0  48 00 0D CC */	b lbl_801ADB7C
lbl_801ACDB4:
/* 801ACDB4  80 7A 00 60 */	lwz r3, 0x60(r26)
/* 801ACDB8  56 A0 13 BA */	rlwinm r0, r21, 2, 0xe, 0x1d
/* 801ACDBC  7F 23 00 2E */	lwzx r25, r3, r0
/* 801ACDC0  80 7A 00 64 */	lwz r3, 0x64(r26)
/* 801ACDC4  7E A4 AB 78 */	mr r4, r21
/* 801ACDC8  48 13 1D 31 */	bl getName__10JUTNameTabCFUs
/* 801ACDCC  7C 73 1B 78 */	mr r19, r3
/* 801ACDD0  88 03 00 03 */	lbz r0, 3(r3)
/* 801ACDD4  2C 00 00 4D */	cmpwi r0, 0x4d
/* 801ACDD8  40 82 0A D4 */	bne lbl_801AD8AC
/* 801ACDDC  88 13 00 04 */	lbz r0, 4(r19)
/* 801ACDE0  2C 00 00 41 */	cmpwi r0, 0x41
/* 801ACDE4  40 82 0A C8 */	bne lbl_801AD8AC
/* 801ACDE8  38 73 00 03 */	addi r3, r19, 3
/* 801ACDEC  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801ACDF0  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801ACDF4  38 84 02 71 */	addi r4, r4, 0x271
/* 801ACDF8  38 A0 00 04 */	li r5, 4
/* 801ACDFC  48 1B 92 91 */	bl memcmp
/* 801ACE00  2C 03 00 00 */	cmpwi r3, 0
/* 801ACE04  40 82 00 0C */	bne lbl_801ACE10
/* 801ACE08  7F 23 CB 78 */	mr r3, r25
/* 801ACE0C  4B FF FB 0D */	bl dKy_murky_set__FP11J3DMaterial
lbl_801ACE10:
/* 801ACE10  38 73 00 03 */	addi r3, r19, 3
/* 801ACE14  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801ACE18  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801ACE1C  38 84 02 76 */	addi r4, r4, 0x276
/* 801ACE20  38 A0 00 04 */	li r5, 4
/* 801ACE24  48 1B 92 69 */	bl memcmp
/* 801ACE28  2C 03 00 00 */	cmpwi r3, 0
/* 801ACE2C  41 82 00 64 */	beq lbl_801ACE90
/* 801ACE30  38 73 00 03 */	addi r3, r19, 3
/* 801ACE34  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801ACE38  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801ACE3C  38 84 02 7B */	addi r4, r4, 0x27b
/* 801ACE40  38 A0 00 04 */	li r5, 4
/* 801ACE44  48 1B 92 49 */	bl memcmp
/* 801ACE48  2C 03 00 00 */	cmpwi r3, 0
/* 801ACE4C  41 82 00 44 */	beq lbl_801ACE90
/* 801ACE50  38 73 00 03 */	addi r3, r19, 3
/* 801ACE54  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801ACE58  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801ACE5C  38 84 02 80 */	addi r4, r4, 0x280
/* 801ACE60  38 A0 00 04 */	li r5, 4
/* 801ACE64  48 1B 92 29 */	bl memcmp
/* 801ACE68  2C 03 00 00 */	cmpwi r3, 0
/* 801ACE6C  41 82 00 24 */	beq lbl_801ACE90
/* 801ACE70  38 73 00 03 */	addi r3, r19, 3
/* 801ACE74  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801ACE78  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801ACE7C  38 84 02 85 */	addi r4, r4, 0x285
/* 801ACE80  38 A0 00 04 */	li r5, 4
/* 801ACE84  48 1B 92 09 */	bl memcmp
/* 801ACE88  2C 03 00 00 */	cmpwi r3, 0
/* 801ACE8C  40 82 01 84 */	bne lbl_801AD010
lbl_801ACE90:
/* 801ACE90  88 13 00 05 */	lbz r0, 5(r19)
/* 801ACE94  2C 00 00 31 */	cmpwi r0, 0x31
/* 801ACE98  41 82 00 18 */	beq lbl_801ACEB0
/* 801ACE9C  80 1E 5F 78 */	lwz r0, 0x5f78(r30)
/* 801ACEA0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 801ACEA4  80 1E 5F 7C */	lwz r0, 0x5f7c(r30)
/* 801ACEA8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 801ACEAC  48 00 00 20 */	b lbl_801ACECC
lbl_801ACEB0:
/* 801ACEB0  88 13 00 06 */	lbz r0, 6(r19)
/* 801ACEB4  2C 00 00 39 */	cmpwi r0, 0x39
/* 801ACEB8  40 82 00 14 */	bne lbl_801ACECC
/* 801ACEBC  80 1E 5F A0 */	lwz r0, 0x5fa0(r30)
/* 801ACEC0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 801ACEC4  80 1E 5F A4 */	lwz r0, 0x5fa4(r30)
/* 801ACEC8  90 1F 00 4C */	stw r0, 0x4c(r31)
lbl_801ACECC:
/* 801ACECC  80 79 00 34 */	lwz r3, 0x34(r25)
/* 801ACED0  81 83 00 00 */	lwz r12, 0(r3)
/* 801ACED4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 801ACED8  7D 89 03 A6 */	mtctr r12
/* 801ACEDC  4E 80 04 21 */	bctrl 
/* 801ACEE0  28 03 00 00 */	cmplwi r3, 0
/* 801ACEE4  41 82 01 2C */	beq lbl_801AD010
/* 801ACEE8  80 79 00 34 */	lwz r3, 0x34(r25)
/* 801ACEEC  81 83 00 00 */	lwz r12, 0(r3)
/* 801ACEF0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 801ACEF4  7D 89 03 A6 */	mtctr r12
/* 801ACEF8  4E 80 04 21 */	bctrl 
/* 801ACEFC  28 03 00 00 */	cmplwi r3, 0
/* 801ACF00  41 82 01 10 */	beq lbl_801AD010
/* 801ACF04  88 13 00 05 */	lbz r0, 5(r19)
/* 801ACF08  2C 00 00 30 */	cmpwi r0, 0x30
/* 801ACF0C  40 82 00 8C */	bne lbl_801ACF98
/* 801ACF10  88 13 00 06 */	lbz r0, 6(r19)
/* 801ACF14  2C 00 00 39 */	cmpwi r0, 0x39
/* 801ACF18  40 82 00 80 */	bne lbl_801ACF98
/* 801ACF1C  38 00 00 06 */	li r0, 6
/* 801ACF20  98 03 00 00 */	stb r0, 0(r3)
/* 801ACF24  C0 42 A4 10 */	lfs f2, lit_10916(r2)
/* 801ACF28  C0 02 A4 14 */	lfs f0, lit_10917(r2)
/* 801ACF2C  C0 3D 13 04 */	lfs f1, 0x1304(r29)
/* 801ACF30  EC 00 00 72 */	fmuls f0, f0, f1
/* 801ACF34  EC 02 00 28 */	fsubs f0, f2, f0
/* 801ACF38  FC 00 00 1E */	fctiwz f0, f0
/* 801ACF3C  D8 01 01 A0 */	stfd f0, 0x1a0(r1)
/* 801ACF40  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 801ACF44  98 01 00 1C */	stb r0, 0x1c(r1)
/* 801ACF48  D8 01 01 A8 */	stfd f0, 0x1a8(r1)
/* 801ACF4C  80 01 01 AC */	lwz r0, 0x1ac(r1)
/* 801ACF50  98 01 00 1D */	stb r0, 0x1d(r1)
/* 801ACF54  C0 02 A3 A4 */	lfs f0, lit_7609(r2)
/* 801ACF58  EC 00 00 72 */	fmuls f0, f0, f1
/* 801ACF5C  EC 02 00 28 */	fsubs f0, f2, f0
/* 801ACF60  FC 00 00 1E */	fctiwz f0, f0
/* 801ACF64  D8 01 01 B0 */	stfd f0, 0x1b0(r1)
/* 801ACF68  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 801ACF6C  98 01 00 1E */	stb r0, 0x1e(r1)
/* 801ACF70  38 00 00 FF */	li r0, 0xff
/* 801ACF74  98 01 00 1F */	stb r0, 0x1f(r1)
/* 801ACF78  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 801ACF7C  38 80 00 01 */	li r4, 1
/* 801ACF80  38 A1 00 1C */	addi r5, r1, 0x1c
/* 801ACF84  81 83 00 00 */	lwz r12, 0(r3)
/* 801ACF88  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801ACF8C  7D 89 03 A6 */	mtctr r12
/* 801ACF90  4E 80 04 21 */	bctrl 
/* 801ACF94  48 00 00 7C */	b lbl_801AD010
lbl_801ACF98:
/* 801ACF98  38 00 00 07 */	li r0, 7
/* 801ACF9C  98 03 00 00 */	stb r0, 0(r3)
/* 801ACFA0  A8 1D 11 18 */	lha r0, 0x1118(r29)
/* 801ACFA4  B0 01 00 54 */	sth r0, 0x54(r1)
/* 801ACFA8  A8 1D 11 1A */	lha r0, 0x111a(r29)
/* 801ACFAC  B0 01 00 56 */	sth r0, 0x56(r1)
/* 801ACFB0  A8 1D 11 1C */	lha r0, 0x111c(r29)
/* 801ACFB4  B0 01 00 58 */	sth r0, 0x58(r1)
/* 801ACFB8  A8 1D 11 1E */	lha r0, 0x111e(r29)
/* 801ACFBC  B0 01 00 5A */	sth r0, 0x5a(r1)
/* 801ACFC0  A8 1D 11 16 */	lha r0, 0x1116(r29)
/* 801ACFC4  98 01 00 1B */	stb r0, 0x1b(r1)
/* 801ACFC8  38 00 00 00 */	li r0, 0
/* 801ACFCC  98 01 00 18 */	stb r0, 0x18(r1)
/* 801ACFD0  98 01 00 19 */	stb r0, 0x19(r1)
/* 801ACFD4  98 01 00 1A */	stb r0, 0x1a(r1)
/* 801ACFD8  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 801ACFDC  38 80 00 01 */	li r4, 1
/* 801ACFE0  38 A1 00 54 */	addi r5, r1, 0x54
/* 801ACFE4  81 83 00 00 */	lwz r12, 0(r3)
/* 801ACFE8  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801ACFEC  7D 89 03 A6 */	mtctr r12
/* 801ACFF0  4E 80 04 21 */	bctrl 
/* 801ACFF4  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 801ACFF8  38 80 00 03 */	li r4, 3
/* 801ACFFC  38 A1 00 18 */	addi r5, r1, 0x18
/* 801AD000  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD004  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801AD008  7D 89 03 A6 */	mtctr r12
/* 801AD00C  4E 80 04 21 */	bctrl 
lbl_801AD010:
/* 801AD010  38 73 00 03 */	addi r3, r19, 3
/* 801AD014  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AD018  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AD01C  38 84 02 8A */	addi r4, r4, 0x28a
/* 801AD020  38 A0 00 04 */	li r5, 4
/* 801AD024  48 1B 90 69 */	bl memcmp
/* 801AD028  2C 03 00 00 */	cmpwi r3, 0
/* 801AD02C  40 82 00 68 */	bne lbl_801AD094
/* 801AD030  C0 22 A2 94 */	lfs f1, lit_5192(r2)
/* 801AD034  C0 1D 0E DC */	lfs f0, 0xedc(r29)
/* 801AD038  EC 01 00 32 */	fmuls f0, f1, f0
/* 801AD03C  FC 00 00 1E */	fctiwz f0, f0
/* 801AD040  D8 01 01 B0 */	stfd f0, 0x1b0(r1)
/* 801AD044  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 801AD048  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801AD04C  B0 01 00 4C */	sth r0, 0x4c(r1)
/* 801AD050  D8 01 01 A8 */	stfd f0, 0x1a8(r1)
/* 801AD054  80 01 01 AC */	lwz r0, 0x1ac(r1)
/* 801AD058  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801AD05C  B0 01 00 4E */	sth r0, 0x4e(r1)
/* 801AD060  D8 01 01 A0 */	stfd f0, 0x1a0(r1)
/* 801AD064  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 801AD068  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801AD06C  B0 01 00 50 */	sth r0, 0x50(r1)
/* 801AD070  38 00 00 FF */	li r0, 0xff
/* 801AD074  B0 01 00 52 */	sth r0, 0x52(r1)
/* 801AD078  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 801AD07C  38 80 00 00 */	li r4, 0
/* 801AD080  38 A1 00 4C */	addi r5, r1, 0x4c
/* 801AD084  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD088  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801AD08C  7D 89 03 A6 */	mtctr r12
/* 801AD090  4E 80 04 21 */	bctrl 
lbl_801AD094:
/* 801AD094  38 73 00 03 */	addi r3, r19, 3
/* 801AD098  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AD09C  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AD0A0  38 84 02 8F */	addi r4, r4, 0x28f
/* 801AD0A4  38 A0 00 04 */	li r5, 4
/* 801AD0A8  48 1B 8F E5 */	bl memcmp
/* 801AD0AC  2C 03 00 00 */	cmpwi r3, 0
/* 801AD0B0  41 82 00 24 */	beq lbl_801AD0D4
/* 801AD0B4  38 73 00 03 */	addi r3, r19, 3
/* 801AD0B8  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AD0BC  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AD0C0  38 84 02 94 */	addi r4, r4, 0x294
/* 801AD0C4  38 A0 00 04 */	li r5, 4
/* 801AD0C8  48 1B 8F C5 */	bl memcmp
/* 801AD0CC  2C 03 00 00 */	cmpwi r3, 0
/* 801AD0D0  40 82 00 D0 */	bne lbl_801AD1A0
lbl_801AD0D4:
/* 801AD0D4  80 1E 5F A0 */	lwz r0, 0x5fa0(r30)
/* 801AD0D8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 801AD0DC  80 1E 5F A4 */	lwz r0, 0x5fa4(r30)
/* 801AD0E0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 801AD0E4  80 79 00 28 */	lwz r3, 0x28(r25)
/* 801AD0E8  38 80 00 00 */	li r4, 0
/* 801AD0EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD0F0  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 801AD0F4  7D 89 03 A6 */	mtctr r12
/* 801AD0F8  4E 80 04 21 */	bctrl 
/* 801AD0FC  28 03 00 00 */	cmplwi r3, 0
/* 801AD100  41 82 00 A0 */	beq lbl_801AD1A0
/* 801AD104  80 79 00 28 */	lwz r3, 0x28(r25)
/* 801AD108  38 80 00 00 */	li r4, 0
/* 801AD10C  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD110  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 801AD114  7D 89 03 A6 */	mtctr r12
/* 801AD118  4E 80 04 21 */	bctrl 
/* 801AD11C  7C 70 1B 79 */	or. r16, r3, r3
/* 801AD120  41 82 00 80 */	beq lbl_801AD1A0
/* 801AD124  4B EA D9 BD */	bl dKyw_get_wind_vec__Fv
/* 801AD128  88 13 00 06 */	lbz r0, 6(r19)
/* 801AD12C  2C 00 00 32 */	cmpwi r0, 0x32
/* 801AD130  40 82 00 2C */	bne lbl_801AD15C
/* 801AD134  38 61 01 70 */	addi r3, r1, 0x170
/* 801AD138  80 9E 61 B0 */	lwz r4, 0x61b0(r30)
/* 801AD13C  C0 24 00 D0 */	lfs f1, 0xd0(r4)
/* 801AD140  C0 5C 00 D4 */	lfs f2, 0xd4(r28)
/* 801AD144  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801AD148  FC 80 18 90 */	fmr f4, f3
/* 801AD14C  C0 A2 A4 18 */	lfs f5, lit_10918(r2)
/* 801AD150  C0 C2 A2 0C */	lfs f6, lit_4409(r2)
/* 801AD154  48 19 9A C5 */	bl C_MTXLightPerspective
/* 801AD158  48 00 00 28 */	b lbl_801AD180
lbl_801AD15C:
/* 801AD15C  38 61 01 70 */	addi r3, r1, 0x170
/* 801AD160  80 9E 61 B0 */	lwz r4, 0x61b0(r30)
/* 801AD164  C0 24 00 D0 */	lfs f1, 0xd0(r4)
/* 801AD168  C0 5C 00 D4 */	lfs f2, 0xd4(r28)
/* 801AD16C  C0 62 A4 1C */	lfs f3, lit_10919(r2)
/* 801AD170  C0 82 A4 20 */	lfs f4, lit_10920(r2)
/* 801AD174  C0 A2 A2 60 */	lfs f5, lit_4529(r2)
/* 801AD178  FC C0 28 90 */	fmr f6, f5
/* 801AD17C  48 19 9A 9D */	bl C_MTXLightPerspective
lbl_801AD180:
/* 801AD180  7E 03 83 78 */	mr r3, r16
/* 801AD184  38 81 01 70 */	addi r4, r1, 0x170
/* 801AD188  48 17 86 0D */	bl setEffectMtx__13J3DTexMtxInfoFPA4_f
/* 801AD18C  7F 43 D3 78 */	mr r3, r26
/* 801AD190  38 80 00 00 */	li r4, 0
/* 801AD194  3C A0 80 3A */	lis r5, j3dDefaultMtx@ha /* 0x803A1E5C@ha */
/* 801AD198  38 A5 1E 5C */	addi r5, r5, j3dDefaultMtx@l /* 0x803A1E5C@l */
/* 801AD19C  48 17 8E 71 */	bl simpleCalcMaterial__12J3DModelDataFUsPA4_f
lbl_801AD1A0:
/* 801AD1A0  38 73 00 03 */	addi r3, r19, 3
/* 801AD1A4  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AD1A8  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AD1AC  38 84 02 99 */	addi r4, r4, 0x299
/* 801AD1B0  38 A0 00 04 */	li r5, 4
/* 801AD1B4  48 1B 8E D9 */	bl memcmp
/* 801AD1B8  2C 03 00 00 */	cmpwi r3, 0
/* 801AD1BC  41 82 00 64 */	beq lbl_801AD220
/* 801AD1C0  38 73 00 03 */	addi r3, r19, 3
/* 801AD1C4  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AD1C8  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AD1CC  38 84 02 9E */	addi r4, r4, 0x29e
/* 801AD1D0  38 A0 00 04 */	li r5, 4
/* 801AD1D4  48 1B 8E B9 */	bl memcmp
/* 801AD1D8  2C 03 00 00 */	cmpwi r3, 0
/* 801AD1DC  41 82 00 44 */	beq lbl_801AD220
/* 801AD1E0  38 73 00 03 */	addi r3, r19, 3
/* 801AD1E4  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AD1E8  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AD1EC  38 84 02 A3 */	addi r4, r4, 0x2a3
/* 801AD1F0  38 A0 00 04 */	li r5, 4
/* 801AD1F4  48 1B 8E 99 */	bl memcmp
/* 801AD1F8  2C 03 00 00 */	cmpwi r3, 0
/* 801AD1FC  41 82 00 24 */	beq lbl_801AD220
/* 801AD200  38 73 00 03 */	addi r3, r19, 3
/* 801AD204  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AD208  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AD20C  38 84 02 A8 */	addi r4, r4, 0x2a8
/* 801AD210  38 A0 00 04 */	li r5, 4
/* 801AD214  48 1B 8E 79 */	bl memcmp
/* 801AD218  2C 03 00 00 */	cmpwi r3, 0
/* 801AD21C  40 82 01 70 */	bne lbl_801AD38C
lbl_801AD220:
/* 801AD220  88 1D 12 F8 */	lbz r0, 0x12f8(r29)
/* 801AD224  98 01 00 20 */	stb r0, 0x20(r1)
/* 801AD228  38 60 00 00 */	li r3, 0
/* 801AD22C  98 61 00 21 */	stb r3, 0x21(r1)
/* 801AD230  98 61 00 22 */	stb r3, 0x22(r1)
/* 801AD234  88 13 00 06 */	lbz r0, 6(r19)
/* 801AD238  2C 00 00 31 */	cmpwi r0, 0x31
/* 801AD23C  40 82 01 30 */	bne lbl_801AD36C
/* 801AD240  82 19 00 34 */	lwz r16, 0x34(r25)
/* 801AD244  7F 23 CB 78 */	mr r3, r25
/* 801AD248  81 99 00 00 */	lwz r12, 0(r25)
/* 801AD24C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801AD250  7D 89 03 A6 */	mtctr r12
/* 801AD254  4E 80 04 21 */	bctrl 
/* 801AD258  4B FF E0 29 */	bl dKy_camera_water_in_status_check__Fv
/* 801AD25C  2C 03 00 00 */	cmpwi r3, 0
/* 801AD260  41 82 00 88 */	beq lbl_801AD2E8
/* 801AD264  38 00 00 FF */	li r0, 0xff
/* 801AD268  98 01 00 23 */	stb r0, 0x23(r1)
/* 801AD26C  7E 03 83 78 */	mr r3, r16
/* 801AD270  81 90 00 00 */	lwz r12, 0(r16)
/* 801AD274  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801AD278  7D 89 03 A6 */	mtctr r12
/* 801AD27C  4E 80 04 21 */	bctrl 
/* 801AD280  88 18 00 01 */	lbz r0, 1(r24)
/* 801AD284  98 03 00 02 */	stb r0, 2(r3)
/* 801AD288  88 18 00 04 */	lbz r0, 4(r24)
/* 801AD28C  98 03 00 03 */	stb r0, 3(r3)
/* 801AD290  88 0D 81 98 */	lbz r0, l_alphaCompInfo(r13)
/* 801AD294  88 B8 00 03 */	lbz r5, 3(r24)
/* 801AD298  54 04 28 34 */	slwi r4, r0, 5
/* 801AD29C  88 18 00 02 */	lbz r0, 2(r24)
/* 801AD2A0  54 00 1D 78 */	rlwinm r0, r0, 3, 0x15, 0x1c
/* 801AD2A4  7C 00 2A 14 */	add r0, r0, r5
/* 801AD2A8  7C 04 02 14 */	add r0, r4, r0
/* 801AD2AC  B0 03 00 00 */	sth r0, 0(r3)
/* 801AD2B0  7E 03 83 78 */	mr r3, r16
/* 801AD2B4  81 90 00 00 */	lwz r12, 0(r16)
/* 801AD2B8  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 801AD2BC  7D 89 03 A6 */	mtctr r12
/* 801AD2C0  4E 80 04 21 */	bctrl 
/* 801AD2C4  88 CD 81 88 */	lbz r6, l_zmodeUpEnable(r13)
/* 801AD2C8  88 B1 00 02 */	lbz r5, 2(r17)
/* 801AD2CC  88 11 00 01 */	lbz r0, 1(r17)
/* 801AD2D0  54 04 0D FC */	rlwinm r4, r0, 1, 0x17, 0x1e
/* 801AD2D4  54 C0 20 36 */	slwi r0, r6, 4
/* 801AD2D8  7C 00 2A 14 */	add r0, r0, r5
/* 801AD2DC  7C 04 02 14 */	add r0, r4, r0
/* 801AD2E0  B0 03 00 00 */	sth r0, 0(r3)
/* 801AD2E4  48 00 00 8C */	b lbl_801AD370
lbl_801AD2E8:
/* 801AD2E8  38 00 00 00 */	li r0, 0
/* 801AD2EC  98 01 00 23 */	stb r0, 0x23(r1)
/* 801AD2F0  7E 03 83 78 */	mr r3, r16
/* 801AD2F4  81 90 00 00 */	lwz r12, 0(r16)
/* 801AD2F8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801AD2FC  7D 89 03 A6 */	mtctr r12
/* 801AD300  4E 80 04 21 */	bctrl 
/* 801AD304  88 17 00 01 */	lbz r0, 1(r23)
/* 801AD308  98 03 00 02 */	stb r0, 2(r3)
/* 801AD30C  88 17 00 04 */	lbz r0, 4(r23)
/* 801AD310  98 03 00 03 */	stb r0, 3(r3)
/* 801AD314  88 0D 81 90 */	lbz r0, l_alphaCompInfoOPA(r13)
/* 801AD318  88 B7 00 03 */	lbz r5, 3(r23)
/* 801AD31C  54 04 28 34 */	slwi r4, r0, 5
/* 801AD320  88 17 00 02 */	lbz r0, 2(r23)
/* 801AD324  54 00 1D 78 */	rlwinm r0, r0, 3, 0x15, 0x1c
/* 801AD328  7C 00 2A 14 */	add r0, r0, r5
/* 801AD32C  7C 04 02 14 */	add r0, r4, r0
/* 801AD330  B0 03 00 00 */	sth r0, 0(r3)
/* 801AD334  7E 03 83 78 */	mr r3, r16
/* 801AD338  81 90 00 00 */	lwz r12, 0(r16)
/* 801AD33C  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 801AD340  7D 89 03 A6 */	mtctr r12
/* 801AD344  4E 80 04 21 */	bctrl 
/* 801AD348  88 CD 81 8C */	lbz r6, l_zmodeUpDisable(r13)
/* 801AD34C  88 B2 00 02 */	lbz r5, 2(r18)
/* 801AD350  88 12 00 01 */	lbz r0, 1(r18)
/* 801AD354  54 04 0D FC */	rlwinm r4, r0, 1, 0x17, 0x1e
/* 801AD358  54 C0 20 36 */	slwi r0, r6, 4
/* 801AD35C  7C 00 2A 14 */	add r0, r0, r5
/* 801AD360  7C 04 02 14 */	add r0, r4, r0
/* 801AD364  B0 03 00 00 */	sth r0, 0(r3)
/* 801AD368  48 00 00 08 */	b lbl_801AD370
lbl_801AD36C:
/* 801AD36C  98 61 00 23 */	stb r3, 0x23(r1)
lbl_801AD370:
/* 801AD370  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 801AD374  38 80 00 01 */	li r4, 1
/* 801AD378  38 A1 00 20 */	addi r5, r1, 0x20
/* 801AD37C  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD380  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801AD384  7D 89 03 A6 */	mtctr r12
/* 801AD388  4E 80 04 21 */	bctrl 
lbl_801AD38C:
/* 801AD38C  38 73 00 03 */	addi r3, r19, 3
/* 801AD390  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AD394  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AD398  38 84 02 AD */	addi r4, r4, 0x2ad
/* 801AD39C  38 A0 00 04 */	li r5, 4
/* 801AD3A0  48 1B 8C ED */	bl memcmp
/* 801AD3A4  2C 03 00 00 */	cmpwi r3, 0
/* 801AD3A8  40 82 02 28 */	bne lbl_801AD5D0
/* 801AD3AC  4B FF F1 D1 */	bl dKy_darkworld_check__Fv
/* 801AD3B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801AD3B4  41 82 00 8C */	beq lbl_801AD440
/* 801AD3B8  80 1E 5F 78 */	lwz r0, 0x5f78(r30)
/* 801AD3BC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 801AD3C0  80 1E 5F 7C */	lwz r0, 0x5f7c(r30)
/* 801AD3C4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 801AD3C8  38 00 00 AA */	li r0, 0xaa
/* 801AD3CC  B0 01 00 44 */	sth r0, 0x44(r1)
/* 801AD3D0  38 00 00 A0 */	li r0, 0xa0
/* 801AD3D4  B0 01 00 46 */	sth r0, 0x46(r1)
/* 801AD3D8  38 00 00 FF */	li r0, 0xff
/* 801AD3DC  B0 01 00 48 */	sth r0, 0x48(r1)
/* 801AD3E0  B0 01 00 4A */	sth r0, 0x4a(r1)
/* 801AD3E4  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 801AD3E8  38 80 00 01 */	li r4, 1
/* 801AD3EC  38 A1 00 44 */	addi r5, r1, 0x44
/* 801AD3F0  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD3F4  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801AD3F8  7D 89 03 A6 */	mtctr r12
/* 801AD3FC  4E 80 04 21 */	bctrl 
/* 801AD400  38 00 00 32 */	li r0, 0x32
/* 801AD404  B0 01 00 44 */	sth r0, 0x44(r1)
/* 801AD408  38 00 00 14 */	li r0, 0x14
/* 801AD40C  B0 01 00 46 */	sth r0, 0x46(r1)
/* 801AD410  38 00 00 5A */	li r0, 0x5a
/* 801AD414  B0 01 00 48 */	sth r0, 0x48(r1)
/* 801AD418  38 00 00 FF */	li r0, 0xff
/* 801AD41C  B0 01 00 4A */	sth r0, 0x4a(r1)
/* 801AD420  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 801AD424  38 80 00 02 */	li r4, 2
/* 801AD428  38 A1 00 44 */	addi r5, r1, 0x44
/* 801AD42C  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD430  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801AD434  7D 89 03 A6 */	mtctr r12
/* 801AD438  4E 80 04 21 */	bctrl 
/* 801AD43C  48 00 04 70 */	b lbl_801AD8AC
lbl_801AD440:
/* 801AD440  38 00 00 78 */	li r0, 0x78
/* 801AD444  B0 01 00 44 */	sth r0, 0x44(r1)
/* 801AD448  38 00 00 5A */	li r0, 0x5a
/* 801AD44C  B0 01 00 46 */	sth r0, 0x46(r1)
/* 801AD450  38 00 00 B4 */	li r0, 0xb4
/* 801AD454  B0 01 00 48 */	sth r0, 0x48(r1)
/* 801AD458  38 00 00 FF */	li r0, 0xff
/* 801AD45C  B0 01 00 4A */	sth r0, 0x4a(r1)
/* 801AD460  38 60 00 00 */	li r3, 0
/* 801AD464  4B E7 F5 19 */	bl getLayerNo__14dComIfG_play_cFi
/* 801AD468  2C 03 00 01 */	cmpwi r3, 1
/* 801AD46C  40 82 00 0C */	bne lbl_801AD478
/* 801AD470  38 00 00 00 */	li r0, 0
/* 801AD474  B0 01 00 4A */	sth r0, 0x4a(r1)
lbl_801AD478:
/* 801AD478  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 801AD47C  38 80 00 01 */	li r4, 1
/* 801AD480  38 A1 00 44 */	addi r5, r1, 0x44
/* 801AD484  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD488  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801AD48C  7D 89 03 A6 */	mtctr r12
/* 801AD490  4E 80 04 21 */	bctrl 
/* 801AD494  38 00 00 28 */	li r0, 0x28
/* 801AD498  B0 01 00 44 */	sth r0, 0x44(r1)
/* 801AD49C  38 00 00 1E */	li r0, 0x1e
/* 801AD4A0  B0 01 00 46 */	sth r0, 0x46(r1)
/* 801AD4A4  38 00 00 41 */	li r0, 0x41
/* 801AD4A8  B0 01 00 48 */	sth r0, 0x48(r1)
/* 801AD4AC  38 00 00 FF */	li r0, 0xff
/* 801AD4B0  B0 01 00 4A */	sth r0, 0x4a(r1)
/* 801AD4B4  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 801AD4B8  38 80 00 02 */	li r4, 2
/* 801AD4BC  38 A1 00 44 */	addi r5, r1, 0x44
/* 801AD4C0  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD4C4  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801AD4C8  7D 89 03 A6 */	mtctr r12
/* 801AD4CC  4E 80 04 21 */	bctrl 
/* 801AD4D0  80 7D 10 60 */	lwz r3, 0x1060(r29)
/* 801AD4D4  28 03 00 00 */	cmplwi r3, 0
/* 801AD4D8  41 82 03 D4 */	beq lbl_801AD8AC
/* 801AD4DC  C0 03 05 B8 */	lfs f0, 0x5b8(r3)
/* 801AD4E0  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 801AD4E4  C0 03 05 BC */	lfs f0, 0x5bc(r3)
/* 801AD4E8  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 801AD4EC  C0 03 05 C0 */	lfs f0, 0x5c0(r3)
/* 801AD4F0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 801AD4F4  C0 23 05 AC */	lfs f1, 0x5ac(r3)
/* 801AD4F8  C0 03 05 D0 */	lfs f0, 0x5d0(r3)
/* 801AD4FC  EF A1 00 32 */	fmuls f29, f1, f0
/* 801AD500  C0 02 A2 64 */	lfs f0, lit_4730(r2)
/* 801AD504  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 801AD508  40 80 00 08 */	bge lbl_801AD510
/* 801AD50C  FF A0 00 90 */	fmr f29, f0
lbl_801AD510:
/* 801AD510  80 79 00 28 */	lwz r3, 0x28(r25)
/* 801AD514  38 80 00 00 */	li r4, 0
/* 801AD518  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD51C  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 801AD520  7D 89 03 A6 */	mtctr r12
/* 801AD524  4E 80 04 21 */	bctrl 
/* 801AD528  28 03 00 00 */	cmplwi r3, 0
/* 801AD52C  41 82 03 80 */	beq lbl_801AD8AC
/* 801AD530  80 79 00 28 */	lwz r3, 0x28(r25)
/* 801AD534  38 80 00 00 */	li r4, 0
/* 801AD538  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD53C  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 801AD540  7D 89 03 A6 */	mtctr r12
/* 801AD544  4E 80 04 21 */	bctrl 
/* 801AD548  7C 70 1B 79 */	or. r16, r3, r3
/* 801AD54C  41 82 03 60 */	beq lbl_801AD8AC
/* 801AD550  38 61 01 40 */	addi r3, r1, 0x140
/* 801AD554  C0 02 A4 24 */	lfs f0, lit_10921(r2)
/* 801AD558  EC 20 07 72 */	fmuls f1, f0, f29
/* 801AD55C  C0 42 A2 48 */	lfs f2, lit_4505(r2)
/* 801AD560  C0 62 A2 60 */	lfs f3, lit_4529(r2)
/* 801AD564  FC 80 18 90 */	fmr f4, f3
/* 801AD568  C0 A2 A2 0C */	lfs f5, lit_4409(r2)
/* 801AD56C  FC C0 28 90 */	fmr f6, f5
/* 801AD570  48 19 96 A9 */	bl C_MTXLightPerspective
/* 801AD574  C0 41 00 98 */	lfs f2, 0x98(r1)
/* 801AD578  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 801AD57C  C0 02 A2 94 */	lfs f0, lit_5192(r2)
/* 801AD580  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 801AD584  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 801AD588  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 801AD58C  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 801AD590  C0 02 A2 44 */	lfs f0, lit_4504(r2)
/* 801AD594  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 801AD598  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 801AD59C  38 61 01 10 */	addi r3, r1, 0x110
/* 801AD5A0  38 81 00 8C */	addi r4, r1, 0x8c
/* 801AD5A4  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 801AD5A8  38 C0 00 00 */	li r6, 0
/* 801AD5AC  4B E5 EF 61 */	bl mDoMtx_lookAt__FPA4_fPC3VecPC3Vecs
/* 801AD5B0  38 61 01 40 */	addi r3, r1, 0x140
/* 801AD5B4  38 81 01 10 */	addi r4, r1, 0x110
/* 801AD5B8  7C 85 23 78 */	mr r5, r4
/* 801AD5BC  48 19 8F 29 */	bl PSMTXConcat
/* 801AD5C0  7E 03 83 78 */	mr r3, r16
/* 801AD5C4  38 81 01 10 */	addi r4, r1, 0x110
/* 801AD5C8  48 17 81 CD */	bl setEffectMtx__13J3DTexMtxInfoFPA4_f
/* 801AD5CC  48 00 02 E0 */	b lbl_801AD8AC
lbl_801AD5D0:
/* 801AD5D0  38 73 00 03 */	addi r3, r19, 3
/* 801AD5D4  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AD5D8  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AD5DC  38 84 02 B2 */	addi r4, r4, 0x2b2
/* 801AD5E0  38 A0 00 04 */	li r5, 4
/* 801AD5E4  48 1B 8A A9 */	bl memcmp
/* 801AD5E8  2C 03 00 00 */	cmpwi r3, 0
/* 801AD5EC  40 82 01 3C */	bne lbl_801AD728
/* 801AD5F0  80 79 00 34 */	lwz r3, 0x34(r25)
/* 801AD5F4  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD5F8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 801AD5FC  7D 89 03 A6 */	mtctr r12
/* 801AD600  4E 80 04 21 */	bctrl 
/* 801AD604  28 03 00 00 */	cmplwi r3, 0
/* 801AD608  41 82 02 A4 */	beq lbl_801AD8AC
/* 801AD60C  80 79 00 34 */	lwz r3, 0x34(r25)
/* 801AD610  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD614  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 801AD618  7D 89 03 A6 */	mtctr r12
/* 801AD61C  4E 80 04 21 */	bctrl 
/* 801AD620  28 03 00 00 */	cmplwi r3, 0
/* 801AD624  41 82 00 0C */	beq lbl_801AD630
/* 801AD628  38 00 00 07 */	li r0, 7
/* 801AD62C  98 03 00 00 */	stb r0, 0(r3)
lbl_801AD630:
/* 801AD630  A8 1D 11 20 */	lha r0, 0x1120(r29)
/* 801AD634  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 801AD638  A8 1D 11 22 */	lha r0, 0x1122(r29)
/* 801AD63C  B0 01 00 3E */	sth r0, 0x3e(r1)
/* 801AD640  A8 1D 11 24 */	lha r0, 0x1124(r29)
/* 801AD644  B0 01 00 40 */	sth r0, 0x40(r1)
/* 801AD648  38 00 00 FF */	li r0, 0xff
/* 801AD64C  B0 01 00 42 */	sth r0, 0x42(r1)
/* 801AD650  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 801AD654  38 80 00 01 */	li r4, 1
/* 801AD658  38 A1 00 3C */	addi r5, r1, 0x3c
/* 801AD65C  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD660  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801AD664  7D 89 03 A6 */	mtctr r12
/* 801AD668  4E 80 04 21 */	bctrl 
/* 801AD66C  80 79 00 28 */	lwz r3, 0x28(r25)
/* 801AD670  38 80 00 02 */	li r4, 2
/* 801AD674  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD678  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 801AD67C  7D 89 03 A6 */	mtctr r12
/* 801AD680  4E 80 04 21 */	bctrl 
/* 801AD684  28 03 00 00 */	cmplwi r3, 0
/* 801AD688  41 82 02 24 */	beq lbl_801AD8AC
/* 801AD68C  80 79 00 28 */	lwz r3, 0x28(r25)
/* 801AD690  38 80 00 02 */	li r4, 2
/* 801AD694  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD698  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 801AD69C  7D 89 03 A6 */	mtctr r12
/* 801AD6A0  4E 80 04 21 */	bctrl 
/* 801AD6A4  7C 70 1B 79 */	or. r16, r3, r3
/* 801AD6A8  41 82 02 04 */	beq lbl_801AD8AC
/* 801AD6AC  38 61 00 E0 */	addi r3, r1, 0xe0
/* 801AD6B0  C0 22 A4 28 */	lfs f1, lit_10922(r2)
/* 801AD6B4  C0 42 A2 48 */	lfs f2, lit_4505(r2)
/* 801AD6B8  C0 62 A3 CC */	lfs f3, lit_9677(r2)
/* 801AD6BC  FC 80 18 90 */	fmr f4, f3
/* 801AD6C0  C0 A2 A2 0C */	lfs f5, lit_4409(r2)
/* 801AD6C4  FC C0 28 90 */	fmr f6, f5
/* 801AD6C8  48 19 95 51 */	bl C_MTXLightPerspective
/* 801AD6CC  C0 5B 04 D0 */	lfs f2, 0x4d0(r27)
/* 801AD6D0  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 801AD6D4  C0 02 A4 2C */	lfs f0, lit_10923(r2)
/* 801AD6D8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 801AD6DC  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 801AD6E0  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 801AD6E4  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 801AD6E8  C0 02 A4 30 */	lfs f0, lit_10924(r2)
/* 801AD6EC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 801AD6F0  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 801AD6F4  38 61 00 B0 */	addi r3, r1, 0xb0
/* 801AD6F8  38 81 00 74 */	addi r4, r1, 0x74
/* 801AD6FC  38 A1 00 80 */	addi r5, r1, 0x80
/* 801AD700  38 C0 00 00 */	li r6, 0
/* 801AD704  4B E5 EE 09 */	bl mDoMtx_lookAt__FPA4_fPC3VecPC3Vecs
/* 801AD708  38 61 00 E0 */	addi r3, r1, 0xe0
/* 801AD70C  38 81 00 B0 */	addi r4, r1, 0xb0
/* 801AD710  7C 85 23 78 */	mr r5, r4
/* 801AD714  48 19 8D D1 */	bl PSMTXConcat
/* 801AD718  7E 03 83 78 */	mr r3, r16
/* 801AD71C  38 81 00 B0 */	addi r4, r1, 0xb0
/* 801AD720  48 17 80 75 */	bl setEffectMtx__13J3DTexMtxInfoFPA4_f
/* 801AD724  48 00 01 88 */	b lbl_801AD8AC
lbl_801AD728:
/* 801AD728  38 73 00 03 */	addi r3, r19, 3
/* 801AD72C  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AD730  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AD734  38 84 02 B7 */	addi r4, r4, 0x2b7
/* 801AD738  38 A0 00 04 */	li r5, 4
/* 801AD73C  48 1B 89 51 */	bl memcmp
/* 801AD740  2C 03 00 00 */	cmpwi r3, 0
/* 801AD744  40 82 00 44 */	bne lbl_801AD788
/* 801AD748  A8 1D 11 20 */	lha r0, 0x1120(r29)
/* 801AD74C  B0 01 00 34 */	sth r0, 0x34(r1)
/* 801AD750  A8 1D 11 22 */	lha r0, 0x1122(r29)
/* 801AD754  B0 01 00 36 */	sth r0, 0x36(r1)
/* 801AD758  A8 1D 11 24 */	lha r0, 0x1124(r29)
/* 801AD75C  B0 01 00 38 */	sth r0, 0x38(r1)
/* 801AD760  A8 1D 11 26 */	lha r0, 0x1126(r29)
/* 801AD764  B0 01 00 3A */	sth r0, 0x3a(r1)
/* 801AD768  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 801AD76C  38 80 00 01 */	li r4, 1
/* 801AD770  38 A1 00 34 */	addi r5, r1, 0x34
/* 801AD774  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD778  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801AD77C  7D 89 03 A6 */	mtctr r12
/* 801AD780  4E 80 04 21 */	bctrl 
/* 801AD784  48 00 01 28 */	b lbl_801AD8AC
lbl_801AD788:
/* 801AD788  38 73 00 03 */	addi r3, r19, 3
/* 801AD78C  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AD790  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AD794  38 84 02 BC */	addi r4, r4, 0x2bc
/* 801AD798  38 A0 00 04 */	li r5, 4
/* 801AD79C  48 1B 88 F1 */	bl memcmp
/* 801AD7A0  2C 03 00 00 */	cmpwi r3, 0
/* 801AD7A4  40 82 00 78 */	bne lbl_801AD81C
/* 801AD7A8  A8 1D 11 58 */	lha r0, 0x1158(r29)
/* 801AD7AC  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 801AD7B0  A8 1D 11 5A */	lha r0, 0x115a(r29)
/* 801AD7B4  B0 01 00 2E */	sth r0, 0x2e(r1)
/* 801AD7B8  A8 1D 11 5C */	lha r0, 0x115c(r29)
/* 801AD7BC  B0 01 00 30 */	sth r0, 0x30(r1)
/* 801AD7C0  A8 1D 11 5E */	lha r0, 0x115e(r29)
/* 801AD7C4  B0 01 00 32 */	sth r0, 0x32(r1)
/* 801AD7C8  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 801AD7CC  38 80 00 01 */	li r4, 1
/* 801AD7D0  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801AD7D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD7D8  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801AD7DC  7D 89 03 A6 */	mtctr r12
/* 801AD7E0  4E 80 04 21 */	bctrl 
/* 801AD7E4  38 00 00 00 */	li r0, 0
/* 801AD7E8  98 01 00 16 */	stb r0, 0x16(r1)
/* 801AD7EC  98 01 00 15 */	stb r0, 0x15(r1)
/* 801AD7F0  98 01 00 14 */	stb r0, 0x14(r1)
/* 801AD7F4  A8 1D 11 26 */	lha r0, 0x1126(r29)
/* 801AD7F8  98 01 00 17 */	stb r0, 0x17(r1)
/* 801AD7FC  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 801AD800  38 80 00 03 */	li r4, 3
/* 801AD804  38 A1 00 14 */	addi r5, r1, 0x14
/* 801AD808  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD80C  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801AD810  7D 89 03 A6 */	mtctr r12
/* 801AD814  4E 80 04 21 */	bctrl 
/* 801AD818  48 00 00 94 */	b lbl_801AD8AC
lbl_801AD81C:
/* 801AD81C  38 73 00 03 */	addi r3, r19, 3
/* 801AD820  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AD824  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AD828  38 84 02 A8 */	addi r4, r4, 0x2a8
/* 801AD82C  38 A0 00 04 */	li r5, 4
/* 801AD830  48 1B 88 5D */	bl memcmp
/* 801AD834  2C 03 00 00 */	cmpwi r3, 0
/* 801AD838  40 82 00 74 */	bne lbl_801AD8AC
/* 801AD83C  A8 1D 11 10 */	lha r0, 0x1110(r29)
/* 801AD840  B0 01 00 24 */	sth r0, 0x24(r1)
/* 801AD844  A8 1D 11 12 */	lha r0, 0x1112(r29)
/* 801AD848  B0 01 00 26 */	sth r0, 0x26(r1)
/* 801AD84C  A8 1D 11 14 */	lha r0, 0x1114(r29)
/* 801AD850  B0 01 00 28 */	sth r0, 0x28(r1)
/* 801AD854  A8 1D 11 16 */	lha r0, 0x1116(r29)
/* 801AD858  B0 01 00 2A */	sth r0, 0x2a(r1)
/* 801AD85C  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 801AD860  38 80 00 01 */	li r4, 1
/* 801AD864  38 A1 00 24 */	addi r5, r1, 0x24
/* 801AD868  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD86C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801AD870  7D 89 03 A6 */	mtctr r12
/* 801AD874  4E 80 04 21 */	bctrl 
/* 801AD878  38 00 00 00 */	li r0, 0
/* 801AD87C  98 01 00 12 */	stb r0, 0x12(r1)
/* 801AD880  98 01 00 11 */	stb r0, 0x11(r1)
/* 801AD884  98 01 00 10 */	stb r0, 0x10(r1)
/* 801AD888  A8 1D 11 26 */	lha r0, 0x1126(r29)
/* 801AD88C  98 01 00 13 */	stb r0, 0x13(r1)
/* 801AD890  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 801AD894  38 80 00 03 */	li r4, 3
/* 801AD898  38 A1 00 10 */	addi r5, r1, 0x10
/* 801AD89C  81 83 00 00 */	lwz r12, 0(r3)
/* 801AD8A0  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801AD8A4  7D 89 03 A6 */	mtctr r12
/* 801AD8A8  4E 80 04 21 */	bctrl 
lbl_801AD8AC:
/* 801AD8AC  38 73 00 03 */	addi r3, r19, 3
/* 801AD8B0  38 94 02 C1 */	addi r4, r20, 0x2c1
/* 801AD8B4  38 A0 00 07 */	li r5, 7
/* 801AD8B8  48 1B 87 D5 */	bl memcmp
/* 801AD8BC  2C 03 00 00 */	cmpwi r3, 0
/* 801AD8C0  40 82 02 B8 */	bne lbl_801ADB78
/* 801AD8C4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801AD8C8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801AD8CC  4B FF 21 3D */	bl getDaytime__18dScnKy_env_light_cFv
/* 801AD8D0  FF E0 08 90 */	fmr f31, f1
/* 801AD8D4  82 16 00 00 */	lwz r16, 0(r22)
/* 801AD8D8  C0 02 A4 34 */	lfs f0, lit_10925(r2)
/* 801AD8DC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 801AD8E0  C0 10 00 DC */	lfs f0, 0xdc(r16)
/* 801AD8E4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 801AD8E8  C0 02 A4 38 */	lfs f0, lit_10926(r2)
/* 801AD8EC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 801AD8F0  38 61 00 5C */	addi r3, r1, 0x5c
/* 801AD8F4  38 90 00 D8 */	addi r4, r16, 0xd8
/* 801AD8F8  48 19 9A A5 */	bl PSVECSquareDistance
/* 801AD8FC  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801AD900  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AD904  40 81 00 58 */	ble lbl_801AD95C
/* 801AD908  FC 00 08 34 */	frsqrte f0, f1
/* 801AD90C  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801AD910  FC 44 00 32 */	fmul f2, f4, f0
/* 801AD914  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801AD918  FC 00 00 32 */	fmul f0, f0, f0
/* 801AD91C  FC 01 00 32 */	fmul f0, f1, f0
/* 801AD920  FC 03 00 28 */	fsub f0, f3, f0
/* 801AD924  FC 02 00 32 */	fmul f0, f2, f0
/* 801AD928  FC 44 00 32 */	fmul f2, f4, f0
/* 801AD92C  FC 00 00 32 */	fmul f0, f0, f0
/* 801AD930  FC 01 00 32 */	fmul f0, f1, f0
/* 801AD934  FC 03 00 28 */	fsub f0, f3, f0
/* 801AD938  FC 02 00 32 */	fmul f0, f2, f0
/* 801AD93C  FC 44 00 32 */	fmul f2, f4, f0
/* 801AD940  FC 00 00 32 */	fmul f0, f0, f0
/* 801AD944  FC 01 00 32 */	fmul f0, f1, f0
/* 801AD948  FC 03 00 28 */	fsub f0, f3, f0
/* 801AD94C  FC 02 00 32 */	fmul f0, f2, f0
/* 801AD950  FC 21 00 32 */	fmul f1, f1, f0
/* 801AD954  FC 20 08 18 */	frsp f1, f1
/* 801AD958  48 00 00 88 */	b lbl_801AD9E0
lbl_801AD95C:
/* 801AD95C  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801AD960  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AD964  40 80 00 10 */	bge lbl_801AD974
/* 801AD968  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AD96C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 801AD970  48 00 00 70 */	b lbl_801AD9E0
lbl_801AD974:
/* 801AD974  D0 21 00 08 */	stfs f1, 8(r1)
/* 801AD978  80 81 00 08 */	lwz r4, 8(r1)
/* 801AD97C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801AD980  3C 00 7F 80 */	lis r0, 0x7f80
/* 801AD984  7C 03 00 00 */	cmpw r3, r0
/* 801AD988  41 82 00 14 */	beq lbl_801AD99C
/* 801AD98C  40 80 00 40 */	bge lbl_801AD9CC
/* 801AD990  2C 03 00 00 */	cmpwi r3, 0
/* 801AD994  41 82 00 20 */	beq lbl_801AD9B4
/* 801AD998  48 00 00 34 */	b lbl_801AD9CC
lbl_801AD99C:
/* 801AD99C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AD9A0  41 82 00 0C */	beq lbl_801AD9AC
/* 801AD9A4  38 00 00 01 */	li r0, 1
/* 801AD9A8  48 00 00 28 */	b lbl_801AD9D0
lbl_801AD9AC:
/* 801AD9AC  38 00 00 02 */	li r0, 2
/* 801AD9B0  48 00 00 20 */	b lbl_801AD9D0
lbl_801AD9B4:
/* 801AD9B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AD9B8  41 82 00 0C */	beq lbl_801AD9C4
/* 801AD9BC  38 00 00 05 */	li r0, 5
/* 801AD9C0  48 00 00 10 */	b lbl_801AD9D0
lbl_801AD9C4:
/* 801AD9C4  38 00 00 03 */	li r0, 3
/* 801AD9C8  48 00 00 08 */	b lbl_801AD9D0
lbl_801AD9CC:
/* 801AD9CC  38 00 00 04 */	li r0, 4
lbl_801AD9D0:
/* 801AD9D0  2C 00 00 01 */	cmpwi r0, 1
/* 801AD9D4  40 82 00 0C */	bne lbl_801AD9E0
/* 801AD9D8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AD9DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_801AD9E0:
/* 801AD9E0  C0 42 A4 3C */	lfs f2, lit_10927(r2)
/* 801AD9E4  C0 02 A4 40 */	lfs f0, lit_10928(r2)
/* 801AD9E8  EC 01 00 24 */	fdivs f0, f1, f0
/* 801AD9EC  EF A2 00 2A */	fadds f29, f2, f0
/* 801AD9F0  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801AD9F4  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 801AD9F8  40 81 00 0C */	ble lbl_801ADA04
/* 801AD9FC  FF A0 00 90 */	fmr f29, f0
/* 801ADA00  48 00 00 14 */	b lbl_801ADA14
lbl_801ADA04:
/* 801ADA04  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801ADA08  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 801ADA0C  40 80 00 08 */	bge lbl_801ADA14
/* 801ADA10  FF A0 00 90 */	fmr f29, f0
lbl_801ADA14:
/* 801ADA14  38 00 00 FF */	li r0, 0xff
/* 801ADA18  98 01 00 0C */	stb r0, 0xc(r1)
/* 801ADA1C  98 01 00 0D */	stb r0, 0xd(r1)
/* 801ADA20  98 01 00 0E */	stb r0, 0xe(r1)
/* 801ADA24  98 01 00 0F */	stb r0, 0xf(r1)
/* 801ADA28  C3 C2 A2 0C */	lfs f30, lit_4409(r2)
/* 801ADA2C  C0 02 A2 C8 */	lfs f0, lit_5613(r2)
/* 801ADA30  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801ADA34  4C 41 13 82 */	cror 2, 1, 2
/* 801ADA38  40 82 00 20 */	bne lbl_801ADA58
/* 801ADA3C  C0 02 A3 B0 */	lfs f0, lit_9254(r2)
/* 801ADA40  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801ADA44  40 80 00 4C */	bge lbl_801ADA90
/* 801ADA48  EC 20 F8 28 */	fsubs f1, f0, f31
/* 801ADA4C  C0 02 A2 AC */	lfs f0, lit_5347(r2)
/* 801ADA50  EF C1 00 24 */	fdivs f30, f1, f0
/* 801ADA54  48 00 00 3C */	b lbl_801ADA90
lbl_801ADA58:
/* 801ADA58  C0 22 A4 44 */	lfs f1, lit_10929(r2)
/* 801ADA5C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 801ADA60  40 80 00 2C */	bge lbl_801ADA8C
/* 801ADA64  C0 02 A2 BC */	lfs f0, lit_5554(r2)
/* 801ADA68  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801ADA6C  4C 41 13 82 */	cror 2, 1, 2
/* 801ADA70  40 82 00 20 */	bne lbl_801ADA90
/* 801ADA74  C0 42 A2 48 */	lfs f2, lit_4505(r2)
/* 801ADA78  EC 21 F8 28 */	fsubs f1, f1, f31
/* 801ADA7C  C0 02 A2 AC */	lfs f0, lit_5347(r2)
/* 801ADA80  EC 01 00 24 */	fdivs f0, f1, f0
/* 801ADA84  EF C2 00 28 */	fsubs f30, f2, f0
/* 801ADA88  48 00 00 08 */	b lbl_801ADA90
lbl_801ADA8C:
/* 801ADA8C  C3 C2 A2 48 */	lfs f30, lit_4505(r2)
lbl_801ADA90:
/* 801ADA90  88 1D 12 C8 */	lbz r0, 0x12c8(r29)
/* 801ADA94  28 00 00 00 */	cmplwi r0, 0
/* 801ADA98  41 82 00 08 */	beq lbl_801ADAA0
/* 801ADA9C  C3 C2 A2 0C */	lfs f30, lit_4409(r2)
lbl_801ADAA0:
/* 801ADAA0  38 00 00 FF */	li r0, 0xff
/* 801ADAA4  98 01 00 0E */	stb r0, 0xe(r1)
/* 801ADAA8  98 01 00 0D */	stb r0, 0xd(r1)
/* 801ADAAC  98 01 00 0C */	stb r0, 0xc(r1)
/* 801ADAB0  C0 10 00 E4 */	lfs f0, 0xe4(r16)
/* 801ADAB4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 801ADAB8  C0 10 00 E8 */	lfs f0, 0xe8(r16)
/* 801ADABC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 801ADAC0  C0 10 00 EC */	lfs f0, 0xec(r16)
/* 801ADAC4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 801ADAC8  C0 10 00 DC */	lfs f0, 0xdc(r16)
/* 801ADACC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 801ADAD0  38 70 00 D8 */	addi r3, r16, 0xd8
/* 801ADAD4  38 81 00 5C */	addi r4, r1, 0x5c
/* 801ADAD8  38 A1 00 68 */	addi r5, r1, 0x68
/* 801ADADC  4B EA DC 85 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 801ADAE0  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 801ADAE4  FC 40 08 90 */	fmr f2, f1
/* 801ADAE8  C0 62 A4 48 */	lfs f3, lit_10930(r2)
/* 801ADAEC  C0 82 A4 4C */	lfs f4, lit_10931(r2)
/* 801ADAF0  C0 A1 00 68 */	lfs f5, 0x68(r1)
/* 801ADAF4  C0 C1 00 70 */	lfs f6, 0x70(r1)
/* 801ADAF8  48 0B AD 9D */	bl cM3d_VectorProduct2d__Fffffff
/* 801ADAFC  C0 82 A2 F4 */	lfs f4, lit_6035(r2)
/* 801ADB00  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 801ADB04  40 80 00 10 */	bge lbl_801ADB14
/* 801ADB08  38 00 00 00 */	li r0, 0
/* 801ADB0C  98 01 00 0F */	stb r0, 0xf(r1)
/* 801ADB10  48 00 00 4C */	b lbl_801ADB5C
lbl_801ADB14:
/* 801ADB14  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801ADB18  C0 42 A4 50 */	lfs f2, lit_10932(r2)
/* 801ADB1C  C0 02 A3 84 */	lfs f0, lit_7025(r2)
/* 801ADB20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801ADB24  40 81 00 0C */	ble lbl_801ADB30
/* 801ADB28  FC 00 18 90 */	fmr f0, f3
/* 801ADB2C  48 00 00 10 */	b lbl_801ADB3C
lbl_801ADB30:
/* 801ADB30  EC 21 20 28 */	fsubs f1, f1, f4
/* 801ADB34  C0 02 A2 FC */	lfs f0, lit_6037(r2)
/* 801ADB38  EC 01 00 24 */	fdivs f0, f1, f0
lbl_801ADB3C:
/* 801ADB3C  EC 02 00 32 */	fmuls f0, f2, f0
/* 801ADB40  EC 00 07 B2 */	fmuls f0, f0, f30
/* 801ADB44  EC 1D 00 32 */	fmuls f0, f29, f0
/* 801ADB48  EC 03 00 32 */	fmuls f0, f3, f0
/* 801ADB4C  FC 00 00 1E */	fctiwz f0, f0
/* 801ADB50  D8 01 01 B0 */	stfd f0, 0x1b0(r1)
/* 801ADB54  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 801ADB58  98 01 00 0F */	stb r0, 0xf(r1)
lbl_801ADB5C:
/* 801ADB5C  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 801ADB60  38 80 00 03 */	li r4, 3
/* 801ADB64  38 A1 00 0C */	addi r5, r1, 0xc
/* 801ADB68  81 83 00 00 */	lwz r12, 0(r3)
/* 801ADB6C  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801ADB70  7D 89 03 A6 */	mtctr r12
/* 801ADB74  4E 80 04 21 */	bctrl 
lbl_801ADB78:
/* 801ADB78  3A B5 00 01 */	addi r21, r21, 1
lbl_801ADB7C:
/* 801ADB7C  56 A3 04 3E */	clrlwi r3, r21, 0x10
/* 801ADB80  A0 1A 00 5C */	lhz r0, 0x5c(r26)
/* 801ADB84  7C 03 00 40 */	cmplw r3, r0
/* 801ADB88  41 80 F2 2C */	blt lbl_801ACDB4
lbl_801ADB8C:
/* 801ADB8C  E3 E1 02 28 */	psq_l f31, 552(r1), 0, 0 /* qr0 */
/* 801ADB90  CB E1 02 20 */	lfd f31, 0x220(r1)
/* 801ADB94  E3 C1 02 18 */	psq_l f30, 536(r1), 0, 0 /* qr0 */
/* 801ADB98  CB C1 02 10 */	lfd f30, 0x210(r1)
/* 801ADB9C  E3 A1 02 08 */	psq_l f29, 520(r1), 0, 0 /* qr0 */
/* 801ADBA0  CB A1 02 00 */	lfd f29, 0x200(r1)
/* 801ADBA4  39 61 02 00 */	addi r11, r1, 0x200
/* 801ADBA8  48 1B 46 4D */	bl _restgpr_16
/* 801ADBAC  80 01 02 34 */	lwz r0, 0x234(r1)
/* 801ADBB0  7C 08 03 A6 */	mtlr r0
/* 801ADBB4  38 21 02 30 */	addi r1, r1, 0x230
/* 801ADBB8  4E 80 00 20 */	blr 
