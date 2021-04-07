lbl_802D2040:
/* 802D2040  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D2044  7C 08 02 A6 */	mflr r0
/* 802D2048  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D204C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D2050  48 09 01 89 */	bl _savegpr_28
/* 802D2054  7C 7C 1B 78 */	mr r28, r3
/* 802D2058  7C 9D 23 78 */	mr r29, r4
/* 802D205C  7C BE 2B 78 */	mr r30, r5
/* 802D2060  38 80 0C 00 */	li r4, 0xc00
/* 802D2064  38 A0 00 10 */	li r5, 0x10
/* 802D2068  4B FF F5 01 */	bl __ct__9JKRThreadFUlii
/* 802D206C  3C 60 80 3D */	lis r3, __vt__7JKRAram@ha /* 0x803CC158@ha */
/* 802D2070  38 03 C1 58 */	addi r0, r3, __vt__7JKRAram@l /* 0x803CC158@l */
/* 802D2074  90 1C 00 00 */	stw r0, 0(r28)
/* 802D2078  38 7C 00 98 */	addi r3, r28, 0x98
/* 802D207C  38 80 00 03 */	li r4, 3
/* 802D2080  48 07 E6 AD */	bl ARInit
/* 802D2084  7C 7F 1B 78 */	mr r31, r3
/* 802D2088  48 08 01 DD */	bl ARQInit
/* 802D208C  48 07 E7 65 */	bl ARGetSize
/* 802D2090  93 BC 00 80 */	stw r29, 0x80(r28)
/* 802D2094  3C 1E 00 01 */	addis r0, r30, 1
/* 802D2098  28 00 FF FF */	cmplwi r0, 0xffff
/* 802D209C  40 82 00 1C */	bne lbl_802D20B8
/* 802D20A0  7C 1D 18 50 */	subf r0, r29, r3
/* 802D20A4  7C 1F 00 50 */	subf r0, r31, r0
/* 802D20A8  90 1C 00 88 */	stw r0, 0x88(r28)
/* 802D20AC  38 00 00 00 */	li r0, 0
/* 802D20B0  90 1C 00 90 */	stw r0, 0x90(r28)
/* 802D20B4  48 00 00 18 */	b lbl_802D20CC
lbl_802D20B8:
/* 802D20B8  93 DC 00 88 */	stw r30, 0x88(r28)
/* 802D20BC  7C 1D F2 14 */	add r0, r29, r30
/* 802D20C0  7C 00 18 50 */	subf r0, r0, r3
/* 802D20C4  7C 1F 00 50 */	subf r0, r31, r0
/* 802D20C8  90 1C 00 90 */	stw r0, 0x90(r28)
lbl_802D20CC:
/* 802D20CC  80 7C 00 80 */	lwz r3, 0x80(r28)
/* 802D20D0  48 07 E5 F5 */	bl ARAlloc
/* 802D20D4  90 7C 00 7C */	stw r3, 0x7c(r28)
/* 802D20D8  80 7C 00 88 */	lwz r3, 0x88(r28)
/* 802D20DC  48 07 E5 E9 */	bl ARAlloc
/* 802D20E0  90 7C 00 84 */	stw r3, 0x84(r28)
/* 802D20E4  80 7C 00 90 */	lwz r3, 0x90(r28)
/* 802D20E8  28 03 00 00 */	cmplwi r3, 0
/* 802D20EC  41 82 00 10 */	beq lbl_802D20FC
/* 802D20F0  48 07 E5 D5 */	bl ARAlloc
/* 802D20F4  90 7C 00 8C */	stw r3, 0x8c(r28)
/* 802D20F8  48 00 00 0C */	b lbl_802D2104
lbl_802D20FC:
/* 802D20FC  38 00 00 00 */	li r0, 0
/* 802D2100  90 1C 00 8C */	stw r0, 0x8c(r28)
lbl_802D2104:
/* 802D2104  38 60 00 44 */	li r3, 0x44
/* 802D2108  80 8D 8D F0 */	lwz r4, sSystemHeap__7JKRHeap(r13)
/* 802D210C  38 A0 00 00 */	li r5, 0
/* 802D2110  4B FF CB 89 */	bl __nw__FUlP7JKRHeapi
/* 802D2114  7C 60 1B 79 */	or. r0, r3, r3
/* 802D2118  41 82 00 14 */	beq lbl_802D212C
/* 802D211C  80 9C 00 84 */	lwz r4, 0x84(r28)
/* 802D2120  80 BC 00 88 */	lwz r5, 0x88(r28)
/* 802D2124  48 00 0D 21 */	bl __ct__11JKRAramHeapFUlUl
/* 802D2128  7C 60 1B 78 */	mr r0, r3
lbl_802D212C:
/* 802D212C  90 1C 00 94 */	stw r0, 0x94(r28)
/* 802D2130  7F 83 E3 78 */	mr r3, r28
/* 802D2134  39 61 00 20 */	addi r11, r1, 0x20
/* 802D2138  48 09 00 ED */	bl _restgpr_28
/* 802D213C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D2140  7C 08 03 A6 */	mtlr r0
/* 802D2144  38 21 00 20 */	addi r1, r1, 0x20
/* 802D2148  4E 80 00 20 */	blr 
