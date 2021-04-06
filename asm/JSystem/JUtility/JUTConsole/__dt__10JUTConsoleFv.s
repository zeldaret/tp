lbl_802E755C:
/* 802E755C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E7560  7C 08 02 A6 */	mflr r0
/* 802E7564  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E7568  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E756C  93 C1 00 08 */	stw r30, 8(r1)
/* 802E7570  7C 7E 1B 79 */	or. r30, r3, r3
/* 802E7574  7C 9F 23 78 */	mr r31, r4
/* 802E7578  41 82 00 38 */	beq lbl_802E75B0
/* 802E757C  3C 60 80 3D */	lis r3, __vt__10JUTConsole@ha /* 0x803CC9A8@ha */
/* 802E7580  38 03 C9 A8 */	addi r0, r3, __vt__10JUTConsole@l /* 0x803CC9A8@l */
/* 802E7584  90 1E 00 00 */	stw r0, 0(r30)
/* 802E7588  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 802E758C  7F C4 F3 78 */	mr r4, r30
/* 802E7590  48 00 0D 21 */	bl removeConsole__17JUTConsoleManagerFP10JUTConsole
/* 802E7594  7F C3 F3 78 */	mr r3, r30
/* 802E7598  38 80 00 00 */	li r4, 0
/* 802E759C  4B FE 9F 49 */	bl __dt__11JKRDisposerFv
/* 802E75A0  7F E0 07 35 */	extsh. r0, r31
/* 802E75A4  40 81 00 0C */	ble lbl_802E75B0
/* 802E75A8  7F C3 F3 78 */	mr r3, r30
/* 802E75AC  4B FE 77 91 */	bl __dl__FPv
lbl_802E75B0:
/* 802E75B0  7F C3 F3 78 */	mr r3, r30
/* 802E75B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E75B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E75BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E75C0  7C 08 03 A6 */	mtlr r0
/* 802E75C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802E75C8  4E 80 00 20 */	blr 
