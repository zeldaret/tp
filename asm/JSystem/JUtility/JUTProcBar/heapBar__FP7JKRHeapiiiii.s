lbl_802E6E0C:
/* 802E6E0C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802E6E10  7C 08 02 A6 */	mflr r0
/* 802E6E14  90 01 00 74 */	stw r0, 0x74(r1)
/* 802E6E18  39 61 00 70 */	addi r11, r1, 0x70
/* 802E6E1C  48 07 B3 B5 */	bl _savegpr_26
/* 802E6E20  7C 7F 1B 78 */	mr r31, r3
/* 802E6E24  7C 9B 23 78 */	mr r27, r4
/* 802E6E28  7C BA 2B 78 */	mr r26, r5
/* 802E6E2C  7C FE 3B 78 */	mr r30, r7
/* 802E6E30  7D 1C 43 78 */	mr r28, r8
/* 802E6E34  80 63 00 30 */	lwz r3, 0x30(r3)
/* 802E6E38  7F C4 F3 78 */	mr r4, r30
/* 802E6E3C  4B FF FF 01 */	bl addrToXPos__FPvi
/* 802E6E40  7F BB 1A 14 */	add r29, r27, r3
/* 802E6E44  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 802E6E48  7F C4 F3 78 */	mr r4, r30
/* 802E6E4C  4B FF FE F1 */	bl addrToXPos__FPvi
/* 802E6E50  7F 7B 1A 14 */	add r27, r27, r3
/* 802E6E54  7F E3 FB 78 */	mr r3, r31
/* 802E6E58  4B FE 79 2D */	bl getTotalFreeSize__7JKRHeapFv
/* 802E6E5C  7F C4 F3 78 */	mr r4, r30
/* 802E6E60  4B FF FF 45 */	bl byteToXLen__Fii
/* 802E6E64  7C 7F 1B 78 */	mr r31, r3
/* 802E6E68  38 60 00 FF */	li r3, 0xff
/* 802E6E6C  98 61 00 10 */	stb r3, 0x10(r1)
/* 802E6E70  38 00 00 00 */	li r0, 0
/* 802E6E74  98 01 00 11 */	stb r0, 0x11(r1)
/* 802E6E78  38 00 00 C8 */	li r0, 0xc8
/* 802E6E7C  98 01 00 12 */	stb r0, 0x12(r1)
/* 802E6E80  98 61 00 13 */	stb r3, 0x13(r1)
/* 802E6E84  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802E6E88  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E6E8C  7F 80 0E 70 */	srawi r0, r28, 1
/* 802E6E90  7F C0 01 94 */	addze r30, r0
/* 802E6E94  C8 82 C6 E8 */	lfd f4, lit_2281(r2)
/* 802E6E98  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 802E6E9C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E6EA0  3C 60 43 30 */	lis r3, 0x4330
/* 802E6EA4  90 61 00 18 */	stw r3, 0x18(r1)
/* 802E6EA8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802E6EAC  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E6EB0  57 80 08 3C */	slwi r0, r28, 1
/* 802E6EB4  7C 00 D0 50 */	subf r0, r0, r26
/* 802E6EB8  7F 9E 02 14 */	add r28, r30, r0
/* 802E6EBC  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 802E6EC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E6EC4  90 61 00 20 */	stw r3, 0x20(r1)
/* 802E6EC8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802E6ECC  EC 40 20 28 */	fsubs f2, f0, f4
/* 802E6ED0  7C 1D D8 50 */	subf r0, r29, r27
/* 802E6ED4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802E6ED8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802E6EDC  90 61 00 28 */	stw r3, 0x28(r1)
/* 802E6EE0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802E6EE4  EC 60 20 28 */	fsubs f3, f0, f4
/* 802E6EE8  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 802E6EEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E6EF0  90 61 00 30 */	stw r3, 0x30(r1)
/* 802E6EF4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802E6EF8  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E6EFC  38 61 00 14 */	addi r3, r1, 0x14
/* 802E6F00  48 00 2B C5 */	bl J2DFillBox__FffffQ28JUtility6TColor
/* 802E6F04  38 60 00 FF */	li r3, 0xff
/* 802E6F08  98 61 00 08 */	stb r3, 8(r1)
/* 802E6F0C  38 00 00 B4 */	li r0, 0xb4
/* 802E6F10  98 01 00 09 */	stb r0, 9(r1)
/* 802E6F14  38 00 00 FA */	li r0, 0xfa
/* 802E6F18  98 01 00 0A */	stb r0, 0xa(r1)
/* 802E6F1C  98 61 00 0B */	stb r3, 0xb(r1)
/* 802E6F20  80 01 00 08 */	lwz r0, 8(r1)
/* 802E6F24  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E6F28  C8 82 C6 E8 */	lfd f4, lit_2281(r2)
/* 802E6F2C  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 802E6F30  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802E6F34  3C 60 43 30 */	lis r3, 0x4330
/* 802E6F38  90 61 00 38 */	stw r3, 0x38(r1)
/* 802E6F3C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802E6F40  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E6F44  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 802E6F48  90 01 00 44 */	stw r0, 0x44(r1)
/* 802E6F4C  90 61 00 40 */	stw r3, 0x40(r1)
/* 802E6F50  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 802E6F54  EC 40 20 28 */	fsubs f2, f0, f4
/* 802E6F58  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 802E6F5C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802E6F60  90 61 00 48 */	stw r3, 0x48(r1)
/* 802E6F64  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 802E6F68  EC 60 20 28 */	fsubs f3, f0, f4
/* 802E6F6C  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 802E6F70  90 01 00 54 */	stw r0, 0x54(r1)
/* 802E6F74  90 61 00 50 */	stw r3, 0x50(r1)
/* 802E6F78  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 802E6F7C  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E6F80  38 61 00 0C */	addi r3, r1, 0xc
/* 802E6F84  48 00 2B 41 */	bl J2DFillBox__FffffQ28JUtility6TColor
/* 802E6F88  39 61 00 70 */	addi r11, r1, 0x70
/* 802E6F8C  48 07 B2 91 */	bl _restgpr_26
/* 802E6F90  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802E6F94  7C 08 03 A6 */	mtlr r0
/* 802E6F98  38 21 00 70 */	addi r1, r1, 0x70
/* 802E6F9C  4E 80 00 20 */	blr 
