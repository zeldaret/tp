lbl_80603F9C:
/* 80603F9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80603FA0  7C 08 02 A6 */	mflr r0
/* 80603FA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80603FA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80603FAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80603FB0  41 82 00 1C */	beq lbl_80603FCC
/* 80603FB4  3C A0 80 60 */	lis r5, __vt__12daB_GO_HIO_c@ha /* 0x8060412C@ha */
/* 80603FB8  38 05 41 2C */	addi r0, r5, __vt__12daB_GO_HIO_c@l /* 0x8060412C@l */
/* 80603FBC  90 1F 00 00 */	stw r0, 0(r31)
/* 80603FC0  7C 80 07 35 */	extsh. r0, r4
/* 80603FC4  40 81 00 08 */	ble lbl_80603FCC
/* 80603FC8  4B CC AD 75 */	bl __dl__FPv
lbl_80603FCC:
/* 80603FCC  7F E3 FB 78 */	mr r3, r31
/* 80603FD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80603FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80603FD8  7C 08 03 A6 */	mtlr r0
/* 80603FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80603FE0  4E 80 00 20 */	blr 
