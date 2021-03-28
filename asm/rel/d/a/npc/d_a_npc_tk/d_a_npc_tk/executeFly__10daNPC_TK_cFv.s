lbl_80B02254:
/* 80B02254  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B02258  7C 08 02 A6 */	mflr r0
/* 80B0225C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B02260  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80B02264  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80B02268  7C 7E 1B 78 */	mr r30, r3
/* 80B0226C  3C 60 80 B1 */	lis r3, lit_3999@ha
/* 80B02270  3B E3 C1 C4 */	addi r31, r3, lit_3999@l
/* 80B02274  38 60 00 01 */	li r3, 1
/* 80B02278  98 7E 06 BD */	stb r3, 0x6bd(r30)
/* 80B0227C  80 1E 06 94 */	lwz r0, 0x694(r30)
/* 80B02280  2C 00 00 01 */	cmpwi r0, 1
/* 80B02284  41 82 00 9C */	beq lbl_80B02320
/* 80B02288  40 80 03 C0 */	bge lbl_80B02648
/* 80B0228C  2C 00 00 00 */	cmpwi r0, 0
/* 80B02290  40 80 00 08 */	bge lbl_80B02298
/* 80B02294  48 00 03 B4 */	b lbl_80B02648
lbl_80B02298:
/* 80B02298  90 7E 06 94 */	stw r3, 0x694(r30)
/* 80B0229C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80B022A0  4B 76 56 B4 */	b cM_rndF__Ff
/* 80B022A4  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80B022A8  EC 00 08 2A */	fadds f0, f0, f1
/* 80B022AC  FC 00 00 1E */	fctiwz f0, f0
/* 80B022B0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80B022B4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80B022B8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B022BC  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80B022C0  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80B022C4  4B 76 56 90 */	b cM_rndF__Ff
/* 80B022C8  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80B022CC  EC 00 08 2A */	fadds f0, f0, f1
/* 80B022D0  FC 00 00 1E */	fctiwz f0, f0
/* 80B022D4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80B022D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B022DC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B022E0  90 1E 06 B4 */	stw r0, 0x6b4(r30)
/* 80B022E4  7F C3 F3 78 */	mr r3, r30
/* 80B022E8  38 80 00 06 */	li r4, 6
/* 80B022EC  38 A0 00 02 */	li r5, 2
/* 80B022F0  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80B022F4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B022F8  4B FF F1 A1 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B022FC  3C 60 80 B1 */	lis r3, l_HIO@ha
/* 80B02300  38 63 C6 0C */	addi r3, r3, l_HIO@l
/* 80B02304  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80B02308  FC 00 00 1E */	fctiwz f0, f0
/* 80B0230C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80B02310  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80B02314  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 80B02318  38 00 00 00 */	li r0, 0
/* 80B0231C  90 1E 06 98 */	stw r0, 0x698(r30)
lbl_80B02320:
/* 80B02320  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80B02324  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B02328  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80B0232C  4B 76 E4 14 */	b cLib_chaseF__FPfff
/* 80B02330  7F C3 F3 78 */	mr r3, r30
/* 80B02334  38 80 00 06 */	li r4, 6
/* 80B02338  4B FF F2 05 */	bl checkBck__10daNPC_TK_cFi
/* 80B0233C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B02340  41 82 00 78 */	beq lbl_80B023B8
/* 80B02344  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80B02348  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80B0234C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B02350  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B02354  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 80B02358  2C 00 00 00 */	cmpwi r0, 0
/* 80B0235C  41 82 00 1C */	beq lbl_80B02378
/* 80B02360  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80B02364  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B02368  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B0236C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80B02370  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B02374  40 81 00 C4 */	ble lbl_80B02438
lbl_80B02378:
/* 80B02378  7F C3 F3 78 */	mr r3, r30
/* 80B0237C  38 80 00 08 */	li r4, 8
/* 80B02380  38 A0 00 02 */	li r5, 2
/* 80B02384  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80B02388  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B0238C  4B FF F1 0D */	bl setBck__10daNPC_TK_cFiUcff
/* 80B02390  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80B02394  4B 76 55 C0 */	b cM_rndF__Ff
/* 80B02398  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80B0239C  EC 00 08 2A */	fadds f0, f0, f1
/* 80B023A0  FC 00 00 1E */	fctiwz f0, f0
/* 80B023A4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80B023A8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80B023AC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B023B0  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80B023B4  48 00 00 84 */	b lbl_80B02438
lbl_80B023B8:
/* 80B023B8  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80B023BC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B023C0  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80B023C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B023C8  4C 41 13 82 */	cror 2, 1, 2
/* 80B023CC  40 82 00 24 */	bne lbl_80B023F0
/* 80B023D0  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80B023D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B023D8  4C 40 13 82 */	cror 2, 0, 2
/* 80B023DC  40 82 00 14 */	bne lbl_80B023F0
/* 80B023E0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80B023E4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80B023E8  EC 01 00 2A */	fadds f0, f1, f0
/* 80B023EC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80B023F0:
/* 80B023F0  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 80B023F4  2C 00 00 00 */	cmpwi r0, 0
/* 80B023F8  40 82 00 40 */	bne lbl_80B02438
/* 80B023FC  7F C3 F3 78 */	mr r3, r30
/* 80B02400  38 80 00 06 */	li r4, 6
/* 80B02404  38 A0 00 02 */	li r5, 2
/* 80B02408  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80B0240C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B02410  4B FF F0 89 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B02414  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80B02418  4B 76 55 3C */	b cM_rndF__Ff
/* 80B0241C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80B02420  EC 00 08 2A */	fadds f0, f0, f1
/* 80B02424  FC 00 00 1E */	fctiwz f0, f0
/* 80B02428  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80B0242C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80B02430  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B02434  90 1E 06 B0 */	stw r0, 0x6b0(r30)
lbl_80B02438:
/* 80B02438  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 80B0243C  2C 00 00 00 */	cmpwi r0, 0
/* 80B02440  40 82 00 38 */	bne lbl_80B02478
/* 80B02444  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80B02448  4B 76 55 0C */	b cM_rndF__Ff
/* 80B0244C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80B02450  EC 00 08 2A */	fadds f0, f0, f1
/* 80B02454  FC 00 00 1E */	fctiwz f0, f0
/* 80B02458  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80B0245C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80B02460  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B02464  90 1E 06 B4 */	stw r0, 0x6b4(r30)
/* 80B02468  80 7E 06 98 */	lwz r3, 0x698(r30)
/* 80B0246C  38 03 00 01 */	addi r0, r3, 1
/* 80B02470  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80B02474  90 1E 06 98 */	stw r0, 0x698(r30)
lbl_80B02478:
/* 80B02478  38 61 00 18 */	addi r3, r1, 0x18
/* 80B0247C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80B02480  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B02484  4B 76 46 B0 */	b __mi__4cXyzCFRC3Vec
/* 80B02488  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B0248C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B02490  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B02494  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B02498  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B0249C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B024A0  38 61 00 0C */	addi r3, r1, 0xc
/* 80B024A4  4B 84 4C 94 */	b PSVECSquareMag
/* 80B024A8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B024AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B024B0  40 81 00 58 */	ble lbl_80B02508
/* 80B024B4  FC 00 08 34 */	frsqrte f0, f1
/* 80B024B8  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B024BC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B024C0  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B024C4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B024C8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B024CC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B024D0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B024D4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B024D8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B024DC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B024E0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B024E4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B024E8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B024EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B024F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B024F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B024F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B024FC  FC 21 00 32 */	fmul f1, f1, f0
/* 80B02500  FC 20 08 18 */	frsp f1, f1
/* 80B02504  48 00 00 88 */	b lbl_80B0258C
lbl_80B02508:
/* 80B02508  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B0250C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B02510  40 80 00 10 */	bge lbl_80B02520
/* 80B02514  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B02518  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B0251C  48 00 00 70 */	b lbl_80B0258C
lbl_80B02520:
/* 80B02520  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B02524  80 81 00 08 */	lwz r4, 8(r1)
/* 80B02528  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B0252C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B02530  7C 03 00 00 */	cmpw r3, r0
/* 80B02534  41 82 00 14 */	beq lbl_80B02548
/* 80B02538  40 80 00 40 */	bge lbl_80B02578
/* 80B0253C  2C 03 00 00 */	cmpwi r3, 0
/* 80B02540  41 82 00 20 */	beq lbl_80B02560
/* 80B02544  48 00 00 34 */	b lbl_80B02578
lbl_80B02548:
/* 80B02548  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B0254C  41 82 00 0C */	beq lbl_80B02558
/* 80B02550  38 00 00 01 */	li r0, 1
/* 80B02554  48 00 00 28 */	b lbl_80B0257C
lbl_80B02558:
/* 80B02558  38 00 00 02 */	li r0, 2
/* 80B0255C  48 00 00 20 */	b lbl_80B0257C
lbl_80B02560:
/* 80B02560  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B02564  41 82 00 0C */	beq lbl_80B02570
/* 80B02568  38 00 00 05 */	li r0, 5
/* 80B0256C  48 00 00 10 */	b lbl_80B0257C
lbl_80B02570:
/* 80B02570  38 00 00 03 */	li r0, 3
/* 80B02574  48 00 00 08 */	b lbl_80B0257C
lbl_80B02578:
/* 80B02578  38 00 00 04 */	li r0, 4
lbl_80B0257C:
/* 80B0257C  2C 00 00 01 */	cmpwi r0, 1
/* 80B02580  40 82 00 0C */	bne lbl_80B0258C
/* 80B02584  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B02588  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B0258C:
/* 80B0258C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80B02590  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B02594  40 81 00 34 */	ble lbl_80B025C8
/* 80B02598  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B0259C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80B025A0  4B 76 E6 64 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B025A4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80B025A8  7C 00 18 50 */	subf r0, r0, r3
/* 80B025AC  7C 00 07 35 */	extsh. r0, r0
/* 80B025B0  40 80 00 10 */	bge lbl_80B025C0
/* 80B025B4  38 00 00 01 */	li r0, 1
/* 80B025B8  90 1E 06 98 */	stw r0, 0x698(r30)
/* 80B025BC  48 00 00 0C */	b lbl_80B025C8
lbl_80B025C0:
/* 80B025C0  38 00 00 00 */	li r0, 0
/* 80B025C4  90 1E 06 98 */	stw r0, 0x698(r30)
lbl_80B025C8:
/* 80B025C8  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 80B025CC  2C 00 00 00 */	cmpwi r0, 0
/* 80B025D0  40 82 00 2C */	bne lbl_80B025FC
/* 80B025D4  38 7E 06 9C */	addi r3, r30, 0x69c
/* 80B025D8  3C 80 80 B1 */	lis r4, l_HIO@ha
/* 80B025DC  38 84 C6 0C */	addi r4, r4, l_HIO@l
/* 80B025E0  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 80B025E4  FC 00 00 1E */	fctiwz f0, f0
/* 80B025E8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80B025EC  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 80B025F0  38 A0 00 10 */	li r5, 0x10
/* 80B025F4  4B 76 E0 DC */	b cLib_chaseS__FPsss
/* 80B025F8  48 00 00 2C */	b lbl_80B02624
lbl_80B025FC:
/* 80B025FC  38 7E 06 9C */	addi r3, r30, 0x69c
/* 80B02600  3C 80 80 B1 */	lis r4, l_HIO@ha
/* 80B02604  38 84 C6 0C */	addi r4, r4, l_HIO@l
/* 80B02608  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 80B0260C  FC 00 00 50 */	fneg f0, f0
/* 80B02610  FC 00 00 1E */	fctiwz f0, f0
/* 80B02614  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80B02618  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 80B0261C  38 A0 00 10 */	li r5, 0x10
/* 80B02620  4B 76 E0 B0 */	b cLib_chaseS__FPsss
lbl_80B02624:
/* 80B02624  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80B02628  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 80B0262C  7C 03 02 14 */	add r0, r3, r0
/* 80B02630  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80B02634  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80B02638  3C 60 80 B1 */	lis r3, l_HIO@ha
/* 80B0263C  38 63 C6 0C */	addi r3, r3, l_HIO@l
/* 80B02640  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B02644  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80B02648:
/* 80B02648  88 1E 06 C4 */	lbz r0, 0x6c4(r30)
/* 80B0264C  28 00 00 00 */	cmplwi r0, 0
/* 80B02650  40 82 00 90 */	bne lbl_80B026E0
/* 80B02654  3C 60 80 B0 */	lis r3, s_hanjo__FPvPv@ha
/* 80B02658  38 63 22 08 */	addi r3, r3, s_hanjo__FPvPv@l
/* 80B0265C  7F C4 F3 78 */	mr r4, r30
/* 80B02660  4B 51 EC D8 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80B02664  90 7E 06 38 */	stw r3, 0x638(r30)
/* 80B02668  80 1E 06 38 */	lwz r0, 0x638(r30)
/* 80B0266C  28 00 00 00 */	cmplwi r0, 0
/* 80B02670  41 82 00 28 */	beq lbl_80B02698
/* 80B02674  38 00 00 01 */	li r0, 1
/* 80B02678  98 1E 06 C4 */	stb r0, 0x6c4(r30)
/* 80B0267C  80 7E 06 38 */	lwz r3, 0x638(r30)
/* 80B02680  4B EF 76 18 */	b getType__13daNpc_Hanjo_cFv
/* 80B02684  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80B02688  28 00 00 01 */	cmplwi r0, 1
/* 80B0268C  41 82 00 0C */	beq lbl_80B02698
/* 80B02690  38 00 00 00 */	li r0, 0
/* 80B02694  90 1E 06 38 */	stw r0, 0x638(r30)
lbl_80B02698:
/* 80B02698  80 1E 06 38 */	lwz r0, 0x638(r30)
/* 80B0269C  28 00 00 00 */	cmplwi r0, 0
/* 80B026A0  41 82 00 40 */	beq lbl_80B026E0
/* 80B026A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B026A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B026AC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80B026B0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80B026B4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80B026B8  A0 84 01 9E */	lhz r4, 0x19e(r4)
/* 80B026BC  4B 53 23 00 */	b isEventBit__11dSv_event_cCFUs
/* 80B026C0  2C 03 00 00 */	cmpwi r3, 0
/* 80B026C4  41 82 00 1C */	beq lbl_80B026E0
/* 80B026C8  7F C3 F3 78 */	mr r3, r30
/* 80B026CC  38 80 00 06 */	li r4, 6
/* 80B026D0  4B FF F1 A9 */	bl setActionMode__10daNPC_TK_cFi
/* 80B026D4  80 1E 09 F0 */	lwz r0, 0x9f0(r30)
/* 80B026D8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B026DC  90 1E 09 F0 */	stw r0, 0x9f0(r30)
lbl_80B026E0:
/* 80B026E0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80B026E4  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80B026E8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B026EC  7C 08 03 A6 */	mtlr r0
/* 80B026F0  38 21 00 50 */	addi r1, r1, 0x50
/* 80B026F4  4E 80 00 20 */	blr 
