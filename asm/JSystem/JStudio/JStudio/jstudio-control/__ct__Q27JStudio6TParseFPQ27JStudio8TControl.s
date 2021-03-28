lbl_8028566C:
/* 8028566C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80285670  7C 08 02 A6 */	mflr r0
/* 80285674  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285678  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028567C  7C 7F 1B 78 */	mr r31, r3
/* 80285680  48 00 3F C1 */	bl __ct__Q37JStudio3stb6TParseFPQ37JStudio3stb8TControl
/* 80285684  3C 60 80 3C */	lis r3, __vt__Q27JStudio6TParse@ha
/* 80285688  38 03 4A C0 */	addi r0, r3, __vt__Q27JStudio6TParse@l
/* 8028568C  90 1F 00 00 */	stw r0, 0(r31)
/* 80285690  7F E3 FB 78 */	mr r3, r31
/* 80285694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028569C  7C 08 03 A6 */	mtlr r0
/* 802856A0  38 21 00 10 */	addi r1, r1, 0x10
/* 802856A4  4E 80 00 20 */	blr 
