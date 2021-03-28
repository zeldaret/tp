lbl_80155FB0:
/* 80155FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80155FB4  7C 08 02 A6 */	mflr r0
/* 80155FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80155FBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80155FC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80155FC4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80155FC8  7C 9F 23 78 */	mr r31, r4
/* 80155FCC  41 82 00 28 */	beq lbl_80155FF4
/* 80155FD0  3C 80 80 3B */	lis r4, __vt__23daBaseNpc_moveBgActor_c@ha
/* 80155FD4  38 04 39 48 */	addi r0, r4, __vt__23daBaseNpc_moveBgActor_c@l
/* 80155FD8  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80155FDC  38 80 00 00 */	li r4, 0
/* 80155FE0  4B FF 88 BD */	bl __dt__11daBaseNpc_cFv
/* 80155FE4  7F E0 07 35 */	extsh. r0, r31
/* 80155FE8  40 81 00 0C */	ble lbl_80155FF4
/* 80155FEC  7F C3 F3 78 */	mr r3, r30
/* 80155FF0  48 17 8D 4D */	bl __dl__FPv
lbl_80155FF4:
/* 80155FF4  7F C3 F3 78 */	mr r3, r30
/* 80155FF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80155FFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80156000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80156004  7C 08 03 A6 */	mtlr r0
/* 80156008  38 21 00 10 */	addi r1, r1, 0x10
/* 8015600C  4E 80 00 20 */	blr 
