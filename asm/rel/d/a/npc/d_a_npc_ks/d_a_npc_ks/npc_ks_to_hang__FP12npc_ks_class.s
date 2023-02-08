lbl_80A4D438:
/* 80A4D438  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A4D43C  7C 08 02 A6 */	mflr r0
/* 80A4D440  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A4D444  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80A4D448  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80A4D44C  7C 7E 1B 78 */	mr r30, r3
/* 80A4D450  3C 80 80 A6 */	lis r4, lit_4030@ha /* 0x80A5DEFC@ha */
/* 80A4D454  3B E4 DE FC */	addi r31, r4, lit_4030@l /* 0x80A5DEFC@l */
/* 80A4D458  C0 43 0B C8 */	lfs f2, 0xbc8(r3)
/* 80A4D45C  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80A4D460  C0 23 0B CC */	lfs f1, 0xbcc(r3)
/* 80A4D464  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80A4D468  C0 03 0B D0 */	lfs f0, 0xbd0(r3)
/* 80A4D46C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80A4D470  A8 03 05 EA */	lha r0, 0x5ea(r3)
/* 80A4D474  2C 00 00 02 */	cmpwi r0, 2
/* 80A4D478  41 82 03 E0 */	beq lbl_80A4D858
/* 80A4D47C  40 80 00 14 */	bge lbl_80A4D490
/* 80A4D480  2C 00 00 00 */	cmpwi r0, 0
/* 80A4D484  41 82 00 18 */	beq lbl_80A4D49C
/* 80A4D488  40 80 00 7C */	bge lbl_80A4D504
/* 80A4D48C  48 00 07 3C */	b lbl_80A4DBC8
lbl_80A4D490:
/* 80A4D490  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A4D494  41 82 04 00 */	beq lbl_80A4D894
/* 80A4D498  48 00 07 30 */	b lbl_80A4DBC8
lbl_80A4D49C:
/* 80A4D49C  D0 5E 08 F0 */	stfs f2, 0x8f0(r30)
/* 80A4D4A0  D0 3E 08 F4 */	stfs f1, 0x8f4(r30)
/* 80A4D4A4  D0 1E 08 F8 */	stfs f0, 0x8f8(r30)
/* 80A4D4A8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A4D4AC  D0 1E 09 10 */	stfs f0, 0x910(r30)
/* 80A4D4B0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A4D4B4  D0 1E 09 14 */	stfs f0, 0x914(r30)
/* 80A4D4B8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A4D4BC  D0 1E 09 18 */	stfs f0, 0x918(r30)
/* 80A4D4C0  C0 1E 08 F0 */	lfs f0, 0x8f0(r30)
/* 80A4D4C4  D0 1E 09 1C */	stfs f0, 0x91c(r30)
/* 80A4D4C8  C0 1E 08 F4 */	lfs f0, 0x8f4(r30)
/* 80A4D4CC  D0 1E 09 20 */	stfs f0, 0x920(r30)
/* 80A4D4D0  C0 1E 08 F8 */	lfs f0, 0x8f8(r30)
/* 80A4D4D4  D0 1E 09 24 */	stfs f0, 0x924(r30)
/* 80A4D4D8  38 80 00 20 */	li r4, 0x20
/* 80A4D4DC  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80A4D4E0  38 A0 00 00 */	li r5, 0
/* 80A4D4E4  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4D4E8  4B FF BC BD */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4D4EC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A4D4F0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A4D4F4  A8 7E 05 EA */	lha r3, 0x5ea(r30)
/* 80A4D4F8  38 03 00 01 */	addi r0, r3, 1
/* 80A4D4FC  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4D500  48 00 06 C8 */	b lbl_80A4DBC8
lbl_80A4D504:
/* 80A4D504  38 61 00 40 */	addi r3, r1, 0x40
/* 80A4D508  38 9E 08 F0 */	addi r4, r30, 0x8f0
/* 80A4D50C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80A4D510  4B 81 96 25 */	bl __mi__4cXyzCFRC3Vec
/* 80A4D514  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80A4D518  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80A4D51C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80A4D520  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80A4D524  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80A4D528  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80A4D52C  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 80A4D530  2C 00 00 20 */	cmpwi r0, 0x20
/* 80A4D534  40 82 00 E0 */	bne lbl_80A4D614
/* 80A4D538  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A4D53C  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 80A4D540  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A4D544  38 80 00 01 */	li r4, 1
/* 80A4D548  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A4D54C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A4D550  40 82 00 14 */	bne lbl_80A4D564
/* 80A4D554  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A4D558  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A4D55C  41 82 00 08 */	beq lbl_80A4D564
/* 80A4D560  38 80 00 00 */	li r4, 0
lbl_80A4D564:
/* 80A4D564  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A4D568  41 82 00 AC */	beq lbl_80A4D614
/* 80A4D56C  7F C3 F3 78 */	mr r3, r30
/* 80A4D570  38 80 00 21 */	li r4, 0x21
/* 80A4D574  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A4D578  38 A0 00 00 */	li r5, 0
/* 80A4D57C  FC 40 08 90 */	fmr f2, f1
/* 80A4D580  4B FF BC 25 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4D584  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A4D588  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A4D58C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050016@ha */
/* 80A4D590  38 03 00 16 */	addi r0, r3, 0x0016 /* 0x00050016@l */
/* 80A4D594  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A4D598  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A4D59C  38 81 00 30 */	addi r4, r1, 0x30
/* 80A4D5A0  38 A0 FF FF */	li r5, -1
/* 80A4D5A4  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A4D5A8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A4D5AC  7D 89 03 A6 */	mtctr r12
/* 80A4D5B0  4E 80 04 21 */	bctrl 
/* 80A4D5B4  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060020@ha */
/* 80A4D5B8  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00060020@l */
/* 80A4D5BC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A4D5C0  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A4D5C4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A4D5C8  38 A0 00 00 */	li r5, 0
/* 80A4D5CC  38 C0 FF FF */	li r6, -1
/* 80A4D5D0  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A4D5D4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4D5D8  7D 89 03 A6 */	mtctr r12
/* 80A4D5DC  4E 80 04 21 */	bctrl 
/* 80A4D5E0  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060024@ha */
/* 80A4D5E4  38 03 00 24 */	addi r0, r3, 0x0024 /* 0x00060024@l */
/* 80A4D5E8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A4D5EC  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A4D5F0  38 81 00 28 */	addi r4, r1, 0x28
/* 80A4D5F4  38 A0 00 00 */	li r5, 0
/* 80A4D5F8  38 C0 FF FF */	li r6, -1
/* 80A4D5FC  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A4D600  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4D604  7D 89 03 A6 */	mtctr r12
/* 80A4D608  4E 80 04 21 */	bctrl 
/* 80A4D60C  38 00 00 01 */	li r0, 1
/* 80A4D610  98 1E 0B E0 */	stb r0, 0xbe0(r30)
lbl_80A4D614:
/* 80A4D614  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80A4D618  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 80A4D61C  4B 81 A0 59 */	bl cM_atan2s__Fff
/* 80A4D620  B0 7E 08 FE */	sth r3, 0x8fe(r30)
/* 80A4D624  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80A4D628  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A4D62C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80A4D630  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A4D634  EC 41 00 2A */	fadds f2, f1, f0
/* 80A4D638  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A4D63C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A4D640  40 81 00 0C */	ble lbl_80A4D64C
/* 80A4D644  FC 00 10 34 */	frsqrte f0, f2
/* 80A4D648  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A4D64C:
/* 80A4D64C  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80A4D650  4B 81 A0 25 */	bl cM_atan2s__Fff
/* 80A4D654  7C 03 00 D0 */	neg r0, r3
/* 80A4D658  B0 1E 08 FC */	sth r0, 0x8fc(r30)
/* 80A4D65C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80A4D660  A8 9E 08 FE */	lha r4, 0x8fe(r30)
/* 80A4D664  38 A0 00 01 */	li r5, 1
/* 80A4D668  38 C0 20 00 */	li r6, 0x2000
/* 80A4D66C  4B 82 2F 9D */	bl cLib_addCalcAngleS2__FPssss
/* 80A4D670  38 61 00 58 */	addi r3, r1, 0x58
/* 80A4D674  4B 8F 9A C5 */	bl PSVECSquareMag
/* 80A4D678  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A4D67C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4D680  40 81 00 58 */	ble lbl_80A4D6D8
/* 80A4D684  FC 00 08 34 */	frsqrte f0, f1
/* 80A4D688  C8 9F 00 50 */	lfd f4, 0x50(r31)
/* 80A4D68C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4D690  C8 7F 00 58 */	lfd f3, 0x58(r31)
/* 80A4D694  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4D698  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4D69C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4D6A0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4D6A4  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4D6A8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4D6AC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4D6B0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4D6B4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4D6B8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4D6BC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4D6C0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4D6C4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4D6C8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4D6CC  FC 21 00 32 */	fmul f1, f1, f0
/* 80A4D6D0  FC 20 08 18 */	frsp f1, f1
/* 80A4D6D4  48 00 00 88 */	b lbl_80A4D75C
lbl_80A4D6D8:
/* 80A4D6D8  C8 1F 00 60 */	lfd f0, 0x60(r31)
/* 80A4D6DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4D6E0  40 80 00 10 */	bge lbl_80A4D6F0
/* 80A4D6E4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A4D6E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A4D6EC  48 00 00 70 */	b lbl_80A4D75C
lbl_80A4D6F0:
/* 80A4D6F0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A4D6F4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A4D6F8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A4D6FC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A4D700  7C 03 00 00 */	cmpw r3, r0
/* 80A4D704  41 82 00 14 */	beq lbl_80A4D718
/* 80A4D708  40 80 00 40 */	bge lbl_80A4D748
/* 80A4D70C  2C 03 00 00 */	cmpwi r3, 0
/* 80A4D710  41 82 00 20 */	beq lbl_80A4D730
/* 80A4D714  48 00 00 34 */	b lbl_80A4D748
lbl_80A4D718:
/* 80A4D718  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4D71C  41 82 00 0C */	beq lbl_80A4D728
/* 80A4D720  38 00 00 01 */	li r0, 1
/* 80A4D724  48 00 00 28 */	b lbl_80A4D74C
lbl_80A4D728:
/* 80A4D728  38 00 00 02 */	li r0, 2
/* 80A4D72C  48 00 00 20 */	b lbl_80A4D74C
lbl_80A4D730:
/* 80A4D730  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4D734  41 82 00 0C */	beq lbl_80A4D740
/* 80A4D738  38 00 00 05 */	li r0, 5
/* 80A4D73C  48 00 00 10 */	b lbl_80A4D74C
lbl_80A4D740:
/* 80A4D740  38 00 00 03 */	li r0, 3
/* 80A4D744  48 00 00 08 */	b lbl_80A4D74C
lbl_80A4D748:
/* 80A4D748  38 00 00 04 */	li r0, 4
lbl_80A4D74C:
/* 80A4D74C  2C 00 00 01 */	cmpwi r0, 1
/* 80A4D750  40 82 00 0C */	bne lbl_80A4D75C
/* 80A4D754  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A4D758  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A4D75C:
/* 80A4D75C  C0 5F 00 F8 */	lfs f2, 0xf8(r31)
/* 80A4D760  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80A4D764  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A4D768  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4D76C  4C 40 13 82 */	cror 2, 0, 2
/* 80A4D770  40 82 04 58 */	bne lbl_80A4DBC8
/* 80A4D774  38 00 00 0A */	li r0, 0xa
/* 80A4D778  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4D77C  80 DE 09 34 */	lwz r6, 0x934(r30)
/* 80A4D780  28 06 00 00 */	cmplwi r6, 0
/* 80A4D784  41 82 04 44 */	beq lbl_80A4DBC8
/* 80A4D788  80 A6 09 1C */	lwz r5, 0x91c(r6)
/* 80A4D78C  2C 05 00 01 */	cmpwi r5, 1
/* 80A4D790  40 82 00 18 */	bne lbl_80A4D7A8
/* 80A4D794  80 06 0D 8C */	lwz r0, 0xd8c(r6)
/* 80A4D798  7C 00 0E 70 */	srawi r0, r0, 1
/* 80A4D79C  7C 00 01 94 */	addze r0, r0
/* 80A4D7A0  90 1E 06 30 */	stw r0, 0x630(r30)
/* 80A4D7A4  48 00 00 24 */	b lbl_80A4D7C8
lbl_80A4D7A8:
/* 80A4D7A8  88 7E 05 B6 */	lbz r3, 0x5b6(r30)
/* 80A4D7AC  38 83 00 01 */	addi r4, r3, 1
/* 80A4D7B0  80 66 0D 8C */	lwz r3, 0xd8c(r6)
/* 80A4D7B4  38 05 00 01 */	addi r0, r5, 1
/* 80A4D7B8  7C 03 03 D6 */	divw r0, r3, r0
/* 80A4D7BC  7C 64 01 D6 */	mullw r3, r4, r0
/* 80A4D7C0  38 03 FF FF */	addi r0, r3, -1
/* 80A4D7C4  90 1E 06 30 */	stw r0, 0x630(r30)
lbl_80A4D7C8:
/* 80A4D7C8  28 06 00 00 */	cmplwi r6, 0
/* 80A4D7CC  41 82 00 0C */	beq lbl_80A4D7D8
/* 80A4D7D0  80 06 00 04 */	lwz r0, 4(r6)
/* 80A4D7D4  48 00 00 08 */	b lbl_80A4D7DC
lbl_80A4D7D8:
/* 80A4D7D8  38 00 FF FF */	li r0, -1
lbl_80A4D7DC:
/* 80A4D7DC  90 1E 04 A4 */	stw r0, 0x4a4(r30)
/* 80A4D7E0  C0 1E 08 F0 */	lfs f0, 0x8f0(r30)
/* 80A4D7E4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80A4D7E8  C0 1E 08 F4 */	lfs f0, 0x8f4(r30)
/* 80A4D7EC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A4D7F0  C0 1E 08 F8 */	lfs f0, 0x8f8(r30)
/* 80A4D7F4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80A4D7F8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A4D7FC  D0 1E 09 10 */	stfs f0, 0x910(r30)
/* 80A4D800  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A4D804  D0 1E 09 14 */	stfs f0, 0x914(r30)
/* 80A4D808  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A4D80C  D0 1E 09 18 */	stfs f0, 0x918(r30)
/* 80A4D810  7F C3 F3 78 */	mr r3, r30
/* 80A4D814  38 80 00 20 */	li r4, 0x20
/* 80A4D818  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80A4D81C  38 A0 00 00 */	li r5, 0
/* 80A4D820  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4D824  4B FF B9 81 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4D828  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060021@ha */
/* 80A4D82C  38 03 00 21 */	addi r0, r3, 0x0021 /* 0x00060021@l */
/* 80A4D830  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A4D834  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A4D838  38 81 00 24 */	addi r4, r1, 0x24
/* 80A4D83C  38 A0 00 00 */	li r5, 0
/* 80A4D840  38 C0 FF FF */	li r6, -1
/* 80A4D844  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A4D848  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4D84C  7D 89 03 A6 */	mtctr r12
/* 80A4D850  4E 80 04 21 */	bctrl 
/* 80A4D854  48 00 03 74 */	b lbl_80A4DBC8
lbl_80A4D858:
/* 80A4D858  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A4D85C  38 80 00 01 */	li r4, 1
/* 80A4D860  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A4D864  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A4D868  40 82 00 18 */	bne lbl_80A4D880
/* 80A4D86C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A4D870  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A4D874  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A4D878  41 82 00 08 */	beq lbl_80A4D880
/* 80A4D87C  38 80 00 00 */	li r4, 0
lbl_80A4D880:
/* 80A4D880  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A4D884  41 82 03 44 */	beq lbl_80A4DBC8
/* 80A4D888  38 00 00 00 */	li r0, 0
/* 80A4D88C  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4D890  48 00 03 38 */	b lbl_80A4DBC8
lbl_80A4D894:
/* 80A4D894  80 1E 04 A4 */	lwz r0, 0x4a4(r30)
/* 80A4D898  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A4D89C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80A4D8A0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80A4D8A4  38 81 00 10 */	addi r4, r1, 0x10
/* 80A4D8A8  4B 5C BF 51 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80A4D8AC  80 1E 06 30 */	lwz r0, 0x630(r30)
/* 80A4D8B0  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80A4D8B4  38 84 09 20 */	addi r4, r4, 0x920
/* 80A4D8B8  7C 83 22 14 */	add r4, r3, r4
/* 80A4D8BC  C0 04 00 00 */	lfs f0, 0(r4)
/* 80A4D8C0  D0 1E 08 F0 */	stfs f0, 0x8f0(r30)
/* 80A4D8C4  C0 04 00 04 */	lfs f0, 4(r4)
/* 80A4D8C8  D0 1E 08 F4 */	stfs f0, 0x8f4(r30)
/* 80A4D8CC  C0 04 00 08 */	lfs f0, 8(r4)
/* 80A4D8D0  D0 1E 08 F8 */	stfs f0, 0x8f8(r30)
/* 80A4D8D4  C0 1E 08 F0 */	lfs f0, 0x8f0(r30)
/* 80A4D8D8  D0 1E 09 1C */	stfs f0, 0x91c(r30)
/* 80A4D8DC  C0 1E 08 F4 */	lfs f0, 0x8f4(r30)
/* 80A4D8E0  D0 1E 09 20 */	stfs f0, 0x920(r30)
/* 80A4D8E4  C0 1E 08 F8 */	lfs f0, 0x8f8(r30)
/* 80A4D8E8  D0 1E 09 24 */	stfs f0, 0x924(r30)
/* 80A4D8EC  38 61 00 34 */	addi r3, r1, 0x34
/* 80A4D8F0  38 9E 08 F0 */	addi r4, r30, 0x8f0
/* 80A4D8F4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80A4D8F8  4B 81 92 3D */	bl __mi__4cXyzCFRC3Vec
/* 80A4D8FC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80A4D900  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80A4D904  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80A4D908  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80A4D90C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80A4D910  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80A4D914  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 80A4D918  2C 00 00 20 */	cmpwi r0, 0x20
/* 80A4D91C  40 82 00 E0 */	bne lbl_80A4D9FC
/* 80A4D920  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A4D924  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 80A4D928  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A4D92C  38 80 00 01 */	li r4, 1
/* 80A4D930  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A4D934  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A4D938  40 82 00 14 */	bne lbl_80A4D94C
/* 80A4D93C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A4D940  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A4D944  41 82 00 08 */	beq lbl_80A4D94C
/* 80A4D948  38 80 00 00 */	li r4, 0
lbl_80A4D94C:
/* 80A4D94C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A4D950  41 82 00 AC */	beq lbl_80A4D9FC
/* 80A4D954  7F C3 F3 78 */	mr r3, r30
/* 80A4D958  38 80 00 21 */	li r4, 0x21
/* 80A4D95C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A4D960  38 A0 00 00 */	li r5, 0
/* 80A4D964  FC 40 08 90 */	fmr f2, f1
/* 80A4D968  4B FF B8 3D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4D96C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80A4D970  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A4D974  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050016@ha */
/* 80A4D978  38 03 00 16 */	addi r0, r3, 0x0016 /* 0x00050016@l */
/* 80A4D97C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A4D980  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A4D984  38 81 00 20 */	addi r4, r1, 0x20
/* 80A4D988  38 A0 FF FF */	li r5, -1
/* 80A4D98C  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A4D990  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A4D994  7D 89 03 A6 */	mtctr r12
/* 80A4D998  4E 80 04 21 */	bctrl 
/* 80A4D99C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060020@ha */
/* 80A4D9A0  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00060020@l */
/* 80A4D9A4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A4D9A8  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A4D9AC  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A4D9B0  38 A0 00 00 */	li r5, 0
/* 80A4D9B4  38 C0 FF FF */	li r6, -1
/* 80A4D9B8  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A4D9BC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4D9C0  7D 89 03 A6 */	mtctr r12
/* 80A4D9C4  4E 80 04 21 */	bctrl 
/* 80A4D9C8  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060024@ha */
/* 80A4D9CC  38 03 00 24 */	addi r0, r3, 0x0024 /* 0x00060024@l */
/* 80A4D9D0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A4D9D4  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A4D9D8  38 81 00 18 */	addi r4, r1, 0x18
/* 80A4D9DC  38 A0 00 00 */	li r5, 0
/* 80A4D9E0  38 C0 FF FF */	li r6, -1
/* 80A4D9E4  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A4D9E8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4D9EC  7D 89 03 A6 */	mtctr r12
/* 80A4D9F0  4E 80 04 21 */	bctrl 
/* 80A4D9F4  38 00 00 01 */	li r0, 1
/* 80A4D9F8  98 1E 0B E0 */	stb r0, 0xbe0(r30)
lbl_80A4D9FC:
/* 80A4D9FC  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80A4DA00  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 80A4DA04  4B 81 9C 71 */	bl cM_atan2s__Fff
/* 80A4DA08  B0 7E 08 FE */	sth r3, 0x8fe(r30)
/* 80A4DA0C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80A4DA10  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A4DA14  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80A4DA18  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A4DA1C  EC 41 00 2A */	fadds f2, f1, f0
/* 80A4DA20  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A4DA24  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A4DA28  40 81 00 0C */	ble lbl_80A4DA34
/* 80A4DA2C  FC 00 10 34 */	frsqrte f0, f2
/* 80A4DA30  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A4DA34:
/* 80A4DA34  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80A4DA38  4B 81 9C 3D */	bl cM_atan2s__Fff
/* 80A4DA3C  7C 03 00 D0 */	neg r0, r3
/* 80A4DA40  B0 1E 08 FC */	sth r0, 0x8fc(r30)
/* 80A4DA44  38 61 00 58 */	addi r3, r1, 0x58
/* 80A4DA48  4B 8F 96 F1 */	bl PSVECSquareMag
/* 80A4DA4C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A4DA50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4DA54  40 81 00 58 */	ble lbl_80A4DAAC
/* 80A4DA58  FC 00 08 34 */	frsqrte f0, f1
/* 80A4DA5C  C8 9F 00 50 */	lfd f4, 0x50(r31)
/* 80A4DA60  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4DA64  C8 7F 00 58 */	lfd f3, 0x58(r31)
/* 80A4DA68  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4DA6C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4DA70  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4DA74  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4DA78  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4DA7C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4DA80  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4DA84  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4DA88  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4DA8C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4DA90  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4DA94  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4DA98  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4DA9C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4DAA0  FC 21 00 32 */	fmul f1, f1, f0
/* 80A4DAA4  FC 20 08 18 */	frsp f1, f1
/* 80A4DAA8  48 00 00 88 */	b lbl_80A4DB30
lbl_80A4DAAC:
/* 80A4DAAC  C8 1F 00 60 */	lfd f0, 0x60(r31)
/* 80A4DAB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4DAB4  40 80 00 10 */	bge lbl_80A4DAC4
/* 80A4DAB8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A4DABC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A4DAC0  48 00 00 70 */	b lbl_80A4DB30
lbl_80A4DAC4:
/* 80A4DAC4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A4DAC8  80 81 00 08 */	lwz r4, 8(r1)
/* 80A4DACC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A4DAD0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A4DAD4  7C 03 00 00 */	cmpw r3, r0
/* 80A4DAD8  41 82 00 14 */	beq lbl_80A4DAEC
/* 80A4DADC  40 80 00 40 */	bge lbl_80A4DB1C
/* 80A4DAE0  2C 03 00 00 */	cmpwi r3, 0
/* 80A4DAE4  41 82 00 20 */	beq lbl_80A4DB04
/* 80A4DAE8  48 00 00 34 */	b lbl_80A4DB1C
lbl_80A4DAEC:
/* 80A4DAEC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4DAF0  41 82 00 0C */	beq lbl_80A4DAFC
/* 80A4DAF4  38 00 00 01 */	li r0, 1
/* 80A4DAF8  48 00 00 28 */	b lbl_80A4DB20
lbl_80A4DAFC:
/* 80A4DAFC  38 00 00 02 */	li r0, 2
/* 80A4DB00  48 00 00 20 */	b lbl_80A4DB20
lbl_80A4DB04:
/* 80A4DB04  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4DB08  41 82 00 0C */	beq lbl_80A4DB14
/* 80A4DB0C  38 00 00 05 */	li r0, 5
/* 80A4DB10  48 00 00 10 */	b lbl_80A4DB20
lbl_80A4DB14:
/* 80A4DB14  38 00 00 03 */	li r0, 3
/* 80A4DB18  48 00 00 08 */	b lbl_80A4DB20
lbl_80A4DB1C:
/* 80A4DB1C  38 00 00 04 */	li r0, 4
lbl_80A4DB20:
/* 80A4DB20  2C 00 00 01 */	cmpwi r0, 1
/* 80A4DB24  40 82 00 0C */	bne lbl_80A4DB30
/* 80A4DB28  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A4DB2C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A4DB30:
/* 80A4DB30  C0 5F 00 F8 */	lfs f2, 0xf8(r31)
/* 80A4DB34  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80A4DB38  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A4DB3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4DB40  4C 40 13 82 */	cror 2, 0, 2
/* 80A4DB44  40 82 00 84 */	bne lbl_80A4DBC8
/* 80A4DB48  C0 1E 08 F0 */	lfs f0, 0x8f0(r30)
/* 80A4DB4C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80A4DB50  C0 1E 08 F4 */	lfs f0, 0x8f4(r30)
/* 80A4DB54  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A4DB58  C0 1E 08 F8 */	lfs f0, 0x8f8(r30)
/* 80A4DB5C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80A4DB60  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060021@ha */
/* 80A4DB64  38 03 00 21 */	addi r0, r3, 0x0021 /* 0x00060021@l */
/* 80A4DB68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A4DB6C  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A4DB70  38 81 00 14 */	addi r4, r1, 0x14
/* 80A4DB74  38 A0 00 00 */	li r5, 0
/* 80A4DB78  38 C0 FF FF */	li r6, -1
/* 80A4DB7C  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A4DB80  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4DB84  7D 89 03 A6 */	mtctr r12
/* 80A4DB88  4E 80 04 21 */	bctrl 
/* 80A4DB8C  80 7E 09 34 */	lwz r3, 0x934(r30)
/* 80A4DB90  80 03 09 1C */	lwz r0, 0x91c(r3)
/* 80A4DB94  2C 00 00 01 */	cmpwi r0, 1
/* 80A4DB98  40 82 00 18 */	bne lbl_80A4DBB0
/* 80A4DB9C  38 00 00 0B */	li r0, 0xb
/* 80A4DBA0  B0 1E 05 E8 */	sth r0, 0x5e8(r30)
/* 80A4DBA4  38 00 00 00 */	li r0, 0
/* 80A4DBA8  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4DBAC  48 00 00 1C */	b lbl_80A4DBC8
lbl_80A4DBB0:
/* 80A4DBB0  38 00 00 15 */	li r0, 0x15
/* 80A4DBB4  B0 1E 05 E8 */	sth r0, 0x5e8(r30)
/* 80A4DBB8  38 00 00 00 */	li r0, 0
/* 80A4DBBC  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4DBC0  38 00 00 0F */	li r0, 0xf
/* 80A4DBC4  B0 1E 05 F4 */	sth r0, 0x5f4(r30)
lbl_80A4DBC8:
/* 80A4DBC8  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80A4DBCC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80A4DBD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4DBD4  40 81 00 0C */	ble lbl_80A4DBE0
/* 80A4DBD8  38 00 00 01 */	li r0, 1
/* 80A4DBDC  98 1E 09 0C */	stb r0, 0x90c(r30)
lbl_80A4DBE0:
/* 80A4DBE0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80A4DBE4  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80A4DBE8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A4DBEC  7C 08 03 A6 */	mtlr r0
/* 80A4DBF0  38 21 00 70 */	addi r1, r1, 0x70
/* 80A4DBF4  4E 80 00 20 */	blr 
