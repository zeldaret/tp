lbl_807CA73C:
/* 807CA73C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807CA740  7C 08 02 A6 */	mflr r0
/* 807CA744  90 01 00 34 */	stw r0, 0x34(r1)
/* 807CA748  39 61 00 30 */	addi r11, r1, 0x30
/* 807CA74C  4B B9 7A 91 */	bl _savegpr_29
/* 807CA750  7C 7D 1B 78 */	mr r29, r3
/* 807CA754  3C 80 80 7D */	lis r4, lit_3907@ha /* 0x807CECA8@ha */
/* 807CA758  3B E4 EC A8 */	addi r31, r4, lit_3907@l /* 0x807CECA8@l */
/* 807CA75C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CA760  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CA764  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 807CA768  80 03 1E 04 */	lwz r0, 0x1e04(r3)
/* 807CA76C  60 00 00 01 */	ori r0, r0, 1
/* 807CA770  90 03 1E 04 */	stw r0, 0x1e04(r3)
/* 807CA774  80 03 13 20 */	lwz r0, 0x1320(r3)
/* 807CA778  2C 00 00 03 */	cmpwi r0, 3
/* 807CA77C  41 82 01 48 */	beq lbl_807CA8C4
/* 807CA780  40 80 00 1C */	bge lbl_807CA79C
/* 807CA784  2C 00 00 01 */	cmpwi r0, 1
/* 807CA788  41 82 01 20 */	beq lbl_807CA8A8
/* 807CA78C  40 80 00 A8 */	bge lbl_807CA834
/* 807CA790  2C 00 00 00 */	cmpwi r0, 0
/* 807CA794  40 80 00 18 */	bge lbl_807CA7AC
/* 807CA798  48 00 02 90 */	b lbl_807CAA28
lbl_807CA79C:
/* 807CA79C  2C 00 00 05 */	cmpwi r0, 5
/* 807CA7A0  41 82 01 BC */	beq lbl_807CA95C
/* 807CA7A4  40 80 02 84 */	bge lbl_807CAA28
/* 807CA7A8  48 00 02 30 */	b lbl_807CA9D8
lbl_807CA7AC:
/* 807CA7AC  38 80 00 16 */	li r4, 0x16
/* 807CA7B0  38 A0 00 00 */	li r5, 0
/* 807CA7B4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807CA7B8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807CA7BC  4B FF 90 5D */	bl setBck__8daE_VA_cFiUcff
/* 807CA7C0  3C 60 80 7D */	lis r3, l_HIO@ha /* 0x807CF4C4@ha */
/* 807CA7C4  38 63 F4 C4 */	addi r3, r3, l_HIO@l /* 0x807CF4C4@l */
/* 807CA7C8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807CA7CC  FC 00 00 1E */	fctiwz f0, f0
/* 807CA7D0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807CA7D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CA7D8  90 1D 13 44 */	stw r0, 0x1344(r29)
/* 807CA7DC  38 00 00 02 */	li r0, 2
/* 807CA7E0  90 1D 13 20 */	stw r0, 0x1320(r29)
/* 807CA7E4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CA7E8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807CA7EC  38 00 00 00 */	li r0, 0
/* 807CA7F0  98 1D 13 83 */	stb r0, 0x1383(r29)
/* 807CA7F4  38 00 00 04 */	li r0, 4
/* 807CA7F8  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 807CA7FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070335@ha */
/* 807CA800  38 03 03 35 */	addi r0, r3, 0x0335 /* 0x00070335@l */
/* 807CA804  90 01 00 0C */	stw r0, 0xc(r1)
/* 807CA808  38 7D 12 54 */	addi r3, r29, 0x1254
/* 807CA80C  38 81 00 0C */	addi r4, r1, 0xc
/* 807CA810  38 A0 FF FF */	li r5, -1
/* 807CA814  81 9D 12 54 */	lwz r12, 0x1254(r29)
/* 807CA818  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807CA81C  7D 89 03 A6 */	mtctr r12
/* 807CA820  4E 80 04 21 */	bctrl 
/* 807CA824  38 60 00 06 */	li r3, 6
/* 807CA828  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807CA82C  7C 04 07 74 */	extsb r4, r0
/* 807CA830  4B 86 32 6D */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_807CA834:
/* 807CA834  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807CA838  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 807CA83C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 807CA840  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807CA844  40 80 00 10 */	bge lbl_807CA854
/* 807CA848  80 1D 1E 04 */	lwz r0, 0x1e04(r29)
/* 807CA84C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807CA850  90 1D 1E 04 */	stw r0, 0x1e04(r29)
lbl_807CA854:
/* 807CA854  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807CA858  38 80 00 01 */	li r4, 1
/* 807CA85C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807CA860  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807CA864  40 82 00 18 */	bne lbl_807CA87C
/* 807CA868  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CA86C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807CA870  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807CA874  41 82 00 08 */	beq lbl_807CA87C
/* 807CA878  38 80 00 00 */	li r4, 0
lbl_807CA87C:
/* 807CA87C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807CA880  41 82 01 A8 */	beq lbl_807CAA28
/* 807CA884  7F A3 EB 78 */	mr r3, r29
/* 807CA888  38 80 00 1D */	li r4, 0x1d
/* 807CA88C  38 A0 00 02 */	li r5, 2
/* 807CA890  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807CA894  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807CA898  4B FF 8F 81 */	bl setBck__8daE_VA_cFiUcff
/* 807CA89C  38 00 00 03 */	li r0, 3
/* 807CA8A0  90 1D 13 20 */	stw r0, 0x1320(r29)
/* 807CA8A4  48 00 01 84 */	b lbl_807CAA28
lbl_807CA8A8:
/* 807CA8A8  38 80 00 1D */	li r4, 0x1d
/* 807CA8AC  38 A0 00 02 */	li r5, 2
/* 807CA8B0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807CA8B4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807CA8B8  4B FF 8F 61 */	bl setBck__8daE_VA_cFiUcff
/* 807CA8BC  38 00 00 03 */	li r0, 3
/* 807CA8C0  90 1D 13 20 */	stw r0, 0x1320(r29)
lbl_807CA8C4:
/* 807CA8C4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807CA8C8  38 63 00 0C */	addi r3, r3, 0xc
/* 807CA8CC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807CA8D0  4B B5 DB 5D */	bl checkPass__12J3DFrameCtrlFf
/* 807CA8D4  2C 03 00 00 */	cmpwi r3, 0
/* 807CA8D8  41 82 00 2C */	beq lbl_807CA904
/* 807CA8DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070332@ha */
/* 807CA8E0  38 03 03 32 */	addi r0, r3, 0x0332 /* 0x00070332@l */
/* 807CA8E4  90 01 00 08 */	stw r0, 8(r1)
/* 807CA8E8  38 7D 12 54 */	addi r3, r29, 0x1254
/* 807CA8EC  38 81 00 08 */	addi r4, r1, 8
/* 807CA8F0  38 A0 FF FF */	li r5, -1
/* 807CA8F4  81 9D 12 54 */	lwz r12, 0x1254(r29)
/* 807CA8F8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807CA8FC  7D 89 03 A6 */	mtctr r12
/* 807CA900  4E 80 04 21 */	bctrl 
lbl_807CA904:
/* 807CA904  80 1D 13 4C */	lwz r0, 0x134c(r29)
/* 807CA908  2C 00 00 00 */	cmpwi r0, 0
/* 807CA90C  40 82 00 30 */	bne lbl_807CA93C
/* 807CA910  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807CA914  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807CA918  80 63 00 00 */	lwz r3, 0(r3)
/* 807CA91C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807CA920  38 80 00 01 */	li r4, 1
/* 807CA924  4B AE 74 D1 */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 807CA928  7F A3 EB 78 */	mr r3, r29
/* 807CA92C  38 80 00 13 */	li r4, 0x13
/* 807CA930  38 A0 00 02 */	li r5, 2
/* 807CA934  4B FF 8F E5 */	bl setActionMode__8daE_VA_cFii
/* 807CA938  48 00 00 F0 */	b lbl_807CAA28
lbl_807CA93C:
/* 807CA93C  80 1D 13 44 */	lwz r0, 0x1344(r29)
/* 807CA940  2C 00 00 00 */	cmpwi r0, 0
/* 807CA944  40 82 00 E4 */	bne lbl_807CAA28
/* 807CA948  7F A3 EB 78 */	mr r3, r29
/* 807CA94C  38 80 00 0C */	li r4, 0xc
/* 807CA950  38 A0 00 15 */	li r5, 0x15
/* 807CA954  4B FF 8F C5 */	bl setActionMode__8daE_VA_cFii
/* 807CA958  48 00 00 D0 */	b lbl_807CAA28
lbl_807CA95C:
/* 807CA95C  80 9D 13 64 */	lwz r4, 0x1364(r29)
/* 807CA960  80 1D 13 68 */	lwz r0, 0x1368(r29)
/* 807CA964  7C 04 02 14 */	add r0, r4, r0
/* 807CA968  90 1D 13 64 */	stw r0, 0x1364(r29)
/* 807CA96C  80 1D 13 64 */	lwz r0, 0x1364(r29)
/* 807CA970  C8 3F 00 D8 */	lfd f1, 0xd8(r31)
/* 807CA974  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807CA978  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CA97C  3C 00 43 30 */	lis r0, 0x4330
/* 807CA980  90 01 00 10 */	stw r0, 0x10(r1)
/* 807CA984  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 807CA988  EC 20 08 28 */	fsubs f1, f0, f1
/* 807CA98C  3C 80 80 7D */	lis r4, l_HIO@ha /* 0x807CF4C4@ha */
/* 807CA990  38 84 F4 C4 */	addi r4, r4, l_HIO@l /* 0x807CF4C4@l */
/* 807CA994  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 807CA998  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807CA99C  41 81 00 10 */	bgt lbl_807CA9AC
/* 807CA9A0  88 1D 13 84 */	lbz r0, 0x1384(r29)
/* 807CA9A4  28 00 00 06 */	cmplwi r0, 6
/* 807CA9A8  41 80 00 20 */	blt lbl_807CA9C8
lbl_807CA9AC:
/* 807CA9AC  7F A3 EB 78 */	mr r3, r29
/* 807CA9B0  38 80 00 14 */	li r4, 0x14
/* 807CA9B4  38 A0 00 00 */	li r5, 0
/* 807CA9B8  4B FF 8F 61 */	bl setActionMode__8daE_VA_cFii
/* 807CA9BC  38 00 00 01 */	li r0, 1
/* 807CA9C0  98 1D 13 81 */	stb r0, 0x1381(r29)
/* 807CA9C4  48 00 00 A4 */	b lbl_807CAA68
lbl_807CA9C8:
/* 807CA9C8  38 80 00 0C */	li r4, 0xc
/* 807CA9CC  38 A0 00 14 */	li r5, 0x14
/* 807CA9D0  4B FF 8F 49 */	bl setActionMode__8daE_VA_cFii
/* 807CA9D4  48 00 00 54 */	b lbl_807CAA28
lbl_807CA9D8:
/* 807CA9D8  80 1D 1E 04 */	lwz r0, 0x1e04(r29)
/* 807CA9DC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807CA9E0  90 1D 1E 04 */	stw r0, 0x1e04(r29)
/* 807CA9E4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807CA9E8  38 80 00 01 */	li r4, 1
/* 807CA9EC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807CA9F0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807CA9F4  40 82 00 18 */	bne lbl_807CAA0C
/* 807CA9F8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CA9FC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807CAA00  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807CAA04  41 82 00 08 */	beq lbl_807CAA0C
/* 807CAA08  38 80 00 00 */	li r4, 0
lbl_807CAA0C:
/* 807CAA0C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807CAA10  41 82 00 18 */	beq lbl_807CAA28
/* 807CAA14  7F A3 EB 78 */	mr r3, r29
/* 807CAA18  38 80 00 0C */	li r4, 0xc
/* 807CAA1C  38 A0 00 00 */	li r5, 0
/* 807CAA20  4B FF 8E F9 */	bl setActionMode__8daE_VA_cFii
/* 807CAA24  48 00 00 44 */	b lbl_807CAA68
lbl_807CAA28:
/* 807CAA28  88 1E 05 69 */	lbz r0, 0x569(r30)
/* 807CAA2C  28 00 00 01 */	cmplwi r0, 1
/* 807CAA30  41 81 00 10 */	bgt lbl_807CAA40
/* 807CAA34  88 1E 05 68 */	lbz r0, 0x568(r30)
/* 807CAA38  28 00 00 0A */	cmplwi r0, 0xa
/* 807CAA3C  40 82 00 2C */	bne lbl_807CAA68
lbl_807CAA40:
/* 807CAA40  80 1D 13 4C */	lwz r0, 0x134c(r29)
/* 807CAA44  2C 00 00 1E */	cmpwi r0, 0x1e
/* 807CAA48  40 80 00 0C */	bge lbl_807CAA54
/* 807CAA4C  38 00 00 1E */	li r0, 0x1e
/* 807CAA50  90 1D 13 4C */	stw r0, 0x134c(r29)
lbl_807CAA54:
/* 807CAA54  80 1D 13 44 */	lwz r0, 0x1344(r29)
/* 807CAA58  2C 00 00 1E */	cmpwi r0, 0x1e
/* 807CAA5C  40 80 00 0C */	bge lbl_807CAA68
/* 807CAA60  38 00 00 1E */	li r0, 0x1e
/* 807CAA64  90 1D 13 44 */	stw r0, 0x1344(r29)
lbl_807CAA68:
/* 807CAA68  39 61 00 30 */	addi r11, r1, 0x30
/* 807CAA6C  4B B9 77 BD */	bl _restgpr_29
/* 807CAA70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807CAA74  7C 08 03 A6 */	mtlr r0
/* 807CAA78  38 21 00 30 */	addi r1, r1, 0x30
/* 807CAA7C  4E 80 00 20 */	blr 
