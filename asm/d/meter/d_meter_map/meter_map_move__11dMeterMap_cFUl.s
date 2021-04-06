lbl_8020E754:
/* 8020E754  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020E758  7C 08 02 A6 */	mflr r0
/* 8020E75C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020E760  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8020E764  4B FF FD 65 */	bl isShow__11dMeterMap_cFUl
/* 8020E768  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020E76C  41 82 02 4C */	beq lbl_8020E9B8
/* 8020E770  4B FF F1 91 */	bl isMapOpenCheck__11dMeterMap_cFv
/* 8020E774  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020E778  41 82 02 40 */	beq lbl_8020E9B8
/* 8020E77C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8020E780  3B E3 01 88 */	addi r31, r3, g_meter2_info@l /* 0x80430188@l */
/* 8020E784  88 1F 00 C1 */	lbz r0, 0xc1(r31)
/* 8020E788  28 00 00 06 */	cmplwi r0, 6
/* 8020E78C  40 82 00 78 */	bne lbl_8020E804
/* 8020E790  A0 1F 00 A2 */	lhz r0, 0xa2(r31)
/* 8020E794  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8020E798  40 82 00 60 */	bne lbl_8020E7F8
/* 8020E79C  4B FF FE 85 */	bl isFmapScreen__11dMeterMap_cFv
/* 8020E7A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020E7A4  41 82 00 54 */	beq lbl_8020E7F8
/* 8020E7A8  38 00 00 03 */	li r0, 3
/* 8020E7AC  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8020E7B0  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8020E7B4  98 03 00 BF */	stb r0, 0xbf(r3)
/* 8020E7B8  38 00 04 00 */	li r0, 0x400
/* 8020E7BC  B0 03 00 AA */	sth r0, 0xaa(r3)
/* 8020E7C0  38 00 00 B8 */	li r0, 0xb8
/* 8020E7C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8020E7C8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8020E7CC  38 81 00 10 */	addi r4, r1, 0x10
/* 8020E7D0  38 A0 00 00 */	li r5, 0
/* 8020E7D4  38 C0 00 00 */	li r6, 0
/* 8020E7D8  38 E0 00 00 */	li r7, 0
/* 8020E7DC  C0 22 AE 34 */	lfs f1, lit_4129(r2)
/* 8020E7E0  FC 40 08 90 */	fmr f2, f1
/* 8020E7E4  C0 62 AE 44 */	lfs f3, lit_4515(r2)
/* 8020E7E8  FC 80 18 90 */	fmr f4, f3
/* 8020E7EC  39 00 00 00 */	li r8, 0
/* 8020E7F0  48 09 D1 95 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8020E7F4  48 01 01 DD */	bl dMeter2Info_set2DVibration__Fv
lbl_8020E7F8:
/* 8020E7F8  38 00 00 00 */	li r0, 0
/* 8020E7FC  98 1F 00 C1 */	stb r0, 0xc1(r31)
/* 8020E800  48 00 01 B8 */	b lbl_8020E9B8
lbl_8020E804:
/* 8020E804  4B FE B7 A9 */	bl dMw_LEFT_TRIGGER__Fv
/* 8020E808  2C 03 00 00 */	cmpwi r3, 0
/* 8020E80C  41 82 00 D8 */	beq lbl_8020E8E4
/* 8020E810  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8020E814  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8020E818  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8020E81C  28 00 00 00 */	cmplwi r0, 0
/* 8020E820  40 82 00 C4 */	bne lbl_8020E8E4
/* 8020E824  48 02 9A 09 */	bl getStatus__12dMsgObject_cFv
/* 8020E828  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8020E82C  20 60 00 01 */	subfic r3, r0, 1
/* 8020E830  30 03 FF FF */	addic r0, r3, -1
/* 8020E834  7C 00 19 10 */	subfe r0, r0, r3
/* 8020E838  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8020E83C  40 82 00 A8 */	bne lbl_8020E8E4
/* 8020E840  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8020E844  3B E3 01 88 */	addi r31, r3, g_meter2_info@l /* 0x80430188@l */
/* 8020E848  88 1F 00 BF */	lbz r0, 0xbf(r31)
/* 8020E84C  28 00 00 00 */	cmplwi r0, 0
/* 8020E850  41 82 00 0C */	beq lbl_8020E85C
/* 8020E854  28 00 00 01 */	cmplwi r0, 1
/* 8020E858  40 82 00 8C */	bne lbl_8020E8E4
lbl_8020E85C:
/* 8020E85C  28 00 00 00 */	cmplwi r0, 0
/* 8020E860  40 82 01 58 */	bne lbl_8020E9B8
/* 8020E864  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8020E868  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8020E86C  A0 03 00 A2 */	lhz r0, 0xa2(r3)
/* 8020E870  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8020E874  40 82 01 44 */	bne lbl_8020E9B8
/* 8020E878  4B FF FD A9 */	bl isFmapScreen__11dMeterMap_cFv
/* 8020E87C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020E880  40 82 00 10 */	bne lbl_8020E890
/* 8020E884  4B FF FE 89 */	bl isDmapScreen__11dMeterMap_cFv
/* 8020E888  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020E88C  41 82 01 2C */	beq lbl_8020E9B8
lbl_8020E890:
/* 8020E890  38 00 00 02 */	li r0, 2
/* 8020E894  98 1F 00 BF */	stb r0, 0xbf(r31)
/* 8020E898  38 00 02 00 */	li r0, 0x200
/* 8020E89C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8020E8A0  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8020E8A4  B0 03 00 AA */	sth r0, 0xaa(r3)
/* 8020E8A8  38 00 00 B8 */	li r0, 0xb8
/* 8020E8AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8020E8B0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8020E8B4  38 81 00 0C */	addi r4, r1, 0xc
/* 8020E8B8  38 A0 00 00 */	li r5, 0
/* 8020E8BC  38 C0 00 00 */	li r6, 0
/* 8020E8C0  38 E0 00 00 */	li r7, 0
/* 8020E8C4  C0 22 AE 34 */	lfs f1, lit_4129(r2)
/* 8020E8C8  FC 40 08 90 */	fmr f2, f1
/* 8020E8CC  C0 62 AE 44 */	lfs f3, lit_4515(r2)
/* 8020E8D0  FC 80 18 90 */	fmr f4, f3
/* 8020E8D4  39 00 00 00 */	li r8, 0
/* 8020E8D8  48 09 D0 AD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8020E8DC  48 01 00 F5 */	bl dMeter2Info_set2DVibration__Fv
/* 8020E8E0  48 00 00 D8 */	b lbl_8020E9B8
lbl_8020E8E4:
/* 8020E8E4  4B FE B7 11 */	bl dMw_RIGHT_TRIGGER__Fv
/* 8020E8E8  2C 03 00 00 */	cmpwi r3, 0
/* 8020E8EC  41 82 00 CC */	beq lbl_8020E9B8
/* 8020E8F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8020E8F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8020E8F8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8020E8FC  28 00 00 00 */	cmplwi r0, 0
/* 8020E900  40 82 00 B8 */	bne lbl_8020E9B8
/* 8020E904  48 02 99 29 */	bl getStatus__12dMsgObject_cFv
/* 8020E908  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8020E90C  20 60 00 01 */	subfic r3, r0, 1
/* 8020E910  30 03 FF FF */	addic r0, r3, -1
/* 8020E914  7C 00 19 10 */	subfe r0, r0, r3
/* 8020E918  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8020E91C  40 82 00 9C */	bne lbl_8020E9B8
/* 8020E920  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8020E924  3B E3 01 88 */	addi r31, r3, g_meter2_info@l /* 0x80430188@l */
/* 8020E928  88 1F 00 BF */	lbz r0, 0xbf(r31)
/* 8020E92C  28 00 00 00 */	cmplwi r0, 0
/* 8020E930  41 82 00 0C */	beq lbl_8020E93C
/* 8020E934  28 00 00 01 */	cmplwi r0, 1
/* 8020E938  40 82 00 80 */	bne lbl_8020E9B8
lbl_8020E93C:
/* 8020E93C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8020E940  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8020E944  A0 03 00 A2 */	lhz r0, 0xa2(r3)
/* 8020E948  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8020E94C  40 82 00 6C */	bne lbl_8020E9B8
/* 8020E950  4B FF FC D1 */	bl isFmapScreen__11dMeterMap_cFv
/* 8020E954  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020E958  40 82 00 10 */	bne lbl_8020E968
/* 8020E95C  4B FF FD B1 */	bl isDmapScreen__11dMeterMap_cFv
/* 8020E960  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020E964  41 82 00 54 */	beq lbl_8020E9B8
lbl_8020E968:
/* 8020E968  38 00 00 02 */	li r0, 2
/* 8020E96C  98 1F 00 BF */	stb r0, 0xbf(r31)
/* 8020E970  38 00 04 00 */	li r0, 0x400
/* 8020E974  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8020E978  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8020E97C  B0 03 00 AA */	sth r0, 0xaa(r3)
/* 8020E980  38 00 00 B8 */	li r0, 0xb8
/* 8020E984  90 01 00 08 */	stw r0, 8(r1)
/* 8020E988  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8020E98C  38 81 00 08 */	addi r4, r1, 8
/* 8020E990  38 A0 00 00 */	li r5, 0
/* 8020E994  38 C0 00 00 */	li r6, 0
/* 8020E998  38 E0 00 00 */	li r7, 0
/* 8020E99C  C0 22 AE 34 */	lfs f1, lit_4129(r2)
/* 8020E9A0  FC 40 08 90 */	fmr f2, f1
/* 8020E9A4  C0 62 AE 44 */	lfs f3, lit_4515(r2)
/* 8020E9A8  FC 80 18 90 */	fmr f4, f3
/* 8020E9AC  39 00 00 00 */	li r8, 0
/* 8020E9B0  48 09 CF D5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8020E9B4  48 01 00 1D */	bl dMeter2Info_set2DVibration__Fv
lbl_8020E9B8:
/* 8020E9B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8020E9BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020E9C0  7C 08 03 A6 */	mtlr r0
/* 8020E9C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8020E9C8  4E 80 00 20 */	blr 
