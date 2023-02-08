lbl_80CF7F24:
/* 80CF7F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF7F28  7C 08 02 A6 */	mflr r0
/* 80CF7F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF7F30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF7F34  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CF7F38  41 82 00 1C */	beq lbl_80CF7F54
/* 80CF7F3C  3C A0 80 D0 */	lis r5, __vt__8cM3dGSph@ha /* 0x80CF85BC@ha */
/* 80CF7F40  38 05 85 BC */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80CF85BC@l */
/* 80CF7F44  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80CF7F48  7C 80 07 35 */	extsh. r0, r4
/* 80CF7F4C  40 81 00 08 */	ble lbl_80CF7F54
/* 80CF7F50  4B 5D 6D ED */	bl __dl__FPv
lbl_80CF7F54:
/* 80CF7F54  7F E3 FB 78 */	mr r3, r31
/* 80CF7F58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF7F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF7F60  7C 08 03 A6 */	mtlr r0
/* 80CF7F64  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF7F68  4E 80 00 20 */	blr 
