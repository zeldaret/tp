lbl_8065F088:
/* 8065F088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8065F08C  7C 08 02 A6 */	mflr r0
/* 8065F090  90 01 00 14 */	stw r0, 0x14(r1)
/* 8065F094  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8065F098  93 C1 00 08 */	stw r30, 8(r1)
/* 8065F09C  7C 7E 1B 78 */	mr r30, r3
/* 8065F0A0  3C A0 80 66 */	lis r5, lit_3987@ha /* 0x80662DB0@ha */
/* 8065F0A4  3B E5 2D B0 */	addi r31, r5, lit_3987@l /* 0x80662DB0@l */
/* 8065F0A8  38 A0 00 00 */	li r5, 0
/* 8065F0AC  B0 A3 0C 42 */	sth r5, 0xc42(r3)
/* 8065F0B0  38 00 00 05 */	li r0, 5
/* 8065F0B4  98 03 0C 9F */	stb r0, 0xc9f(r3)
/* 8065F0B8  2C 04 00 00 */	cmpwi r4, 0
/* 8065F0BC  41 82 00 2C */	beq lbl_8065F0E8
/* 8065F0C0  38 00 00 01 */	li r0, 1
/* 8065F0C4  98 1E 0C 61 */	stb r0, 0xc61(r30)
/* 8065F0C8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065F0CC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8065F0D0  38 80 00 18 */	li r4, 0x18
/* 8065F0D4  38 A0 00 00 */	li r5, 0
/* 8065F0D8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8065F0DC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065F0E0  4B FF 96 51 */	bl setBck__7daCow_cFiUcff
/* 8065F0E4  48 00 00 1C */	b lbl_8065F100
lbl_8065F0E8:
/* 8065F0E8  98 BE 0C 61 */	stb r5, 0xc61(r30)
/* 8065F0EC  38 80 00 16 */	li r4, 0x16
/* 8065F0F0  38 A0 00 00 */	li r5, 0
/* 8065F0F4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8065F0F8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065F0FC  4B FF 96 35 */	bl setBck__7daCow_cFiUcff
lbl_8065F100:
/* 8065F100  38 60 00 00 */	li r3, 0
/* 8065F104  38 00 00 03 */	li r0, 3
/* 8065F108  7C 09 03 A6 */	mtctr r0
lbl_8065F10C:
/* 8065F10C  38 83 08 8C */	addi r4, r3, 0x88c
/* 8065F110  7C 1E 20 2E */	lwzx r0, r30, r4
/* 8065F114  60 00 00 01 */	ori r0, r0, 1
/* 8065F118  7C 1E 21 2E */	stwx r0, r30, r4
/* 8065F11C  38 63 01 38 */	addi r3, r3, 0x138
/* 8065F120  42 00 FF EC */	bdnz lbl_8065F10C
/* 8065F124  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 8065F128  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8065F12C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8065F130  83 C1 00 08 */	lwz r30, 8(r1)
/* 8065F134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8065F138  7C 08 03 A6 */	mtlr r0
/* 8065F13C  38 21 00 10 */	addi r1, r1, 0x10
/* 8065F140  4E 80 00 20 */	blr 
