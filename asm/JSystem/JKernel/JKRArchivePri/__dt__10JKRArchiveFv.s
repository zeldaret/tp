lbl_802D6334:
/* 802D6334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6338  7C 08 02 A6 */	mflr r0
/* 802D633C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D6340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D6344  93 C1 00 08 */	stw r30, 8(r1)
/* 802D6348  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D634C  7C 9F 23 78 */	mr r31, r4
/* 802D6350  41 82 00 28 */	beq lbl_802D6378
/* 802D6354  3C 80 80 3D */	lis r4, __vt__10JKRArchive@ha /* 0x803CC288@ha */
/* 802D6358  38 04 C2 88 */	addi r0, r4, __vt__10JKRArchive@l /* 0x803CC288@l */
/* 802D635C  90 1E 00 00 */	stw r0, 0(r30)
/* 802D6360  38 80 00 00 */	li r4, 0
/* 802D6364  4B FF DD E5 */	bl __dt__13JKRFileLoaderFv
/* 802D6368  7F E0 07 35 */	extsh. r0, r31
/* 802D636C  40 81 00 0C */	ble lbl_802D6378
/* 802D6370  7F C3 F3 78 */	mr r3, r30
/* 802D6374  4B FF 89 C9 */	bl __dl__FPv
lbl_802D6378:
/* 802D6378  7F C3 F3 78 */	mr r3, r30
/* 802D637C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D6380  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D6384  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D6388  7C 08 03 A6 */	mtlr r0
/* 802D638C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6390  4E 80 00 20 */	blr 
