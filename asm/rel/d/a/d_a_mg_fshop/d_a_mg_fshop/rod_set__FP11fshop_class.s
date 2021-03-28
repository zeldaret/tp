lbl_8086C9D0:
/* 8086C9D0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8086C9D4  7C 08 02 A6 */	mflr r0
/* 8086C9D8  90 01 00 94 */	stw r0, 0x94(r1)
/* 8086C9DC  39 61 00 90 */	addi r11, r1, 0x90
/* 8086C9E0  4B AF 57 D0 */	b _savegpr_18
/* 8086C9E4  3C 80 80 87 */	lis r4, lit_3829@ha
/* 8086C9E8  3A C4 00 94 */	addi r22, r4, lit_3829@l
/* 8086C9EC  3A A3 11 74 */	addi r21, r3, 0x1174
/* 8086C9F0  3A 80 00 00 */	li r20, 0
/* 8086C9F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8086C9F8  3A E3 D4 70 */	addi r23, r3, now__14mDoMtx_stack_c@l
/* 8086C9FC  3C 60 80 87 */	lis r3, guide_p@ha
/* 8086CA00  3B 83 07 74 */	addi r28, r3, guide_p@l
/* 8086CA04  3C 60 80 87 */	lis r3, guide_s@ha
/* 8086CA08  3B A3 07 8C */	addi r29, r3, guide_s@l
/* 8086CA0C  7E FE BB 78 */	mr r30, r23
/* 8086CA10  7E FF BB 78 */	mr r31, r23
/* 8086CA14  7E F8 BB 78 */	mr r24, r23
/* 8086CA18  7E F9 BB 78 */	mr r25, r23
/* 8086CA1C  7E FA BB 78 */	mr r26, r23
/* 8086CA20  7E FB BB 78 */	mr r27, r23
lbl_8086CA24:
/* 8086CA24  7F 03 C3 78 */	mr r3, r24
/* 8086CA28  C0 35 00 00 */	lfs f1, 0(r21)
/* 8086CA2C  C0 55 00 04 */	lfs f2, 4(r21)
/* 8086CA30  C0 75 00 08 */	lfs f3, 8(r21)
/* 8086CA34  4B AD 9E B4 */	b PSMTXTrans
/* 8086CA38  2C 14 00 00 */	cmpwi r20, 0
/* 8086CA3C  40 82 00 18 */	bne lbl_8086CA54
/* 8086CA40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8086CA44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8086CA48  38 80 D1 20 */	li r4, -12000
/* 8086CA4C  4B 79 F9 E8 */	b mDoMtx_YrotM__FPA4_fs
/* 8086CA50  48 00 00 30 */	b lbl_8086CA80
lbl_8086CA54:
/* 8086CA54  2C 14 00 01 */	cmpwi r20, 1
/* 8086CA58  40 82 00 18 */	bne lbl_8086CA70
/* 8086CA5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8086CA60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8086CA64  38 80 DC D8 */	li r4, -9000
/* 8086CA68  4B 79 F9 CC */	b mDoMtx_YrotM__FPA4_fs
/* 8086CA6C  48 00 00 14 */	b lbl_8086CA80
lbl_8086CA70:
/* 8086CA70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8086CA74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8086CA78  38 80 C1 80 */	li r4, -16000
/* 8086CA7C  4B 79 F9 B8 */	b mDoMtx_YrotM__FPA4_fs
lbl_8086CA80:
/* 8086CA80  7F 23 CB 78 */	mr r3, r25
/* 8086CA84  38 80 05 14 */	li r4, 0x514
/* 8086CA88  4B 79 F9 14 */	b mDoMtx_XrotM__FPA4_fs
/* 8086CA8C  7F 43 D3 78 */	mr r3, r26
/* 8086CA90  38 80 00 00 */	li r4, 0
/* 8086CA94  4B 79 F9 A0 */	b mDoMtx_YrotM__FPA4_fs
/* 8086CA98  7F 63 DB 78 */	mr r3, r27
/* 8086CA9C  80 95 00 14 */	lwz r4, 0x14(r21)
/* 8086CAA0  38 84 00 24 */	addi r4, r4, 0x24
/* 8086CAA4  4B AD 9A 0C */	b PSMTXCopy
/* 8086CAA8  80 75 00 48 */	lwz r3, 0x48(r21)
/* 8086CAAC  82 63 00 00 */	lwz r19, 0(r3)
/* 8086CAB0  80 15 00 4C */	lwz r0, 0x4c(r21)
/* 8086CAB4  2C 00 00 00 */	cmpwi r0, 0
/* 8086CAB8  40 82 00 18 */	bne lbl_8086CAD0
/* 8086CABC  C0 36 00 1C */	lfs f1, 0x1c(r22)
/* 8086CAC0  C0 56 00 3C */	lfs f2, 0x3c(r22)
/* 8086CAC4  FC 60 08 90 */	fmr f3, f1
/* 8086CAC8  4B 7A 02 D4 */	b transM__14mDoMtx_stack_cFfff
/* 8086CACC  48 00 00 14 */	b lbl_8086CAE0
lbl_8086CAD0:
/* 8086CAD0  C0 36 00 1C */	lfs f1, 0x1c(r22)
/* 8086CAD4  C0 56 00 3C */	lfs f2, 0x3c(r22)
/* 8086CAD8  C0 76 00 40 */	lfs f3, 0x40(r22)
/* 8086CADC  4B 7A 02 C0 */	b transM__14mDoMtx_stack_cFfff
lbl_8086CAE0:
/* 8086CAE0  3A 40 00 00 */	li r18, 0
lbl_8086CAE4:
/* 8086CAE4  C0 17 00 0C */	lfs f0, 0xc(r23)
/* 8086CAE8  D0 13 00 00 */	stfs f0, 0(r19)
/* 8086CAEC  C0 17 00 1C */	lfs f0, 0x1c(r23)
/* 8086CAF0  D0 13 00 04 */	stfs f0, 4(r19)
/* 8086CAF4  C0 17 00 2C */	lfs f0, 0x2c(r23)
/* 8086CAF8  D0 13 00 08 */	stfs f0, 8(r19)
/* 8086CAFC  2C 12 00 00 */	cmpwi r18, 0
/* 8086CB00  40 82 00 20 */	bne lbl_8086CB20
/* 8086CB04  C0 13 00 00 */	lfs f0, 0(r19)
/* 8086CB08  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8086CB0C  C0 13 00 04 */	lfs f0, 4(r19)
/* 8086CB10  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8086CB14  C0 13 00 08 */	lfs f0, 8(r19)
/* 8086CB18  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8086CB1C  48 00 00 24 */	b lbl_8086CB40
lbl_8086CB20:
/* 8086CB20  2C 12 00 07 */	cmpwi r18, 7
/* 8086CB24  40 82 00 1C */	bne lbl_8086CB40
/* 8086CB28  C0 13 00 00 */	lfs f0, 0(r19)
/* 8086CB2C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8086CB30  C0 13 00 04 */	lfs f0, 4(r19)
/* 8086CB34  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8086CB38  C0 13 00 08 */	lfs f0, 8(r19)
/* 8086CB3C  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_8086CB40:
/* 8086CB40  C0 36 00 1C */	lfs f1, 0x1c(r22)
/* 8086CB44  C0 55 00 54 */	lfs f2, 0x54(r21)
/* 8086CB48  FC 60 08 90 */	fmr f3, f1
/* 8086CB4C  4B 7A 02 50 */	b transM__14mDoMtx_stack_cFfff
/* 8086CB50  3A 52 00 01 */	addi r18, r18, 1
/* 8086CB54  2C 12 00 08 */	cmpwi r18, 8
/* 8086CB58  3A 73 00 0C */	addi r19, r19, 0xc
/* 8086CB5C  41 80 FF 88 */	blt lbl_8086CAE4
/* 8086CB60  3A 40 00 00 */	li r18, 0
/* 8086CB64  3A 60 00 00 */	li r19, 0
lbl_8086CB68:
/* 8086CB68  38 61 00 20 */	addi r3, r1, 0x20
/* 8086CB6C  38 81 00 44 */	addi r4, r1, 0x44
/* 8086CB70  38 A1 00 38 */	addi r5, r1, 0x38
/* 8086CB74  4B 9F 9F C0 */	b __mi__4cXyzCFRC3Vec
/* 8086CB78  38 61 00 14 */	addi r3, r1, 0x14
/* 8086CB7C  38 81 00 20 */	addi r4, r1, 0x20
/* 8086CB80  7C 3C 9C 2E */	lfsx f1, r28, r19
/* 8086CB84  4B 9F A0 00 */	b __ml__4cXyzCFf
/* 8086CB88  38 61 00 08 */	addi r3, r1, 8
/* 8086CB8C  38 81 00 38 */	addi r4, r1, 0x38
/* 8086CB90  38 A1 00 14 */	addi r5, r1, 0x14
/* 8086CB94  4B 9F 9F 50 */	b __pl__4cXyzCFRC3Vec
/* 8086CB98  C0 21 00 08 */	lfs f1, 8(r1)
/* 8086CB9C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8086CBA0  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8086CBA4  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8086CBA8  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8086CBAC  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 8086CBB0  7E E3 BB 78 */	mr r3, r23
/* 8086CBB4  4B AD 9D 34 */	b PSMTXTrans
/* 8086CBB8  7C 3D 9C 2E */	lfsx f1, r29, r19
/* 8086CBBC  FC 40 08 90 */	fmr f2, f1
/* 8086CBC0  FC 60 08 90 */	fmr f3, f1
/* 8086CBC4  4B 7A 02 74 */	b scaleM__14mDoMtx_stack_cFfff
/* 8086CBC8  C0 36 00 1C */	lfs f1, 0x1c(r22)
/* 8086CBCC  C0 56 00 44 */	lfs f2, 0x44(r22)
/* 8086CBD0  FC 60 08 90 */	fmr f3, f1
/* 8086CBD4  4B 7A 01 C8 */	b transM__14mDoMtx_stack_cFfff
/* 8086CBD8  7F C3 F3 78 */	mr r3, r30
/* 8086CBDC  38 80 40 00 */	li r4, 0x4000
/* 8086CBE0  4B 79 F8 54 */	b mDoMtx_YrotM__FPA4_fs
/* 8086CBE4  7F E3 FB 78 */	mr r3, r31
/* 8086CBE8  38 13 00 18 */	addi r0, r19, 0x18
/* 8086CBEC  7C 95 00 2E */	lwzx r4, r21, r0
/* 8086CBF0  38 84 00 24 */	addi r4, r4, 0x24
/* 8086CBF4  4B AD 98 BC */	b PSMTXCopy
/* 8086CBF8  3A 52 00 01 */	addi r18, r18, 1
/* 8086CBFC  2C 12 00 06 */	cmpwi r18, 6
/* 8086CC00  3A 73 00 04 */	addi r19, r19, 4
/* 8086CC04  41 80 FF 64 */	blt lbl_8086CB68
/* 8086CC08  3A 94 00 01 */	addi r20, r20, 1
/* 8086CC0C  2C 14 00 03 */	cmpwi r20, 3
/* 8086CC10  3A B5 00 5C */	addi r21, r21, 0x5c
/* 8086CC14  41 80 FE 10 */	blt lbl_8086CA24
/* 8086CC18  39 61 00 90 */	addi r11, r1, 0x90
/* 8086CC1C  4B AF 55 E0 */	b _restgpr_18
/* 8086CC20  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8086CC24  7C 08 03 A6 */	mtlr r0
/* 8086CC28  38 21 00 90 */	addi r1, r1, 0x90
/* 8086CC2C  4E 80 00 20 */	blr 
