lbl_80C04E9C:
/* 80C04E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C04EA0  7C 08 02 A6 */	mflr r0
/* 80C04EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C04EA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C04EAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C04EB0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C04EB4  7C 9F 23 78 */	mr r31, r4
/* 80C04EB8  41 82 00 28 */	beq lbl_80C04EE0
/* 80C04EBC  3C 80 80 C1 */	lis r4, __vt__23daBaseNpc_moveBgActor_c@ha /* 0x80C107E8@ha */
/* 80C04EC0  38 04 07 E8 */	addi r0, r4, __vt__23daBaseNpc_moveBgActor_c@l /* 0x80C107E8@l */
/* 80C04EC4  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80C04EC8  38 80 00 00 */	li r4, 0
/* 80C04ECC  4B 54 99 D1 */	bl __dt__11daBaseNpc_cFv
/* 80C04ED0  7F E0 07 35 */	extsh. r0, r31
/* 80C04ED4  40 81 00 0C */	ble lbl_80C04EE0
/* 80C04ED8  7F C3 F3 78 */	mr r3, r30
/* 80C04EDC  4B 6C 9E 61 */	bl __dl__FPv
lbl_80C04EE0:
/* 80C04EE0  7F C3 F3 78 */	mr r3, r30
/* 80C04EE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C04EE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C04EEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C04EF0  7C 08 03 A6 */	mtlr r0
/* 80C04EF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C04EF8  4E 80 00 20 */	blr 
