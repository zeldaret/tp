lbl_80200DA0:
/* 80200DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80200DA4  7C 08 02 A6 */	mflr r0
/* 80200DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80200DAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80200DB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80200DB4  41 82 00 1C */	beq lbl_80200DD0
/* 80200DB8  3C A0 80 3C */	lis r5, __vt__25dMeter_drawEmpButtonHIO_c@ha /* 0x803BF13C@ha */
/* 80200DBC  38 05 F1 3C */	addi r0, r5, __vt__25dMeter_drawEmpButtonHIO_c@l /* 0x803BF13C@l */
/* 80200DC0  90 1F 00 00 */	stw r0, 0(r31)
/* 80200DC4  7C 80 07 35 */	extsh. r0, r4
/* 80200DC8  40 81 00 08 */	ble lbl_80200DD0
/* 80200DCC  48 0C DF 71 */	bl __dl__FPv
lbl_80200DD0:
/* 80200DD0  7F E3 FB 78 */	mr r3, r31
/* 80200DD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80200DD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80200DDC  7C 08 03 A6 */	mtlr r0
/* 80200DE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80200DE4  4E 80 00 20 */	blr 
