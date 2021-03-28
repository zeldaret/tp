lbl_8004FC08:
/* 8004FC08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004FC0C  7C 08 02 A6 */	mflr r0
/* 8004FC10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004FC14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004FC18  93 C1 00 08 */	stw r30, 8(r1)
/* 8004FC1C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8004FC20  7C 9F 23 78 */	mr r31, r4
/* 8004FC24  41 82 00 28 */	beq lbl_8004FC4C
/* 8004FC28  3C 80 80 3B */	lis r4, __vt__19dPa_simpleEcallBack@ha
/* 8004FC2C  38 04 84 48 */	addi r0, r4, __vt__19dPa_simpleEcallBack@l
/* 8004FC30  90 1E 00 00 */	stw r0, 0(r30)
/* 8004FC34  38 80 00 00 */	li r4, 0
/* 8004FC38  48 22 EA 6D */	bl __dt__18JPAEmitterCallBackFv
/* 8004FC3C  7F E0 07 35 */	extsh. r0, r31
/* 8004FC40  40 81 00 0C */	ble lbl_8004FC4C
/* 8004FC44  7F C3 F3 78 */	mr r3, r30
/* 8004FC48  48 27 F0 F5 */	bl __dl__FPv
lbl_8004FC4C:
/* 8004FC4C  7F C3 F3 78 */	mr r3, r30
/* 8004FC50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004FC54  83 C1 00 08 */	lwz r30, 8(r1)
/* 8004FC58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004FC5C  7C 08 03 A6 */	mtlr r0
/* 8004FC60  38 21 00 10 */	addi r1, r1, 0x10
/* 8004FC64  4E 80 00 20 */	blr 
