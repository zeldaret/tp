lbl_807E972C:
/* 807E972C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807E9730  7C 08 02 A6 */	mflr r0
/* 807E9734  90 01 00 34 */	stw r0, 0x34(r1)
/* 807E9738  39 61 00 30 */	addi r11, r1, 0x30
/* 807E973C  4B B7 8A A0 */	b _savegpr_29
/* 807E9740  7C 7E 1B 78 */	mr r30, r3
/* 807E9744  3C 80 80 7F */	lis r4, lit_3905@ha
/* 807E9748  3B E4 F7 70 */	addi r31, r4, lit_3905@l
/* 807E974C  80 03 06 BC */	lwz r0, 0x6bc(r3)
/* 807E9750  2C 00 00 01 */	cmpwi r0, 1
/* 807E9754  41 82 00 4C */	beq lbl_807E97A0
/* 807E9758  40 80 00 10 */	bge lbl_807E9768
/* 807E975C  2C 00 00 00 */	cmpwi r0, 0
/* 807E9760  40 80 00 14 */	bge lbl_807E9774
/* 807E9764  48 00 02 3C */	b lbl_807E99A0
lbl_807E9768:
/* 807E9768  2C 00 00 0A */	cmpwi r0, 0xa
/* 807E976C  41 82 01 40 */	beq lbl_807E98AC
/* 807E9770  48 00 02 30 */	b lbl_807E99A0
lbl_807E9774:
/* 807E9774  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 807E9778  60 00 40 00 */	ori r0, r0, 0x4000
/* 807E977C  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 807E9780  38 80 00 04 */	li r4, 4
/* 807E9784  38 A0 00 00 */	li r5, 0
/* 807E9788  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807E978C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807E9790  4B FF E3 4D */	bl setBck__8daE_WW_cFiUcff
/* 807E9794  38 00 00 01 */	li r0, 1
/* 807E9798  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807E979C  48 00 02 04 */	b lbl_807E99A0
lbl_807E97A0:
/* 807E97A0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E97A4  38 63 00 0C */	addi r3, r3, 0xc
/* 807E97A8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807E97AC  4B B3 EC 80 */	b checkPass__12J3DFrameCtrlFf
/* 807E97B0  2C 03 00 00 */	cmpwi r3, 0
/* 807E97B4  41 82 00 38 */	beq lbl_807E97EC
/* 807E97B8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038C@ha */
/* 807E97BC  38 03 03 8C */	addi r0, r3, 0x038C /* 0x0007038C@l */
/* 807E97C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 807E97C4  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807E97C8  38 81 00 0C */	addi r4, r1, 0xc
/* 807E97CC  38 A0 00 00 */	li r5, 0
/* 807E97D0  38 C0 FF FF */	li r6, -1
/* 807E97D4  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807E97D8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807E97DC  7D 89 03 A6 */	mtctr r12
/* 807E97E0  4E 80 04 21 */	bctrl 
/* 807E97E4  7F C3 F3 78 */	mr r3, r30
/* 807E97E8  4B FF EF 19 */	bl setAppearEffect__8daE_WW_cFv
lbl_807E97EC:
/* 807E97EC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E97F0  38 63 00 0C */	addi r3, r3, 0xc
/* 807E97F4  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 807E97F8  4B B3 EC 34 */	b checkPass__12J3DFrameCtrlFf
/* 807E97FC  2C 03 00 00 */	cmpwi r3, 0
/* 807E9800  40 82 00 1C */	bne lbl_807E981C
/* 807E9804  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E9808  38 63 00 0C */	addi r3, r3, 0xc
/* 807E980C  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 807E9810  4B B3 EC 1C */	b checkPass__12J3DFrameCtrlFf
/* 807E9814  2C 03 00 00 */	cmpwi r3, 0
/* 807E9818  41 82 00 30 */	beq lbl_807E9848
lbl_807E981C:
/* 807E981C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007038D@ha */
/* 807E9820  38 03 03 8D */	addi r0, r3, 0x038D /* 0x0007038D@l */
/* 807E9824  90 01 00 08 */	stw r0, 8(r1)
/* 807E9828  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807E982C  38 81 00 08 */	addi r4, r1, 8
/* 807E9830  38 A0 00 00 */	li r5, 0
/* 807E9834  38 C0 FF FF */	li r6, -1
/* 807E9838  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807E983C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807E9840  7D 89 03 A6 */	mtctr r12
/* 807E9844  4E 80 04 21 */	bctrl 
lbl_807E9848:
/* 807E9848  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E984C  38 80 00 01 */	li r4, 1
/* 807E9850  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807E9854  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807E9858  40 82 00 18 */	bne lbl_807E9870
/* 807E985C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807E9860  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807E9864  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807E9868  41 82 00 08 */	beq lbl_807E9870
/* 807E986C  38 80 00 00 */	li r4, 0
lbl_807E9870:
/* 807E9870  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807E9874  41 82 01 2C */	beq lbl_807E99A0
/* 807E9878  88 1E 07 58 */	lbz r0, 0x758(r30)
/* 807E987C  28 00 00 00 */	cmplwi r0, 0
/* 807E9880  41 82 00 10 */	beq lbl_807E9890
/* 807E9884  38 00 00 0A */	li r0, 0xa
/* 807E9888  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 807E988C  48 00 01 14 */	b lbl_807E99A0
lbl_807E9890:
/* 807E9890  7F C3 F3 78 */	mr r3, r30
/* 807E9894  38 80 00 0F */	li r4, 0xf
/* 807E9898  38 A0 00 02 */	li r5, 2
/* 807E989C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807E98A0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807E98A4  4B FF E2 39 */	bl setBck__8daE_WW_cFiUcff
/* 807E98A8  48 00 00 F8 */	b lbl_807E99A0
lbl_807E98AC:
/* 807E98AC  3B A0 00 01 */	li r29, 1
/* 807E98B0  4B FF EC B1 */	bl checkAttackWall__8daE_WW_cFv
/* 807E98B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E98B8  40 82 00 0C */	bne lbl_807E98C4
/* 807E98BC  3B A0 00 00 */	li r29, 0
/* 807E98C0  48 00 00 60 */	b lbl_807E9920
lbl_807E98C4:
/* 807E98C4  88 1E 06 B4 */	lbz r0, 0x6b4(r30)
/* 807E98C8  28 00 00 01 */	cmplwi r0, 1
/* 807E98CC  40 82 00 1C */	bne lbl_807E98E8
/* 807E98D0  4B A7 DF 9C */	b cM_rnd__Fv
/* 807E98D4  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 807E98D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E98DC  40 80 00 44 */	bge lbl_807E9920
/* 807E98E0  3B A0 00 00 */	li r29, 0
/* 807E98E4  48 00 00 3C */	b lbl_807E9920
lbl_807E98E8:
/* 807E98E8  28 00 00 00 */	cmplwi r0, 0
/* 807E98EC  40 82 00 34 */	bne lbl_807E9920
/* 807E98F0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 807E98F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E98F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807E98FC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807E9900  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 807E9904  EC 01 00 28 */	fsubs f0, f1, f0
/* 807E9908  FC 00 02 10 */	fabs f0, f0
/* 807E990C  FC 20 00 18 */	frsp f1, f0
/* 807E9910  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807E9914  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E9918  40 81 00 08 */	ble lbl_807E9920
/* 807E991C  3B A0 00 00 */	li r29, 0
lbl_807E9920:
/* 807E9920  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 807E9924  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 807E9928  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 807E992C  2C 1D 00 00 */	cmpwi r29, 0
/* 807E9930  41 82 00 20 */	beq lbl_807E9950
/* 807E9934  7F C3 F3 78 */	mr r3, r30
/* 807E9938  38 80 00 02 */	li r4, 2
/* 807E993C  38 A0 00 00 */	li r5, 0
/* 807E9940  4B FF E2 9D */	bl setActionMode__8daE_WW_cFii
/* 807E9944  38 00 00 01 */	li r0, 1
/* 807E9948  98 1E 07 56 */	stb r0, 0x756(r30)
/* 807E994C  48 00 00 54 */	b lbl_807E99A0
lbl_807E9950:
/* 807E9950  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 807E9954  4B A7 E0 38 */	b cM_rndFX__Ff
/* 807E9958  3C 60 80 7F */	lis r3, l_HIO@ha
/* 807E995C  38 63 FB CC */	addi r3, r3, l_HIO@l
/* 807E9960  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807E9964  EC 00 08 2A */	fadds f0, f0, f1
/* 807E9968  FC 00 00 1E */	fctiwz f0, f0
/* 807E996C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807E9970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E9974  90 1E 07 34 */	stw r0, 0x734(r30)
/* 807E9978  7F C3 F3 78 */	mr r3, r30
/* 807E997C  38 80 00 0F */	li r4, 0xf
/* 807E9980  38 A0 00 02 */	li r5, 2
/* 807E9984  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807E9988  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807E998C  4B FF E1 51 */	bl setBck__8daE_WW_cFiUcff
/* 807E9990  7F C3 F3 78 */	mr r3, r30
/* 807E9994  38 80 00 03 */	li r4, 3
/* 807E9998  38 A0 00 0A */	li r5, 0xa
/* 807E999C  4B FF E2 41 */	bl setActionMode__8daE_WW_cFii
lbl_807E99A0:
/* 807E99A0  39 61 00 30 */	addi r11, r1, 0x30
/* 807E99A4  4B B7 88 84 */	b _restgpr_29
/* 807E99A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807E99AC  7C 08 03 A6 */	mtlr r0
/* 807E99B0  38 21 00 30 */	addi r1, r1, 0x30
/* 807E99B4  4E 80 00 20 */	blr 
