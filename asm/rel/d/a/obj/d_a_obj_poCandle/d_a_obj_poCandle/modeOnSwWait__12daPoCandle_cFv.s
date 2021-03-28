lbl_80CB22F4:
/* 80CB22F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB22F8  7C 08 02 A6 */	mflr r0
/* 80CB22FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB2300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB2304  7C 7F 1B 78 */	mr r31, r3
/* 80CB2308  88 63 05 D3 */	lbz r3, 0x5d3(r3)
/* 80CB230C  28 03 00 00 */	cmplwi r3, 0
/* 80CB2310  41 82 00 10 */	beq lbl_80CB2320
/* 80CB2314  38 03 FF FF */	addi r0, r3, -1
/* 80CB2318  98 1F 05 D3 */	stb r0, 0x5d3(r31)
/* 80CB231C  48 00 00 24 */	b lbl_80CB2340
lbl_80CB2320:
/* 80CB2320  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB2324  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB2328  88 9F 05 D4 */	lbz r4, 0x5d4(r31)
/* 80CB232C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CB2330  7C 05 07 74 */	extsb r5, r0
/* 80CB2334  4B 38 2E CC */	b onSwitch__10dSv_info_cFii
/* 80CB2338  7F E3 FB 78 */	mr r3, r31
/* 80CB233C  48 00 00 19 */	bl init_modeEnd__12daPoCandle_cFv
lbl_80CB2340:
/* 80CB2340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB2344  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB2348  7C 08 03 A6 */	mtlr r0
/* 80CB234C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB2350  4E 80 00 20 */	blr 
