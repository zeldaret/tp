lbl_802E4DE8:
/* 802E4DE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E4DEC  7C 08 02 A6 */	mflr r0
/* 802E4DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E4DF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E4DF8  93 C1 00 08 */	stw r30, 8(r1)
/* 802E4DFC  7C 7E 1B 79 */	or. r30, r3, r3
/* 802E4E00  7C 9F 23 78 */	mr r31, r4
/* 802E4E04  41 82 00 30 */	beq lbl_802E4E34
/* 802E4E08  3C 60 80 3D */	lis r3, __vt__8JUTVideo@ha /* 0x803CC980@ha */
/* 802E4E0C  38 03 C9 80 */	addi r0, r3, __vt__8JUTVideo@l /* 0x803CC980@l */
/* 802E4E10  90 1E 00 00 */	stw r0, 0(r30)
/* 802E4E14  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 802E4E18  48 06 73 C9 */	bl VISetPreRetraceCallback
/* 802E4E1C  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 802E4E20  48 06 74 05 */	bl VISetPostRetraceCallback
/* 802E4E24  7F E0 07 35 */	extsh. r0, r31
/* 802E4E28  40 81 00 0C */	ble lbl_802E4E34
/* 802E4E2C  7F C3 F3 78 */	mr r3, r30
/* 802E4E30  4B FE 9F 0D */	bl __dl__FPv
lbl_802E4E34:
/* 802E4E34  7F C3 F3 78 */	mr r3, r30
/* 802E4E38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E4E3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E4E40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E4E44  7C 08 03 A6 */	mtlr r0
/* 802E4E48  38 21 00 10 */	addi r1, r1, 0x10
/* 802E4E4C  4E 80 00 20 */	blr 
