lbl_80756D90:
/* 80756D90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80756D94  7C 08 02 A6 */	mflr r0
/* 80756D98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80756D9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80756DA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80756DA4  41 82 00 1C */	beq lbl_80756DC0
/* 80756DA8  3C A0 80 75 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80757D5C@ha */
/* 80756DAC  38 05 7D 5C */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80757D5C@l */
/* 80756DB0  90 1F 00 00 */	stw r0, 0(r31)
/* 80756DB4  7C 80 07 35 */	extsh. r0, r4
/* 80756DB8  40 81 00 08 */	ble lbl_80756DC0
/* 80756DBC  4B B7 7F 81 */	bl __dl__FPv
lbl_80756DC0:
/* 80756DC0  7F E3 FB 78 */	mr r3, r31
/* 80756DC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80756DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80756DCC  7C 08 03 A6 */	mtlr r0
/* 80756DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80756DD4  4E 80 00 20 */	blr 
