lbl_802F01E4:
/* 802F01E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F01E8  7C 08 02 A6 */	mflr r0
/* 802F01EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F01F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F01F4  7C 7F 1B 78 */	mr r31, r3
/* 802F01F8  3C 60 80 3D */	lis r3, __vt__11J2DTevBlock@ha
/* 802F01FC  38 03 CE 74 */	addi r0, r3, __vt__11J2DTevBlock@l
/* 802F0200  90 1F 00 00 */	stw r0, 0(r31)
/* 802F0204  3C 60 80 3D */	lis r3, __vt__13J2DTevBlock16@ha
/* 802F0208  38 03 CA C8 */	addi r0, r3, __vt__13J2DTevBlock16@l
/* 802F020C  90 1F 00 00 */	stw r0, 0(r31)
/* 802F0210  38 7F 00 16 */	addi r3, r31, 0x16
/* 802F0214  3C 80 80 2F */	lis r4, __ct__11J2DTevOrderFv@ha
/* 802F0218  38 84 1B 70 */	addi r4, r4, __ct__11J2DTevOrderFv@l
/* 802F021C  38 A0 00 00 */	li r5, 0
/* 802F0220  38 C0 00 04 */	li r6, 4
/* 802F0224  38 E0 00 10 */	li r7, 0x10
/* 802F0228  48 07 1B 39 */	bl __construct_array
/* 802F022C  38 7F 00 56 */	addi r3, r31, 0x56
/* 802F0230  3C 80 80 2F */	lis r4, __ct__13J2DGXColorS10Fv@ha
/* 802F0234  38 84 1B 90 */	addi r4, r4, __ct__13J2DGXColorS10Fv@l
/* 802F0238  38 A0 00 00 */	li r5, 0
/* 802F023C  38 C0 00 08 */	li r6, 8
/* 802F0240  38 E0 00 04 */	li r7, 4
/* 802F0244  48 07 1B 1D */	bl __construct_array
/* 802F0248  38 7F 00 77 */	addi r3, r31, 0x77
/* 802F024C  3C 80 80 2F */	lis r4, __ct__11J2DTevStageFv@ha
/* 802F0250  38 84 19 40 */	addi r4, r4, __ct__11J2DTevStageFv@l
/* 802F0254  38 A0 00 00 */	li r5, 0
/* 802F0258  38 C0 00 08 */	li r6, 8
/* 802F025C  38 E0 00 10 */	li r7, 0x10
/* 802F0260  48 07 1B 01 */	bl __construct_array
/* 802F0264  38 7F 00 F8 */	addi r3, r31, 0xf8
/* 802F0268  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha
/* 802F026C  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l
/* 802F0270  38 A0 00 00 */	li r5, 0
/* 802F0274  38 C0 00 04 */	li r6, 4
/* 802F0278  38 E0 00 04 */	li r7, 4
/* 802F027C  48 07 1A E5 */	bl __construct_array
/* 802F0280  38 7F 01 28 */	addi r3, r31, 0x128
/* 802F0284  3C 80 80 2F */	lis r4, __ct__19J2DTevSwapModeTableFv@ha
/* 802F0288  38 84 19 34 */	addi r4, r4, __ct__19J2DTevSwapModeTableFv@l
/* 802F028C  38 A0 00 00 */	li r5, 0
/* 802F0290  38 C0 00 01 */	li r6, 1
/* 802F0294  38 E0 00 04 */	li r7, 4
/* 802F0298  48 07 1A C9 */	bl __construct_array
/* 802F029C  38 7F 01 2C */	addi r3, r31, 0x12c
/* 802F02A0  3C 80 80 2F */	lis r4, __ct__14J2DIndTevStageFv@ha
/* 802F02A4  38 84 18 A0 */	addi r4, r4, __ct__14J2DIndTevStageFv@l
/* 802F02A8  38 A0 00 00 */	li r5, 0
/* 802F02AC  38 C0 00 04 */	li r6, 4
/* 802F02B0  38 E0 00 10 */	li r7, 0x10
/* 802F02B4  48 07 1A AD */	bl __construct_array
/* 802F02B8  38 60 00 00 */	li r3, 0
/* 802F02BC  7C 64 1B 78 */	mr r4, r3
/* 802F02C0  38 00 00 08 */	li r0, 8
/* 802F02C4  7C 09 03 A6 */	mtctr r0
lbl_802F02C8:
/* 802F02C8  38 03 01 6C */	addi r0, r3, 0x16c
/* 802F02CC  7C 9F 01 2E */	stwx r4, r31, r0
/* 802F02D0  38 63 00 04 */	addi r3, r3, 4
/* 802F02D4  42 00 FF F4 */	bdnz lbl_802F02C8
/* 802F02D8  38 00 00 00 */	li r0, 0
/* 802F02DC  98 1F 01 B0 */	stb r0, 0x1b0(r31)
/* 802F02E0  7F E3 FB 78 */	mr r3, r31
/* 802F02E4  81 9F 00 00 */	lwz r12, 0(r31)
/* 802F02E8  81 8C 00 08 */	lwz r12, 8(r12)
/* 802F02EC  7D 89 03 A6 */	mtctr r12
/* 802F02F0  4E 80 04 21 */	bctrl 
/* 802F02F4  7F E3 FB 78 */	mr r3, r31
/* 802F02F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F02FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F0300  7C 08 03 A6 */	mtlr r0
/* 802F0304  38 21 00 10 */	addi r1, r1, 0x10
/* 802F0308  4E 80 00 20 */	blr 
