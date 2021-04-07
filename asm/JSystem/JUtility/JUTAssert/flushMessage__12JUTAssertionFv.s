lbl_802E499C:
/* 802E499C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E49A0  7C 08 02 A6 */	mflr r0
/* 802E49A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E49A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E49AC  4B FF FF B5 */	bl flush_subroutine__12JUTAssertionFv
/* 802E49B0  28 03 00 00 */	cmplwi r3, 0
/* 802E49B4  41 82 00 8C */	beq lbl_802E4A40
/* 802E49B8  88 0D 83 78 */	lbz r0, data_804508F8(r13)
/* 802E49BC  28 00 00 01 */	cmplwi r0, 1
/* 802E49C0  40 82 00 80 */	bne lbl_802E4A40
/* 802E49C4  83 ED 8F A8 */	lwz r31, sDirectPrint__14JUTDirectPrint(r13)
/* 802E49C8  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 802E49CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E49D0  38 60 00 FF */	li r3, 0xff
/* 802E49D4  98 61 00 0C */	stb r3, 0xc(r1)
/* 802E49D8  38 00 00 C8 */	li r0, 0xc8
/* 802E49DC  98 01 00 0D */	stb r0, 0xd(r1)
/* 802E49E0  98 01 00 0E */	stb r0, 0xe(r1)
/* 802E49E4  98 61 00 0F */	stb r3, 0xf(r1)
/* 802E49E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E49EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E49F0  7F E3 FB 78 */	mr r3, r31
/* 802E49F4  38 81 00 10 */	addi r4, r1, 0x10
/* 802E49F8  4B FF FD A1 */	bl setCharColor__14JUTDirectPrintFQ28JUtility6TColor
/* 802E49FC  7F E3 FB 78 */	mr r3, r31
/* 802E4A00  38 80 00 10 */	li r4, 0x10
/* 802E4A04  38 A0 00 10 */	li r5, 0x10
/* 802E4A08  3C C0 80 43 */	lis r6, data_80434870@ha /* 0x80434870@ha */
/* 802E4A0C  38 C6 48 70 */	addi r6, r6, data_80434870@l /* 0x80434870@l */
/* 802E4A10  4B FF FC C9 */	bl drawString__14JUTDirectPrintFUsUsPc
/* 802E4A14  7F E3 FB 78 */	mr r3, r31
/* 802E4A18  38 80 00 10 */	li r4, 0x10
/* 802E4A1C  38 A0 00 18 */	li r5, 0x18
/* 802E4A20  3C C0 80 43 */	lis r6, data_804348B0@ha /* 0x804348B0@ha */
/* 802E4A24  38 C6 48 B0 */	addi r6, r6, data_804348B0@l /* 0x804348B0@l */
/* 802E4A28  4B FF FC B1 */	bl drawString__14JUTDirectPrintFUsUsPc
/* 802E4A2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E4A30  90 01 00 08 */	stw r0, 8(r1)
/* 802E4A34  7F E3 FB 78 */	mr r3, r31
/* 802E4A38  38 81 00 08 */	addi r4, r1, 8
/* 802E4A3C  4B FF FD 5D */	bl setCharColor__14JUTDirectPrintFQ28JUtility6TColor
lbl_802E4A40:
/* 802E4A40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E4A44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E4A48  7C 08 03 A6 */	mtlr r0
/* 802E4A4C  38 21 00 20 */	addi r1, r1, 0x20
/* 802E4A50  4E 80 00 20 */	blr 
