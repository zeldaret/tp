lbl_80B0D0D8:
/* 80B0D0D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0D0DC  7C 08 02 A6 */	mflr r0
/* 80B0D0E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0D0E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0D0E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B0D0EC  41 82 00 10 */	beq lbl_80B0D0FC
/* 80B0D0F0  7C 80 07 35 */	extsh. r0, r4
/* 80B0D0F4  40 81 00 08 */	ble lbl_80B0D0FC
/* 80B0D0F8  4B 7C 1C 44 */	b __dl__FPv
lbl_80B0D0FC:
/* 80B0D0FC  7F E3 FB 78 */	mr r3, r31
/* 80B0D100  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B0D104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0D108  7C 08 03 A6 */	mtlr r0
/* 80B0D10C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0D110  4E 80 00 20 */	blr 
