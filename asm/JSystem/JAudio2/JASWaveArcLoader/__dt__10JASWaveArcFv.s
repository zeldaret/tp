lbl_8029A1B4:
/* 8029A1B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029A1B8  7C 08 02 A6 */	mflr r0
/* 8029A1BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029A1C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029A1C4  93 C1 00 08 */	stw r30, 8(r1)
/* 8029A1C8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8029A1CC  7C 9F 23 78 */	mr r31, r4
/* 8029A1D0  41 82 00 6C */	beq lbl_8029A23C
/* 8029A1D4  3C 60 80 3C */	lis r3, __vt__10JASWaveArc@ha /* 0x803C7820@ha */
/* 8029A1D8  38 03 78 20 */	addi r0, r3, __vt__10JASWaveArc@l /* 0x803C7820@l */
/* 8029A1DC  90 1E 00 00 */	stw r0, 0(r30)
/* 8029A1E0  34 1E 00 04 */	addic. r0, r30, 4
/* 8029A1E4  41 82 00 34 */	beq lbl_8029A218
/* 8029A1E8  34 1E 00 04 */	addic. r0, r30, 4
/* 8029A1EC  41 82 00 2C */	beq lbl_8029A218
/* 8029A1F0  34 1E 00 10 */	addic. r0, r30, 0x10
/* 8029A1F4  41 82 00 10 */	beq lbl_8029A204
/* 8029A1F8  38 7E 00 10 */	addi r3, r30, 0x10
/* 8029A1FC  38 80 00 00 */	li r4, 0
/* 8029A200  48 04 1C 15 */	bl __dt__10JSUPtrLinkFv
lbl_8029A204:
/* 8029A204  34 1E 00 04 */	addic. r0, r30, 4
/* 8029A208  41 82 00 10 */	beq lbl_8029A218
/* 8029A20C  38 7E 00 04 */	addi r3, r30, 4
/* 8029A210  38 80 00 00 */	li r4, 0
/* 8029A214  48 04 1C 99 */	bl __dt__10JSUPtrListFv
lbl_8029A218:
/* 8029A218  28 1E 00 00 */	cmplwi r30, 0
/* 8029A21C  41 82 00 10 */	beq lbl_8029A22C
/* 8029A220  3C 60 80 3C */	lis r3, __vt__11JASDisposer@ha /* 0x803C7838@ha */
/* 8029A224  38 03 78 38 */	addi r0, r3, __vt__11JASDisposer@l /* 0x803C7838@l */
/* 8029A228  90 1E 00 00 */	stw r0, 0(r30)
lbl_8029A22C:
/* 8029A22C  7F E0 07 35 */	extsh. r0, r31
/* 8029A230  40 81 00 0C */	ble lbl_8029A23C
/* 8029A234  7F C3 F3 78 */	mr r3, r30
/* 8029A238  48 03 4B 05 */	bl __dl__FPv
lbl_8029A23C:
/* 8029A23C  7F C3 F3 78 */	mr r3, r30
/* 8029A240  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029A244  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029A248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029A24C  7C 08 03 A6 */	mtlr r0
/* 8029A250  38 21 00 10 */	addi r1, r1, 0x10
/* 8029A254  4E 80 00 20 */	blr 
