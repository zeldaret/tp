lbl_80CDC974:
/* 80CDC974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDC978  7C 08 02 A6 */	mflr r0
/* 80CDC97C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDC980  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDC984  7C 7F 1B 78 */	mr r31, r3
/* 80CDC988  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80CDC98C  54 04 66 3E */	rlwinm r4, r0, 0xc, 0x18, 0x1f
/* 80CDC990  28 04 00 FF */	cmplwi r4, 0xff
/* 80CDC994  41 82 00 28 */	beq lbl_80CDC9BC
/* 80CDC998  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDC99C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDC9A0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CDC9A4  7C 05 07 74 */	extsb r5, r0
/* 80CDC9A8  4B 35 89 B8 */	b isSwitch__10dSv_info_cCFii
/* 80CDC9AC  2C 03 00 00 */	cmpwi r3, 0
/* 80CDC9B0  40 82 00 0C */	bne lbl_80CDC9BC
/* 80CDC9B4  38 60 00 00 */	li r3, 0
/* 80CDC9B8  48 00 00 34 */	b lbl_80CDC9EC
lbl_80CDC9BC:
/* 80CDC9BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDC9C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDC9C4  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80CDC9C8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80CDC9CC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80CDC9D0  41 82 00 0C */	beq lbl_80CDC9DC
/* 80CDC9D4  38 60 00 00 */	li r3, 0
/* 80CDC9D8  48 00 00 14 */	b lbl_80CDC9EC
lbl_80CDC9DC:
/* 80CDC9DC  7F E3 FB 78 */	mr r3, r31
/* 80CDC9E0  4B FF FE 19 */	bl checkArea__14daObjSmgDoor_cFv
/* 80CDC9E4  30 03 FF FF */	addic r0, r3, -1
/* 80CDC9E8  7C 60 19 10 */	subfe r3, r0, r3
lbl_80CDC9EC:
/* 80CDC9EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDC9F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDC9F4  7C 08 03 A6 */	mtlr r0
/* 80CDC9F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDC9FC  4E 80 00 20 */	blr 
