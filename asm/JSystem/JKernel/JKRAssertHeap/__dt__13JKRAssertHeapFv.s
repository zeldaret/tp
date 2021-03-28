lbl_802D1300:
/* 802D1300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D1304  7C 08 02 A6 */	mflr r0
/* 802D1308  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D130C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D1310  93 C1 00 08 */	stw r30, 8(r1)
/* 802D1314  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D1318  7C 9F 23 78 */	mr r31, r4
/* 802D131C  41 82 00 30 */	beq lbl_802D134C
/* 802D1320  3C 80 80 3D */	lis r4, __vt__13JKRAssertHeap@ha
/* 802D1324  38 04 C0 90 */	addi r0, r4, __vt__13JKRAssertHeap@l
/* 802D1328  90 1E 00 00 */	stw r0, 0(r30)
/* 802D132C  4B FF D7 95 */	bl dispose__7JKRHeapFv
/* 802D1330  7F C3 F3 78 */	mr r3, r30
/* 802D1334  38 80 00 00 */	li r4, 0
/* 802D1338  4B FF CF 2D */	bl __dt__7JKRHeapFv
/* 802D133C  7F E0 07 35 */	extsh. r0, r31
/* 802D1340  40 81 00 0C */	ble lbl_802D134C
/* 802D1344  7F C3 F3 78 */	mr r3, r30
/* 802D1348  4B FF D9 F5 */	bl __dl__FPv
lbl_802D134C:
/* 802D134C  7F C3 F3 78 */	mr r3, r30
/* 802D1350  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D1354  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D1358  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D135C  7C 08 03 A6 */	mtlr r0
/* 802D1360  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1364  4E 80 00 20 */	blr 
