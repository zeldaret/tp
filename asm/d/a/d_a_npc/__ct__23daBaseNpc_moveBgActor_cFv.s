lbl_8014F4B4:
/* 8014F4B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014F4B8  7C 08 02 A6 */	mflr r0
/* 8014F4BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014F4C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014F4C4  7C 7F 1B 78 */	mr r31, r3
/* 8014F4C8  4B FF F2 01 */	bl __ct__11daBaseNpc_cFv
/* 8014F4CC  3C 60 80 3B */	lis r3, __vt__23daBaseNpc_moveBgActor_c@ha /* 0x803B3948@ha */
/* 8014F4D0  38 03 39 48 */	addi r0, r3, __vt__23daBaseNpc_moveBgActor_c@l /* 0x803B3948@l */
/* 8014F4D4  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8014F4D8  38 00 00 00 */	li r0, 0
/* 8014F4DC  90 1F 0A 14 */	stw r0, 0xa14(r31)
/* 8014F4E0  7F E3 FB 78 */	mr r3, r31
/* 8014F4E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014F4E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014F4EC  7C 08 03 A6 */	mtlr r0
/* 8014F4F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8014F4F4  4E 80 00 20 */	blr 
