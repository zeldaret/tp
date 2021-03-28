lbl_802DC8C8:
/* 802DC8C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DC8CC  7C 08 02 A6 */	mflr r0
/* 802DC8D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DC8D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DC8D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 802DC8DC  41 82 00 1C */	beq lbl_802DC8F8
/* 802DC8E0  3C A0 80 3C */	lis r5, __vt__Q37JGadget6binary19TParse_header_block@ha
/* 802DC8E4  38 05 48 8C */	addi r0, r5, __vt__Q37JGadget6binary19TParse_header_block@l
/* 802DC8E8  90 1F 00 00 */	stw r0, 0(r31)
/* 802DC8EC  7C 80 07 35 */	extsh. r0, r4
/* 802DC8F0  40 81 00 08 */	ble lbl_802DC8F8
/* 802DC8F4  4B FF 24 49 */	bl __dl__FPv
lbl_802DC8F8:
/* 802DC8F8  7F E3 FB 78 */	mr r3, r31
/* 802DC8FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DC900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DC904  7C 08 03 A6 */	mtlr r0
/* 802DC908  38 21 00 10 */	addi r1, r1, 0x10
/* 802DC90C  4E 80 00 20 */	blr 
