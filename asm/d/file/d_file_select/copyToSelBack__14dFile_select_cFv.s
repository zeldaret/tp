lbl_80188994:
/* 80188994  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80188998  7C 08 02 A6 */	mflr r0
/* 8018899C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801889A0  39 61 00 30 */	addi r11, r1, 0x30
/* 801889A4  48 1D 98 31 */	bl _savegpr_27
/* 801889A8  7C 7D 1B 78 */	mr r29, r3
/* 801889AC  48 00 48 B1 */	bl headerTxtChangeAnm__14dFile_select_cFv
/* 801889B0  7C 7B 1B 78 */	mr r27, r3
/* 801889B4  7F A3 EB 78 */	mr r3, r29
/* 801889B8  4B FF D0 F5 */	bl selectDataMoveAnm__14dFile_select_cFv
/* 801889BC  7C 7F 1B 78 */	mr r31, r3
/* 801889C0  7F A3 EB 78 */	mr r3, r29
/* 801889C4  4B FF E2 E9 */	bl menuMoveAnm__14dFile_select_cFv
/* 801889C8  7C 7E 1B 78 */	mr r30, r3
/* 801889CC  7F A3 EB 78 */	mr r3, r29
/* 801889D0  88 9D 02 65 */	lbz r4, 0x265(r29)
/* 801889D4  48 00 4C B9 */	bl selectWakuAlpahAnm__14dFile_select_cFUc
/* 801889D8  7C 7C 1B 78 */	mr r28, r3
/* 801889DC  7F A3 EB 78 */	mr r3, r29
/* 801889E0  48 00 77 45 */	bl nameMoveAnm__14dFile_select_cFv
/* 801889E4  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 801889E8  28 00 00 01 */	cmplwi r0, 1
/* 801889EC  40 82 01 50 */	bne lbl_80188B3C
/* 801889F0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801889F4  28 00 00 01 */	cmplwi r0, 1
/* 801889F8  40 82 01 44 */	bne lbl_80188B3C
/* 801889FC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80188A00  28 00 00 01 */	cmplwi r0, 1
/* 80188A04  40 82 01 38 */	bne lbl_80188B3C
/* 80188A08  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80188A0C  28 00 00 01 */	cmplwi r0, 1
/* 80188A10  40 82 01 2C */	bne lbl_80188B3C
/* 80188A14  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80188A18  28 00 00 01 */	cmplwi r0, 1
/* 80188A1C  40 82 01 20 */	bne lbl_80188B3C
/* 80188A20  3B C0 00 00 */	li r30, 0
/* 80188A24  3B 80 00 00 */	li r28, 0
lbl_80188A28:
/* 80188A28  7F FD E2 14 */	add r31, r29, r28
/* 80188A2C  80 7F 03 40 */	lwz r3, 0x340(r31)
/* 80188A30  80 63 00 04 */	lwz r3, 4(r3)
/* 80188A34  80 9D 03 28 */	lwz r4, 0x328(r29)
/* 80188A38  81 83 00 00 */	lwz r12, 0(r3)
/* 80188A3C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80188A40  7D 89 03 A6 */	mtctr r12
/* 80188A44  4E 80 04 21 */	bctrl 
/* 80188A48  88 1D 02 67 */	lbz r0, 0x267(r29)
/* 80188A4C  7C 1E 00 00 */	cmpw r30, r0
/* 80188A50  40 82 00 38 */	bne lbl_80188A88
/* 80188A54  3C 60 80 3C */	lis r3, MenuSelStartFrameTbl@ha
/* 80188A58  38 63 A8 84 */	addi r3, r3, MenuSelStartFrameTbl@l
/* 80188A5C  7C 03 E0 2E */	lwzx r0, r3, r28
/* 80188A60  C8 22 9F 38 */	lfd f1, lit_4342(r2)
/* 80188A64  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80188A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80188A6C  3C 00 43 30 */	lis r0, 0x4330
/* 80188A70  90 01 00 10 */	stw r0, 0x10(r1)
/* 80188A74  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80188A78  EC 00 08 28 */	fsubs f0, f0, f1
/* 80188A7C  80 7D 03 28 */	lwz r3, 0x328(r29)
/* 80188A80  D0 03 00 08 */	stfs f0, 8(r3)
/* 80188A84  48 00 00 34 */	b lbl_80188AB8
lbl_80188A88:
/* 80188A88  3C 60 80 3C */	lis r3, MenuSelEndFrameTbl@ha
/* 80188A8C  38 63 A8 90 */	addi r3, r3, MenuSelEndFrameTbl@l
/* 80188A90  7C 03 E0 2E */	lwzx r0, r3, r28
/* 80188A94  C8 22 9F 38 */	lfd f1, lit_4342(r2)
/* 80188A98  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80188A9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80188AA0  3C 00 43 30 */	lis r0, 0x4330
/* 80188AA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80188AA8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80188AAC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80188AB0  80 7D 03 28 */	lwz r3, 0x328(r29)
/* 80188AB4  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80188AB8:
/* 80188AB8  80 7F 03 40 */	lwz r3, 0x340(r31)
/* 80188ABC  80 63 00 04 */	lwz r3, 4(r3)
/* 80188AC0  48 16 F5 0D */	bl animationTransform__7J2DPaneFv
/* 80188AC4  80 7F 03 40 */	lwz r3, 0x340(r31)
/* 80188AC8  80 63 00 04 */	lwz r3, 4(r3)
/* 80188ACC  38 80 00 00 */	li r4, 0
/* 80188AD0  81 83 00 00 */	lwz r12, 0(r3)
/* 80188AD4  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80188AD8  7D 89 03 A6 */	mtctr r12
/* 80188ADC  4E 80 04 21 */	bctrl 
/* 80188AE0  38 00 00 96 */	li r0, 0x96
/* 80188AE4  98 01 00 08 */	stb r0, 8(r1)
/* 80188AE8  98 01 00 09 */	stb r0, 9(r1)
/* 80188AEC  98 01 00 0A */	stb r0, 0xa(r1)
/* 80188AF0  38 00 00 FF */	li r0, 0xff
/* 80188AF4  98 01 00 0B */	stb r0, 0xb(r1)
/* 80188AF8  80 01 00 08 */	lwz r0, 8(r1)
/* 80188AFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80188B00  80 7F 03 94 */	lwz r3, 0x394(r31)
/* 80188B04  80 63 00 04 */	lwz r3, 4(r3)
/* 80188B08  38 81 00 0C */	addi r4, r1, 0xc
/* 80188B0C  81 83 00 00 */	lwz r12, 0(r3)
/* 80188B10  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 80188B14  7D 89 03 A6 */	mtctr r12
/* 80188B18  4E 80 04 21 */	bctrl 
/* 80188B1C  3B DE 00 01 */	addi r30, r30, 1
/* 80188B20  2C 1E 00 03 */	cmpwi r30, 3
/* 80188B24  3B 9C 00 04 */	addi r28, r28, 4
/* 80188B28  41 80 FF 00 */	blt lbl_80188A28
/* 80188B2C  7F A3 EB 78 */	mr r3, r29
/* 80188B30  48 00 4E E1 */	bl menuCursorShow__14dFile_select_cFv
/* 80188B34  38 00 00 08 */	li r0, 8
/* 80188B38  98 1D 02 6F */	stb r0, 0x26f(r29)
lbl_80188B3C:
/* 80188B3C  39 61 00 30 */	addi r11, r1, 0x30
/* 80188B40  48 1D 96 E1 */	bl _restgpr_27
/* 80188B44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80188B48  7C 08 03 A6 */	mtlr r0
/* 80188B4C  38 21 00 30 */	addi r1, r1, 0x30
/* 80188B50  4E 80 00 20 */	blr 
