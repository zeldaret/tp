lbl_802E4A54:
/* 802E4A54  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802E4A58  7C 08 02 A6 */	mflr r0
/* 802E4A5C  90 01 00 54 */	stw r0, 0x54(r1)
/* 802E4A60  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802E4A64  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 802E4A68  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802E4A6C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802E4A70  4B FF FE F1 */	bl flush_subroutine__12JUTAssertionFv
/* 802E4A74  28 03 00 00 */	cmplwi r3, 0
/* 802E4A78  41 82 01 9C */	beq lbl_802E4C14
/* 802E4A7C  88 0D 83 78 */	lbz r0, data_804508F8(r13)
/* 802E4A80  28 00 00 01 */	cmplwi r0, 1
/* 802E4A84  40 82 01 90 */	bne lbl_802E4C14
/* 802E4A88  80 6D 8F 48 */	lwz r3, sDebugPrint__10JUTDbPrint(r13)
/* 802E4A8C  28 03 00 00 */	cmplwi r3, 0
/* 802E4A90  41 82 01 84 */	beq lbl_802E4C14
/* 802E4A94  83 E3 00 04 */	lwz r31, 4(r3)
/* 802E4A98  28 1F 00 00 */	cmplwi r31, 0
/* 802E4A9C  41 82 01 78 */	beq lbl_802E4C14
/* 802E4AA0  48 06 8E 1D */	bl VIGetRetraceCount
/* 802E4AA4  54 60 16 36 */	rlwinm r0, r3, 2, 0x18, 0x1b
/* 802E4AA8  60 00 00 0F */	ori r0, r0, 0xf
/* 802E4AAC  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 802E4AB0  7F E3 FB 78 */	mr r3, r31
/* 802E4AB4  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E4AB8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802E4ABC  7D 89 03 A6 */	mtctr r12
/* 802E4AC0  4E 80 04 21 */	bctrl 
/* 802E4AC4  38 00 00 FF */	li r0, 0xff
/* 802E4AC8  98 01 00 08 */	stb r0, 8(r1)
/* 802E4ACC  9B C1 00 09 */	stb r30, 9(r1)
/* 802E4AD0  9B C1 00 0A */	stb r30, 0xa(r1)
/* 802E4AD4  98 01 00 0B */	stb r0, 0xb(r1)
/* 802E4AD8  80 01 00 08 */	lwz r0, 8(r1)
/* 802E4ADC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E4AE0  7F E3 FB 78 */	mr r3, r31
/* 802E4AE4  38 81 00 0C */	addi r4, r1, 0xc
/* 802E4AE8  4B FF A2 89 */	bl setCharColor__7JUTFontFQ28JUtility6TColor
/* 802E4AEC  3C 60 80 43 */	lis r3, data_80434870@ha /* 0x80434870@ha */
/* 802E4AF0  38 63 48 70 */	addi r3, r3, data_80434870@l /* 0x80434870@l */
/* 802E4AF4  48 08 40 F1 */	bl strlen
/* 802E4AF8  7C 7E 1B 78 */	mr r30, r3
/* 802E4AFC  7F E3 FB 78 */	mr r3, r31
/* 802E4B00  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E4B04  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802E4B08  7D 89 03 A6 */	mtctr r12
/* 802E4B0C  4E 80 04 21 */	bctrl 
/* 802E4B10  C8 22 C6 C8 */	lfd f1, lit_728(r2)
/* 802E4B14  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802E4B18  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E4B1C  3C 00 43 30 */	lis r0, 0x4330
/* 802E4B20  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E4B24  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802E4B28  EF E0 08 28 */	fsubs f31, f0, f1
/* 802E4B2C  7F E3 FB 78 */	mr r3, r31
/* 802E4B30  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E4B34  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802E4B38  7D 89 03 A6 */	mtctr r12
/* 802E4B3C  4E 80 04 21 */	bctrl 
/* 802E4B40  C8 22 C6 C8 */	lfd f1, lit_728(r2)
/* 802E4B44  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802E4B48  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E4B4C  3C 00 43 30 */	lis r0, 0x4330
/* 802E4B50  90 01 00 18 */	stw r0, 0x18(r1)
/* 802E4B54  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802E4B58  EC 60 08 28 */	fsubs f3, f0, f1
/* 802E4B5C  7F E3 FB 78 */	mr r3, r31
/* 802E4B60  C0 22 C6 B8 */	lfs f1, lit_724(r2)
/* 802E4B64  C0 42 C6 BC */	lfs f2, lit_725(r2)
/* 802E4B68  FC 80 F8 90 */	fmr f4, f31
/* 802E4B6C  3C 80 80 43 */	lis r4, data_80434870@ha /* 0x80434870@ha */
/* 802E4B70  38 84 48 70 */	addi r4, r4, data_80434870@l /* 0x80434870@l */
/* 802E4B74  7F C5 F3 78 */	mr r5, r30
/* 802E4B78  38 C0 00 01 */	li r6, 1
/* 802E4B7C  4B FF A2 AD */	bl drawString_size_scale__7JUTFontFffffPCcUlb
/* 802E4B80  3C 60 80 43 */	lis r3, data_804348B0@ha /* 0x804348B0@ha */
/* 802E4B84  38 63 48 B0 */	addi r3, r3, data_804348B0@l /* 0x804348B0@l */
/* 802E4B88  48 08 40 5D */	bl strlen
/* 802E4B8C  7C 7E 1B 78 */	mr r30, r3
/* 802E4B90  7F E3 FB 78 */	mr r3, r31
/* 802E4B94  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E4B98  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802E4B9C  7D 89 03 A6 */	mtctr r12
/* 802E4BA0  4E 80 04 21 */	bctrl 
/* 802E4BA4  C8 22 C6 C8 */	lfd f1, lit_728(r2)
/* 802E4BA8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802E4BAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E4BB0  3C 00 43 30 */	lis r0, 0x4330
/* 802E4BB4  90 01 00 20 */	stw r0, 0x20(r1)
/* 802E4BB8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802E4BBC  EF E0 08 28 */	fsubs f31, f0, f1
/* 802E4BC0  7F E3 FB 78 */	mr r3, r31
/* 802E4BC4  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E4BC8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802E4BCC  7D 89 03 A6 */	mtctr r12
/* 802E4BD0  4E 80 04 21 */	bctrl 
/* 802E4BD4  C8 22 C6 C8 */	lfd f1, lit_728(r2)
/* 802E4BD8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802E4BDC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802E4BE0  3C 00 43 30 */	lis r0, 0x4330
/* 802E4BE4  90 01 00 28 */	stw r0, 0x28(r1)
/* 802E4BE8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802E4BEC  EC 60 08 28 */	fsubs f3, f0, f1
/* 802E4BF0  7F E3 FB 78 */	mr r3, r31
/* 802E4BF4  C0 22 C6 B8 */	lfs f1, lit_724(r2)
/* 802E4BF8  C0 42 C6 C0 */	lfs f2, lit_726(r2)
/* 802E4BFC  FC 80 F8 90 */	fmr f4, f31
/* 802E4C00  3C 80 80 43 */	lis r4, data_804348B0@ha /* 0x804348B0@ha */
/* 802E4C04  38 84 48 B0 */	addi r4, r4, data_804348B0@l /* 0x804348B0@l */
/* 802E4C08  7F C5 F3 78 */	mr r5, r30
/* 802E4C0C  38 C0 00 01 */	li r6, 1
/* 802E4C10  4B FF A2 19 */	bl drawString_size_scale__7JUTFontFffffPCcUlb
lbl_802E4C14:
/* 802E4C14  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 802E4C18  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802E4C1C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802E4C20  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802E4C24  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802E4C28  7C 08 03 A6 */	mtlr r0
/* 802E4C2C  38 21 00 50 */	addi r1, r1, 0x50
/* 802E4C30  4E 80 00 20 */	blr 
