lbl_80285488:
/* 80285488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028548C  7C 08 02 A6 */	mflr r0
/* 80285490  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285494  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80285498  7C 7F 1B 79 */	or. r31, r3, r3
/* 8028549C  41 82 00 1C */	beq lbl_802854B8
/* 802854A0  3C A0 80 3A */	lis r5, __vt__Q27JStudio13TCreateObject@ha
/* 802854A4  38 05 79 34 */	addi r0, r5, __vt__Q27JStudio13TCreateObject@l
/* 802854A8  90 1F 00 00 */	stw r0, 0(r31)
/* 802854AC  7C 80 07 35 */	extsh. r0, r4
/* 802854B0  40 81 00 08 */	ble lbl_802854B8
/* 802854B4  48 04 98 89 */	bl __dl__FPv
lbl_802854B8:
/* 802854B8  7F E3 FB 78 */	mr r3, r31
/* 802854BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802854C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802854C4  7C 08 03 A6 */	mtlr r0
/* 802854C8  38 21 00 10 */	addi r1, r1, 0x10
/* 802854CC  4E 80 00 20 */	blr 
