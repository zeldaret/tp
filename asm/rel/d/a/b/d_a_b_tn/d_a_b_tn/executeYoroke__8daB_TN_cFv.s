lbl_8062A71C:
/* 8062A71C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062A720  7C 08 02 A6 */	mflr r0
/* 8062A724  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062A728  39 61 00 20 */	addi r11, r1, 0x20
/* 8062A72C  4B D3 7A AD */	bl _savegpr_28
/* 8062A730  7C 7F 1B 78 */	mr r31, r3
/* 8062A734  3C 80 80 63 */	lis r4, lit_3920@ha /* 0x8062E634@ha */
/* 8062A738  3B A4 E6 34 */	addi r29, r4, lit_3920@l /* 0x8062E634@l */
/* 8062A73C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062A740  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062A744  83 9E 5D AC */	lwz r28, 0x5dac(r30)
/* 8062A748  80 03 06 F4 */	lwz r0, 0x6f4(r3)
/* 8062A74C  2C 00 00 0A */	cmpwi r0, 0xa
/* 8062A750  41 82 00 A0 */	beq lbl_8062A7F0
/* 8062A754  40 80 01 E4 */	bge lbl_8062A938
/* 8062A758  2C 00 00 02 */	cmpwi r0, 2
/* 8062A75C  40 80 01 DC */	bge lbl_8062A938
/* 8062A760  2C 00 00 00 */	cmpwi r0, 0
/* 8062A764  40 80 00 08 */	bge lbl_8062A76C
/* 8062A768  48 00 01 D0 */	b lbl_8062A938
lbl_8062A76C:
/* 8062A76C  40 82 00 1C */	bne lbl_8062A788
/* 8062A770  38 80 00 1B */	li r4, 0x1b
/* 8062A774  38 A0 00 00 */	li r5, 0
/* 8062A778  C0 3D 01 28 */	lfs f1, 0x128(r29)
/* 8062A77C  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8062A780  4B FF 61 49 */	bl setBck__8daB_TN_cFiUcff
/* 8062A784  48 00 00 18 */	b lbl_8062A79C
lbl_8062A788:
/* 8062A788  38 80 00 1B */	li r4, 0x1b
/* 8062A78C  38 A0 00 00 */	li r5, 0
/* 8062A790  C0 3D 01 28 */	lfs f1, 0x128(r29)
/* 8062A794  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8062A798  4B FF 61 31 */	bl setBck__8daB_TN_cFiUcff
lbl_8062A79C:
/* 8062A79C  38 00 00 0A */	li r0, 0xa
/* 8062A7A0  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 8062A7A4  7F E3 FB 78 */	mr r3, r31
/* 8062A7A8  38 80 00 00 */	li r4, 0
/* 8062A7AC  4B FF 62 35 */	bl setSwordAtBit__8daB_TN_cFi
/* 8062A7B0  7F E3 FB 78 */	mr r3, r31
/* 8062A7B4  38 80 00 01 */	li r4, 1
/* 8062A7B8  4B FF 63 2D */	bl setSwordAtBreak__8daB_TN_cFi
/* 8062A7BC  80 1F 36 18 */	lwz r0, 0x3618(r31)
/* 8062A7C0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8062A7C4  90 1F 36 18 */	stw r0, 0x3618(r31)
/* 8062A7C8  38 00 00 00 */	li r0, 0
/* 8062A7CC  98 1F 0A 91 */	stb r0, 0xa91(r31)
/* 8062A7D0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8062A7D4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8062A7D8  98 1F 0A AB */	stb r0, 0xaab(r31)
/* 8062A7DC  88 1C 05 68 */	lbz r0, 0x568(r28)
/* 8062A7E0  28 00 00 0A */	cmplwi r0, 0xa
/* 8062A7E4  40 82 00 0C */	bne lbl_8062A7F0
/* 8062A7E8  38 00 00 01 */	li r0, 1
/* 8062A7EC  98 1F 0A AB */	stb r0, 0xaab(r31)
lbl_8062A7F0:
/* 8062A7F0  88 1F 0A AB */	lbz r0, 0xaab(r31)
/* 8062A7F4  28 00 00 01 */	cmplwi r0, 1
/* 8062A7F8  40 82 00 2C */	bne lbl_8062A824
/* 8062A7FC  7F 83 E3 78 */	mr r3, r28
/* 8062A800  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 8062A804  81 8C 02 A8 */	lwz r12, 0x2a8(r12)
/* 8062A808  7D 89 03 A6 */	mtctr r12
/* 8062A80C  4E 80 04 21 */	bctrl 
/* 8062A810  2C 03 00 00 */	cmpwi r3, 0
/* 8062A814  40 82 00 DC */	bne lbl_8062A8F0
/* 8062A818  38 00 00 02 */	li r0, 2
/* 8062A81C  98 1F 0A AB */	stb r0, 0xaab(r31)
/* 8062A820  48 00 00 D0 */	b lbl_8062A8F0
lbl_8062A824:
/* 8062A824  28 00 00 02 */	cmplwi r0, 2
/* 8062A828  40 82 00 C8 */	bne lbl_8062A8F0
/* 8062A82C  7F 83 E3 78 */	mr r3, r28
/* 8062A830  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 8062A834  81 8C 02 A8 */	lwz r12, 0x2a8(r12)
/* 8062A838  7D 89 03 A6 */	mtctr r12
/* 8062A83C  4E 80 04 21 */	bctrl 
/* 8062A840  2C 03 00 00 */	cmpwi r3, 0
/* 8062A844  41 82 00 AC */	beq lbl_8062A8F0
/* 8062A848  7F 83 E3 78 */	mr r3, r28
/* 8062A84C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 8062A850  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 8062A854  7D 89 03 A6 */	mtctr r12
/* 8062A858  4E 80 04 21 */	bctrl 
/* 8062A85C  2C 03 00 00 */	cmpwi r3, 0
/* 8062A860  40 82 00 90 */	bne lbl_8062A8F0
/* 8062A864  7F E3 FB 78 */	mr r3, r31
/* 8062A868  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8062A86C  4B 9E FF 75 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8062A870  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8062A874  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8062A878  40 80 00 78 */	bge lbl_8062A8F0
/* 8062A87C  7F E3 FB 78 */	mr r3, r31
/* 8062A880  38 80 00 09 */	li r4, 9
/* 8062A884  38 A0 00 00 */	li r5, 0
/* 8062A888  4B FF 61 41 */	bl setActionMode__8daB_TN_cFii
/* 8062A88C  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 8062A890  C0 1D 02 04 */	lfs f0, 0x204(r29)
/* 8062A894  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8062A898  40 80 00 14 */	bge lbl_8062A8AC
/* 8062A89C  7F E3 FB 78 */	mr r3, r31
/* 8062A8A0  38 80 00 06 */	li r4, 6
/* 8062A8A4  4B FF D0 F9 */	bl initChaseL__8daB_TN_cFi
/* 8062A8A8  48 00 00 90 */	b lbl_8062A938
lbl_8062A8AC:
/* 8062A8AC  7F E3 FB 78 */	mr r3, r31
/* 8062A8B0  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8062A8B4  4B 9E FE 5D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8062A8B8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8062A8BC  7C 00 18 50 */	subf r0, r0, r3
/* 8062A8C0  7C 00 07 35 */	extsh. r0, r0
/* 8062A8C4  40 80 00 14 */	bge lbl_8062A8D8
/* 8062A8C8  7F E3 FB 78 */	mr r3, r31
/* 8062A8CC  38 80 00 0E */	li r4, 0xe
/* 8062A8D0  4B FF D0 CD */	bl initChaseL__8daB_TN_cFi
/* 8062A8D4  48 00 00 10 */	b lbl_8062A8E4
lbl_8062A8D8:
/* 8062A8D8  7F E3 FB 78 */	mr r3, r31
/* 8062A8DC  38 80 00 0B */	li r4, 0xb
/* 8062A8E0  4B FF D0 BD */	bl initChaseL__8daB_TN_cFi
lbl_8062A8E4:
/* 8062A8E4  38 00 00 0A */	li r0, 0xa
/* 8062A8E8  90 1F 0A 84 */	stw r0, 0xa84(r31)
/* 8062A8EC  48 00 00 4C */	b lbl_8062A938
lbl_8062A8F0:
/* 8062A8F0  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062A8F4  38 80 00 01 */	li r4, 1
/* 8062A8F8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8062A8FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8062A900  40 82 00 18 */	bne lbl_8062A918
/* 8062A904  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8062A908  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8062A90C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8062A910  41 82 00 08 */	beq lbl_8062A918
/* 8062A914  38 80 00 00 */	li r4, 0
lbl_8062A918:
/* 8062A918  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8062A91C  41 82 00 1C */	beq lbl_8062A938
/* 8062A920  7F E3 FB 78 */	mr r3, r31
/* 8062A924  38 80 00 09 */	li r4, 9
/* 8062A928  38 A0 00 00 */	li r5, 0
/* 8062A92C  4B FF 60 9D */	bl setActionMode__8daB_TN_cFii
/* 8062A930  38 00 00 01 */	li r0, 1
/* 8062A934  98 1F 0A 91 */	stb r0, 0xa91(r31)
lbl_8062A938:
/* 8062A938  39 61 00 20 */	addi r11, r1, 0x20
/* 8062A93C  4B D3 78 E9 */	bl _restgpr_28
/* 8062A940  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062A944  7C 08 03 A6 */	mtlr r0
/* 8062A948  38 21 00 20 */	addi r1, r1, 0x20
/* 8062A94C  4E 80 00 20 */	blr 
