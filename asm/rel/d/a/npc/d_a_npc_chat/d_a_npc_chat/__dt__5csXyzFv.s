lbl_80985DA8:
/* 80985DA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80985DAC  7C 08 02 A6 */	mflr r0
/* 80985DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80985DB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80985DB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80985DBC  41 82 00 10 */	beq lbl_80985DCC
/* 80985DC0  7C 80 07 35 */	extsh. r0, r4
/* 80985DC4  40 81 00 08 */	ble lbl_80985DCC
/* 80985DC8  4B 94 8F 75 */	bl __dl__FPv
lbl_80985DCC:
/* 80985DCC  7F E3 FB 78 */	mr r3, r31
/* 80985DD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80985DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80985DD8  7C 08 03 A6 */	mtlr r0
/* 80985DDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80985DE0  4E 80 00 20 */	blr 
