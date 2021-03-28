lbl_80BFF938:
/* 80BFF938  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BFF93C  7C 08 02 A6 */	mflr r0
/* 80BFF940  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BFF944  39 61 00 20 */	addi r11, r1, 0x20
/* 80BFF948  4B 76 28 90 */	b _savegpr_28
/* 80BFF94C  7C 7C 1B 78 */	mr r28, r3
/* 80BFF950  7C 9D 23 78 */	mr r29, r4
/* 80BFF954  38 60 00 00 */	li r3, 0
/* 80BFF958  38 00 00 04 */	li r0, 4
/* 80BFF95C  7C 09 03 A6 */	mtctr r0
lbl_80BFF960:
/* 80BFF960  7C 9C 1A 14 */	add r4, r28, r3
/* 80BFF964  C0 04 05 B0 */	lfs f0, 0x5b0(r4)
/* 80BFF968  D0 04 05 E0 */	stfs f0, 0x5e0(r4)
/* 80BFF96C  C0 04 05 B4 */	lfs f0, 0x5b4(r4)
/* 80BFF970  D0 04 05 E4 */	stfs f0, 0x5e4(r4)
/* 80BFF974  C0 04 05 B8 */	lfs f0, 0x5b8(r4)
/* 80BFF978  D0 04 05 E8 */	stfs f0, 0x5e8(r4)
/* 80BFF97C  38 63 00 0C */	addi r3, r3, 0xc
/* 80BFF980  42 00 FF E0 */	bdnz lbl_80BFF960
/* 80BFF984  3C 60 80 C0 */	lis r3, lit_4620@ha
/* 80BFF988  C0 03 FC F0 */	lfs f0, lit_4620@l(r3)
/* 80BFF98C  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 80BFF990  7F 83 E3 78 */	mr r3, r28
/* 80BFF994  4B FF F5 15 */	bl Action__15daObjGOMIKABE_cFv
/* 80BFF998  88 1C 05 A1 */	lbz r0, 0x5a1(r28)
/* 80BFF99C  28 00 00 00 */	cmplwi r0, 0
/* 80BFF9A0  40 82 00 10 */	bne lbl_80BFF9B0
/* 80BFF9A4  38 1C 05 6C */	addi r0, r28, 0x56c
/* 80BFF9A8  90 1D 00 00 */	stw r0, 0(r29)
/* 80BFF9AC  48 00 00 38 */	b lbl_80BFF9E4
lbl_80BFF9B0:
/* 80BFF9B0  3B A0 00 00 */	li r29, 0
/* 80BFF9B4  3B E0 00 00 */	li r31, 0
/* 80BFF9B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BFF9BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BFF9C0  3B C3 0F 38 */	addi r30, r3, 0xf38
lbl_80BFF9C4:
/* 80BFF9C4  38 7F 08 3C */	addi r3, r31, 0x83c
/* 80BFF9C8  7C 7C 1A 14 */	add r3, r28, r3
/* 80BFF9CC  7F C4 F3 78 */	mr r4, r30
/* 80BFF9D0  4B 47 70 DC */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80BFF9D4  3B BD 00 01 */	addi r29, r29, 1
/* 80BFF9D8  2C 1D 00 04 */	cmpwi r29, 4
/* 80BFF9DC  3B FF 01 D8 */	addi r31, r31, 0x1d8
/* 80BFF9E0  41 80 FF E4 */	blt lbl_80BFF9C4
lbl_80BFF9E4:
/* 80BFF9E4  38 60 00 01 */	li r3, 1
/* 80BFF9E8  39 61 00 20 */	addi r11, r1, 0x20
/* 80BFF9EC  4B 76 28 38 */	b _restgpr_28
/* 80BFF9F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BFF9F4  7C 08 03 A6 */	mtlr r0
/* 80BFF9F8  38 21 00 20 */	addi r1, r1, 0x20
/* 80BFF9FC  4E 80 00 20 */	blr 
