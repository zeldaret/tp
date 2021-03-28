lbl_802FFC58:
/* 802FFC58  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802FFC5C  7C 08 02 A6 */	mflr r0
/* 802FFC60  90 01 00 44 */	stw r0, 0x44(r1)
/* 802FFC64  39 61 00 40 */	addi r11, r1, 0x40
/* 802FFC68  48 06 25 69 */	bl _savegpr_26
/* 802FFC6C  7C 7B 1B 78 */	mr r27, r3
/* 802FFC70  7C 9A 23 79 */	or. r26, r4, r4
/* 802FFC74  7C BC 2B 78 */	mr r28, r5
/* 802FFC78  7C DD 33 78 */	mr r29, r6
/* 802FFC7C  7C FE 3B 78 */	mr r30, r7
/* 802FFC80  7D 1F 43 78 */	mr r31, r8
/* 802FFC84  41 82 00 28 */	beq lbl_802FFCAC
/* 802FFC88  38 60 00 70 */	li r3, 0x70
/* 802FFC8C  4B FC EF C1 */	bl __nw__FUl
/* 802FFC90  7C 60 1B 79 */	or. r0, r3, r3
/* 802FFC94  41 82 00 14 */	beq lbl_802FFCA8
/* 802FFC98  7F 44 D3 78 */	mr r4, r26
/* 802FFC9C  38 A0 00 00 */	li r5, 0
/* 802FFCA0  4B FD F2 F5 */	bl __ct__10JUTResFontFPC7ResFONTP7JKRHeap
/* 802FFCA4  7C 60 1B 78 */	mr r0, r3
lbl_802FFCA8:
/* 802FFCA8  90 1B 01 00 */	stw r0, 0x100(r27)
lbl_802FFCAC:
/* 802FFCAC  38 80 FF FF */	li r4, -1
/* 802FFCB0  90 9B 01 04 */	stw r4, 0x104(r27)
/* 802FFCB4  90 9B 01 08 */	stw r4, 0x108(r27)
/* 802FFCB8  38 60 00 00 */	li r3, 0
/* 802FFCBC  90 61 00 0C */	stw r3, 0xc(r1)
/* 802FFCC0  88 01 00 0C */	lbz r0, 0xc(r1)
/* 802FFCC4  98 1B 01 2C */	stb r0, 0x12c(r27)
/* 802FFCC8  88 01 00 0D */	lbz r0, 0xd(r1)
/* 802FFCCC  98 1B 01 2D */	stb r0, 0x12d(r27)
/* 802FFCD0  88 01 00 0E */	lbz r0, 0xe(r1)
/* 802FFCD4  98 1B 01 2E */	stb r0, 0x12e(r27)
/* 802FFCD8  88 01 00 0F */	lbz r0, 0xf(r1)
/* 802FFCDC  98 1B 01 2F */	stb r0, 0x12f(r27)
/* 802FFCE0  90 81 00 08 */	stw r4, 8(r1)
/* 802FFCE4  88 01 00 08 */	lbz r0, 8(r1)
/* 802FFCE8  98 1B 01 28 */	stb r0, 0x128(r27)
/* 802FFCEC  88 01 00 09 */	lbz r0, 9(r1)
/* 802FFCF0  98 1B 01 29 */	stb r0, 0x129(r27)
/* 802FFCF4  88 01 00 0A */	lbz r0, 0xa(r1)
/* 802FFCF8  98 1B 01 2A */	stb r0, 0x12a(r27)
/* 802FFCFC  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802FFD00  98 1B 01 2B */	stb r0, 0x12b(r27)
/* 802FFD04  57 C0 10 3A */	slwi r0, r30, 2
/* 802FFD08  7C 00 FB 78 */	or r0, r0, r31
/* 802FFD0C  98 1B 01 30 */	stb r0, 0x130(r27)
/* 802FFD10  B0 7B 01 32 */	sth r3, 0x132(r27)
/* 802FFD14  90 7B 01 24 */	stw r3, 0x124(r27)
/* 802FFD18  28 1C 00 00 */	cmplwi r28, 0
/* 802FFD1C  41 82 00 7C */	beq lbl_802FFD98
/* 802FFD20  7F A0 07 35 */	extsh. r0, r29
/* 802FFD24  41 82 00 74 */	beq lbl_802FFD98
/* 802FFD28  7F 83 E3 78 */	mr r3, r28
/* 802FFD2C  48 06 8E B9 */	bl strlen
/* 802FFD30  57 BE 04 3E */	clrlwi r30, r29, 0x10
/* 802FFD34  7F A0 07 34 */	extsh r0, r29
/* 802FFD38  2C 00 FF FF */	cmpwi r0, -1
/* 802FFD3C  40 82 00 1C */	bne lbl_802FFD58
/* 802FFD40  28 03 FF FF */	cmplwi r3, 0xffff
/* 802FFD44  41 80 00 0C */	blt lbl_802FFD50
/* 802FFD48  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFE@ha */
/* 802FFD4C  38 63 FF FE */	addi r3, r3, 0xFFFE /* 0x0000FFFE@l */
lbl_802FFD50:
/* 802FFD50  38 03 00 01 */	addi r0, r3, 1
/* 802FFD54  54 1E 04 3E */	clrlwi r30, r0, 0x10
lbl_802FFD58:
/* 802FFD58  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 802FFD5C  4B FC EF 69 */	bl __nwa__FUl
/* 802FFD60  90 7B 01 24 */	stw r3, 0x124(r27)
/* 802FFD64  57 DD 04 3F */	clrlwi. r29, r30, 0x10
/* 802FFD68  41 82 00 30 */	beq lbl_802FFD98
/* 802FFD6C  80 7B 01 24 */	lwz r3, 0x124(r27)
/* 802FFD70  28 03 00 00 */	cmplwi r3, 0
/* 802FFD74  41 82 00 24 */	beq lbl_802FFD98
/* 802FFD78  7F 84 E3 78 */	mr r4, r28
/* 802FFD7C  38 BD FF FF */	addi r5, r29, -1
/* 802FFD80  48 06 8D 69 */	bl strncpy
/* 802FFD84  38 80 00 00 */	li r4, 0
/* 802FFD88  80 1B 01 24 */	lwz r0, 0x124(r27)
/* 802FFD8C  7C 60 EA 14 */	add r3, r0, r29
/* 802FFD90  98 83 FF FF */	stb r4, -1(r3)
/* 802FFD94  B3 DB 01 32 */	sth r30, 0x132(r27)
lbl_802FFD98:
/* 802FFD98  C0 02 C8 80 */	lfs f0, lit_1660(r2)
/* 802FFD9C  D0 1B 01 0C */	stfs f0, 0x10c(r27)
/* 802FFDA0  D0 1B 01 10 */	stfs f0, 0x110(r27)
/* 802FFDA4  D0 1B 01 14 */	stfs f0, 0x114(r27)
/* 802FFDA8  80 7B 01 00 */	lwz r3, 0x100(r27)
/* 802FFDAC  28 03 00 00 */	cmplwi r3, 0
/* 802FFDB0  40 82 00 14 */	bne lbl_802FFDC4
/* 802FFDB4  D0 1B 01 18 */	stfs f0, 0x118(r27)
/* 802FFDB8  D0 1B 01 1C */	stfs f0, 0x11c(r27)
/* 802FFDBC  D0 1B 01 20 */	stfs f0, 0x120(r27)
/* 802FFDC0  48 00 00 9C */	b lbl_802FFE5C
lbl_802FFDC4:
/* 802FFDC4  81 83 00 00 */	lwz r12, 0(r3)
/* 802FFDC8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802FFDCC  7D 89 03 A6 */	mtctr r12
/* 802FFDD0  4E 80 04 21 */	bctrl 
/* 802FFDD4  C8 22 C8 88 */	lfd f1, lit_1662(r2)
/* 802FFDD8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802FFDDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FFDE0  3C 00 43 30 */	lis r0, 0x4330
/* 802FFDE4  90 01 00 10 */	stw r0, 0x10(r1)
/* 802FFDE8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802FFDEC  EC 00 08 28 */	fsubs f0, f0, f1
/* 802FFDF0  D0 1B 01 18 */	stfs f0, 0x118(r27)
/* 802FFDF4  80 7B 01 00 */	lwz r3, 0x100(r27)
/* 802FFDF8  81 83 00 00 */	lwz r12, 0(r3)
/* 802FFDFC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802FFE00  7D 89 03 A6 */	mtctr r12
/* 802FFE04  4E 80 04 21 */	bctrl 
/* 802FFE08  C8 22 C8 88 */	lfd f1, lit_1662(r2)
/* 802FFE0C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802FFE10  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802FFE14  3C 00 43 30 */	lis r0, 0x4330
/* 802FFE18  90 01 00 18 */	stw r0, 0x18(r1)
/* 802FFE1C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802FFE20  EC 00 08 28 */	fsubs f0, f0, f1
/* 802FFE24  D0 1B 01 1C */	stfs f0, 0x11c(r27)
/* 802FFE28  80 7B 01 00 */	lwz r3, 0x100(r27)
/* 802FFE2C  81 83 00 00 */	lwz r12, 0(r3)
/* 802FFE30  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802FFE34  7D 89 03 A6 */	mtctr r12
/* 802FFE38  4E 80 04 21 */	bctrl 
/* 802FFE3C  C8 22 C8 88 */	lfd f1, lit_1662(r2)
/* 802FFE40  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802FFE44  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FFE48  3C 00 43 30 */	lis r0, 0x4330
/* 802FFE4C  90 01 00 20 */	stw r0, 0x20(r1)
/* 802FFE50  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802FFE54  EC 00 08 28 */	fsubs f0, f0, f1
/* 802FFE58  D0 1B 01 20 */	stfs f0, 0x120(r27)
lbl_802FFE5C:
/* 802FFE5C  3C 60 54 42 */	lis r3, 0x5442 /* 0x54425831@ha */
/* 802FFE60  38 03 58 31 */	addi r0, r3, 0x5831 /* 0x54425831@l */
/* 802FFE64  90 1B 00 08 */	stw r0, 8(r27)
/* 802FFE68  38 00 00 01 */	li r0, 1
/* 802FFE6C  98 1B 01 31 */	stb r0, 0x131(r27)
/* 802FFE70  39 61 00 40 */	addi r11, r1, 0x40
/* 802FFE74  48 06 23 A9 */	bl _restgpr_26
/* 802FFE78  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802FFE7C  7C 08 03 A6 */	mtlr r0
/* 802FFE80  38 21 00 40 */	addi r1, r1, 0x40
/* 802FFE84  4E 80 00 20 */	blr 
