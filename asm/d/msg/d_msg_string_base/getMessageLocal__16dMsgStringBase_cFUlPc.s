lbl_80249A70:
/* 80249A70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80249A74  7C 08 02 A6 */	mflr r0
/* 80249A78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80249A7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80249A80  48 11 87 5D */	bl _savegpr_29
/* 80249A84  7C 7D 1B 78 */	mr r29, r3
/* 80249A88  7C 9E 23 78 */	mr r30, r4
/* 80249A8C  7C BF 2B 78 */	mr r31, r5
/* 80249A90  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80249A94  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80249A98  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80249A9C  28 04 00 00 */	cmplwi r4, 0
/* 80249AA0  41 82 00 64 */	beq lbl_80249B04
/* 80249AA4  28 1E 13 88 */	cmplwi r30, 0x1388
/* 80249AA8  40 81 00 34 */	ble lbl_80249ADC
/* 80249AAC  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 80249AB0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80249AB4  7C 00 18 40 */	cmplw r0, r3
/* 80249AB8  41 82 00 4C */	beq lbl_80249B04
/* 80249ABC  90 7D 00 1C */	stw r3, 0x1c(r29)
/* 80249AC0  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 80249AC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80249AC8  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 80249ACC  38 81 00 0C */	addi r4, r1, 0xc
/* 80249AD0  38 A0 00 80 */	li r5, 0x80
/* 80249AD4  48 09 2E 3D */	bl parse_next__Q37JGadget6binary19TParse_header_blockFPPCvUl
/* 80249AD8  48 00 00 2C */	b lbl_80249B04
lbl_80249ADC:
/* 80249ADC  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 80249AE0  7C 00 20 40 */	cmplw r0, r4
/* 80249AE4  41 82 00 20 */	beq lbl_80249B04
/* 80249AE8  90 9D 00 1C */	stw r4, 0x1c(r29)
/* 80249AEC  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 80249AF0  90 01 00 08 */	stw r0, 8(r1)
/* 80249AF4  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 80249AF8  38 81 00 08 */	addi r4, r1, 8
/* 80249AFC  38 A0 00 80 */	li r5, 0x80
/* 80249B00  48 09 2E 11 */	bl parse_next__Q37JGadget6binary19TParse_header_blockFPPCvUl
lbl_80249B04:
/* 80249B04  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 80249B08  38 80 00 00 */	li r4, 0
/* 80249B0C  38 A0 00 00 */	li r5, 0
/* 80249B10  38 C0 00 00 */	li r6, 0
/* 80249B14  38 E0 00 00 */	li r7, 0
/* 80249B18  39 00 00 00 */	li r8, 0
/* 80249B1C  4B FE 5E 91 */	bl init__26jmessage_string_tReferenceFP10J2DTextBoxP10J2DTextBoxP7JUTFontP10COutFont_cUc
/* 80249B20  80 7D 00 08 */	lwz r3, 8(r29)
/* 80249B24  7F C4 F3 78 */	mr r4, r30
/* 80249B28  38 A0 00 00 */	li r5, 0
/* 80249B2C  38 C0 00 00 */	li r6, 0
/* 80249B30  48 05 DD C5 */	bl setMessageID__Q28JMessage8TControlFUlUlPb
/* 80249B34  80 7D 00 08 */	lwz r3, 8(r29)
/* 80249B38  48 05 DA FD */	bl update__Q28JMessage8TControlFv
/* 80249B3C  80 7D 00 08 */	lwz r3, 8(r29)
/* 80249B40  48 05 DB 7D */	bl render__Q28JMessage8TControlFv
/* 80249B44  80 7D 00 08 */	lwz r3, 8(r29)
/* 80249B48  48 05 DA 8D */	bl reset__Q28JMessage8TControlFv
/* 80249B4C  80 7D 00 08 */	lwz r3, 8(r29)
/* 80249B50  80 83 00 04 */	lwz r4, 4(r3)
/* 80249B54  28 04 00 00 */	cmplwi r4, 0
/* 80249B58  41 82 00 0C */	beq lbl_80249B64
/* 80249B5C  38 00 00 00 */	li r0, 0
/* 80249B60  90 04 00 08 */	stw r0, 8(r4)
lbl_80249B64:
/* 80249B64  80 83 00 08 */	lwz r4, 8(r3)
/* 80249B68  28 04 00 00 */	cmplwi r4, 0
/* 80249B6C  41 82 00 0C */	beq lbl_80249B78
/* 80249B70  38 00 00 00 */	li r0, 0
/* 80249B74  90 04 00 08 */	stw r0, 8(r4)
lbl_80249B78:
/* 80249B78  38 00 00 00 */	li r0, 0
/* 80249B7C  90 03 00 10 */	stw r0, 0x10(r3)
/* 80249B80  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 80249B84  38 83 00 54 */	addi r4, r3, 0x54
/* 80249B88  7F E3 FB 78 */	mr r3, r31
/* 80249B8C  48 11 EF A1 */	bl strcpy
/* 80249B90  C0 22 B3 70 */	lfs f1, lit_4046(r2)
/* 80249B94  39 61 00 20 */	addi r11, r1, 0x20
/* 80249B98  48 11 86 91 */	bl _restgpr_29
/* 80249B9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80249BA0  7C 08 03 A6 */	mtlr r0
/* 80249BA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80249BA8  4E 80 00 20 */	blr 
