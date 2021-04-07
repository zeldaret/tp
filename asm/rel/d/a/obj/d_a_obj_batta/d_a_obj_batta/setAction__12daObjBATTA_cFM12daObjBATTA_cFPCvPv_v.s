lbl_80BA9E5C:
/* 80BA9E5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA9E60  7C 08 02 A6 */	mflr r0
/* 80BA9E64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA9E68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA9E6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA9E70  7C 7E 1B 78 */	mr r30, r3
/* 80BA9E74  7C 9F 23 78 */	mr r31, r4
/* 80BA9E78  38 7E 09 D0 */	addi r3, r30, 0x9d0
/* 80BA9E7C  4B 7B 81 9D */	bl __ptmf_test
/* 80BA9E80  2C 03 00 00 */	cmpwi r3, 0
/* 80BA9E84  41 82 00 1C */	beq lbl_80BA9EA0
/* 80BA9E88  38 00 FF FF */	li r0, -1
/* 80BA9E8C  90 1E 09 E8 */	stw r0, 0x9e8(r30)
/* 80BA9E90  7F C3 F3 78 */	mr r3, r30
/* 80BA9E94  39 9E 09 D0 */	addi r12, r30, 0x9d0
/* 80BA9E98  4B 7B 81 ED */	bl __ptmf_scall
/* 80BA9E9C  60 00 00 00 */	nop 
lbl_80BA9EA0:
/* 80BA9EA0  80 7E 09 D0 */	lwz r3, 0x9d0(r30)
/* 80BA9EA4  80 1E 09 D4 */	lwz r0, 0x9d4(r30)
/* 80BA9EA8  90 7E 09 DC */	stw r3, 0x9dc(r30)
/* 80BA9EAC  90 1E 09 E0 */	stw r0, 0x9e0(r30)
/* 80BA9EB0  80 1E 09 D8 */	lwz r0, 0x9d8(r30)
/* 80BA9EB4  90 1E 09 E4 */	stw r0, 0x9e4(r30)
/* 80BA9EB8  80 7F 00 00 */	lwz r3, 0(r31)
/* 80BA9EBC  80 1F 00 04 */	lwz r0, 4(r31)
/* 80BA9EC0  90 7E 09 D0 */	stw r3, 0x9d0(r30)
/* 80BA9EC4  90 1E 09 D4 */	stw r0, 0x9d4(r30)
/* 80BA9EC8  80 1F 00 08 */	lwz r0, 8(r31)
/* 80BA9ECC  90 1E 09 D8 */	stw r0, 0x9d8(r30)
/* 80BA9ED0  38 00 00 00 */	li r0, 0
/* 80BA9ED4  90 1E 09 E8 */	stw r0, 0x9e8(r30)
/* 80BA9ED8  7F C3 F3 78 */	mr r3, r30
/* 80BA9EDC  39 9E 09 D0 */	addi r12, r30, 0x9d0
/* 80BA9EE0  4B 7B 81 A5 */	bl __ptmf_scall
/* 80BA9EE4  60 00 00 00 */	nop 
/* 80BA9EE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA9EEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA9EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA9EF4  7C 08 03 A6 */	mtlr r0
/* 80BA9EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA9EFC  4E 80 00 20 */	blr 
