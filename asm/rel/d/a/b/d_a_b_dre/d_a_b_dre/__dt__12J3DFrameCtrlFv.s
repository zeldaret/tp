lbl_805C7D6C:
/* 805C7D6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C7D70  7C 08 02 A6 */	mflr r0
/* 805C7D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C7D78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C7D7C  7C 7F 1B 79 */	or. r31, r3, r3
/* 805C7D80  41 82 00 1C */	beq lbl_805C7D9C
/* 805C7D84  3C A0 80 5D */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x805CB028@ha */
/* 805C7D88  38 05 B0 28 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x805CB028@l */
/* 805C7D8C  90 1F 00 00 */	stw r0, 0(r31)
/* 805C7D90  7C 80 07 35 */	extsh. r0, r4
/* 805C7D94  40 81 00 08 */	ble lbl_805C7D9C
/* 805C7D98  4B D0 6F A5 */	bl __dl__FPv
lbl_805C7D9C:
/* 805C7D9C  7F E3 FB 78 */	mr r3, r31
/* 805C7DA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C7DA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C7DA8  7C 08 03 A6 */	mtlr r0
/* 805C7DAC  38 21 00 10 */	addi r1, r1, 0x10
/* 805C7DB0  4E 80 00 20 */	blr 
