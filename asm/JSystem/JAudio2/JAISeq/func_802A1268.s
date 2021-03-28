lbl_802A1268:
/* 802A1268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A126C  7C 08 02 A6 */	mflr r0
/* 802A1270  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A1274  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A1278  93 C1 00 08 */	stw r30, 8(r1)
/* 802A127C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A1280  7C 9F 23 78 */	mr r31, r4
/* 802A1284  41 82 00 1C */	beq lbl_802A12A0
/* 802A1288  38 80 00 00 */	li r4, 0
/* 802A128C  4B FE F5 D5 */	bl __dt__17JASGenericMemPoolFv
/* 802A1290  7F E0 07 35 */	extsh. r0, r31
/* 802A1294  40 81 00 0C */	ble lbl_802A12A0
/* 802A1298  7F C3 F3 78 */	mr r3, r30
/* 802A129C  48 02 DA A1 */	bl __dl__FPv
lbl_802A12A0:
/* 802A12A0  7F C3 F3 78 */	mr r3, r30
/* 802A12A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A12A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A12AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A12B0  7C 08 03 A6 */	mtlr r0
/* 802A12B4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A12B8  4E 80 00 20 */	blr 
