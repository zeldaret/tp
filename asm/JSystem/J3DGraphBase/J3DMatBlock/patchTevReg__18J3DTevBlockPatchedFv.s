lbl_8031BFE0:
/* 8031BFE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8031BFE4  7C 08 02 A6 */	mflr r0
/* 8031BFE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8031BFEC  39 61 00 30 */	addi r11, r1, 0x30
/* 8031BFF0  48 04 61 E9 */	bl _savegpr_28
/* 8031BFF4  7C 7C 1B 78 */	mr r28, r3
/* 8031BFF8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031BFFC  80 64 00 00 */	lwz r3, 0(r4)
/* 8031C000  80 1C 00 D4 */	lwz r0, 0xd4(r28)
/* 8031C004  7C 03 02 14 */	add r0, r3, r0
/* 8031C008  90 04 00 08 */	stw r0, 8(r4)
/* 8031C00C  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031C010  83 C3 00 08 */	lwz r30, 8(r3)
/* 8031C014  3B A0 00 00 */	li r29, 0
/* 8031C018  3B E0 00 00 */	li r31, 0
lbl_8031C01C:
/* 8031C01C  38 1F 00 98 */	addi r0, r31, 0x98
/* 8031C020  7C 9C 02 14 */	add r4, r28, r0
/* 8031C024  80 64 00 00 */	lwz r3, 0(r4)
/* 8031C028  80 04 00 04 */	lwz r0, 4(r4)
/* 8031C02C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8031C030  90 01 00 10 */	stw r0, 0x10(r1)
/* 8031C034  38 7D 00 01 */	addi r3, r29, 1
/* 8031C038  38 81 00 0C */	addi r4, r1, 0xc
/* 8031C03C  4B FF 33 C1 */	bl J3DGDSetTevColorS10__F11_GXTevRegID11_GXColorS10
/* 8031C040  3B BD 00 01 */	addi r29, r29, 1
/* 8031C044  28 1D 00 03 */	cmplwi r29, 3
/* 8031C048  3B FF 00 08 */	addi r31, r31, 8
/* 8031C04C  41 80 FF D0 */	blt lbl_8031C01C
/* 8031C050  3B A0 00 00 */	li r29, 0
/* 8031C054  3B E0 00 00 */	li r31, 0
lbl_8031C058:
/* 8031C058  38 1F 00 B8 */	addi r0, r31, 0xb8
/* 8031C05C  7C 1C 00 2E */	lwzx r0, r28, r0
/* 8031C060  90 01 00 08 */	stw r0, 8(r1)
/* 8031C064  7F A3 EB 78 */	mr r3, r29
/* 8031C068  38 81 00 08 */	addi r4, r1, 8
/* 8031C06C  4B FF 32 29 */	bl J3DGDSetTevKColor__F14_GXTevKColorID8_GXColor
/* 8031C070  3B BD 00 01 */	addi r29, r29, 1
/* 8031C074  28 1D 00 04 */	cmplwi r29, 4
/* 8031C078  3B FF 00 04 */	addi r31, r31, 4
/* 8031C07C  41 80 FF DC */	blt lbl_8031C058
/* 8031C080  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031C084  80 03 00 08 */	lwz r0, 8(r3)
/* 8031C088  7F C3 F3 78 */	mr r3, r30
/* 8031C08C  7C 9E 00 50 */	subf r4, r30, r0
/* 8031C090  48 01 F5 4D */	bl DCStoreRange
/* 8031C094  39 61 00 30 */	addi r11, r1, 0x30
/* 8031C098  48 04 61 8D */	bl _restgpr_28
/* 8031C09C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8031C0A0  7C 08 03 A6 */	mtlr r0
/* 8031C0A4  38 21 00 30 */	addi r1, r1, 0x30
/* 8031C0A8  4E 80 00 20 */	blr 
