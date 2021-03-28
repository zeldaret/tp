lbl_807D901C:
/* 807D901C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807D9020  7C 08 02 A6 */	mflr r0
/* 807D9024  90 01 00 34 */	stw r0, 0x34(r1)
/* 807D9028  39 61 00 30 */	addi r11, r1, 0x30
/* 807D902C  4B B8 91 B0 */	b _savegpr_29
/* 807D9030  7C 7E 1B 78 */	mr r30, r3
/* 807D9034  3C 80 80 7E */	lis r4, lit_3882@ha
/* 807D9038  3B A4 29 8C */	addi r29, r4, lit_3882@l
/* 807D903C  3B E0 00 00 */	li r31, 0
/* 807D9040  38 00 00 0A */	li r0, 0xa
/* 807D9044  B0 03 06 A0 */	sth r0, 0x6a0(r3)
/* 807D9048  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 807D904C  2C 00 00 02 */	cmpwi r0, 2
/* 807D9050  41 82 01 14 */	beq lbl_807D9164
/* 807D9054  40 80 00 14 */	bge lbl_807D9068
/* 807D9058  2C 00 00 00 */	cmpwi r0, 0
/* 807D905C  41 82 00 18 */	beq lbl_807D9074
/* 807D9060  40 80 00 90 */	bge lbl_807D90F0
/* 807D9064  48 00 01 6C */	b lbl_807D91D0
lbl_807D9068:
/* 807D9068  2C 00 00 04 */	cmpwi r0, 4
/* 807D906C  40 80 01 64 */	bge lbl_807D91D0
/* 807D9070  48 00 01 24 */	b lbl_807D9194
lbl_807D9074:
/* 807D9074  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807D9078  D0 01 00 08 */	stfs f0, 8(r1)
/* 807D907C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807D9080  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807D9084  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807D9088  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807D908C  38 61 00 08 */	addi r3, r1, 8
/* 807D9090  38 80 00 64 */	li r4, 0x64
/* 807D9094  28 1E 00 00 */	cmplwi r30, 0
/* 807D9098  41 82 00 0C */	beq lbl_807D90A4
/* 807D909C  80 BE 00 04 */	lwz r5, 4(r30)
/* 807D90A0  48 00 00 08 */	b lbl_807D90A8
lbl_807D90A4:
/* 807D90A4  38 A0 FF FF */	li r5, -1
lbl_807D90A8:
/* 807D90A8  38 C0 00 05 */	li r6, 5
/* 807D90AC  4B 9C F1 14 */	b dKy_Sound_set__F4cXyziUii
/* 807D90B0  7F C3 F3 78 */	mr r3, r30
/* 807D90B4  38 80 00 05 */	li r4, 5
/* 807D90B8  C0 3D 00 DC */	lfs f1, 0xdc(r29)
/* 807D90BC  38 A0 00 00 */	li r5, 0
/* 807D90C0  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 807D90C4  4B FF 94 85 */	bl anm_init__FP10e_wb_classifUcf
/* 807D90C8  38 00 00 01 */	li r0, 1
/* 807D90CC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807D90D0  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 807D90D4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807D90D8  A0 1E 06 BE */	lhz r0, 0x6be(r30)
/* 807D90DC  60 00 00 80 */	ori r0, r0, 0x80
/* 807D90E0  B0 1E 06 BE */	sth r0, 0x6be(r30)
/* 807D90E4  38 00 00 00 */	li r0, 0
/* 807D90E8  B0 1E 14 32 */	sth r0, 0x1432(r30)
/* 807D90EC  48 00 00 E4 */	b lbl_807D91D0
lbl_807D90F0:
/* 807D90F0  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 807D90F4  38 80 00 01 */	li r4, 1
/* 807D90F8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807D90FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D9100  40 82 00 18 */	bne lbl_807D9118
/* 807D9104  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 807D9108  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807D910C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807D9110  41 82 00 08 */	beq lbl_807D9118
/* 807D9114  38 80 00 00 */	li r4, 0
lbl_807D9118:
/* 807D9118  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807D911C  41 82 00 B4 */	beq lbl_807D91D0
/* 807D9120  38 00 00 02 */	li r0, 2
/* 807D9124  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807D9128  7F C3 F3 78 */	mr r3, r30
/* 807D912C  38 80 00 07 */	li r4, 7
/* 807D9130  C0 3D 00 DC */	lfs f1, 0xdc(r29)
/* 807D9134  38 A0 00 02 */	li r5, 2
/* 807D9138  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 807D913C  4B FF 94 0D */	bl anm_init__FP10e_wb_classifUcf
/* 807D9140  C0 3D 00 A8 */	lfs f1, 0xa8(r29)
/* 807D9144  4B A8 E8 10 */	b cM_rndF__Ff
/* 807D9148  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 807D914C  EC 00 08 2A */	fadds f0, f0, f1
/* 807D9150  FC 00 00 1E */	fctiwz f0, f0
/* 807D9154  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807D9158  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807D915C  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 807D9160  48 00 00 70 */	b lbl_807D91D0
lbl_807D9164:
/* 807D9164  3B E0 00 01 */	li r31, 1
/* 807D9168  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 807D916C  2C 00 00 00 */	cmpwi r0, 0
/* 807D9170  40 82 00 60 */	bne lbl_807D91D0
/* 807D9174  38 80 00 06 */	li r4, 6
/* 807D9178  C0 3D 00 D8 */	lfs f1, 0xd8(r29)
/* 807D917C  38 A0 00 00 */	li r5, 0
/* 807D9180  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 807D9184  4B FF 93 C5 */	bl anm_init__FP10e_wb_classifUcf
/* 807D9188  38 00 00 03 */	li r0, 3
/* 807D918C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807D9190  48 00 00 40 */	b lbl_807D91D0
lbl_807D9194:
/* 807D9194  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 807D9198  38 80 00 01 */	li r4, 1
/* 807D919C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807D91A0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D91A4  40 82 00 18 */	bne lbl_807D91BC
/* 807D91A8  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 807D91AC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807D91B0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807D91B4  41 82 00 08 */	beq lbl_807D91BC
/* 807D91B8  38 80 00 00 */	li r4, 0
lbl_807D91BC:
/* 807D91BC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807D91C0  41 82 00 10 */	beq lbl_807D91D0
/* 807D91C4  38 00 00 00 */	li r0, 0
/* 807D91C8  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 807D91CC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_807D91D0:
/* 807D91D0  7F E3 FB 78 */	mr r3, r31
/* 807D91D4  39 61 00 30 */	addi r11, r1, 0x30
/* 807D91D8  4B B8 90 50 */	b _restgpr_29
/* 807D91DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807D91E0  7C 08 03 A6 */	mtlr r0
/* 807D91E4  38 21 00 30 */	addi r1, r1, 0x30
/* 807D91E8  4E 80 00 20 */	blr 
