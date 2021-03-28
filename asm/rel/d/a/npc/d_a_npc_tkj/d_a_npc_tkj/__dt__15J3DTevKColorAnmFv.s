lbl_80573DAC:
/* 80573DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80573DB0  7C 08 02 A6 */	mflr r0
/* 80573DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80573DB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80573DBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80573DC0  41 82 00 10 */	beq lbl_80573DD0
/* 80573DC4  7C 80 07 35 */	extsh. r0, r4
/* 80573DC8  40 81 00 08 */	ble lbl_80573DD0
/* 80573DCC  4B D5 AF 70 */	b __dl__FPv
lbl_80573DD0:
/* 80573DD0  7F E3 FB 78 */	mr r3, r31
/* 80573DD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80573DD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80573DDC  7C 08 03 A6 */	mtlr r0
/* 80573DE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80573DE4  4E 80 00 20 */	blr 
