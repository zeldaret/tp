lbl_806C6F98:
/* 806C6F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C6F9C  7C 08 02 A6 */	mflr r0
/* 806C6FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C6FA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C6FA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 806C6FAC  41 82 00 1C */	beq lbl_806C6FC8
/* 806C6FB0  3C A0 80 6C */	lis r5, __vt__12daE_GB_HIO_c@ha
/* 806C6FB4  38 05 79 14 */	addi r0, r5, __vt__12daE_GB_HIO_c@l
/* 806C6FB8  90 1F 00 00 */	stw r0, 0(r31)
/* 806C6FBC  7C 80 07 35 */	extsh. r0, r4
/* 806C6FC0  40 81 00 08 */	ble lbl_806C6FC8
/* 806C6FC4  4B C0 7D 78 */	b __dl__FPv
lbl_806C6FC8:
/* 806C6FC8  7F E3 FB 78 */	mr r3, r31
/* 806C6FCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C6FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C6FD4  7C 08 03 A6 */	mtlr r0
/* 806C6FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 806C6FDC  4E 80 00 20 */	blr 
