lbl_80519E24:
/* 80519E24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80519E28  7C 08 02 A6 */	mflr r0
/* 80519E2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80519E30  39 61 00 30 */	addi r11, r1, 0x30
/* 80519E34  4B E4 83 A9 */	bl _savegpr_29
/* 80519E38  7C 7E 1B 78 */	mr r30, r3
/* 80519E3C  3C 60 80 52 */	lis r3, lit_3649@ha /* 0x8051B9C8@ha */
/* 80519E40  3B E3 B9 C8 */	addi r31, r3, lit_3649@l /* 0x8051B9C8@l */
/* 80519E44  A8 7E 05 D4 */	lha r3, 0x5d4(r30)
/* 80519E48  2C 03 00 02 */	cmpwi r3, 2
/* 80519E4C  41 82 00 CC */	beq lbl_80519F18
/* 80519E50  40 80 00 14 */	bge lbl_80519E64
/* 80519E54  2C 03 00 00 */	cmpwi r3, 0
/* 80519E58  41 82 00 1C */	beq lbl_80519E74
/* 80519E5C  40 80 00 6C */	bge lbl_80519EC8
/* 80519E60  48 00 02 60 */	b lbl_8051A0C0
lbl_80519E64:
/* 80519E64  2C 03 00 04 */	cmpwi r3, 4
/* 80519E68  41 82 02 20 */	beq lbl_8051A088
/* 80519E6C  40 80 02 54 */	bge lbl_8051A0C0
/* 80519E70  48 00 01 D0 */	b lbl_8051A040
lbl_80519E74:
/* 80519E74  38 03 00 01 */	addi r0, r3, 1
/* 80519E78  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 80519E7C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80519E80  4B D4 DA D5 */	bl cM_rndF__Ff
/* 80519E84  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80519E88  EC 40 08 2A */	fadds f2, f0, f1
/* 80519E8C  7F C3 F3 78 */	mr r3, r30
/* 80519E90  38 80 00 0B */	li r4, 0xb
/* 80519E94  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80519E98  38 A0 00 02 */	li r5, 2
/* 80519E9C  4B FF FA B1 */	bl anm_init__FP8fr_classifUcf
/* 80519EA0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80519EA4  4B D4 DA B1 */	bl cM_rndF__Ff
/* 80519EA8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80519EAC  EC 00 08 2A */	fadds f0, f0, f1
/* 80519EB0  FC 00 00 1E */	fctiwz f0, f0
/* 80519EB4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80519EB8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80519EBC  B0 1E 05 DC */	sth r0, 0x5dc(r30)
/* 80519EC0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80519EC4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80519EC8:
/* 80519EC8  A8 1E 05 DC */	lha r0, 0x5dc(r30)
/* 80519ECC  2C 00 00 00 */	cmpwi r0, 0
/* 80519ED0  40 82 01 F0 */	bne lbl_8051A0C0
/* 80519ED4  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 80519ED8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80519EDC  FC 00 00 1E */	fctiwz f0, f0
/* 80519EE0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80519EE4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80519EE8  2C 00 00 0E */	cmpwi r0, 0xe
/* 80519EEC  40 82 01 D4 */	bne lbl_8051A0C0
/* 80519EF0  A8 7E 05 D4 */	lha r3, 0x5d4(r30)
/* 80519EF4  38 03 00 01 */	addi r0, r3, 1
/* 80519EF8  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 80519EFC  7F C3 F3 78 */	mr r3, r30
/* 80519F00  38 80 00 07 */	li r4, 7
/* 80519F04  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80519F08  38 A0 00 00 */	li r5, 0
/* 80519F0C  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 80519F10  4B FF FA 3D */	bl anm_init__FP8fr_classifUcf
/* 80519F14  48 00 01 AC */	b lbl_8051A0C0
lbl_80519F18:
/* 80519F18  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 80519F1C  38 80 00 01 */	li r4, 1
/* 80519F20  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80519F24  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80519F28  40 82 00 18 */	bne lbl_80519F40
/* 80519F2C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80519F30  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80519F34  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80519F38  41 82 00 08 */	beq lbl_80519F40
/* 80519F3C  38 80 00 00 */	li r4, 0
lbl_80519F40:
/* 80519F40  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80519F44  41 82 01 7C */	beq lbl_8051A0C0
/* 80519F48  7F C3 F3 78 */	mr r3, r30
/* 80519F4C  38 80 00 08 */	li r4, 8
/* 80519F50  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80519F54  38 A0 00 00 */	li r5, 0
/* 80519F58  FC 40 08 90 */	fmr f2, f1
/* 80519F5C  4B FF F9 F1 */	bl anm_init__FP8fr_classifUcf
/* 80519F60  3C 60 80 52 */	lis r3, l_HIO@ha /* 0x8051BC20@ha */
/* 80519F64  3B A3 BC 20 */	addi r29, r3, l_HIO@l /* 0x8051BC20@l */
/* 80519F68  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80519F6C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80519F70  EC 21 00 32 */	fmuls f1, f1, f0
/* 80519F74  4B D4 DA 19 */	bl cM_rndFX__Ff
/* 80519F78  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80519F7C  EC 00 08 2A */	fadds f0, f0, f1
/* 80519F80  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80519F84  3C 60 80 52 */	lis r3, l_HIO@ha /* 0x8051BC20@ha */
/* 80519F88  3B A3 BC 20 */	addi r29, r3, l_HIO@l /* 0x8051BC20@l */
/* 80519F8C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80519F90  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80519F94  EC 21 00 32 */	fmuls f1, f1, f0
/* 80519F98  4B D4 D9 F5 */	bl cM_rndFX__Ff
/* 80519F9C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80519FA0  EC 00 08 2A */	fadds f0, f0, f1
/* 80519FA4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80519FA8  7F C3 F3 78 */	mr r3, r30
/* 80519FAC  4B FF FD 7D */	bl way_bg_check__FP8fr_class
/* 80519FB0  2C 03 00 00 */	cmpwi r3, 0
/* 80519FB4  41 82 00 18 */	beq lbl_80519FCC
/* 80519FB8  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80519FBC  3C 63 00 01 */	addis r3, r3, 1
/* 80519FC0  38 03 80 00 */	addi r0, r3, -32768
/* 80519FC4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80519FC8  48 00 00 68 */	b lbl_8051A030
lbl_80519FCC:
/* 80519FCC  3C 60 80 52 */	lis r3, l_HIO@ha /* 0x8051BC20@ha */
/* 80519FD0  38 63 BC 20 */	addi r3, r3, l_HIO@l /* 0x8051BC20@l */
/* 80519FD4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80519FD8  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 80519FDC  C0 3E 05 E8 */	lfs f1, 0x5e8(r30)
/* 80519FE0  4B D4 D9 AD */	bl cM_rndFX__Ff
/* 80519FE4  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80519FE8  EC 20 08 2A */	fadds f1, f0, f1
/* 80519FEC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80519FF0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80519FF4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80519FF8  C0 3E 05 E8 */	lfs f1, 0x5e8(r30)
/* 80519FFC  4B D4 D9 91 */	bl cM_rndFX__Ff
/* 8051A000  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8051A004  EC 20 08 2A */	fadds f1, f0, f1
/* 8051A008  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8051A00C  EC 41 00 28 */	fsubs f2, f1, f0
/* 8051A010  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8051A014  C0 21 00 08 */	lfs f1, 8(r1)
/* 8051A018  4B D4 D6 5D */	bl cM_atan2s__Fff
/* 8051A01C  7C 64 1B 78 */	mr r4, r3
/* 8051A020  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8051A024  38 A0 00 01 */	li r5, 1
/* 8051A028  38 C0 20 00 */	li r6, 0x2000
/* 8051A02C  4B D5 65 DD */	bl cLib_addCalcAngleS2__FPssss
lbl_8051A030:
/* 8051A030  A8 7E 05 D4 */	lha r3, 0x5d4(r30)
/* 8051A034  38 03 00 01 */	addi r0, r3, 1
/* 8051A038  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 8051A03C  48 00 00 84 */	b lbl_8051A0C0
lbl_8051A040:
/* 8051A040  80 1E 06 70 */	lwz r0, 0x670(r30)
/* 8051A044  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8051A048  40 82 00 10 */	bne lbl_8051A058
/* 8051A04C  88 1E 05 CE */	lbz r0, 0x5ce(r30)
/* 8051A050  7C 00 07 75 */	extsb. r0, r0
/* 8051A054  41 82 00 6C */	beq lbl_8051A0C0
lbl_8051A058:
/* 8051A058  A8 7E 05 D4 */	lha r3, 0x5d4(r30)
/* 8051A05C  38 03 00 01 */	addi r0, r3, 1
/* 8051A060  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 8051A064  7F C3 F3 78 */	mr r3, r30
/* 8051A068  38 80 00 09 */	li r4, 9
/* 8051A06C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8051A070  38 A0 00 00 */	li r5, 0
/* 8051A074  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 8051A078  4B FF F8 D5 */	bl anm_init__FP8fr_classifUcf
/* 8051A07C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8051A080  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8051A084  48 00 00 3C */	b lbl_8051A0C0
lbl_8051A088:
/* 8051A088  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8051A08C  38 80 00 01 */	li r4, 1
/* 8051A090  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8051A094  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8051A098  40 82 00 18 */	bne lbl_8051A0B0
/* 8051A09C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8051A0A0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8051A0A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8051A0A8  41 82 00 08 */	beq lbl_8051A0B0
/* 8051A0AC  38 80 00 00 */	li r4, 0
lbl_8051A0B0:
/* 8051A0B0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8051A0B4  41 82 00 0C */	beq lbl_8051A0C0
/* 8051A0B8  38 00 00 00 */	li r0, 0
/* 8051A0BC  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
lbl_8051A0C0:
/* 8051A0C0  39 61 00 30 */	addi r11, r1, 0x30
/* 8051A0C4  4B E4 81 65 */	bl _restgpr_29
/* 8051A0C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8051A0CC  7C 08 03 A6 */	mtlr r0
/* 8051A0D0  38 21 00 30 */	addi r1, r1, 0x30
/* 8051A0D4  4E 80 00 20 */	blr 
