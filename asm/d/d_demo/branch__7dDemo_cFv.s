lbl_80039D4C:
/* 80039D4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80039D50  7C 08 02 A6 */	mflr r0
/* 80039D54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80039D58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80039D5C  83 ED 88 84 */	lwz r31, m_control__7dDemo_c(r13)
/* 80039D60  7F E3 FB 78 */	mr r3, r31
/* 80039D64  48 24 F5 9D */	bl destroyObject_all__Q37JStudio3stb8TControlFv
/* 80039D68  38 7F 00 60 */	addi r3, r31, 0x60
/* 80039D6C  48 24 AA 65 */	bl destroyObject_all__Q37JStudio3fvb8TControlFv
/* 80039D70  38 7F 00 74 */	addi r3, r31, 0x74
/* 80039D74  48 24 73 B9 */	bl destroyObject_all__Q37JStudio3ctb8TControlFv
/* 80039D78  80 6D 88 C4 */	lwz r3, m_branchData__7dDemo_c(r13)
/* 80039D7C  38 00 00 00 */	li r0, 0
/* 80039D80  90 0D 88 C4 */	stw r0, m_branchData__7dDemo_c(r13)
/* 80039D84  80 8D 88 AC */	lwz r4, m_translation__7dDemo_c(r13)
/* 80039D88  C0 2D 88 B0 */	lfs f1, m_rotationY__7dDemo_c(r13)
/* 80039D8C  4B FF FD E1 */	bl start__7dDemo_cFPCUcP4cXyzf
/* 80039D90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80039D94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80039D98  7C 08 03 A6 */	mtlr r0
/* 80039D9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80039DA0  4E 80 00 20 */	blr 
