lbl_80281274:
/* 80281274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80281278  7C 08 02 A6 */	mflr r0
/* 8028127C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80281280  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80281284  7C 7F 1B 79 */	or. r31, r3, r3
/* 80281288  41 82 00 1C */	beq lbl_802812A4
/* 8028128C  3C A0 80 3C */	lis r5, __vt__Q37JStudio3ctb8TFactory@ha
/* 80281290  38 05 48 A0 */	addi r0, r5, __vt__Q37JStudio3ctb8TFactory@l
/* 80281294  90 1F 00 00 */	stw r0, 0(r31)
/* 80281298  7C 80 07 35 */	extsh. r0, r4
/* 8028129C  40 81 00 08 */	ble lbl_802812A4
/* 802812A0  48 04 DA 9D */	bl __dl__FPv
lbl_802812A4:
/* 802812A4  7F E3 FB 78 */	mr r3, r31
/* 802812A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802812AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802812B0  7C 08 03 A6 */	mtlr r0
/* 802812B4  38 21 00 10 */	addi r1, r1, 0x10
/* 802812B8  4E 80 00 20 */	blr 
