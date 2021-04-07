lbl_80B0C104:
/* 80B0C104  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0C108  7C 08 02 A6 */	mflr r0
/* 80B0C10C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0C110  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0C114  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B0C118  41 82 00 1C */	beq lbl_80B0C134
/* 80B0C11C  3C A0 80 B1 */	lis r5, __vt__14daNPC_TK_HIO_c@ha /* 0x80B0C5A0@ha */
/* 80B0C120  38 05 C5 A0 */	addi r0, r5, __vt__14daNPC_TK_HIO_c@l /* 0x80B0C5A0@l */
/* 80B0C124  90 1F 00 00 */	stw r0, 0(r31)
/* 80B0C128  7C 80 07 35 */	extsh. r0, r4
/* 80B0C12C  40 81 00 08 */	ble lbl_80B0C134
/* 80B0C130  4B 7C 2C 0D */	bl __dl__FPv
lbl_80B0C134:
/* 80B0C134  7F E3 FB 78 */	mr r3, r31
/* 80B0C138  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B0C13C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0C140  7C 08 03 A6 */	mtlr r0
/* 80B0C144  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0C148  4E 80 00 20 */	blr 
