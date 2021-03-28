lbl_805F6068:
/* 805F6068  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F606C  7C 08 02 A6 */	mflr r0
/* 805F6070  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F6074  39 61 00 20 */	addi r11, r1, 0x20
/* 805F6078  4B D6 C1 60 */	b _savegpr_28
/* 805F607C  7C 7E 1B 78 */	mr r30, r3
/* 805F6080  3C 60 80 60 */	lis r3, lit_3815@ha
/* 805F6084  3B E3 26 64 */	addi r31, r3, lit_3815@l
/* 805F6088  C0 3E 0C 38 */	lfs f1, 0xc38(r30)
/* 805F608C  AB BE 0C 3C */	lha r29, 0xc3c(r30)
/* 805F6090  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 805F6094  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805F6098  FC 00 00 1E */	fctiwz f0, f0
/* 805F609C  D8 01 00 08 */	stfd f0, 8(r1)
/* 805F60A0  83 81 00 0C */	lwz r28, 0xc(r1)
/* 805F60A4  A8 1E 05 BC */	lha r0, 0x5bc(r30)
/* 805F60A8  2C 00 00 01 */	cmpwi r0, 1
/* 805F60AC  41 82 00 F0 */	beq lbl_805F619C
/* 805F60B0  40 80 00 10 */	bge lbl_805F60C0
/* 805F60B4  2C 00 00 00 */	cmpwi r0, 0
/* 805F60B8  40 80 00 14 */	bge lbl_805F60CC
/* 805F60BC  48 00 01 AC */	b lbl_805F6268
lbl_805F60C0:
/* 805F60C0  2C 00 00 03 */	cmpwi r0, 3
/* 805F60C4  40 80 01 A4 */	bge lbl_805F6268
/* 805F60C8  48 00 01 70 */	b lbl_805F6238
lbl_805F60CC:
/* 805F60CC  88 1E 0C 76 */	lbz r0, 0xc76(r30)
/* 805F60D0  28 00 00 00 */	cmplwi r0, 0
/* 805F60D4  41 82 00 18 */	beq lbl_805F60EC
/* 805F60D8  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 805F60DC  3C 63 00 01 */	addis r3, r3, 1
/* 805F60E0  38 03 80 00 */	addi r0, r3, -32768
/* 805F60E4  B0 1E 05 CC */	sth r0, 0x5cc(r30)
/* 805F60E8  48 00 00 2C */	b lbl_805F6114
lbl_805F60EC:
/* 805F60EC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805F60F0  4B C7 18 64 */	b cM_rndF__Ff
/* 805F60F4  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 805F60F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F60FC  40 80 00 10 */	bge lbl_805F610C
/* 805F6100  38 1D 20 00 */	addi r0, r29, 0x2000
/* 805F6104  B0 1E 05 CC */	sth r0, 0x5cc(r30)
/* 805F6108  48 00 00 0C */	b lbl_805F6114
lbl_805F610C:
/* 805F610C  38 1D E0 00 */	addi r0, r29, -8192
/* 805F6110  B0 1E 05 CC */	sth r0, 0x5cc(r30)
lbl_805F6114:
/* 805F6114  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 805F6118  A8 1E 05 CC */	lha r0, 0x5cc(r30)
/* 805F611C  7C 03 00 50 */	subf r0, r3, r0
/* 805F6120  7C 00 07 35 */	extsh. r0, r0
/* 805F6124  40 81 00 38 */	ble lbl_805F615C
/* 805F6128  7F C3 F3 78 */	mr r3, r30
/* 805F612C  38 80 00 43 */	li r4, 0x43
/* 805F6130  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 805F6134  38 A0 00 00 */	li r5, 0
/* 805F6138  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F613C  4B FF E9 59 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F6140  7F C3 F3 78 */	mr r3, r30
/* 805F6144  38 80 00 0C */	li r4, 0xc
/* 805F6148  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 805F614C  38 A0 00 00 */	li r5, 0
/* 805F6150  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F6154  4B FF E9 F5 */	bl h_anm_init__FP11b_gnd_classifUcf
/* 805F6158  48 00 00 34 */	b lbl_805F618C
lbl_805F615C:
/* 805F615C  7F C3 F3 78 */	mr r3, r30
/* 805F6160  38 80 00 44 */	li r4, 0x44
/* 805F6164  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 805F6168  38 A0 00 00 */	li r5, 0
/* 805F616C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F6170  4B FF E9 25 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F6174  7F C3 F3 78 */	mr r3, r30
/* 805F6178  38 80 00 0D */	li r4, 0xd
/* 805F617C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 805F6180  38 A0 00 00 */	li r5, 0
/* 805F6184  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F6188  4B FF E9 C1 */	bl h_anm_init__FP11b_gnd_classifUcf
lbl_805F618C:
/* 805F618C  38 00 00 01 */	li r0, 1
/* 805F6190  B0 1E 05 BC */	sth r0, 0x5bc(r30)
/* 805F6194  38 00 01 00 */	li r0, 0x100
/* 805F6198  B0 1E 0C 68 */	sth r0, 0xc68(r30)
lbl_805F619C:
/* 805F619C  2C 1C 00 0C */	cmpwi r28, 0xc
/* 805F61A0  41 80 00 2C */	blt lbl_805F61CC
/* 805F61A4  38 7E 04 DE */	addi r3, r30, 0x4de
/* 805F61A8  A8 9E 05 CC */	lha r4, 0x5cc(r30)
/* 805F61AC  38 A0 00 04 */	li r5, 4
/* 805F61B0  A8 DE 0C 68 */	lha r6, 0xc68(r30)
/* 805F61B4  4B C7 A4 54 */	b cLib_addCalcAngleS2__FPssss
/* 805F61B8  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 805F61BC  38 80 04 00 */	li r4, 0x400
/* 805F61C0  38 A0 00 01 */	li r5, 1
/* 805F61C4  38 C0 00 80 */	li r6, 0x80
/* 805F61C8  4B C7 A4 40 */	b cLib_addCalcAngleS2__FPssss
lbl_805F61CC:
/* 805F61CC  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805F61D0  38 80 00 01 */	li r4, 1
/* 805F61D4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F61D8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F61DC  40 82 00 18 */	bne lbl_805F61F4
/* 805F61E0  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805F61E4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F61E8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F61EC  41 82 00 08 */	beq lbl_805F61F4
/* 805F61F0  38 80 00 00 */	li r4, 0
lbl_805F61F4:
/* 805F61F4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F61F8  41 82 00 70 */	beq lbl_805F6268
/* 805F61FC  7F C3 F3 78 */	mr r3, r30
/* 805F6200  38 80 00 4B */	li r4, 0x4b
/* 805F6204  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 805F6208  38 A0 00 02 */	li r5, 2
/* 805F620C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F6210  4B FF E8 85 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F6214  7F C3 F3 78 */	mr r3, r30
/* 805F6218  38 80 00 0F */	li r4, 0xf
/* 805F621C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 805F6220  38 A0 00 02 */	li r5, 2
/* 805F6224  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F6228  4B FF E9 21 */	bl h_anm_init__FP11b_gnd_classifUcf
/* 805F622C  38 00 00 02 */	li r0, 2
/* 805F6230  B0 1E 05 BC */	sth r0, 0x5bc(r30)
/* 805F6234  48 00 00 34 */	b lbl_805F6268
lbl_805F6238:
/* 805F6238  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 805F623C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F6240  41 80 00 10 */	blt lbl_805F6250
/* 805F6244  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 805F6248  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F624C  40 81 00 1C */	ble lbl_805F6268
lbl_805F6250:
/* 805F6250  38 00 00 04 */	li r0, 4
/* 805F6254  B0 1E 0A FE */	sth r0, 0xafe(r30)
/* 805F6258  38 00 00 00 */	li r0, 0
/* 805F625C  B0 1E 05 BC */	sth r0, 0x5bc(r30)
/* 805F6260  38 00 00 64 */	li r0, 0x64
/* 805F6264  B0 1E 0C 4A */	sth r0, 0xc4a(r30)
lbl_805F6268:
/* 805F6268  38 7E 05 2C */	addi r3, r30, 0x52c
/* 805F626C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805F6270  FC 40 08 90 */	fmr f2, f1
/* 805F6274  4B C7 98 0C */	b cLib_addCalc0__FPfff
/* 805F6278  39 61 00 20 */	addi r11, r1, 0x20
/* 805F627C  4B D6 BF A8 */	b _restgpr_28
/* 805F6280  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F6284  7C 08 03 A6 */	mtlr r0
/* 805F6288  38 21 00 20 */	addi r1, r1, 0x20
/* 805F628C  4E 80 00 20 */	blr 
