lbl_802AB200:
/* 802AB200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AB204  7C 08 02 A6 */	mflr r0
/* 802AB208  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AB20C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AB210  93 C1 00 08 */	stw r30, 8(r1)
/* 802AB214  7C 7E 1B 79 */	or. r30, r3, r3
/* 802AB218  7C 9F 23 78 */	mr r31, r4
/* 802AB21C  41 82 00 1C */	beq lbl_802AB238
/* 802AB220  38 80 00 00 */	li r4, 0
/* 802AB224  4B FE 56 3D */	bl __dt__17JASGenericMemPoolFv
/* 802AB228  7F E0 07 35 */	extsh. r0, r31
/* 802AB22C  40 81 00 0C */	ble lbl_802AB238
/* 802AB230  7F C3 F3 78 */	mr r3, r30
/* 802AB234  48 02 3B 09 */	bl __dl__FPv
lbl_802AB238:
/* 802AB238  7F C3 F3 78 */	mr r3, r30
/* 802AB23C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AB240  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AB244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AB248  7C 08 03 A6 */	mtlr r0
/* 802AB24C  38 21 00 10 */	addi r1, r1, 0x10
/* 802AB250  4E 80 00 20 */	blr 
