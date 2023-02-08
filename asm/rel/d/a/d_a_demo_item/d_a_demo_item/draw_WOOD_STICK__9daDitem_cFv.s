lbl_804E1230:
/* 804E1230  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E1234  7C 08 02 A6 */	mflr r0
/* 804E1238  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E123C  39 61 00 20 */	addi r11, r1, 0x20
/* 804E1240  4B E8 0F 99 */	bl _savegpr_28
/* 804E1244  80 63 05 74 */	lwz r3, 0x574(r3)
/* 804E1248  83 C3 00 04 */	lwz r30, 4(r3)
/* 804E124C  83 BE 00 64 */	lwz r29, 0x64(r30)
/* 804E1250  3B 80 00 00 */	li r28, 0
/* 804E1254  3C 60 80 4E */	lis r3, nodisp_mat@ha /* 0x804E1A24@ha */
/* 804E1258  3B E3 1A 24 */	addi r31, r3, nodisp_mat@l /* 0x804E1A24@l */
/* 804E125C  48 00 00 44 */	b lbl_804E12A0
lbl_804E1260:
/* 804E1260  7F A3 EB 78 */	mr r3, r29
/* 804E1264  7F 84 E3 78 */	mr r4, r28
/* 804E1268  4B DF D8 91 */	bl getName__10JUTNameTabCFUs
/* 804E126C  7C 64 1B 78 */	mr r4, r3
/* 804E1270  7F E3 FB 78 */	mr r3, r31
/* 804E1274  4B E8 77 21 */	bl strcmp
/* 804E1278  2C 03 00 00 */	cmpwi r3, 0
/* 804E127C  40 82 00 20 */	bne lbl_804E129C
/* 804E1280  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 804E1284  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 804E1288  7C 63 00 2E */	lwzx r3, r3, r0
/* 804E128C  80 63 00 08 */	lwz r3, 8(r3)
/* 804E1290  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804E1294  60 00 00 01 */	ori r0, r0, 1
/* 804E1298  90 03 00 0C */	stw r0, 0xc(r3)
lbl_804E129C:
/* 804E129C  3B 9C 00 01 */	addi r28, r28, 1
lbl_804E12A0:
/* 804E12A0  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 804E12A4  A0 1E 00 5C */	lhz r0, 0x5c(r30)
/* 804E12A8  7C 03 00 40 */	cmplw r3, r0
/* 804E12AC  41 80 FF B4 */	blt lbl_804E1260
/* 804E12B0  39 61 00 20 */	addi r11, r1, 0x20
/* 804E12B4  4B E8 0F 71 */	bl _restgpr_28
/* 804E12B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E12BC  7C 08 03 A6 */	mtlr r0
/* 804E12C0  38 21 00 20 */	addi r1, r1, 0x20
/* 804E12C4  4E 80 00 20 */	blr 
