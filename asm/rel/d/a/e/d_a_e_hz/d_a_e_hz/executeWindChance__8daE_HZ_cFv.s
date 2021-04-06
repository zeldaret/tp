lbl_806EDDE8:
/* 806EDDE8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 806EDDEC  7C 08 02 A6 */	mflr r0
/* 806EDDF0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 806EDDF4  39 61 00 C0 */	addi r11, r1, 0xc0
/* 806EDDF8  4B C7 43 E5 */	bl _savegpr_29
/* 806EDDFC  7C 7E 1B 78 */	mr r30, r3
/* 806EDE00  3C 60 80 6F */	lis r3, lit_3966@ha /* 0x806F0860@ha */
/* 806EDE04  3B E3 08 60 */	addi r31, r3, lit_3966@l /* 0x806F0860@l */
/* 806EDE08  38 61 00 24 */	addi r3, r1, 0x24
/* 806EDE0C  4B 98 9E 5D */	bl __ct__11dBgS_LinChkFv
/* 806EDE10  4B A7 1A C1 */	bl getThrowBoomerangActor__9daPy_py_cFv
/* 806EDE14  90 7E 06 6C */	stw r3, 0x66c(r30)
/* 806EDE18  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 806EDE1C  2C 00 00 01 */	cmpwi r0, 1
/* 806EDE20  41 82 00 A8 */	beq lbl_806EDEC8
/* 806EDE24  40 80 00 10 */	bge lbl_806EDE34
/* 806EDE28  2C 00 00 00 */	cmpwi r0, 0
/* 806EDE2C  40 80 00 14 */	bge lbl_806EDE40
/* 806EDE30  48 00 02 CC */	b lbl_806EE0FC
lbl_806EDE34:
/* 806EDE34  2C 00 00 03 */	cmpwi r0, 3
/* 806EDE38  40 80 02 C4 */	bge lbl_806EE0FC
/* 806EDE3C  48 00 02 0C */	b lbl_806EE048
lbl_806EDE40:
/* 806EDE40  7F C3 F3 78 */	mr r3, r30
/* 806EDE44  38 80 00 00 */	li r4, 0
/* 806EDE48  4B FF D2 5D */	bl setTgSetBit__8daE_HZ_cFi
/* 806EDE4C  80 1E 0D 24 */	lwz r0, 0xd24(r30)
/* 806EDE50  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806EDE54  90 1E 0D 24 */	stw r0, 0xd24(r30)
/* 806EDE58  7F C3 F3 78 */	mr r3, r30
/* 806EDE5C  38 80 00 0B */	li r4, 0xb
/* 806EDE60  38 A0 00 02 */	li r5, 2
/* 806EDE64  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806EDE68  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806EDE6C  4B FF C8 25 */	bl setBck__8daE_HZ_cFiUcff
/* 806EDE70  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070218@ha */
/* 806EDE74  38 03 02 18 */	addi r0, r3, 0x0218 /* 0x00070218@l */
/* 806EDE78  90 01 00 08 */	stw r0, 8(r1)
/* 806EDE7C  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806EDE80  38 81 00 08 */	addi r4, r1, 8
/* 806EDE84  38 A0 FF FF */	li r5, -1
/* 806EDE88  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806EDE8C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806EDE90  7D 89 03 A6 */	mtctr r12
/* 806EDE94  4E 80 04 21 */	bctrl 
/* 806EDE98  38 00 00 01 */	li r0, 1
/* 806EDE9C  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806EDEA0  38 80 00 00 */	li r4, 0
/* 806EDEA4  B0 9E 06 B6 */	sth r4, 0x6b6(r30)
/* 806EDEA8  3C 60 80 6F */	lis r3, l_HIO@ha /* 0x806F0B7C@ha */
/* 806EDEAC  38 63 0B 7C */	addi r3, r3, l_HIO@l /* 0x806F0B7C@l */
/* 806EDEB0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806EDEB4  FC 00 00 1E */	fctiwz f0, f0
/* 806EDEB8  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 806EDEBC  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 806EDEC0  B0 1E 06 B2 */	sth r0, 0x6b2(r30)
/* 806EDEC4  B0 9E 06 B4 */	sth r4, 0x6b4(r30)
lbl_806EDEC8:
/* 806EDEC8  80 7E 06 6C */	lwz r3, 0x66c(r30)
/* 806EDECC  28 03 00 00 */	cmplwi r3, 0
/* 806EDED0  40 82 00 1C */	bne lbl_806EDEEC
/* 806EDED4  7F C3 F3 78 */	mr r3, r30
/* 806EDED8  4B FF FE F5 */	bl setWindChanceEnd__8daE_HZ_cFv
/* 806EDEDC  38 61 00 24 */	addi r3, r1, 0x24
/* 806EDEE0  38 80 FF FF */	li r4, -1
/* 806EDEE4  4B 98 9D F9 */	bl __dt__11dBgS_LinChkFv
/* 806EDEE8  48 00 02 20 */	b lbl_806EE108
lbl_806EDEEC:
/* 806EDEEC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806EDEF0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806EDEF4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806EDEF8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806EDEFC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806EDF00  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806EDF04  A8 7E 06 B6 */	lha r3, 0x6b6(r30)
/* 806EDF08  38 03 08 00 */	addi r0, r3, 0x800
/* 806EDF0C  B0 1E 06 B6 */	sth r0, 0x6b6(r30)
/* 806EDF10  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806EDF14  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806EDF18  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806EDF1C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806EDF20  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806EDF24  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806EDF28  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 806EDF2C  EC 01 00 2A */	fadds f0, f1, f0
/* 806EDF30  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806EDF34  38 61 00 24 */	addi r3, r1, 0x24
/* 806EDF38  38 81 00 0C */	addi r4, r1, 0xc
/* 806EDF3C  38 A1 00 18 */	addi r5, r1, 0x18
/* 806EDF40  38 C0 00 00 */	li r6, 0
/* 806EDF44  4B 98 9E 21 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806EDF48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806EDF4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806EDF50  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806EDF54  38 81 00 24 */	addi r4, r1, 0x24
/* 806EDF58  4B 98 64 5D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 806EDF5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EDF60  41 82 00 1C */	beq lbl_806EDF7C
/* 806EDF64  7F C3 F3 78 */	mr r3, r30
/* 806EDF68  4B FF FE 65 */	bl setWindChanceEnd__8daE_HZ_cFv
/* 806EDF6C  38 61 00 24 */	addi r3, r1, 0x24
/* 806EDF70  38 80 FF FF */	li r4, -1
/* 806EDF74  4B 98 9D 69 */	bl __dt__11dBgS_LinChkFv
/* 806EDF78  48 00 01 90 */	b lbl_806EE108
lbl_806EDF7C:
/* 806EDF7C  A8 1E 06 B6 */	lha r0, 0x6b6(r30)
/* 806EDF80  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806EDF84  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806EDF88  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806EDF8C  7C 43 04 2E */	lfsx f2, r3, r0
/* 806EDF90  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806EDF94  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 806EDF98  C0 1E 06 78 */	lfs f0, 0x678(r30)
/* 806EDF9C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806EDFA0  EC 21 00 2A */	fadds f1, f1, f0
/* 806EDFA4  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 806EDFA8  4B B8 27 99 */	bl cLib_chaseF__FPfff
/* 806EDFAC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806EDFB0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806EDFB4  3B A3 00 04 */	addi r29, r3, 4
/* 806EDFB8  A8 1E 06 B6 */	lha r0, 0x6b6(r30)
/* 806EDFBC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806EDFC0  7C 5D 04 2E */	lfsx f2, r29, r0
/* 806EDFC4  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 806EDFC8  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 806EDFCC  C0 1E 06 78 */	lfs f0, 0x678(r30)
/* 806EDFD0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806EDFD4  EC 21 00 2A */	fadds f1, f1, f0
/* 806EDFD8  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 806EDFDC  4B B8 27 65 */	bl cLib_chaseF__FPfff
/* 806EDFE0  38 7E 06 78 */	addi r3, r30, 0x678
/* 806EDFE4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806EDFE8  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 806EDFEC  4B B8 27 55 */	bl cLib_chaseF__FPfff
/* 806EDFF0  80 1E 0B 24 */	lwz r0, 0xb24(r30)
/* 806EDFF4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806EDFF8  41 82 00 0C */	beq lbl_806EE004
/* 806EDFFC  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 806EE000  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_806EE004:
/* 806EE004  A8 7E 06 B2 */	lha r3, 0x6b2(r30)
/* 806EE008  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806EE00C  7C 03 00 50 */	subf r0, r3, r0
/* 806EE010  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806EE014  A8 7E 06 B4 */	lha r3, 0x6b4(r30)
/* 806EE018  38 03 10 00 */	addi r0, r3, 0x1000
/* 806EE01C  B0 1E 06 B4 */	sth r0, 0x6b4(r30)
/* 806EE020  A8 1E 06 B4 */	lha r0, 0x6b4(r30)
/* 806EE024  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806EE028  7C 3D 04 2E */	lfsx f1, r29, r0
/* 806EE02C  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 806EE030  EC 00 00 72 */	fmuls f0, f0, f1
/* 806EE034  FC 00 00 1E */	fctiwz f0, f0
/* 806EE038  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 806EE03C  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 806EE040  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 806EE044  48 00 00 B8 */	b lbl_806EE0FC
lbl_806EE048:
/* 806EE048  38 7E 06 B2 */	addi r3, r30, 0x6b2
/* 806EE04C  38 80 00 00 */	li r4, 0
/* 806EE050  38 A0 01 00 */	li r5, 0x100
/* 806EE054  4B B8 2B 3D */	bl cLib_chaseAngleS__FPsss
/* 806EE058  38 7E 06 B6 */	addi r3, r30, 0x6b6
/* 806EE05C  38 80 00 00 */	li r4, 0
/* 806EE060  38 A0 02 00 */	li r5, 0x200
/* 806EE064  4B B8 2B 2D */	bl cLib_chaseAngleS__FPsss
/* 806EE068  A8 7E 06 B2 */	lha r3, 0x6b2(r30)
/* 806EE06C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806EE070  7C 03 00 50 */	subf r0, r3, r0
/* 806EE074  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806EE078  A8 7E 06 B4 */	lha r3, 0x6b4(r30)
/* 806EE07C  38 03 10 00 */	addi r0, r3, 0x1000
/* 806EE080  B0 1E 06 B4 */	sth r0, 0x6b4(r30)
/* 806EE084  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806EE088  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806EE08C  A8 1E 06 B4 */	lha r0, 0x6b4(r30)
/* 806EE090  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806EE094  7C 63 02 14 */	add r3, r3, r0
/* 806EE098  C0 43 00 04 */	lfs f2, 4(r3)
/* 806EE09C  A8 1E 06 B6 */	lha r0, 0x6b6(r30)
/* 806EE0A0  C8 3F 00 C8 */	lfd f1, 0xc8(r31)
/* 806EE0A4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806EE0A8  90 01 00 9C */	stw r0, 0x9c(r1)
/* 806EE0AC  3C 00 43 30 */	lis r0, 0x4330
/* 806EE0B0  90 01 00 98 */	stw r0, 0x98(r1)
/* 806EE0B4  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 806EE0B8  EC 00 08 28 */	fsubs f0, f0, f1
/* 806EE0BC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806EE0C0  FC 00 00 1E */	fctiwz f0, f0
/* 806EE0C4  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 806EE0C8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806EE0CC  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 806EE0D0  A8 1E 06 D6 */	lha r0, 0x6d6(r30)
/* 806EE0D4  2C 00 00 00 */	cmpwi r0, 0
/* 806EE0D8  40 82 00 24 */	bne lbl_806EE0FC
/* 806EE0DC  A8 7E 06 D8 */	lha r3, 0x6d8(r30)
/* 806EE0E0  2C 03 00 00 */	cmpwi r3, 0
/* 806EE0E4  41 82 00 0C */	beq lbl_806EE0F0
/* 806EE0E8  38 03 00 14 */	addi r0, r3, 0x14
/* 806EE0EC  B0 1E 06 D8 */	sth r0, 0x6d8(r30)
lbl_806EE0F0:
/* 806EE0F0  7F C3 F3 78 */	mr r3, r30
/* 806EE0F4  38 80 00 07 */	li r4, 7
/* 806EE0F8  4B FF C9 E5 */	bl setActionMode__8daE_HZ_cFi
lbl_806EE0FC:
/* 806EE0FC  38 61 00 24 */	addi r3, r1, 0x24
/* 806EE100  38 80 FF FF */	li r4, -1
/* 806EE104  4B 98 9B D9 */	bl __dt__11dBgS_LinChkFv
lbl_806EE108:
/* 806EE108  39 61 00 C0 */	addi r11, r1, 0xc0
/* 806EE10C  4B C7 41 1D */	bl _restgpr_29
/* 806EE110  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 806EE114  7C 08 03 A6 */	mtlr r0
/* 806EE118  38 21 00 C0 */	addi r1, r1, 0xc0
/* 806EE11C  4E 80 00 20 */	blr 
