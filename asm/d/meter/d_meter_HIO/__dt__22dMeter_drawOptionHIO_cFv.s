lbl_80200F98:
/* 80200F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80200F9C  7C 08 02 A6 */	mflr r0
/* 80200FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80200FA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80200FA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80200FAC  41 82 00 1C */	beq lbl_80200FC8
/* 80200FB0  3C A0 80 3C */	lis r5, __vt__22dMeter_drawOptionHIO_c@ha /* 0x803BF184@ha */
/* 80200FB4  38 05 F1 84 */	addi r0, r5, __vt__22dMeter_drawOptionHIO_c@l /* 0x803BF184@l */
/* 80200FB8  90 1F 00 00 */	stw r0, 0(r31)
/* 80200FBC  7C 80 07 35 */	extsh. r0, r4
/* 80200FC0  40 81 00 08 */	ble lbl_80200FC8
/* 80200FC4  48 0C DD 79 */	bl __dl__FPv
lbl_80200FC8:
/* 80200FC8  7F E3 FB 78 */	mr r3, r31
/* 80200FCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80200FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80200FD4  7C 08 03 A6 */	mtlr r0
/* 80200FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80200FDC  4E 80 00 20 */	blr 
