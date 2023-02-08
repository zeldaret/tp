lbl_801DD95C:
/* 801DD95C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DD960  7C 08 02 A6 */	mflr r0
/* 801DD964  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DD968  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DD96C  7C 7F 1B 78 */	mr r31, r3
/* 801DD970  48 00 3D 09 */	bl getLetterNum__14dMenu_Letter_cFv
/* 801DD974  98 7F 03 75 */	stb r3, 0x375(r31)
/* 801DD978  38 C0 00 00 */	li r6, 0
/* 801DD97C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801DD980  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801DD984  38 A3 01 1C */	addi r5, r3, 0x11c
/* 801DD988  38 60 00 FF */	li r3, 0xff
/* 801DD98C  38 00 00 36 */	li r0, 0x36
/* 801DD990  7C 09 03 A6 */	mtctr r0
lbl_801DD994:
/* 801DD994  88 1F 03 75 */	lbz r0, 0x375(r31)
/* 801DD998  7C 06 00 00 */	cmpw r6, r0
/* 801DD99C  40 80 00 1C */	bge lbl_801DD9B8
/* 801DD9A0  7C 86 00 50 */	subf r4, r6, r0
/* 801DD9A4  38 04 00 0F */	addi r0, r4, 0xf
/* 801DD9A8  7C 85 00 AE */	lbzx r4, r5, r0
/* 801DD9AC  38 06 03 AC */	addi r0, r6, 0x3ac
/* 801DD9B0  7C 9F 01 AE */	stbx r4, r31, r0
/* 801DD9B4  48 00 00 0C */	b lbl_801DD9C0
lbl_801DD9B8:
/* 801DD9B8  38 06 03 AC */	addi r0, r6, 0x3ac
/* 801DD9BC  7C 7F 01 AE */	stbx r3, r31, r0
lbl_801DD9C0:
/* 801DD9C0  38 C6 00 01 */	addi r6, r6, 1
/* 801DD9C4  42 00 FF D0 */	bdnz lbl_801DD994
/* 801DD9C8  88 1F 03 75 */	lbz r0, 0x375(r31)
/* 801DD9CC  28 00 00 06 */	cmplwi r0, 6
/* 801DD9D0  40 80 00 0C */	bge lbl_801DD9DC
/* 801DD9D4  98 1F 03 73 */	stb r0, 0x373(r31)
/* 801DD9D8  48 00 00 0C */	b lbl_801DD9E4
lbl_801DD9DC:
/* 801DD9DC  38 00 00 06 */	li r0, 6
/* 801DD9E0  98 1F 03 73 */	stb r0, 0x373(r31)
lbl_801DD9E4:
/* 801DD9E4  88 9F 03 75 */	lbz r4, 0x375(r31)
/* 801DD9E8  38 00 00 06 */	li r0, 6
/* 801DD9EC  7C 64 03 D6 */	divw r3, r4, r0
/* 801DD9F0  7C 03 01 D6 */	mullw r0, r3, r0
/* 801DD9F4  7C 00 20 51 */	subf. r0, r0, r4
/* 801DD9F8  40 82 00 0C */	bne lbl_801DDA04
/* 801DD9FC  98 7F 03 74 */	stb r3, 0x374(r31)
/* 801DDA00  48 00 00 0C */	b lbl_801DDA0C
lbl_801DDA04:
/* 801DDA04  38 03 00 01 */	addi r0, r3, 1
/* 801DDA08  98 1F 03 74 */	stb r0, 0x374(r31)
lbl_801DDA0C:
/* 801DDA0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DDA10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DDA14  7C 08 03 A6 */	mtlr r0
/* 801DDA18  38 21 00 10 */	addi r1, r1, 0x10
/* 801DDA1C  4E 80 00 20 */	blr 
