lbl_806BB594:
/* 806BB594  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BB598  7C 08 02 A6 */	mflr r0
/* 806BB59C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BB5A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BB5A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 806BB5A8  41 82 00 1C */	beq lbl_806BB5C4
/* 806BB5AC  3C A0 80 6C */	lis r5, __vt__12daE_FK_HIO_c@ha /* 0x806BB8B8@ha */
/* 806BB5B0  38 05 B8 B8 */	addi r0, r5, __vt__12daE_FK_HIO_c@l /* 0x806BB8B8@l */
/* 806BB5B4  90 1F 00 00 */	stw r0, 0(r31)
/* 806BB5B8  7C 80 07 35 */	extsh. r0, r4
/* 806BB5BC  40 81 00 08 */	ble lbl_806BB5C4
/* 806BB5C0  4B C1 37 7D */	bl __dl__FPv
lbl_806BB5C4:
/* 806BB5C4  7F E3 FB 78 */	mr r3, r31
/* 806BB5C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BB5CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BB5D0  7C 08 03 A6 */	mtlr r0
/* 806BB5D4  38 21 00 10 */	addi r1, r1, 0x10
/* 806BB5D8  4E 80 00 20 */	blr 
