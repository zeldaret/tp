lbl_80BC3F90:
/* 80BC3F90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC3F94  7C 08 02 A6 */	mflr r0
/* 80BC3F98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC3F9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC3FA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BC3FA4  41 82 00 30 */	beq lbl_80BC3FD4
/* 80BC3FA8  3C 60 80 BC */	lis r3, __vt__17daBubbPilar_HIO_c@ha /* 0x80BC41F8@ha */
/* 80BC3FAC  38 03 41 F8 */	addi r0, r3, __vt__17daBubbPilar_HIO_c@l /* 0x80BC41F8@l */
/* 80BC3FB0  90 1F 00 00 */	stw r0, 0(r31)
/* 80BC3FB4  41 82 00 10 */	beq lbl_80BC3FC4
/* 80BC3FB8  3C 60 80 BC */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80BC4204@ha */
/* 80BC3FBC  38 03 42 04 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80BC4204@l */
/* 80BC3FC0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BC3FC4:
/* 80BC3FC4  7C 80 07 35 */	extsh. r0, r4
/* 80BC3FC8  40 81 00 0C */	ble lbl_80BC3FD4
/* 80BC3FCC  7F E3 FB 78 */	mr r3, r31
/* 80BC3FD0  4B 70 AD 6D */	bl __dl__FPv
lbl_80BC3FD4:
/* 80BC3FD4  7F E3 FB 78 */	mr r3, r31
/* 80BC3FD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC3FDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC3FE0  7C 08 03 A6 */	mtlr r0
/* 80BC3FE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC3FE8  4E 80 00 20 */	blr 
