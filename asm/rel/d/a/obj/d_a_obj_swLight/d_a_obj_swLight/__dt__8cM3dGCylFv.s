lbl_80CF7D8C:
/* 80CF7D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF7D90  7C 08 02 A6 */	mflr r0
/* 80CF7D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF7D98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF7D9C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CF7DA0  41 82 00 1C */	beq lbl_80CF7DBC
/* 80CF7DA4  3C A0 80 D0 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80CF85B0@ha */
/* 80CF7DA8  38 05 85 B0 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80CF85B0@l */
/* 80CF7DAC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80CF7DB0  7C 80 07 35 */	extsh. r0, r4
/* 80CF7DB4  40 81 00 08 */	ble lbl_80CF7DBC
/* 80CF7DB8  4B 5D 6F 85 */	bl __dl__FPv
lbl_80CF7DBC:
/* 80CF7DBC  7F E3 FB 78 */	mr r3, r31
/* 80CF7DC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF7DC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF7DC8  7C 08 03 A6 */	mtlr r0
/* 80CF7DCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF7DD0  4E 80 00 20 */	blr 
