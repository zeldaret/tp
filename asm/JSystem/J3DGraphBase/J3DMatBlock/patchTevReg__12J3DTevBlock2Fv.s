lbl_8031C48C:
/* 8031C48C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8031C490  7C 08 02 A6 */	mflr r0
/* 8031C494  90 01 00 34 */	stw r0, 0x34(r1)
/* 8031C498  39 61 00 30 */	addi r11, r1, 0x30
/* 8031C49C  48 04 5D 3D */	bl _savegpr_28
/* 8031C4A0  7C 7C 1B 78 */	mr r28, r3
/* 8031C4A4  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031C4A8  80 64 00 00 */	lwz r3, 0(r4)
/* 8031C4AC  80 1C 00 68 */	lwz r0, 0x68(r28)
/* 8031C4B0  7C 03 02 14 */	add r0, r3, r0
/* 8031C4B4  90 04 00 08 */	stw r0, 8(r4)
/* 8031C4B8  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031C4BC  83 C3 00 08 */	lwz r30, 8(r3)
/* 8031C4C0  3B A0 00 00 */	li r29, 0
/* 8031C4C4  3B E0 00 00 */	li r31, 0
lbl_8031C4C8:
/* 8031C4C8  38 1F 00 14 */	addi r0, r31, 0x14
/* 8031C4CC  7C 9C 02 14 */	add r4, r28, r0
/* 8031C4D0  80 64 00 00 */	lwz r3, 0(r4)
/* 8031C4D4  80 04 00 04 */	lwz r0, 4(r4)
/* 8031C4D8  90 61 00 0C */	stw r3, 0xc(r1)
/* 8031C4DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8031C4E0  38 7D 00 01 */	addi r3, r29, 1
/* 8031C4E4  38 81 00 0C */	addi r4, r1, 0xc
/* 8031C4E8  4B FF 2F 15 */	bl J3DGDSetTevColorS10__F11_GXTevRegID11_GXColorS10
/* 8031C4EC  3B BD 00 01 */	addi r29, r29, 1
/* 8031C4F0  28 1D 00 03 */	cmplwi r29, 3
/* 8031C4F4  3B FF 00 08 */	addi r31, r31, 8
/* 8031C4F8  41 80 FF D0 */	blt lbl_8031C4C8
/* 8031C4FC  3B A0 00 00 */	li r29, 0
/* 8031C500  3B E0 00 00 */	li r31, 0
lbl_8031C504:
/* 8031C504  38 1F 00 45 */	addi r0, r31, 0x45
/* 8031C508  7C 1C 00 2E */	lwzx r0, r28, r0
/* 8031C50C  90 01 00 08 */	stw r0, 8(r1)
/* 8031C510  7F A3 EB 78 */	mr r3, r29
/* 8031C514  38 81 00 08 */	addi r4, r1, 8
/* 8031C518  4B FF 2D 7D */	bl J3DGDSetTevKColor__F14_GXTevKColorID8_GXColor
/* 8031C51C  3B BD 00 01 */	addi r29, r29, 1
/* 8031C520  28 1D 00 04 */	cmplwi r29, 4
/* 8031C524  3B FF 00 04 */	addi r31, r31, 4
/* 8031C528  41 80 FF DC */	blt lbl_8031C504
/* 8031C52C  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031C530  80 03 00 08 */	lwz r0, 8(r3)
/* 8031C534  7F C3 F3 78 */	mr r3, r30
/* 8031C538  7C 9E 00 50 */	subf r4, r30, r0
/* 8031C53C  48 01 F0 A1 */	bl DCStoreRange
/* 8031C540  39 61 00 30 */	addi r11, r1, 0x30
/* 8031C544  48 04 5C E1 */	bl _restgpr_28
/* 8031C548  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8031C54C  7C 08 03 A6 */	mtlr r0
/* 8031C550  38 21 00 30 */	addi r1, r1, 0x30
/* 8031C554  4E 80 00 20 */	blr 
