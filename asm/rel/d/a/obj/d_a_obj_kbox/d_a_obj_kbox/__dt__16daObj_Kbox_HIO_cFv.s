lbl_80C3EF98:
/* 80C3EF98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3EF9C  7C 08 02 A6 */	mflr r0
/* 80C3EFA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3EFA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3EFA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C3EFAC  41 82 00 1C */	beq lbl_80C3EFC8
/* 80C3EFB0  3C A0 80 C4 */	lis r5, __vt__16daObj_Kbox_HIO_c@ha /* 0x80C3F230@ha */
/* 80C3EFB4  38 05 F2 30 */	addi r0, r5, __vt__16daObj_Kbox_HIO_c@l /* 0x80C3F230@l */
/* 80C3EFB8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C3EFBC  7C 80 07 35 */	extsh. r0, r4
/* 80C3EFC0  40 81 00 08 */	ble lbl_80C3EFC8
/* 80C3EFC4  4B 68 FD 79 */	bl __dl__FPv
lbl_80C3EFC8:
/* 80C3EFC8  7F E3 FB 78 */	mr r3, r31
/* 80C3EFCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3EFD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3EFD4  7C 08 03 A6 */	mtlr r0
/* 80C3EFD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3EFDC  4E 80 00 20 */	blr 
