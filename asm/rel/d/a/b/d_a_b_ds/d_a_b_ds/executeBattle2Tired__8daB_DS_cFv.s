lbl_805D5040:
/* 805D5040  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D5044  7C 08 02 A6 */	mflr r0
/* 805D5048  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D504C  39 61 00 20 */	addi r11, r1, 0x20
/* 805D5050  4B D8 D1 8C */	b _savegpr_29
/* 805D5054  7C 7E 1B 78 */	mr r30, r3
/* 805D5058  3C 80 80 5E */	lis r4, lit_3932@ha
/* 805D505C  3B E4 CA 54 */	addi r31, r4, lit_3932@l
/* 805D5060  80 03 06 84 */	lwz r0, 0x684(r3)
/* 805D5064  2C 00 00 02 */	cmpwi r0, 2
/* 805D5068  41 82 01 10 */	beq lbl_805D5178
/* 805D506C  40 80 00 14 */	bge lbl_805D5080
/* 805D5070  2C 00 00 00 */	cmpwi r0, 0
/* 805D5074  41 82 00 18 */	beq lbl_805D508C
/* 805D5078  40 80 00 40 */	bge lbl_805D50B8
/* 805D507C  48 00 01 68 */	b lbl_805D51E4
lbl_805D5080:
/* 805D5080  2C 00 00 04 */	cmpwi r0, 4
/* 805D5084  40 80 01 60 */	bge lbl_805D51E4
/* 805D5088  48 00 01 24 */	b lbl_805D51AC
lbl_805D508C:
/* 805D508C  38 80 00 29 */	li r4, 0x29
/* 805D5090  38 A0 00 00 */	li r5, 0
/* 805D5094  C0 3F 03 B8 */	lfs f1, 0x3b8(r31)
/* 805D5098  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805D509C  4B FF 6A 2D */	bl setBck__8daB_DS_cFiUcff
/* 805D50A0  38 00 00 00 */	li r0, 0
/* 805D50A4  90 1E 08 18 */	stw r0, 0x818(r30)
/* 805D50A8  80 7E 06 84 */	lwz r3, 0x684(r30)
/* 805D50AC  38 03 00 01 */	addi r0, r3, 1
/* 805D50B0  90 1E 06 84 */	stw r0, 0x684(r30)
/* 805D50B4  48 00 01 30 */	b lbl_805D51E4
lbl_805D50B8:
/* 805D50B8  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 805D50BC  2C 00 00 29 */	cmpwi r0, 0x29
/* 805D50C0  40 82 00 8C */	bne lbl_805D514C
/* 805D50C4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D50C8  38 63 00 0C */	addi r3, r3, 0xc
/* 805D50CC  C0 3F 04 B4 */	lfs f1, 0x4b4(r31)
/* 805D50D0  4B D5 33 5C */	b checkPass__12J3DFrameCtrlFf
/* 805D50D4  2C 03 00 00 */	cmpwi r3, 0
/* 805D50D8  41 82 00 2C */	beq lbl_805D5104
/* 805D50DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704D9@ha */
/* 805D50E0  38 03 04 D9 */	addi r0, r3, 0x04D9 /* 0x000704D9@l */
/* 805D50E4  90 01 00 08 */	stw r0, 8(r1)
/* 805D50E8  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D50EC  38 81 00 08 */	addi r4, r1, 8
/* 805D50F0  38 A0 FF FF */	li r5, -1
/* 805D50F4  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D50F8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805D50FC  7D 89 03 A6 */	mtctr r12
/* 805D5100  4E 80 04 21 */	bctrl 
lbl_805D5104:
/* 805D5104  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D5108  38 80 00 01 */	li r4, 1
/* 805D510C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805D5110  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805D5114  40 82 00 18 */	bne lbl_805D512C
/* 805D5118  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805D511C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805D5120  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805D5124  41 82 00 08 */	beq lbl_805D512C
/* 805D5128  38 80 00 00 */	li r4, 0
lbl_805D512C:
/* 805D512C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805D5130  41 82 00 1C */	beq lbl_805D514C
/* 805D5134  7F C3 F3 78 */	mr r3, r30
/* 805D5138  38 80 00 2A */	li r4, 0x2a
/* 805D513C  38 A0 00 02 */	li r5, 2
/* 805D5140  C0 3F 03 B8 */	lfs f1, 0x3b8(r31)
/* 805D5144  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805D5148  4B FF 69 81 */	bl setBck__8daB_DS_cFiUcff
lbl_805D514C:
/* 805D514C  A8 7E 07 CC */	lha r3, 0x7cc(r30)
/* 805D5150  38 03 F8 00 */	addi r0, r3, -2048
/* 805D5154  7C 03 07 34 */	extsh r3, r0
/* 805D5158  4B D8 FF 78 */	b abs
/* 805D515C  2C 03 01 00 */	cmpwi r3, 0x100
/* 805D5160  41 81 00 84 */	bgt lbl_805D51E4
/* 805D5164  38 00 00 01 */	li r0, 1
/* 805D5168  98 1E 08 5A */	stb r0, 0x85a(r30)
/* 805D516C  80 7E 06 84 */	lwz r3, 0x684(r30)
/* 805D5170  38 03 00 01 */	addi r0, r3, 1
/* 805D5174  90 1E 06 84 */	stw r0, 0x684(r30)
lbl_805D5178:
/* 805D5178  88 1E 08 5A */	lbz r0, 0x85a(r30)
/* 805D517C  28 00 00 00 */	cmplwi r0, 0
/* 805D5180  40 82 00 64 */	bne lbl_805D51E4
/* 805D5184  7F C3 F3 78 */	mr r3, r30
/* 805D5188  38 80 00 2B */	li r4, 0x2b
/* 805D518C  38 A0 00 00 */	li r5, 0
/* 805D5190  C0 3F 03 B8 */	lfs f1, 0x3b8(r31)
/* 805D5194  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805D5198  4B FF 69 31 */	bl setBck__8daB_DS_cFiUcff
/* 805D519C  80 7E 06 84 */	lwz r3, 0x684(r30)
/* 805D51A0  38 03 00 01 */	addi r0, r3, 1
/* 805D51A4  90 1E 06 84 */	stw r0, 0x684(r30)
/* 805D51A8  48 00 00 3C */	b lbl_805D51E4
lbl_805D51AC:
/* 805D51AC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D51B0  38 80 00 01 */	li r4, 1
/* 805D51B4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805D51B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805D51BC  40 82 00 18 */	bne lbl_805D51D4
/* 805D51C0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805D51C4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805D51C8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805D51CC  41 82 00 08 */	beq lbl_805D51D4
/* 805D51D0  38 80 00 00 */	li r4, 0
lbl_805D51D4:
/* 805D51D4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805D51D8  41 82 00 0C */	beq lbl_805D51E4
/* 805D51DC  38 00 03 09 */	li r0, 0x309
/* 805D51E0  90 1E 06 84 */	stw r0, 0x684(r30)
lbl_805D51E4:
/* 805D51E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D51E8  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 805D51EC  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 805D51F0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D51F4  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 805D51F8  7D 89 03 A6 */	mtctr r12
/* 805D51FC  4E 80 04 21 */	bctrl 
/* 805D5200  28 03 00 00 */	cmplwi r3, 0
/* 805D5204  41 82 00 58 */	beq lbl_805D525C
/* 805D5208  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 805D520C  A8 03 05 6C */	lha r0, 0x56c(r3)
/* 805D5210  7C 00 07 35 */	extsh. r0, r0
/* 805D5214  40 82 00 48 */	bne lbl_805D525C
/* 805D5218  80 1E 06 84 */	lwz r0, 0x684(r30)
/* 805D521C  2C 00 03 09 */	cmpwi r0, 0x309
/* 805D5220  41 82 00 3C */	beq lbl_805D525C
/* 805D5224  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D5228  81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 805D522C  7D 89 03 A6 */	mtctr r12
/* 805D5230  4E 80 04 21 */	bctrl 
/* 805D5234  28 03 00 00 */	cmplwi r3, 0
/* 805D5238  41 82 00 34 */	beq lbl_805D526C
/* 805D523C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 805D5240  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D5244  81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 805D5248  7D 89 03 A6 */	mtctr r12
/* 805D524C  4E 80 04 21 */	bctrl 
/* 805D5250  80 03 06 78 */	lwz r0, 0x678(r3)
/* 805D5254  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 805D5258  41 82 00 14 */	beq lbl_805D526C
lbl_805D525C:
/* 805D525C  7F C3 F3 78 */	mr r3, r30
/* 805D5260  38 80 00 01 */	li r4, 1
/* 805D5264  38 A0 00 00 */	li r5, 0
/* 805D5268  4B FF 69 0D */	bl setActionMode__8daB_DS_cFii
lbl_805D526C:
/* 805D526C  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 805D5270  38 80 08 00 */	li r4, 0x800
/* 805D5274  3C A0 80 5E */	lis r5, l_HIO@ha
/* 805D5278  38 C5 DA BC */	addi r6, r5, l_HIO@l
/* 805D527C  A8 A6 00 42 */	lha r5, 0x42(r6)
/* 805D5280  A8 C6 00 44 */	lha r6, 0x44(r6)
/* 805D5284  4B C9 B3 84 */	b cLib_addCalcAngleS2__FPssss
/* 805D5288  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 805D528C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 805D5290  D0 1E 07 34 */	stfs f0, 0x734(r30)
/* 805D5294  7F C3 F3 78 */	mr r3, r30
/* 805D5298  4B FF EA E9 */	bl mNeckAngleSet__8daB_DS_cFv
/* 805D529C  7F C3 F3 78 */	mr r3, r30
/* 805D52A0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805D52A4  4B FF E6 5D */	bl mFlyBMove__8daB_DS_cFf
/* 805D52A8  7F C3 F3 78 */	mr r3, r30
/* 805D52AC  4B FF EF F1 */	bl mBattle2MoveFSet__8daB_DS_cFv
/* 805D52B0  7F C3 F3 78 */	mr r3, r30
/* 805D52B4  38 80 00 00 */	li r4, 0
/* 805D52B8  4B FF E6 ED */	bl mFuwafuwaSet__8daB_DS_cFb
/* 805D52BC  39 61 00 20 */	addi r11, r1, 0x20
/* 805D52C0  4B D8 CF 68 */	b _restgpr_29
/* 805D52C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D52C8  7C 08 03 A6 */	mtlr r0
/* 805D52CC  38 21 00 20 */	addi r1, r1, 0x20
/* 805D52D0  4E 80 00 20 */	blr 
