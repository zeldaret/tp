lbl_802D14E4:
/* 802D14E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D14E8  7C 08 02 A6 */	mflr r0
/* 802D14EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D14F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D14F4  93 C1 00 08 */	stw r30, 8(r1)
/* 802D14F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D14FC  7C 9F 23 78 */	mr r31, r4
/* 802D1500  41 82 00 4C */	beq lbl_802D154C
/* 802D1504  3C 60 80 3D */	lis r3, __vt__11JKRDisposer@ha /* 0x803CC0F0@ha */
/* 802D1508  38 03 C0 F0 */	addi r0, r3, __vt__11JKRDisposer@l /* 0x803CC0F0@l */
/* 802D150C  90 1E 00 00 */	stw r0, 0(r30)
/* 802D1510  80 7E 00 04 */	lwz r3, 4(r30)
/* 802D1514  28 03 00 00 */	cmplwi r3, 0
/* 802D1518  41 82 00 10 */	beq lbl_802D1528
/* 802D151C  38 63 00 5C */	addi r3, r3, 0x5c
/* 802D1520  38 9E 00 08 */	addi r4, r30, 8
/* 802D1524  48 00 AC 39 */	bl remove__10JSUPtrListFP10JSUPtrLink
lbl_802D1528:
/* 802D1528  34 1E 00 08 */	addic. r0, r30, 8
/* 802D152C  41 82 00 10 */	beq lbl_802D153C
/* 802D1530  38 7E 00 08 */	addi r3, r30, 8
/* 802D1534  38 80 00 00 */	li r4, 0
/* 802D1538  48 00 A8 DD */	bl __dt__10JSUPtrLinkFv
lbl_802D153C:
/* 802D153C  7F E0 07 35 */	extsh. r0, r31
/* 802D1540  40 81 00 0C */	ble lbl_802D154C
/* 802D1544  7F C3 F3 78 */	mr r3, r30
/* 802D1548  4B FF D7 F5 */	bl __dl__FPv
lbl_802D154C:
/* 802D154C  7F C3 F3 78 */	mr r3, r30
/* 802D1550  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D1554  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D1558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D155C  7C 08 03 A6 */	mtlr r0
/* 802D1560  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1564  4E 80 00 20 */	blr 
