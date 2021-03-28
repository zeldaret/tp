lbl_8048C94C:
/* 8048C94C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8048C950  7C 08 02 A6 */	mflr r0
/* 8048C954  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8048C958  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8048C95C  4B ED 58 80 */	b _savegpr_29
/* 8048C960  7C 7D 1B 78 */	mr r29, r3
/* 8048C964  7C 9E 23 78 */	mr r30, r4
/* 8048C968  7C BF 2B 78 */	mr r31, r5
/* 8048C96C  88 03 05 6C */	lbz r0, 0x56c(r3)
/* 8048C970  28 00 00 00 */	cmplwi r0, 0
/* 8048C974  40 82 02 F0 */	bne lbl_8048CC64
/* 8048C978  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8048C97C  54 04 05 3E */	clrlwi r4, r0, 0x14
/* 8048C980  28 04 0F FF */	cmplwi r4, 0xfff
/* 8048C984  38 60 FF FF */	li r3, -1
/* 8048C988  41 82 00 08 */	beq lbl_8048C990
/* 8048C98C  7C 83 23 78 */	mr r3, r4
lbl_8048C990:
/* 8048C990  3C 03 00 01 */	addis r0, r3, 1
/* 8048C994  28 00 FF FF */	cmplwi r0, 0xffff
/* 8048C998  41 82 00 20 */	beq lbl_8048C9B8
/* 8048C99C  28 04 0F FF */	cmplwi r4, 0xfff
/* 8048C9A0  38 60 FF FF */	li r3, -1
/* 8048C9A4  41 82 00 08 */	beq lbl_8048C9AC
/* 8048C9A8  7C 83 23 78 */	mr r3, r4
lbl_8048C9AC:
/* 8048C9AC  4B CC 01 00 */	b daNpcT_chkEvtBit__FUl
/* 8048C9B0  2C 03 00 00 */	cmpwi r3, 0
/* 8048C9B4  40 82 00 64 */	bne lbl_8048CA18
lbl_8048C9B8:
/* 8048C9B8  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 8048C9BC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8048C9C0  28 04 00 FF */	cmplwi r4, 0xff
/* 8048C9C4  41 82 00 20 */	beq lbl_8048C9E4
/* 8048C9C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048C9CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048C9D0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8048C9D4  7C 05 07 74 */	extsb r5, r0
/* 8048C9D8  4B BA 89 88 */	b isSwitch__10dSv_info_cCFii
/* 8048C9DC  2C 03 00 00 */	cmpwi r3, 0
/* 8048C9E0  40 82 00 38 */	bne lbl_8048CA18
lbl_8048C9E4:
/* 8048C9E4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8048C9E8  54 00 05 3E */	clrlwi r0, r0, 0x14
/* 8048C9EC  28 00 0F FF */	cmplwi r0, 0xfff
/* 8048C9F0  38 60 FF FF */	li r3, -1
/* 8048C9F4  41 82 00 08 */	beq lbl_8048C9FC
/* 8048C9F8  7C 03 03 78 */	mr r3, r0
lbl_8048C9FC:
/* 8048C9FC  3C 03 00 01 */	addis r0, r3, 1
/* 8048CA00  28 00 FF FF */	cmplwi r0, 0xffff
/* 8048CA04  40 82 02 60 */	bne lbl_8048CC64
/* 8048CA08  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 8048CA0C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8048CA10  28 00 00 FF */	cmplwi r0, 0xff
/* 8048CA14  40 82 02 50 */	bne lbl_8048CC64
lbl_8048CA18:
/* 8048CA18  38 61 00 5C */	addi r3, r1, 0x5c
/* 8048CA1C  38 9D 04 EC */	addi r4, r29, 0x4ec
/* 8048CA20  7F E5 FB 78 */	mr r5, r31
/* 8048CA24  4B DD A0 C0 */	b __pl__4cXyzCFRC3Vec
/* 8048CA28  C0 C1 00 5C */	lfs f6, 0x5c(r1)
/* 8048CA2C  D0 C1 00 8C */	stfs f6, 0x8c(r1)
/* 8048CA30  C0 A1 00 60 */	lfs f5, 0x60(r1)
/* 8048CA34  D0 A1 00 90 */	stfs f5, 0x90(r1)
/* 8048CA38  C0 81 00 64 */	lfs f4, 0x64(r1)
/* 8048CA3C  D0 81 00 94 */	stfs f4, 0x94(r1)
/* 8048CA40  A8 1D 04 E8 */	lha r0, 0x4e8(r29)
/* 8048CA44  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8048CA48  38 85 FF 01 */	addi r4, r5, -255
/* 8048CA4C  30 04 FF FF */	addic r0, r4, -1
/* 8048CA50  7C 00 01 10 */	subfe r0, r0, r0
/* 8048CA54  7C A0 00 78 */	andc r0, r5, r0
/* 8048CA58  2C 00 00 0F */	cmpwi r0, 0xf
/* 8048CA5C  41 82 00 18 */	beq lbl_8048CA74
/* 8048CA60  30 04 FF FF */	addic r0, r4, -1
/* 8048CA64  7C 00 01 10 */	subfe r0, r0, r0
/* 8048CA68  7C A0 00 78 */	andc r0, r5, r0
/* 8048CA6C  2C 00 00 10 */	cmpwi r0, 0x10
/* 8048CA70  40 82 01 20 */	bne lbl_8048CB90
lbl_8048CA74:
/* 8048CA74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048CA78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048CA7C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8048CA80  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8048CA84  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8048CA88  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8048CA8C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8048CA90  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8048CA94  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8048CA98  38 61 00 74 */	addi r3, r1, 0x74
/* 8048CA9C  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 8048CAA0  7C 65 1B 78 */	mr r5, r3
/* 8048CAA4  4B EB A6 10 */	b PSVECSubtract
/* 8048CAA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8048CAAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8048CAB0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8048CAB4  7C 00 00 D0 */	neg r0, r0
/* 8048CAB8  7C 04 07 34 */	extsh r4, r0
/* 8048CABC  4B B7 F9 20 */	b mDoMtx_YrotS__FPA4_fs
/* 8048CAC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8048CAC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8048CAC8  38 81 00 74 */	addi r4, r1, 0x74
/* 8048CACC  7C 85 23 78 */	mr r5, r4
/* 8048CAD0  4B EB A2 9C */	b PSMTXMultVec
/* 8048CAD4  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 8048CAD8  FC 00 08 50 */	fneg f0, f1
/* 8048CADC  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8048CAE0  C0 61 00 94 */	lfs f3, 0x94(r1)
/* 8048CAE4  FC 40 18 50 */	fneg f2, f3
/* 8048CAE8  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 8048CAEC  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 8048CAF0  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 8048CAF4  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 8048CAF8  D0 61 00 B8 */	stfs f3, 0xb8(r1)
/* 8048CAFC  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8048CB00  D0 61 00 C4 */	stfs f3, 0xc4(r1)
/* 8048CB04  FC 00 00 18 */	frsp f0, f0
/* 8048CB08  C0 81 00 74 */	lfs f4, 0x74(r1)
/* 8048CB0C  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 8048CB10  40 80 01 54 */	bge lbl_8048CC64
/* 8048CB14  FC 00 10 18 */	frsp f0, f2
/* 8048CB18  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 8048CB1C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8048CB20  40 80 01 44 */	bge lbl_8048CC64
/* 8048CB24  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 8048CB28  40 81 01 3C */	ble lbl_8048CC64
/* 8048CB2C  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 8048CB30  40 81 01 34 */	ble lbl_8048CC64
/* 8048CB34  38 61 00 50 */	addi r3, r1, 0x50
/* 8048CB38  7F C4 F3 78 */	mr r4, r30
/* 8048CB3C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8048CB40  4B DD 9F F4 */	b __mi__4cXyzCFRC3Vec
/* 8048CB44  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8048CB48  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8048CB4C  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 8048CB50  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 8048CB54  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8048CB58  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8048CB5C  FC 00 08 1E */	fctiwz f0, f1
/* 8048CB60  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 8048CB64  80 61 00 CC */	lwz r3, 0xcc(r1)
/* 8048CB68  2C 03 00 00 */	cmpwi r3, 0
/* 8048CB6C  41 80 00 F8 */	blt lbl_8048CC64
/* 8048CB70  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8048CB74  FC 00 00 1E */	fctiwz f0, f0
/* 8048CB78  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 8048CB7C  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 8048CB80  7C 03 00 00 */	cmpw r3, r0
/* 8048CB84  40 80 00 E0 */	bge lbl_8048CC64
/* 8048CB88  38 60 00 01 */	li r3, 1
/* 8048CB8C  48 00 00 DC */	b lbl_8048CC68
lbl_8048CB90:
/* 8048CB90  C0 7D 04 D0 */	lfs f3, 0x4d0(r29)
/* 8048CB94  D0 61 00 80 */	stfs f3, 0x80(r1)
/* 8048CB98  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8048CB9C  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8048CBA0  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8048CBA4  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 8048CBA8  3C 60 80 49 */	lis r3, lit_4146@ha
/* 8048CBAC  C0 03 CD E4 */	lfs f0, lit_4146@l(r3)
/* 8048CBB0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8048CBB4  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8048CBB8  30 04 FF FF */	addic r0, r4, -1
/* 8048CBBC  7C 00 01 10 */	subfe r0, r0, r0
/* 8048CBC0  7C A0 00 78 */	andc r0, r5, r0
/* 8048CBC4  2C 00 00 15 */	cmpwi r0, 0x15
/* 8048CBC8  40 82 00 50 */	bne lbl_8048CC18
/* 8048CBCC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8048CBD0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8048CBD4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8048CBD8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8048CBDC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8048CBE0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8048CBE4  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 8048CBE8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8048CBEC  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8048CBF0  D0 C1 00 2C */	stfs f6, 0x2c(r1)
/* 8048CBF4  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 8048CBF8  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 8048CBFC  38 61 00 44 */	addi r3, r1, 0x44
/* 8048CC00  38 81 00 38 */	addi r4, r1, 0x38
/* 8048CC04  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8048CC08  A8 DD 04 E6 */	lha r6, 0x4e6(r29)
/* 8048CC0C  38 E0 00 00 */	li r7, 0
/* 8048CC10  4B CB F7 74 */	b daNpcT_chkPointInArea__F4cXyz4cXyz4cXyzsi
/* 8048CC14  48 00 00 54 */	b lbl_8048CC68
lbl_8048CC18:
/* 8048CC18  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8048CC1C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8048CC20  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8048CC24  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8048CC28  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8048CC2C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8048CC30  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8048CC34  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8048CC38  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8048CC3C  D0 C1 00 08 */	stfs f6, 8(r1)
/* 8048CC40  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 8048CC44  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 8048CC48  38 61 00 20 */	addi r3, r1, 0x20
/* 8048CC4C  38 81 00 14 */	addi r4, r1, 0x14
/* 8048CC50  38 A1 00 08 */	addi r5, r1, 8
/* 8048CC54  A8 DD 04 E6 */	lha r6, 0x4e6(r29)
/* 8048CC58  38 E0 00 01 */	li r7, 1
/* 8048CC5C  4B CB F7 28 */	b daNpcT_chkPointInArea__F4cXyz4cXyz4cXyzsi
/* 8048CC60  48 00 00 08 */	b lbl_8048CC68
lbl_8048CC64:
/* 8048CC64  38 60 00 00 */	li r3, 0
lbl_8048CC68:
/* 8048CC68  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8048CC6C  4B ED 55 BC */	b _restgpr_29
/* 8048CC70  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8048CC74  7C 08 03 A6 */	mtlr r0
/* 8048CC78  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8048CC7C  4E 80 00 20 */	blr 
