lbl_80288084:
/* 80288084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80288088  7C 08 02 A6 */	mflr r0
/* 8028808C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80288090  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80288094  93 C1 00 08 */	stw r30, 8(r1)
/* 80288098  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028809C  7C 9F 23 78 */	mr r31, r4
/* 802880A0  41 82 00 28 */	beq lbl_802880C8
/* 802880A4  3C 80 80 3C */	lis r4, __vt__Q27JStudio11TObject_fog@ha /* 0x803C54A4@ha */
/* 802880A8  38 04 54 A4 */	addi r0, r4, __vt__Q27JStudio11TObject_fog@l /* 0x803C54A4@l */
/* 802880AC  90 1E 00 08 */	stw r0, 8(r30)
/* 802880B0  38 80 00 00 */	li r4, 0
/* 802880B4  4B FF E5 FD */	bl __dt__Q27JStudio7TObjectFv
/* 802880B8  7F E0 07 35 */	extsh. r0, r31
/* 802880BC  40 81 00 0C */	ble lbl_802880C8
/* 802880C0  7F C3 F3 78 */	mr r3, r30
/* 802880C4  48 04 6C 79 */	bl __dl__FPv
lbl_802880C8:
/* 802880C8  7F C3 F3 78 */	mr r3, r30
/* 802880CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802880D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802880D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802880D8  7C 08 03 A6 */	mtlr r0
/* 802880DC  38 21 00 10 */	addi r1, r1, 0x10
/* 802880E0  4E 80 00 20 */	blr 
