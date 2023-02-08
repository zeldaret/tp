lbl_802498D8:
/* 802498D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802498DC  7C 08 02 A6 */	mflr r0
/* 802498E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 802498E4  39 61 00 40 */	addi r11, r1, 0x40
/* 802498E8  48 11 88 DD */	bl _savegpr_23
/* 802498EC  7C 78 1B 78 */	mr r24, r3
/* 802498F0  7C 99 23 78 */	mr r25, r4
/* 802498F4  7C BA 2B 78 */	mr r26, r5
/* 802498F8  7C DB 33 78 */	mr r27, r6
/* 802498FC  7C FC 3B 78 */	mr r28, r7
/* 80249900  7D 1D 43 78 */	mr r29, r8
/* 80249904  7D 3E 4B 78 */	mr r30, r9
/* 80249908  7D 5F 53 78 */	mr r31, r10
/* 8024990C  8A E1 00 4B */	lbz r23, 0x4b(r1)
/* 80249910  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80249914  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80249918  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8024991C  28 04 00 00 */	cmplwi r4, 0
/* 80249920  41 82 00 64 */	beq lbl_80249984
/* 80249924  28 19 13 88 */	cmplwi r25, 0x1388
/* 80249928  40 81 00 34 */	ble lbl_8024995C
/* 8024992C  80 18 00 1C */	lwz r0, 0x1c(r24)
/* 80249930  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80249934  7C 00 18 40 */	cmplw r0, r3
/* 80249938  41 82 00 4C */	beq lbl_80249984
/* 8024993C  90 78 00 1C */	stw r3, 0x1c(r24)
/* 80249940  80 18 00 1C */	lwz r0, 0x1c(r24)
/* 80249944  90 01 00 0C */	stw r0, 0xc(r1)
/* 80249948  80 78 00 18 */	lwz r3, 0x18(r24)
/* 8024994C  38 81 00 0C */	addi r4, r1, 0xc
/* 80249950  38 A0 00 80 */	li r5, 0x80
/* 80249954  48 09 2F BD */	bl parse_next__Q37JGadget6binary19TParse_header_blockFPPCvUl
/* 80249958  48 00 00 2C */	b lbl_80249984
lbl_8024995C:
/* 8024995C  80 18 00 1C */	lwz r0, 0x1c(r24)
/* 80249960  7C 00 20 40 */	cmplw r0, r4
/* 80249964  41 82 00 20 */	beq lbl_80249984
/* 80249968  90 98 00 1C */	stw r4, 0x1c(r24)
/* 8024996C  80 18 00 1C */	lwz r0, 0x1c(r24)
/* 80249970  90 01 00 08 */	stw r0, 8(r1)
/* 80249974  80 78 00 18 */	lwz r3, 0x18(r24)
/* 80249978  38 81 00 08 */	addi r4, r1, 8
/* 8024997C  38 A0 00 80 */	li r5, 0x80
/* 80249980  48 09 2F 91 */	bl parse_next__Q37JGadget6binary19TParse_header_blockFPPCvUl
lbl_80249984:
/* 80249984  80 78 00 0C */	lwz r3, 0xc(r24)
/* 80249988  7F 84 E3 78 */	mr r4, r28
/* 8024998C  7F A5 EB 78 */	mr r5, r29
/* 80249990  7F C6 F3 78 */	mr r6, r30
/* 80249994  7F E7 FB 78 */	mr r7, r31
/* 80249998  7E E8 BB 78 */	mr r8, r23
/* 8024999C  4B FE 60 11 */	bl init__26jmessage_string_tReferenceFP10J2DTextBoxP10J2DTextBoxP7JUTFontP10COutFont_cUc
/* 802499A0  80 78 00 0C */	lwz r3, 0xc(r24)
/* 802499A4  9B 43 00 83 */	stb r26, 0x83(r3)
/* 802499A8  80 78 00 0C */	lwz r3, 0xc(r24)
/* 802499AC  9B 63 00 82 */	stb r27, 0x82(r3)
/* 802499B0  80 7C 01 08 */	lwz r3, 0x108(r28)
/* 802499B4  90 61 00 10 */	stw r3, 0x10(r1)
/* 802499B8  80 1C 01 04 */	lwz r0, 0x104(r28)
/* 802499BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802499C0  80 98 00 0C */	lwz r4, 0xc(r24)
/* 802499C4  90 04 00 78 */	stw r0, 0x78(r4)
/* 802499C8  90 64 00 7C */	stw r3, 0x7c(r4)
/* 802499CC  80 78 00 08 */	lwz r3, 8(r24)
/* 802499D0  7F 24 CB 78 */	mr r4, r25
/* 802499D4  38 A0 00 00 */	li r5, 0
/* 802499D8  38 C0 00 00 */	li r6, 0
/* 802499DC  48 05 DF 19 */	bl setMessageID__Q28JMessage8TControlFUlUlPb
/* 802499E0  80 78 00 08 */	lwz r3, 8(r24)
/* 802499E4  48 05 DC 51 */	bl update__Q28JMessage8TControlFv
/* 802499E8  80 78 00 08 */	lwz r3, 8(r24)
/* 802499EC  48 05 DC D1 */	bl render__Q28JMessage8TControlFv
/* 802499F0  80 78 00 08 */	lwz r3, 8(r24)
/* 802499F4  48 05 DB E1 */	bl reset__Q28JMessage8TControlFv
/* 802499F8  80 78 00 08 */	lwz r3, 8(r24)
/* 802499FC  80 83 00 04 */	lwz r4, 4(r3)
/* 80249A00  28 04 00 00 */	cmplwi r4, 0
/* 80249A04  41 82 00 0C */	beq lbl_80249A10
/* 80249A08  38 00 00 00 */	li r0, 0
/* 80249A0C  90 04 00 08 */	stw r0, 8(r4)
lbl_80249A10:
/* 80249A10  80 83 00 08 */	lwz r4, 8(r3)
/* 80249A14  28 04 00 00 */	cmplwi r4, 0
/* 80249A18  41 82 00 0C */	beq lbl_80249A24
/* 80249A1C  38 00 00 00 */	li r0, 0
/* 80249A20  90 04 00 08 */	stw r0, 8(r4)
lbl_80249A24:
/* 80249A24  38 00 00 00 */	li r0, 0
/* 80249A28  90 03 00 10 */	stw r0, 0x10(r3)
/* 80249A2C  C0 22 B3 70 */	lfs f1, lit_4046(r2)
/* 80249A30  39 61 00 40 */	addi r11, r1, 0x40
/* 80249A34  48 11 87 DD */	bl _restgpr_23
/* 80249A38  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80249A3C  7C 08 03 A6 */	mtlr r0
/* 80249A40  38 21 00 40 */	addi r1, r1, 0x40
/* 80249A44  4E 80 00 20 */	blr 
