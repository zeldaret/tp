lbl_804788CC:
/* 804788CC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804788D0  7C 08 02 A6 */	mflr r0
/* 804788D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 804788D8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804788DC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804788E0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804788E4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804788E8  7C 7E 1B 78 */	mr r30, r3
/* 804788EC  3C 60 80 48 */	lis r3, l_cyl_info@ha
/* 804788F0  3B E3 99 0C */	addi r31, r3, l_cyl_info@l
/* 804788F4  88 1E 0D 79 */	lbz r0, 0xd79(r30)
/* 804788F8  2C 00 00 02 */	cmpwi r0, 2
/* 804788FC  41 82 00 94 */	beq lbl_80478990
/* 80478900  40 80 00 BC */	bge lbl_804789BC
/* 80478904  2C 00 00 00 */	cmpwi r0, 0
/* 80478908  41 82 00 10 */	beq lbl_80478918
/* 8047890C  40 80 00 2C */	bge lbl_80478938
/* 80478910  48 00 00 AC */	b lbl_804789BC
/* 80478914  48 00 00 A8 */	b lbl_804789BC
lbl_80478918:
/* 80478918  80 1E 05 A0 */	lwz r0, 0x5a0(r30)
/* 8047891C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80478920  41 82 00 9C */	beq lbl_804789BC
/* 80478924  38 00 00 01 */	li r0, 1
/* 80478928  98 1E 0D 79 */	stb r0, 0xd79(r30)
/* 8047892C  38 00 00 0F */	li r0, 0xf
/* 80478930  98 1E 0D 77 */	stb r0, 0xd77(r30)
/* 80478934  48 00 00 88 */	b lbl_804789BC
lbl_80478938:
/* 80478938  88 7E 0D 77 */	lbz r3, 0xd77(r30)
/* 8047893C  28 03 00 00 */	cmplwi r3, 0
/* 80478940  41 82 00 0C */	beq lbl_8047894C
/* 80478944  38 03 FF FF */	addi r0, r3, -1
/* 80478948  98 1E 0D 77 */	stb r0, 0xd77(r30)
lbl_8047894C:
/* 8047894C  88 1E 0D 77 */	lbz r0, 0xd77(r30)
/* 80478950  28 00 00 00 */	cmplwi r0, 0
/* 80478954  40 82 00 68 */	bne lbl_804789BC
/* 80478958  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007013A@ha */
/* 8047895C  38 03 01 3A */	addi r0, r3, 0x013A /* 0x0007013A@l */
/* 80478960  90 01 00 08 */	stw r0, 8(r1)
/* 80478964  38 7E 0D 88 */	addi r3, r30, 0xd88
/* 80478968  38 81 00 08 */	addi r4, r1, 8
/* 8047896C  38 A0 00 00 */	li r5, 0
/* 80478970  38 C0 FF FF */	li r6, -1
/* 80478974  81 9E 0D 98 */	lwz r12, 0xd98(r30)
/* 80478978  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8047897C  7D 89 03 A6 */	mtctr r12
/* 80478980  4E 80 04 21 */	bctrl 
/* 80478984  38 00 00 02 */	li r0, 2
/* 80478988  98 1E 0D 79 */	stb r0, 0xd79(r30)
/* 8047898C  48 00 00 30 */	b lbl_804789BC
lbl_80478990:
/* 80478990  38 7E 0D 76 */	addi r3, r30, 0xd76
/* 80478994  38 80 00 00 */	li r4, 0
/* 80478998  38 A0 00 0A */	li r5, 0xa
/* 8047899C  4B DF 7C C0 */	b cLib_chaseUC__FPUcUcUc
/* 804789A0  88 1E 0D 76 */	lbz r0, 0xd76(r30)
/* 804789A4  28 00 00 00 */	cmplwi r0, 0
/* 804789A8  40 82 00 14 */	bne lbl_804789BC
/* 804789AC  38 00 00 00 */	li r0, 0
/* 804789B0  98 1E 0D 75 */	stb r0, 0xd75(r30)
/* 804789B4  38 00 00 03 */	li r0, 3
/* 804789B8  98 1E 0D 79 */	stb r0, 0xd79(r30)
lbl_804789BC:
/* 804789BC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804789C0  7C 03 07 74 */	extsb r3, r0
/* 804789C4  4B BB 46 A8 */	b dComIfGp_getReverb__Fi
/* 804789C8  7C 65 1B 78 */	mr r5, r3
/* 804789CC  38 7E 0D 88 */	addi r3, r30, 0xd88
/* 804789D0  38 80 00 00 */	li r4, 0
/* 804789D4  81 9E 0D 98 */	lwz r12, 0xd98(r30)
/* 804789D8  81 8C 00 08 */	lwz r12, 8(r12)
/* 804789DC  7D 89 03 A6 */	mtctr r12
/* 804789E0  4E 80 04 21 */	bctrl 
/* 804789E4  88 7E 0D 7A */	lbz r3, 0xd7a(r30)
/* 804789E8  28 03 00 00 */	cmplwi r3, 0
/* 804789EC  41 82 00 70 */	beq lbl_80478A5C
/* 804789F0  28 03 00 64 */	cmplwi r3, 0x64
/* 804789F4  40 80 00 0C */	bge lbl_80478A00
/* 804789F8  38 03 00 01 */	addi r0, r3, 1
/* 804789FC  98 1E 0D 7A */	stb r0, 0xd7a(r30)
lbl_80478A00:
/* 80478A00  88 7E 0D 7A */	lbz r3, 0xd7a(r30)
/* 80478A04  38 03 FF F0 */	addi r0, r3, -16
/* 80478A08  C8 3F 0A A0 */	lfd f1, 0xaa0(r31)
/* 80478A0C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80478A10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80478A14  3C 00 43 30 */	lis r0, 0x4330
/* 80478A18  90 01 00 10 */	stw r0, 0x10(r1)
/* 80478A1C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80478A20  EC 20 08 28 */	fsubs f1, f0, f1
/* 80478A24  C0 1F 0B 68 */	lfs f0, 0xb68(r31)
/* 80478A28  EC 01 00 24 */	fdivs f0, f1, f0
/* 80478A2C  D0 1E 0D 84 */	stfs f0, 0xd84(r30)
/* 80478A30  C0 3E 0D 84 */	lfs f1, 0xd84(r30)
/* 80478A34  C0 1F 0A C0 */	lfs f0, 0xac0(r31)
/* 80478A38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80478A3C  40 81 00 0C */	ble lbl_80478A48
/* 80478A40  D0 1E 0D 84 */	stfs f0, 0xd84(r30)
/* 80478A44  48 00 00 20 */	b lbl_80478A64
lbl_80478A48:
/* 80478A48  C0 1F 0A 48 */	lfs f0, 0xa48(r31)
/* 80478A4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80478A50  40 80 00 14 */	bge lbl_80478A64
/* 80478A54  D0 1E 0D 84 */	stfs f0, 0xd84(r30)
/* 80478A58  48 00 00 0C */	b lbl_80478A64
lbl_80478A5C:
/* 80478A5C  C0 1F 0A 48 */	lfs f0, 0xa48(r31)
/* 80478A60  D0 1E 0D 84 */	stfs f0, 0xd84(r30)
lbl_80478A64:
/* 80478A64  88 1E 0C F1 */	lbz r0, 0xcf1(r30)
/* 80478A68  28 00 00 02 */	cmplwi r0, 2
/* 80478A6C  40 82 00 50 */	bne lbl_80478ABC
/* 80478A70  88 1E 0D 7A */	lbz r0, 0xd7a(r30)
/* 80478A74  28 00 00 10 */	cmplwi r0, 0x10
/* 80478A78  40 81 00 38 */	ble lbl_80478AB0
/* 80478A7C  38 7E 0D 5C */	addi r3, r30, 0xd5c
/* 80478A80  C0 3F 0B 54 */	lfs f1, 0xb54(r31)
/* 80478A84  C0 5F 0A 84 */	lfs f2, 0xa84(r31)
/* 80478A88  4B DF 6F F8 */	b cLib_addCalc0__FPfff
/* 80478A8C  38 7E 0D 60 */	addi r3, r30, 0xd60
/* 80478A90  C0 3F 0B 54 */	lfs f1, 0xb54(r31)
/* 80478A94  C0 5F 0A 84 */	lfs f2, 0xa84(r31)
/* 80478A98  4B DF 6F E8 */	b cLib_addCalc0__FPfff
/* 80478A9C  38 7E 0D 6A */	addi r3, r30, 0xd6a
/* 80478AA0  38 80 00 00 */	li r4, 0
/* 80478AA4  38 A0 00 05 */	li r5, 5
/* 80478AA8  38 C0 0F A0 */	li r6, 0xfa0
/* 80478AAC  4B DF 7B 5C */	b cLib_addCalcAngleS2__FPssss
lbl_80478AB0:
/* 80478AB0  38 00 00 00 */	li r0, 0
/* 80478AB4  B0 1E 0D 68 */	sth r0, 0xd68(r30)
/* 80478AB8  48 00 00 78 */	b lbl_80478B30
lbl_80478ABC:
/* 80478ABC  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80478AC0  C0 1F 0A B0 */	lfs f0, 0xab0(r31)
/* 80478AC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80478AC8  40 80 00 40 */	bge lbl_80478B08
/* 80478ACC  38 7E 0D 5C */	addi r3, r30, 0xd5c
/* 80478AD0  C0 3F 0B AC */	lfs f1, 0xbac(r31)
/* 80478AD4  C0 5F 0B 7C */	lfs f2, 0xb7c(r31)
/* 80478AD8  4B DF 6F A8 */	b cLib_addCalc0__FPfff
/* 80478ADC  38 7E 0D 60 */	addi r3, r30, 0xd60
/* 80478AE0  C0 3F 0B AC */	lfs f1, 0xbac(r31)
/* 80478AE4  C0 5F 0B 7C */	lfs f2, 0xb7c(r31)
/* 80478AE8  4B DF 6F 98 */	b cLib_addCalc0__FPfff
/* 80478AEC  38 7E 0D 68 */	addi r3, r30, 0xd68
/* 80478AF0  38 80 00 00 */	li r4, 0
/* 80478AF4  38 A0 00 1E */	li r5, 0x1e
/* 80478AF8  38 C0 00 64 */	li r6, 0x64
/* 80478AFC  38 E0 00 0A */	li r7, 0xa
/* 80478B00  4B DF 7A 40 */	b cLib_addCalcAngleS__FPsssss
/* 80478B04  48 00 00 2C */	b lbl_80478B30
lbl_80478B08:
/* 80478B08  28 00 00 01 */	cmplwi r0, 1
/* 80478B0C  40 82 00 24 */	bne lbl_80478B30
/* 80478B10  38 7E 0D 68 */	addi r3, r30, 0xd68
/* 80478B14  C0 1F 0A 88 */	lfs f0, 0xa88(r31)
/* 80478B18  EC 00 00 72 */	fmuls f0, f0, f1
/* 80478B1C  FC 00 00 1E */	fctiwz f0, f0
/* 80478B20  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80478B24  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80478B28  38 A0 00 64 */	li r5, 0x64
/* 80478B2C  4B DF 7B A4 */	b cLib_chaseS__FPsss
lbl_80478B30:
/* 80478B30  A8 1E 0D 04 */	lha r0, 0xd04(r30)
/* 80478B34  1C 00 07 D0 */	mulli r0, r0, 0x7d0
/* 80478B38  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80478B3C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80478B40  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80478B44  7C 23 04 2E */	lfsx f1, r3, r0
/* 80478B48  C0 1E 0D 5C */	lfs f0, 0xd5c(r30)
/* 80478B4C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80478B50  FC 00 00 1E */	fctiwz f0, f0
/* 80478B54  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80478B58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80478B5C  B0 1E 0D 64 */	sth r0, 0xd64(r30)
/* 80478B60  A8 1E 0D 04 */	lha r0, 0xd04(r30)
/* 80478B64  1C 00 07 D0 */	mulli r0, r0, 0x7d0
/* 80478B68  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80478B6C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80478B70  C0 1E 0D 60 */	lfs f0, 0xd60(r30)
/* 80478B74  EC 00 00 72 */	fmuls f0, f0, f1
/* 80478B78  FC 00 00 1E */	fctiwz f0, f0
/* 80478B7C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80478B80  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80478B84  B0 1E 0D 66 */	sth r0, 0xd66(r30)
/* 80478B88  A8 7E 0D 6A */	lha r3, 0xd6a(r30)
/* 80478B8C  A8 1E 0D 68 */	lha r0, 0xd68(r30)
/* 80478B90  7C 03 02 14 */	add r0, r3, r0
/* 80478B94  B0 1E 0D 6A */	sth r0, 0xd6a(r30)
/* 80478B98  88 1E 0C F1 */	lbz r0, 0xcf1(r30)
/* 80478B9C  28 00 00 0A */	cmplwi r0, 0xa
/* 80478BA0  41 82 00 58 */	beq lbl_80478BF8
/* 80478BA4  7F C3 F3 78 */	mr r3, r30
/* 80478BA8  4B FF 6A FD */	bl data__12daObjCarry_cFv
/* 80478BAC  C3 E3 00 30 */	lfs f31, 0x30(r3)
/* 80478BB0  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 80478BB4  FC 20 F8 90 */	fmr f1, f31
/* 80478BB8  C0 5F 0B 34 */	lfs f2, 0xb34(r31)
/* 80478BBC  C0 7F 0B 54 */	lfs f3, 0xb54(r31)
/* 80478BC0  FC 80 10 90 */	fmr f4, f2
/* 80478BC4  4B DF 6D B8 */	b cLib_addCalc__FPfffff
/* 80478BC8  38 7E 04 F0 */	addi r3, r30, 0x4f0
/* 80478BCC  FC 20 F8 90 */	fmr f1, f31
/* 80478BD0  C0 5F 0B 34 */	lfs f2, 0xb34(r31)
/* 80478BD4  C0 7F 0B 54 */	lfs f3, 0xb54(r31)
/* 80478BD8  FC 80 10 90 */	fmr f4, f2
/* 80478BDC  4B DF 6D A0 */	b cLib_addCalc__FPfffff
/* 80478BE0  38 7E 04 F4 */	addi r3, r30, 0x4f4
/* 80478BE4  FC 20 F8 90 */	fmr f1, f31
/* 80478BE8  C0 5F 0B 34 */	lfs f2, 0xb34(r31)
/* 80478BEC  C0 7F 0B 54 */	lfs f3, 0xb54(r31)
/* 80478BF0  FC 80 10 90 */	fmr f4, f2
/* 80478BF4  4B DF 6D 88 */	b cLib_addCalc__FPfffff
lbl_80478BF8:
/* 80478BF8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80478BFC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80478C00  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80478C04  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80478C08  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80478C0C  7C 08 03 A6 */	mtlr r0
/* 80478C10  38 21 00 40 */	addi r1, r1, 0x40
/* 80478C14  4E 80 00 20 */	blr 
