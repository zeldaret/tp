lbl_8031C788:
/* 8031C788  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8031C78C  7C 08 02 A6 */	mflr r0
/* 8031C790  90 01 00 34 */	stw r0, 0x34(r1)
/* 8031C794  39 61 00 30 */	addi r11, r1, 0x30
/* 8031C798  48 04 5A 41 */	bl _savegpr_28
/* 8031C79C  7C 7C 1B 78 */	mr r28, r3
/* 8031C7A0  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031C7A4  80 64 00 00 */	lwz r3, 0(r4)
/* 8031C7A8  80 1C 00 90 */	lwz r0, 0x90(r28)
/* 8031C7AC  7C 03 02 14 */	add r0, r3, r0
/* 8031C7B0  90 04 00 08 */	stw r0, 8(r4)
/* 8031C7B4  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031C7B8  83 C3 00 08 */	lwz r30, 8(r3)
/* 8031C7BC  3B A0 00 00 */	li r29, 0
/* 8031C7C0  3B E0 00 00 */	li r31, 0
lbl_8031C7C4:
/* 8031C7C4  38 1F 00 42 */	addi r0, r31, 0x42
/* 8031C7C8  7C 9C 02 14 */	add r4, r28, r0
/* 8031C7CC  80 64 00 00 */	lwz r3, 0(r4)
/* 8031C7D0  80 04 00 04 */	lwz r0, 4(r4)
/* 8031C7D4  90 61 00 0C */	stw r3, 0xc(r1)
/* 8031C7D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8031C7DC  38 7D 00 01 */	addi r3, r29, 1
/* 8031C7E0  38 81 00 0C */	addi r4, r1, 0xc
/* 8031C7E4  4B FF 2C 19 */	bl J3DGDSetTevColorS10__F11_GXTevRegID11_GXColorS10
/* 8031C7E8  3B BD 00 01 */	addi r29, r29, 1
/* 8031C7EC  28 1D 00 03 */	cmplwi r29, 3
/* 8031C7F0  3B FF 00 08 */	addi r31, r31, 8
/* 8031C7F4  41 80 FF D0 */	blt lbl_8031C7C4
/* 8031C7F8  3B A0 00 00 */	li r29, 0
/* 8031C7FC  3B E0 00 00 */	li r31, 0
lbl_8031C800:
/* 8031C800  38 1F 00 62 */	addi r0, r31, 0x62
/* 8031C804  7C 1C 00 2E */	lwzx r0, r28, r0
/* 8031C808  90 01 00 08 */	stw r0, 8(r1)
/* 8031C80C  7F A3 EB 78 */	mr r3, r29
/* 8031C810  38 81 00 08 */	addi r4, r1, 8
/* 8031C814  4B FF 2A 81 */	bl J3DGDSetTevKColor__F14_GXTevKColorID8_GXColor
/* 8031C818  3B BD 00 01 */	addi r29, r29, 1
/* 8031C81C  28 1D 00 04 */	cmplwi r29, 4
/* 8031C820  3B FF 00 04 */	addi r31, r31, 4
/* 8031C824  41 80 FF DC */	blt lbl_8031C800
/* 8031C828  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031C82C  80 03 00 08 */	lwz r0, 8(r3)
/* 8031C830  7F C3 F3 78 */	mr r3, r30
/* 8031C834  7C 9E 00 50 */	subf r4, r30, r0
/* 8031C838  48 01 ED A5 */	bl DCStoreRange
/* 8031C83C  39 61 00 30 */	addi r11, r1, 0x30
/* 8031C840  48 04 59 E5 */	bl _restgpr_28
/* 8031C844  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8031C848  7C 08 03 A6 */	mtlr r0
/* 8031C84C  38 21 00 30 */	addi r1, r1, 0x30
/* 8031C850  4E 80 00 20 */	blr 
