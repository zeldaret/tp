lbl_80BA5D74:
/* 80BA5D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA5D78  7C 08 02 A6 */	mflr r0
/* 80BA5D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA5D80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA5D84  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA5D88  41 82 00 1C */	beq lbl_80BA5DA4
/* 80BA5D8C  3C A0 80 BA */	lis r5, __vt__8cM3dGCyl@ha /* 0x80BA6E08@ha */
/* 80BA5D90  38 05 6E 08 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80BA6E08@l */
/* 80BA5D94  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BA5D98  7C 80 07 35 */	extsh. r0, r4
/* 80BA5D9C  40 81 00 08 */	ble lbl_80BA5DA4
/* 80BA5DA0  4B 72 8F 9D */	bl __dl__FPv
lbl_80BA5DA4:
/* 80BA5DA4  7F E3 FB 78 */	mr r3, r31
/* 80BA5DA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA5DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA5DB0  7C 08 03 A6 */	mtlr r0
/* 80BA5DB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA5DB8  4E 80 00 20 */	blr 
