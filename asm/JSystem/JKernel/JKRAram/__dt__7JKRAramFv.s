lbl_802D214C:
/* 802D214C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D2150  7C 08 02 A6 */	mflr r0
/* 802D2154  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D2158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D215C  93 C1 00 08 */	stw r30, 8(r1)
/* 802D2160  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D2164  7C 9F 23 78 */	mr r31, r4
/* 802D2168  41 82 00 58 */	beq lbl_802D21C0
/* 802D216C  3C 60 80 3D */	lis r3, __vt__7JKRAram@ha /* 0x803CC158@ha */
/* 802D2170  38 03 C1 58 */	addi r0, r3, __vt__7JKRAram@l /* 0x803CC158@l */
/* 802D2174  90 1E 00 00 */	stw r0, 0(r30)
/* 802D2178  38 00 00 00 */	li r0, 0
/* 802D217C  90 0D 8E 48 */	stw r0, sAramObject__7JKRAram(r13)
/* 802D2180  80 7E 00 94 */	lwz r3, 0x94(r30)
/* 802D2184  28 03 00 00 */	cmplwi r3, 0
/* 802D2188  41 82 00 1C */	beq lbl_802D21A4
/* 802D218C  41 82 00 18 */	beq lbl_802D21A4
/* 802D2190  38 80 00 01 */	li r4, 1
/* 802D2194  81 83 00 00 */	lwz r12, 0(r3)
/* 802D2198  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D219C  7D 89 03 A6 */	mtctr r12
/* 802D21A0  4E 80 04 21 */	bctrl 
lbl_802D21A4:
/* 802D21A4  7F C3 F3 78 */	mr r3, r30
/* 802D21A8  38 80 00 00 */	li r4, 0
/* 802D21AC  4B FF F5 AD */	bl __dt__9JKRThreadFv
/* 802D21B0  7F E0 07 35 */	extsh. r0, r31
/* 802D21B4  40 81 00 0C */	ble lbl_802D21C0
/* 802D21B8  7F C3 F3 78 */	mr r3, r30
/* 802D21BC  4B FF CB 81 */	bl __dl__FPv
lbl_802D21C0:
/* 802D21C0  7F C3 F3 78 */	mr r3, r30
/* 802D21C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D21C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D21CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D21D0  7C 08 03 A6 */	mtlr r0
/* 802D21D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802D21D8  4E 80 00 20 */	blr 
