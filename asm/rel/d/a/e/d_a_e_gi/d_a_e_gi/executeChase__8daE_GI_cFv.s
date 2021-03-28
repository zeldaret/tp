lbl_806CE858:
/* 806CE858  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806CE85C  7C 08 02 A6 */	mflr r0
/* 806CE860  90 01 00 34 */	stw r0, 0x34(r1)
/* 806CE864  39 61 00 30 */	addi r11, r1, 0x30
/* 806CE868  4B C9 39 74 */	b _savegpr_29
/* 806CE86C  7C 7E 1B 78 */	mr r30, r3
/* 806CE870  3C 60 80 6D */	lis r3, lit_3907@ha
/* 806CE874  3B E3 0E 60 */	addi r31, r3, lit_3907@l
/* 806CE878  38 60 00 01 */	li r3, 1
/* 806CE87C  98 7E 06 98 */	stb r3, 0x698(r30)
/* 806CE880  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 806CE884  2C 00 00 02 */	cmpwi r0, 2
/* 806CE888  41 82 03 30 */	beq lbl_806CEBB8
/* 806CE88C  40 80 00 14 */	bge lbl_806CE8A0
/* 806CE890  2C 00 00 00 */	cmpwi r0, 0
/* 806CE894  41 82 00 18 */	beq lbl_806CE8AC
/* 806CE898  40 80 01 08 */	bge lbl_806CE9A0
/* 806CE89C  48 00 03 E0 */	b lbl_806CEC7C
lbl_806CE8A0:
/* 806CE8A0  2C 00 00 0A */	cmpwi r0, 0xa
/* 806CE8A4  41 82 00 08 */	beq lbl_806CE8AC
/* 806CE8A8  48 00 03 D4 */	b lbl_806CEC7C
lbl_806CE8AC:
/* 806CE8AC  38 00 00 00 */	li r0, 0
/* 806CE8B0  98 1E 06 A0 */	stb r0, 0x6a0(r30)
/* 806CE8B4  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 806CE8B8  2C 00 00 0A */	cmpwi r0, 0xa
/* 806CE8BC  40 82 00 20 */	bne lbl_806CE8DC
/* 806CE8C0  7F C3 F3 78 */	mr r3, r30
/* 806CE8C4  38 80 00 0C */	li r4, 0xc
/* 806CE8C8  38 A0 00 02 */	li r5, 2
/* 806CE8CC  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 806CE8D0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CE8D4  4B FF EF 95 */	bl setBck__8daE_GI_cFiUcff
/* 806CE8D8  48 00 00 1C */	b lbl_806CE8F4
lbl_806CE8DC:
/* 806CE8DC  7F C3 F3 78 */	mr r3, r30
/* 806CE8E0  38 80 00 0C */	li r4, 0xc
/* 806CE8E4  38 A0 00 02 */	li r5, 2
/* 806CE8E8  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 806CE8EC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CE8F0  4B FF EF 79 */	bl setBck__8daE_GI_cFiUcff
lbl_806CE8F4:
/* 806CE8F4  38 00 00 01 */	li r0, 1
/* 806CE8F8  90 1E 06 74 */	stw r0, 0x674(r30)
/* 806CE8FC  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 806CE900  4B B9 90 8C */	b cM_rndFX__Ff
/* 806CE904  D0 3E 06 68 */	stfs f1, 0x668(r30)
/* 806CE908  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 806CE90C  4B B9 90 80 */	b cM_rndFX__Ff
/* 806CE910  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 806CE914  EC 00 08 2A */	fadds f0, f0, f1
/* 806CE918  FC 00 00 1E */	fctiwz f0, f0
/* 806CE91C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806CE920  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806CE924  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 806CE928  38 00 00 1E */	li r0, 0x1e
/* 806CE92C  90 1E 06 84 */	stw r0, 0x684(r30)
/* 806CE930  7F C3 F3 78 */	mr r3, r30
/* 806CE934  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806CE938  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 806CE93C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806CE940  4B 94 BE A0 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CE944  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 806CE948  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806CE94C  38 63 11 38 */	addi r3, r3, l_HIO@l
/* 806CE950  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 806CE954  EC 02 00 2A */	fadds f0, f2, f0
/* 806CE958  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CE95C  40 80 00 44 */	bge lbl_806CE9A0
/* 806CE960  7F C3 F3 78 */	mr r3, r30
/* 806CE964  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806CE968  4B 94 BD A8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CE96C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806CE970  7C 00 18 50 */	subf r0, r0, r3
/* 806CE974  7C 03 07 34 */	extsh r3, r0
/* 806CE978  4B C9 67 58 */	b abs
/* 806CE97C  2C 03 28 00 */	cmpwi r3, 0x2800
/* 806CE980  40 80 00 20 */	bge lbl_806CE9A0
/* 806CE984  7F C3 F3 78 */	mr r3, r30
/* 806CE988  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806CE98C  4B 94 E4 70 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CE990  2C 03 00 00 */	cmpwi r3, 0
/* 806CE994  40 82 00 0C */	bne lbl_806CE9A0
/* 806CE998  38 00 00 00 */	li r0, 0
/* 806CE99C  90 1E 06 84 */	stw r0, 0x684(r30)
lbl_806CE9A0:
/* 806CE9A0  7F C3 F3 78 */	mr r3, r30
/* 806CE9A4  4B FF F6 0D */	bl setDragSwordEffect__8daE_GI_cFv
/* 806CE9A8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CE9AC  38 63 00 0C */	addi r3, r3, 0xc
/* 806CE9B0  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 806CE9B4  4B C5 9A 78 */	b checkPass__12J3DFrameCtrlFf
/* 806CE9B8  2C 03 00 00 */	cmpwi r3, 0
/* 806CE9BC  41 82 00 30 */	beq lbl_806CE9EC
/* 806CE9C0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007036B@ha */
/* 806CE9C4  38 03 03 6B */	addi r0, r3, 0x036B /* 0x0007036B@l */
/* 806CE9C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806CE9CC  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806CE9D0  38 81 00 10 */	addi r4, r1, 0x10
/* 806CE9D4  38 A0 00 00 */	li r5, 0
/* 806CE9D8  38 C0 FF FF */	li r6, -1
/* 806CE9DC  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806CE9E0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806CE9E4  7D 89 03 A6 */	mtctr r12
/* 806CE9E8  4E 80 04 21 */	bctrl 
lbl_806CE9EC:
/* 806CE9EC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CE9F0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806CE9F4  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 806CE9F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CE9FC  4C 41 13 82 */	cror 2, 1, 2
/* 806CEA00  40 82 00 3C */	bne lbl_806CEA3C
/* 806CEA04  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 806CEA08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CEA0C  40 80 00 30 */	bge lbl_806CEA3C
/* 806CEA10  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806CEA14  C0 3E 06 68 */	lfs f1, 0x668(r30)
/* 806CEA18  3C 80 80 6D */	lis r4, l_HIO@ha
/* 806CEA1C  38 84 11 38 */	addi r4, r4, l_HIO@l
/* 806CEA20  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 806CEA24  EC 21 00 2A */	fadds f1, f1, f0
/* 806CEA28  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806CEA2C  EC 21 00 28 */	fsubs f1, f1, f0
/* 806CEA30  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 806CEA34  4B BA 1D 0C */	b cLib_chaseF__FPfff
/* 806CEA38  48 00 00 54 */	b lbl_806CEA8C
lbl_806CEA3C:
/* 806CEA3C  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 806CEA40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CEA44  4C 41 13 82 */	cror 2, 1, 2
/* 806CEA48  40 82 00 34 */	bne lbl_806CEA7C
/* 806CEA4C  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 806CEA50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CEA54  40 80 00 28 */	bge lbl_806CEA7C
/* 806CEA58  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806CEA5C  C0 3E 06 68 */	lfs f1, 0x668(r30)
/* 806CEA60  3C 80 80 6D */	lis r4, l_HIO@ha
/* 806CEA64  38 84 11 38 */	addi r4, r4, l_HIO@l
/* 806CEA68  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 806CEA6C  EC 21 00 2A */	fadds f1, f1, f0
/* 806CEA70  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 806CEA74  4B BA 1C CC */	b cLib_chaseF__FPfff
/* 806CEA78  48 00 00 14 */	b lbl_806CEA8C
lbl_806CEA7C:
/* 806CEA7C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806CEA80  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806CEA84  FC 40 08 90 */	fmr f2, f1
/* 806CEA88  4B BA 1C B8 */	b cLib_chaseF__FPfff
lbl_806CEA8C:
/* 806CEA8C  7F C3 F3 78 */	mr r3, r30
/* 806CEA90  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806CEA94  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 806CEA98  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806CEA9C  4B 94 BC 74 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CEAA0  7C 64 1B 78 */	mr r4, r3
/* 806CEAA4  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806CEAA8  38 A0 00 10 */	li r5, 0x10
/* 806CEAAC  A8 DE 06 6C */	lha r6, 0x66c(r30)
/* 806CEAB0  38 E0 00 40 */	li r7, 0x40
/* 806CEAB4  4B BA 1A 8C */	b cLib_addCalcAngleS__FPsssss
/* 806CEAB8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806CEABC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806CEAC0  7F C3 F3 78 */	mr r3, r30
/* 806CEAC4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806CEAC8  4B 94 BD 18 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CEACC  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 806CEAD0  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806CEAD4  38 63 11 38 */	addi r3, r3, l_HIO@l
/* 806CEAD8  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 806CEADC  EC 02 00 2A */	fadds f0, f2, f0
/* 806CEAE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CEAE4  40 80 00 98 */	bge lbl_806CEB7C
/* 806CEAE8  7F C3 F3 78 */	mr r3, r30
/* 806CEAEC  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806CEAF0  4B 94 BC 20 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CEAF4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806CEAF8  7C 00 18 50 */	subf r0, r0, r3
/* 806CEAFC  7C 03 07 34 */	extsh r3, r0
/* 806CEB00  4B C9 65 D0 */	b abs
/* 806CEB04  2C 03 28 00 */	cmpwi r3, 0x2800
/* 806CEB08  40 80 01 74 */	bge lbl_806CEC7C
/* 806CEB0C  7F C3 F3 78 */	mr r3, r30
/* 806CEB10  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806CEB14  4B 94 E2 E8 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CEB18  2C 03 00 00 */	cmpwi r3, 0
/* 806CEB1C  40 82 01 60 */	bne lbl_806CEC7C
/* 806CEB20  80 1E 06 84 */	lwz r0, 0x684(r30)
/* 806CEB24  2C 00 00 00 */	cmpwi r0, 0
/* 806CEB28  40 82 01 54 */	bne lbl_806CEC7C
/* 806CEB2C  7F C3 F3 78 */	mr r3, r30
/* 806CEB30  4B FF F2 5D */	bl setCryStop__8daE_GI_cFv
/* 806CEB34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806CEB38  41 82 00 10 */	beq lbl_806CEB48
/* 806CEB3C  38 00 00 02 */	li r0, 2
/* 806CEB40  90 1E 06 74 */	stw r0, 0x674(r30)
/* 806CEB44  48 00 01 38 */	b lbl_806CEC7C
lbl_806CEB48:
/* 806CEB48  7F C3 F3 78 */	mr r3, r30
/* 806CEB4C  38 80 00 03 */	li r4, 3
/* 806CEB50  38 A0 00 05 */	li r5, 5
/* 806CEB54  4B FF ED B9 */	bl setActionMode__8daE_GI_cFii
/* 806CEB58  7F C3 F3 78 */	mr r3, r30
/* 806CEB5C  38 80 00 0B */	li r4, 0xb
/* 806CEB60  38 A0 00 02 */	li r5, 2
/* 806CEB64  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 806CEB68  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CEB6C  4B FF EC FD */	bl setBck__8daE_GI_cFiUcff
/* 806CEB70  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CEB74  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806CEB78  48 00 01 04 */	b lbl_806CEC7C
lbl_806CEB7C:
/* 806CEB7C  7F C3 F3 78 */	mr r3, r30
/* 806CEB80  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806CEB84  4B 94 BC 5C */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CEB88  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 806CEB8C  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806CEB90  38 63 11 38 */	addi r3, r3, l_HIO@l
/* 806CEB94  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 806CEB98  EC 02 00 2A */	fadds f0, f2, f0
/* 806CEB9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CEBA0  40 81 00 DC */	ble lbl_806CEC7C
/* 806CEBA4  7F C3 F3 78 */	mr r3, r30
/* 806CEBA8  38 80 00 01 */	li r4, 1
/* 806CEBAC  38 A0 00 00 */	li r5, 0
/* 806CEBB0  4B FF ED 5D */	bl setActionMode__8daE_GI_cFii
/* 806CEBB4  48 00 00 C8 */	b lbl_806CEC7C
lbl_806CEBB8:
/* 806CEBB8  98 7E 06 9F */	stb r3, 0x69f(r30)
/* 806CEBBC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CEBC0  38 63 00 0C */	addi r3, r3, 0xc
/* 806CEBC4  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 806CEBC8  4B C5 98 64 */	b checkPass__12J3DFrameCtrlFf
/* 806CEBCC  2C 03 00 00 */	cmpwi r3, 0
/* 806CEBD0  41 82 00 64 */	beq lbl_806CEC34
/* 806CEBD4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007036B@ha */
/* 806CEBD8  38 03 03 6B */	addi r0, r3, 0x036B /* 0x0007036B@l */
/* 806CEBDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806CEBE0  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806CEBE4  38 81 00 0C */	addi r4, r1, 0xc
/* 806CEBE8  38 A0 00 00 */	li r5, 0
/* 806CEBEC  38 C0 FF FF */	li r6, -1
/* 806CEBF0  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806CEBF4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806CEBF8  7D 89 03 A6 */	mtctr r12
/* 806CEBFC  4E 80 04 21 */	bctrl 
/* 806CEC00  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007027C@ha */
/* 806CEC04  38 03 02 7C */	addi r0, r3, 0x027C /* 0x0007027C@l */
/* 806CEC08  90 01 00 08 */	stw r0, 8(r1)
/* 806CEC0C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806CEC10  38 81 00 08 */	addi r4, r1, 8
/* 806CEC14  38 A0 00 00 */	li r5, 0
/* 806CEC18  38 C0 FF FF */	li r6, -1
/* 806CEC1C  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806CEC20  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806CEC24  7D 89 03 A6 */	mtctr r12
/* 806CEC28  4E 80 04 21 */	bctrl 
/* 806CEC2C  38 00 00 00 */	li r0, 0
/* 806CEC30  98 1E 06 A0 */	stb r0, 0x6a0(r30)
lbl_806CEC34:
/* 806CEC34  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CEC38  38 80 00 01 */	li r4, 1
/* 806CEC3C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806CEC40  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806CEC44  40 82 00 18 */	bne lbl_806CEC5C
/* 806CEC48  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806CEC4C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806CEC50  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806CEC54  41 82 00 08 */	beq lbl_806CEC5C
/* 806CEC58  38 80 00 00 */	li r4, 0
lbl_806CEC5C:
/* 806CEC5C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806CEC60  41 82 00 1C */	beq lbl_806CEC7C
/* 806CEC64  7F C3 F3 78 */	mr r3, r30
/* 806CEC68  38 80 00 03 */	li r4, 3
/* 806CEC6C  38 A0 00 00 */	li r5, 0
/* 806CEC70  4B FF EC 9D */	bl setActionMode__8daE_GI_cFii
/* 806CEC74  38 00 00 01 */	li r0, 1
/* 806CEC78  98 1E 06 9C */	stb r0, 0x69c(r30)
lbl_806CEC7C:
/* 806CEC7C  39 61 00 30 */	addi r11, r1, 0x30
/* 806CEC80  4B C9 35 A8 */	b _restgpr_29
/* 806CEC84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806CEC88  7C 08 03 A6 */	mtlr r0
/* 806CEC8C  38 21 00 30 */	addi r1, r1, 0x30
/* 806CEC90  4E 80 00 20 */	blr 
