lbl_80494950:
/* 80494950  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80494954  7C 08 02 A6 */	mflr r0
/* 80494958  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049495C  39 61 00 20 */	addi r11, r1, 0x20
/* 80494960  4B EC D8 7C */	b _savegpr_29
/* 80494964  7C 7D 1B 78 */	mr r29, r3
/* 80494968  A0 03 09 80 */	lhz r0, 0x980(r3)
/* 8049496C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80494970  28 00 00 0F */	cmplwi r0, 0xf
/* 80494974  40 82 00 30 */	bne lbl_804949A4
/* 80494978  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8049497C  54 04 A6 3E */	rlwinm r4, r0, 0x14, 0x18, 0x1f
/* 80494980  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80494984  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80494988  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8049498C  7C 05 07 74 */	extsb r5, r0
/* 80494990  4B BA 09 D0 */	b isSwitch__10dSv_info_cCFii
/* 80494994  2C 03 00 00 */	cmpwi r3, 0
/* 80494998  41 82 00 58 */	beq lbl_804949F0
/* 8049499C  38 60 00 01 */	li r3, 1
/* 804949A0  48 00 00 54 */	b lbl_804949F4
lbl_804949A4:
/* 804949A4  28 00 00 00 */	cmplwi r0, 0
/* 804949A8  40 82 00 48 */	bne lbl_804949F0
/* 804949AC  3B C0 00 00 */	li r30, 0
/* 804949B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804949B4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
lbl_804949B8:
/* 804949B8  7F E3 FB 78 */	mr r3, r31
/* 804949BC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 804949C0  54 00 A6 3E */	rlwinm r0, r0, 0x14, 0x18, 0x1f
/* 804949C4  7C 9E 02 14 */	add r4, r30, r0
/* 804949C8  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 804949CC  7C 05 07 74 */	extsb r5, r0
/* 804949D0  4B BA 09 90 */	b isSwitch__10dSv_info_cCFii
/* 804949D4  2C 03 00 00 */	cmpwi r3, 0
/* 804949D8  41 82 00 0C */	beq lbl_804949E4
/* 804949DC  38 60 00 01 */	li r3, 1
/* 804949E0  48 00 00 14 */	b lbl_804949F4
lbl_804949E4:
/* 804949E4  3B DE 00 01 */	addi r30, r30, 1
/* 804949E8  2C 1E 00 04 */	cmpwi r30, 4
/* 804949EC  41 80 FF CC */	blt lbl_804949B8
lbl_804949F0:
/* 804949F0  38 60 00 00 */	li r3, 0
lbl_804949F4:
/* 804949F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804949F8  4B EC D8 30 */	b _restgpr_29
/* 804949FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80494A00  7C 08 03 A6 */	mtlr r0
/* 80494A04  38 21 00 20 */	addi r1, r1, 0x20
/* 80494A08  4E 80 00 20 */	blr 
