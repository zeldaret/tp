lbl_80675F8C:
/* 80675F8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80675F90  7C 08 02 A6 */	mflr r0
/* 80675F94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80675F98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80675F9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80675FA0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80675FA4  7C 9F 23 78 */	mr r31, r4
/* 80675FA8  41 82 00 40 */	beq lbl_80675FE8
/* 80675FAC  3C 80 80 67 */	lis r4, __vt__14dBgS_ObjGndChk@ha
/* 80675FB0  38 84 7C C8 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l
/* 80675FB4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80675FB8  38 04 00 0C */	addi r0, r4, 0xc
/* 80675FBC  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80675FC0  38 04 00 18 */	addi r0, r4, 0x18
/* 80675FC4  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80675FC8  38 04 00 24 */	addi r0, r4, 0x24
/* 80675FCC  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80675FD0  38 80 00 00 */	li r4, 0
/* 80675FD4  4B A0 16 1C */	b __dt__11dBgS_GndChkFv
/* 80675FD8  7F E0 07 35 */	extsh. r0, r31
/* 80675FDC  40 81 00 0C */	ble lbl_80675FE8
/* 80675FE0  7F C3 F3 78 */	mr r3, r30
/* 80675FE4  4B C5 8D 58 */	b __dl__FPv
lbl_80675FE8:
/* 80675FE8  7F C3 F3 78 */	mr r3, r30
/* 80675FEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80675FF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80675FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80675FF8  7C 08 03 A6 */	mtlr r0
/* 80675FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80676000  4E 80 00 20 */	blr 
