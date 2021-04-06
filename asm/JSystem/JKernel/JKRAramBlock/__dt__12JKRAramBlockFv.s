lbl_802D3378:
/* 802D3378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D337C  7C 08 02 A6 */	mflr r0
/* 802D3380  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D3384  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D3388  93 C1 00 08 */	stw r30, 8(r1)
/* 802D338C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D3390  7C 9F 23 78 */	mr r31, r4
/* 802D3394  41 82 00 84 */	beq lbl_802D3418
/* 802D3398  3C 60 80 3D */	lis r3, __vt__12JKRAramBlock@ha /* 0x803CC178@ha */
/* 802D339C  38 03 C1 78 */	addi r0, r3, __vt__12JKRAramBlock@l /* 0x803CC178@l */
/* 802D33A0  90 1E 00 00 */	stw r0, 0(r30)
/* 802D33A4  80 7E 00 08 */	lwz r3, 8(r30)
/* 802D33A8  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802D33AC  28 04 00 00 */	cmplwi r4, 0
/* 802D33B0  41 82 00 2C */	beq lbl_802D33DC
/* 802D33B4  80 C4 00 00 */	lwz r6, 0(r4)
/* 802D33B8  80 A6 00 1C */	lwz r5, 0x1c(r6)
/* 802D33BC  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 802D33C0  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 802D33C4  7C 00 2A 14 */	add r0, r0, r5
/* 802D33C8  7C 04 02 14 */	add r0, r4, r0
/* 802D33CC  90 06 00 1C */	stw r0, 0x1c(r6)
/* 802D33D0  38 9E 00 04 */	addi r4, r30, 4
/* 802D33D4  48 00 8D 89 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802D33D8  48 00 00 1C */	b lbl_802D33F4
lbl_802D33DC:
/* 802D33DC  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 802D33E0  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 802D33E4  7C 03 02 14 */	add r0, r3, r0
/* 802D33E8  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 802D33EC  38 00 00 00 */	li r0, 0
/* 802D33F0  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_802D33F4:
/* 802D33F4  34 1E 00 04 */	addic. r0, r30, 4
/* 802D33F8  41 82 00 10 */	beq lbl_802D3408
/* 802D33FC  38 7E 00 04 */	addi r3, r30, 4
/* 802D3400  38 80 00 00 */	li r4, 0
/* 802D3404  48 00 8A 11 */	bl __dt__10JSUPtrLinkFv
lbl_802D3408:
/* 802D3408  7F E0 07 35 */	extsh. r0, r31
/* 802D340C  40 81 00 0C */	ble lbl_802D3418
/* 802D3410  7F C3 F3 78 */	mr r3, r30
/* 802D3414  4B FF B9 29 */	bl __dl__FPv
lbl_802D3418:
/* 802D3418  7F C3 F3 78 */	mr r3, r30
/* 802D341C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D3420  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D3424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D3428  7C 08 03 A6 */	mtlr r0
/* 802D342C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D3430  4E 80 00 20 */	blr 
