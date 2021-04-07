lbl_8021A71C:
/* 8021A71C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8021A720  7C 08 02 A6 */	mflr r0
/* 8021A724  90 01 00 64 */	stw r0, 0x64(r1)
/* 8021A728  39 61 00 60 */	addi r11, r1, 0x60
/* 8021A72C  48 14 7A A1 */	bl _savegpr_25
/* 8021A730  7C 79 1B 78 */	mr r25, r3
/* 8021A734  7C 9A 23 78 */	mr r26, r4
/* 8021A738  7C BB 2B 78 */	mr r27, r5
/* 8021A73C  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 8021A740  28 00 00 53 */	cmplwi r0, 0x53
/* 8021A744  40 82 00 08 */	bne lbl_8021A74C
/* 8021A748  3B 60 00 43 */	li r27, 0x43
lbl_8021A74C:
/* 8021A74C  7F F9 D2 14 */	add r31, r25, r26
/* 8021A750  88 1F 07 6C */	lbz r0, 0x76c(r31)
/* 8021A754  28 00 00 00 */	cmplwi r0, 0
/* 8021A758  40 82 00 10 */	bne lbl_8021A768
/* 8021A75C  38 00 00 01 */	li r0, 1
/* 8021A760  98 1F 07 6C */	stb r0, 0x76c(r31)
/* 8021A764  48 00 00 0C */	b lbl_8021A770
lbl_8021A768:
/* 8021A768  38 00 00 00 */	li r0, 0
/* 8021A76C  98 1F 07 6C */	stb r0, 0x76c(r31)
lbl_8021A770:
/* 8021A770  57 5E 10 3A */	slwi r30, r26, 2
/* 8021A774  7F B9 F2 14 */	add r29, r25, r30
/* 8021A778  80 7D 03 2C */	lwz r3, 0x32c(r29)
/* 8021A77C  80 C3 00 04 */	lwz r6, 4(r3)
/* 8021A780  57 48 20 36 */	slwi r8, r26, 4
/* 8021A784  7F 99 42 14 */	add r28, r25, r8
/* 8021A788  88 1F 07 6C */	lbz r0, 0x76c(r31)
/* 8021A78C  54 07 18 38 */	slwi r7, r0, 3
/* 8021A790  3B 9C 04 F4 */	addi r28, r28, 0x4f4
/* 8021A794  7C BC 38 2E */	lwzx r5, r28, r7
/* 8021A798  38 00 00 00 */	li r0, 0
/* 8021A79C  90 01 00 08 */	stw r0, 8(r1)
/* 8021A7A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8021A7A4  38 00 FF FF */	li r0, -1
/* 8021A7A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8021A7AC  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8021A7B0  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8021A7B4  7F 64 DB 78 */	mr r4, r27
/* 8021A7B8  7C 19 42 14 */	add r0, r25, r8
/* 8021A7BC  7C E0 3A 14 */	add r7, r0, r7
/* 8021A7C0  80 E7 04 F8 */	lwz r7, 0x4f8(r7)
/* 8021A7C4  81 1D 05 18 */	lwz r8, 0x518(r29)
/* 8021A7C8  39 20 00 00 */	li r9, 0
/* 8021A7CC  39 40 00 00 */	li r10, 0
/* 8021A7D0  48 00 27 39 */	bl readItemTexture__13dMeter2Info_cFUcPvP10J2DPicturePvP10J2DPicturePvP10J2DPicturePvP10J2DPicturei
/* 8021A7D4  2C 03 00 01 */	cmpwi r3, 1
/* 8021A7D8  41 81 00 14 */	bgt lbl_8021A7EC
/* 8021A7DC  38 00 00 00 */	li r0, 0
/* 8021A7E0  80 7D 05 18 */	lwz r3, 0x518(r29)
/* 8021A7E4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8021A7E8  48 00 00 10 */	b lbl_8021A7F8
lbl_8021A7EC:
/* 8021A7EC  38 00 00 01 */	li r0, 1
/* 8021A7F0  80 7D 05 18 */	lwz r3, 0x518(r29)
/* 8021A7F4  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_8021A7F8:
/* 8021A7F8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8021A7FC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8021A800  88 03 05 68 */	lbz r0, 0x568(r3)
/* 8021A804  28 00 00 01 */	cmplwi r0, 1
/* 8021A808  40 82 00 2C */	bne lbl_8021A834
/* 8021A80C  88 03 05 69 */	lbz r0, 0x569(r3)
/* 8021A810  C8 22 AE C0 */	lfd f1, lit_6293(r2)
/* 8021A814  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8021A818  3C 00 43 30 */	lis r0, 0x4330
/* 8021A81C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8021A820  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8021A824  EC 20 08 28 */	fsubs f1, f0, f1
/* 8021A828  C0 02 AE D8 */	lfs f0, lit_8548(r2)
/* 8021A82C  EC 81 00 24 */	fdivs f4, f1, f0
/* 8021A830  48 00 00 3C */	b lbl_8021A86C
lbl_8021A834:
/* 8021A834  3C 60 80 3B */	lis r3, item_resource__10dItem_data@ha /* 0x803AC5A0@ha */
/* 8021A838  38 63 C5 A0 */	addi r3, r3, item_resource__10dItem_data@l /* 0x803AC5A0@l */
/* 8021A83C  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 8021A840  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8021A844  7C 63 02 14 */	add r3, r3, r0
/* 8021A848  88 03 00 12 */	lbz r0, 0x12(r3)
/* 8021A84C  C8 22 AE C0 */	lfd f1, lit_6293(r2)
/* 8021A850  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021A854  3C 00 43 30 */	lis r0, 0x4330
/* 8021A858  90 01 00 20 */	stw r0, 0x20(r1)
/* 8021A85C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8021A860  EC 20 08 28 */	fsubs f1, f0, f1
/* 8021A864  C0 02 AE D8 */	lfs f0, lit_8548(r2)
/* 8021A868  EC 81 00 24 */	fdivs f4, f1, f0
lbl_8021A86C:
/* 8021A86C  80 7D 03 2C */	lwz r3, 0x32c(r29)
/* 8021A870  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 8021A874  88 1F 07 6C */	lbz r0, 0x76c(r31)
/* 8021A878  54 00 18 38 */	slwi r0, r0, 3
/* 8021A87C  7C 7C 00 2E */	lwzx r3, r28, r0
/* 8021A880  A0 03 00 02 */	lhz r0, 2(r3)
/* 8021A884  C8 42 AE C0 */	lfd f2, lit_6293(r2)
/* 8021A888  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8021A88C  3C 80 43 30 */	lis r4, 0x4330
/* 8021A890  90 81 00 28 */	stw r4, 0x28(r1)
/* 8021A894  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8021A898  EC 00 10 28 */	fsubs f0, f0, f2
/* 8021A89C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8021A8A0  C0 22 AE DC */	lfs f1, lit_8549(r2)
/* 8021A8A4  EC 00 08 24 */	fdivs f0, f0, f1
/* 8021A8A8  EC 04 00 32 */	fmuls f0, f4, f0
/* 8021A8AC  7F 79 F2 14 */	add r27, r25, r30
/* 8021A8B0  D0 1B 06 C4 */	stfs f0, 0x6c4(r27)
/* 8021A8B4  80 7D 03 2C */	lwz r3, 0x32c(r29)
/* 8021A8B8  C0 63 00 38 */	lfs f3, 0x38(r3)
/* 8021A8BC  88 1F 07 6C */	lbz r0, 0x76c(r31)
/* 8021A8C0  54 00 18 38 */	slwi r0, r0, 3
/* 8021A8C4  7C 7C 00 2E */	lwzx r3, r28, r0
/* 8021A8C8  A0 03 00 04 */	lhz r0, 4(r3)
/* 8021A8CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8021A8D0  90 81 00 30 */	stw r4, 0x30(r1)
/* 8021A8D4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8021A8D8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8021A8DC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8021A8E0  EC 00 08 24 */	fdivs f0, f0, f1
/* 8021A8E4  EC 04 00 32 */	fmuls f0, f4, f0
/* 8021A8E8  D0 1B 06 D0 */	stfs f0, 0x6d0(r27)
/* 8021A8EC  80 7D 03 2C */	lwz r3, 0x32c(r29)
/* 8021A8F0  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 8021A8F4  C0 22 AE 94 */	lfs f1, lit_4922(r2)
/* 8021A8F8  C0 1B 06 C4 */	lfs f0, 0x6c4(r27)
/* 8021A8FC  EC 02 00 28 */	fsubs f0, f2, f0
/* 8021A900  EC 01 00 32 */	fmuls f0, f1, f0
/* 8021A904  D0 1B 06 AC */	stfs f0, 0x6ac(r27)
/* 8021A908  80 7D 03 2C */	lwz r3, 0x32c(r29)
/* 8021A90C  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 8021A910  C0 1B 06 D0 */	lfs f0, 0x6d0(r27)
/* 8021A914  EC 02 00 28 */	fsubs f0, f2, f0
/* 8021A918  EC 01 00 32 */	fmuls f0, f1, f0
/* 8021A91C  D0 1B 06 B8 */	stfs f0, 0x6b8(r27)
/* 8021A920  80 7D 03 2C */	lwz r3, 0x32c(r29)
/* 8021A924  80 63 00 04 */	lwz r3, 4(r3)
/* 8021A928  C0 3B 06 C4 */	lfs f1, 0x6c4(r27)
/* 8021A92C  C0 5B 06 D0 */	lfs f2, 0x6d0(r27)
/* 8021A930  81 83 00 00 */	lwz r12, 0(r3)
/* 8021A934  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8021A938  7D 89 03 A6 */	mtctr r12
/* 8021A93C  3B DB 06 AC */	addi r30, r27, 0x6ac
/* 8021A940  3B 9B 06 B8 */	addi r28, r27, 0x6b8
/* 8021A944  4E 80 04 21 */	bctrl 
/* 8021A948  2C 1A 00 00 */	cmpwi r26, 0
/* 8021A94C  40 82 00 28 */	bne lbl_8021A974
/* 8021A950  80 7D 03 2C */	lwz r3, 0x32c(r29)
/* 8021A954  C0 39 00 04 */	lfs f1, 4(r25)
/* 8021A958  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8021A95C  EC 21 00 2A */	fadds f1, f1, f0
/* 8021A960  C0 59 00 08 */	lfs f2, 8(r25)
/* 8021A964  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8021A968  EC 42 00 2A */	fadds f2, f2, f0
/* 8021A96C  48 03 9C 45 */	bl paneTrans__8CPaneMgrFff
/* 8021A970  48 00 00 24 */	b lbl_8021A994
lbl_8021A974:
/* 8021A974  80 7D 03 2C */	lwz r3, 0x32c(r29)
/* 8021A978  C0 39 00 20 */	lfs f1, 0x20(r25)
/* 8021A97C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8021A980  EC 21 00 2A */	fadds f1, f1, f0
/* 8021A984  C0 59 00 24 */	lfs f2, 0x24(r25)
/* 8021A988  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8021A98C  EC 42 00 2A */	fadds f2, f2, f0
/* 8021A990  48 03 9C 21 */	bl paneTrans__8CPaneMgrFff
lbl_8021A994:
/* 8021A994  80 7D 05 18 */	lwz r3, 0x518(r29)
/* 8021A998  C0 3B 06 C4 */	lfs f1, 0x6c4(r27)
/* 8021A99C  C0 5B 06 D0 */	lfs f2, 0x6d0(r27)
/* 8021A9A0  81 83 00 00 */	lwz r12, 0(r3)
/* 8021A9A4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8021A9A8  7D 89 03 A6 */	mtctr r12
/* 8021A9AC  4E 80 04 21 */	bctrl 
/* 8021A9B0  39 61 00 60 */	addi r11, r1, 0x60
/* 8021A9B4  48 14 78 65 */	bl _restgpr_25
/* 8021A9B8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8021A9BC  7C 08 03 A6 */	mtlr r0
/* 8021A9C0  38 21 00 60 */	addi r1, r1, 0x60
/* 8021A9C4  4E 80 00 20 */	blr 
