lbl_801008EC:
/* 801008EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801008F0  7C 08 02 A6 */	mflr r0
/* 801008F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801008F8  39 61 00 20 */	addi r11, r1, 0x20
/* 801008FC  48 26 18 E1 */	bl _savegpr_29
/* 80100900  7C 7D 1B 78 */	mr r29, r3
/* 80100904  C0 23 33 AC */	lfs f1, 0x33ac(r3)
/* 80100908  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8010090C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80100910  40 81 00 DC */	ble lbl_801009EC
/* 80100914  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 80100918  A8 1D 2F E2 */	lha r0, 0x2fe2(r29)
/* 8010091C  7C 03 00 50 */	subf r0, r3, r0
/* 80100920  7C 03 07 34 */	extsh r3, r0
/* 80100924  4B FB 2B 71 */	bl getDirectionFromAngle__9daAlink_cFs
/* 80100928  98 7D 2F 98 */	stb r3, 0x2f98(r29)
/* 8010092C  83 FD 27 E0 */	lwz r31, 0x27e0(r29)
/* 80100930  3B C0 00 01 */	li r30, 1
/* 80100934  7F E3 FB 78 */	mr r3, r31
/* 80100938  4B F7 2E AD */	bl LockonTruth__12dAttention_cFv
/* 8010093C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80100940  40 82 00 14 */	bne lbl_80100954
/* 80100944  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80100948  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 8010094C  40 82 00 08 */	bne lbl_80100954
/* 80100950  3B C0 00 00 */	li r30, 0
lbl_80100954:
/* 80100954  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80100958  41 82 00 48 */	beq lbl_801009A0
/* 8010095C  88 1D 2F 98 */	lbz r0, 0x2f98(r29)
/* 80100960  28 00 00 02 */	cmplwi r0, 2
/* 80100964  41 82 00 0C */	beq lbl_80100970
/* 80100968  28 00 00 03 */	cmplwi r0, 3
/* 8010096C  40 82 00 54 */	bne lbl_801009C0
lbl_80100970:
/* 80100970  7F A3 EB 78 */	mr r3, r29
/* 80100974  4B FF FC F5 */	bl checkRoofHangMovePos__9daAlink_cFv
/* 80100978  2C 03 00 00 */	cmpwi r3, 0
/* 8010097C  41 82 00 10 */	beq lbl_8010098C
/* 80100980  7F A3 EB 78 */	mr r3, r29
/* 80100984  48 00 08 99 */	bl procRoofHangSideMoveInit__9daAlink_cFv
/* 80100988  48 00 00 10 */	b lbl_80100998
lbl_8010098C:
/* 8010098C  7F A3 EB 78 */	mr r3, r29
/* 80100990  38 80 00 00 */	li r4, 0
/* 80100994  48 00 02 21 */	bl procRoofHangWaitInit__9daAlink_cFi
lbl_80100998:
/* 80100998  38 60 00 01 */	li r3, 1
/* 8010099C  48 00 00 5C */	b lbl_801009F8
lbl_801009A0:
/* 801009A0  88 1D 2F 98 */	lbz r0, 0x2f98(r29)
/* 801009A4  28 00 00 01 */	cmplwi r0, 1
/* 801009A8  40 82 00 10 */	bne lbl_801009B8
/* 801009AC  7F A3 EB 78 */	mr r3, r29
/* 801009B0  48 00 0A 09 */	bl procRoofHangTurnInit__9daAlink_cFv
/* 801009B4  48 00 00 44 */	b lbl_801009F8
lbl_801009B8:
/* 801009B8  38 00 00 00 */	li r0, 0
/* 801009BC  98 1D 2F 98 */	stb r0, 0x2f98(r29)
lbl_801009C0:
/* 801009C0  7F A3 EB 78 */	mr r3, r29
/* 801009C4  4B FF FC A5 */	bl checkRoofHangMovePos__9daAlink_cFv
/* 801009C8  2C 03 00 00 */	cmpwi r3, 0
/* 801009CC  41 82 00 10 */	beq lbl_801009DC
/* 801009D0  7F A3 EB 78 */	mr r3, r29
/* 801009D4  48 00 03 D1 */	bl procRoofHangFrontMoveInit__9daAlink_cFv
/* 801009D8  48 00 00 1C */	b lbl_801009F4
lbl_801009DC:
/* 801009DC  7F A3 EB 78 */	mr r3, r29
/* 801009E0  38 80 00 00 */	li r4, 0
/* 801009E4  48 00 01 D1 */	bl procRoofHangWaitInit__9daAlink_cFi
/* 801009E8  48 00 00 0C */	b lbl_801009F4
lbl_801009EC:
/* 801009EC  38 80 00 00 */	li r4, 0
/* 801009F0  48 00 01 C5 */	bl procRoofHangWaitInit__9daAlink_cFi
lbl_801009F4:
/* 801009F4  38 60 00 01 */	li r3, 1
lbl_801009F8:
/* 801009F8  39 61 00 20 */	addi r11, r1, 0x20
/* 801009FC  48 26 18 2D */	bl _restgpr_29
/* 80100A00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80100A04  7C 08 03 A6 */	mtlr r0
/* 80100A08  38 21 00 20 */	addi r1, r1, 0x20
/* 80100A0C  4E 80 00 20 */	blr 
