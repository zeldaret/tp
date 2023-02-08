lbl_801DCDC0:
/* 801DCDC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DCDC4  7C 08 02 A6 */	mflr r0
/* 801DCDC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DCDCC  39 61 00 20 */	addi r11, r1, 0x20
/* 801DCDD0  48 18 54 09 */	bl _savegpr_28
/* 801DCDD4  7C 7F 1B 78 */	mr r31, r3
/* 801DCDD8  7C 9C 23 78 */	mr r28, r4
/* 801DCDDC  7C BD 2B 78 */	mr r29, r5
/* 801DCDE0  7C DE 33 78 */	mr r30, r6
/* 801DCDE4  3C 60 80 3A */	lis r3, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 801DCDE8  38 03 6F 88 */	addi r0, r3, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 801DCDEC  90 1F 00 00 */	stw r0, 0(r31)
/* 801DCDF0  3C 60 80 3C */	lis r3, __vt__14dMenu_Letter_c@ha /* 0x803BDB8C@ha */
/* 801DCDF4  38 03 DB 8C */	addi r0, r3, __vt__14dMenu_Letter_c@l /* 0x803BDB8C@l */
/* 801DCDF8  90 1F 00 00 */	stw r0, 0(r31)
/* 801DCDFC  38 7F 03 18 */	addi r3, r31, 0x318
/* 801DCE00  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha /* 0x80193960@ha */
/* 801DCE04  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l /* 0x80193960@l */
/* 801DCE08  38 A0 00 00 */	li r5, 0
/* 801DCE0C  38 C0 00 04 */	li r6, 4
/* 801DCE10  38 E0 00 04 */	li r7, 4
/* 801DCE14  48 18 4F 4D */	bl __construct_array
/* 801DCE18  38 7F 03 28 */	addi r3, r31, 0x328
/* 801DCE1C  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha /* 0x80193960@ha */
/* 801DCE20  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l /* 0x80193960@l */
/* 801DCE24  38 A0 00 00 */	li r5, 0
/* 801DCE28  38 C0 00 04 */	li r6, 4
/* 801DCE2C  38 E0 00 04 */	li r7, 4
/* 801DCE30  48 18 4F 31 */	bl __construct_array
/* 801DCE34  38 7F 03 38 */	addi r3, r31, 0x338
/* 801DCE38  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha /* 0x80193960@ha */
/* 801DCE3C  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l /* 0x80193960@l */
/* 801DCE40  38 A0 00 00 */	li r5, 0
/* 801DCE44  38 C0 00 04 */	li r6, 4
/* 801DCE48  38 E0 00 04 */	li r7, 4
/* 801DCE4C  48 18 4F 15 */	bl __construct_array
/* 801DCE50  38 7F 03 48 */	addi r3, r31, 0x348
/* 801DCE54  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha /* 0x80193960@ha */
/* 801DCE58  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l /* 0x80193960@l */
/* 801DCE5C  38 A0 00 00 */	li r5, 0
/* 801DCE60  38 C0 00 04 */	li r6, 4
/* 801DCE64  38 E0 00 04 */	li r7, 4
/* 801DCE68  48 18 4E F9 */	bl __construct_array
/* 801DCE6C  93 9F 00 04 */	stw r28, 4(r31)
/* 801DCE70  38 60 00 00 */	li r3, 0
/* 801DCE74  90 7F 00 14 */	stw r3, 0x14(r31)
/* 801DCE78  90 7F 00 08 */	stw r3, 8(r31)
/* 801DCE7C  93 BF 00 0C */	stw r29, 0xc(r31)
/* 801DCE80  93 DF 00 10 */	stw r30, 0x10(r31)
/* 801DCE84  38 00 00 01 */	li r0, 1
/* 801DCE88  98 1F 03 6C */	stb r0, 0x36c(r31)
/* 801DCE8C  98 7F 03 6D */	stb r3, 0x36d(r31)
/* 801DCE90  B0 7F 03 68 */	sth r3, 0x368(r31)
/* 801DCE94  B0 7F 03 6A */	sth r3, 0x36a(r31)
/* 801DCE98  98 7F 03 6E */	stb r3, 0x36e(r31)
/* 801DCE9C  98 7F 03 6F */	stb r3, 0x36f(r31)
/* 801DCEA0  98 7F 03 72 */	stb r3, 0x372(r31)
/* 801DCEA4  98 7F 03 E2 */	stb r3, 0x3e2(r31)
/* 801DCEA8  98 7F 03 E3 */	stb r3, 0x3e3(r31)
/* 801DCEAC  98 7F 03 E4 */	stb r3, 0x3e4(r31)
/* 801DCEB0  38 00 00 FF */	li r0, 0xff
/* 801DCEB4  98 1F 03 70 */	stb r0, 0x370(r31)
/* 801DCEB8  98 1F 03 71 */	stb r0, 0x371(r31)
/* 801DCEBC  7F E3 FB 78 */	mr r3, r31
/* 801DCEC0  48 00 0A 9D */	bl letter_init_calc__14dMenu_Letter_cFv
/* 801DCEC4  C0 02 A8 E0 */	lfs f0, lit_3827(r2)
/* 801DCEC8  D0 1F 03 58 */	stfs f0, 0x358(r31)
/* 801DCECC  D0 1F 03 5C */	stfs f0, 0x35c(r31)
/* 801DCED0  C0 02 A8 E4 */	lfs f0, lit_3828(r2)
/* 801DCED4  D0 1F 03 64 */	stfs f0, 0x364(r31)
/* 801DCED8  D0 1F 03 60 */	stfs f0, 0x360(r31)
/* 801DCEDC  38 C0 00 00 */	li r6, 0
/* 801DCEE0  38 60 00 00 */	li r3, 0
/* 801DCEE4  7C 64 1B 78 */	mr r4, r3
lbl_801DCEE8:
/* 801DCEE8  38 E0 00 00 */	li r7, 0
/* 801DCEEC  7C BF 1A 14 */	add r5, r31, r3
/* 801DCEF0  38 00 00 06 */	li r0, 6
/* 801DCEF4  7C 09 03 A6 */	mtctr r0
lbl_801DCEF8:
/* 801DCEF8  38 07 03 76 */	addi r0, r7, 0x376
/* 801DCEFC  7C 85 01 AE */	stbx r4, r5, r0
/* 801DCF00  38 E7 00 01 */	addi r7, r7, 1
/* 801DCF04  42 00 FF F4 */	bdnz lbl_801DCEF8
/* 801DCF08  38 C6 00 01 */	addi r6, r6, 1
/* 801DCF0C  2C 06 00 09 */	cmpwi r6, 9
/* 801DCF10  38 63 00 06 */	addi r3, r3, 6
/* 801DCF14  41 80 FF D4 */	blt lbl_801DCEE8
/* 801DCF18  7F E3 FB 78 */	mr r3, r31
/* 801DCF1C  39 61 00 20 */	addi r11, r1, 0x20
/* 801DCF20  48 18 53 05 */	bl _restgpr_28
/* 801DCF24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DCF28  7C 08 03 A6 */	mtlr r0
/* 801DCF2C  38 21 00 20 */	addi r1, r1, 0x20
/* 801DCF30  4E 80 00 20 */	blr 
