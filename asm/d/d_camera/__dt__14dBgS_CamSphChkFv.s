lbl_80165E74:
/* 80165E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80165E78  7C 08 02 A6 */	mflr r0
/* 80165E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80165E80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80165E84  93 C1 00 08 */	stw r30, 8(r1)
/* 80165E88  7C 7E 1B 79 */	or. r30, r3, r3
/* 80165E8C  7C 9F 23 78 */	mr r31, r4
/* 80165E90  41 82 00 48 */	beq lbl_80165ED8
/* 80165E94  3C 80 80 3C */	lis r4, __vt__14dBgS_CamSphChk@ha
/* 80165E98  38 84 A7 98 */	addi r4, r4, __vt__14dBgS_CamSphChk@l
/* 80165E9C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80165EA0  38 04 00 0C */	addi r0, r4, 0xc
/* 80165EA4  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80165EA8  38 04 00 18 */	addi r0, r4, 0x18
/* 80165EAC  90 1E 00 34 */	stw r0, 0x34(r30)
/* 80165EB0  38 04 00 24 */	addi r0, r4, 0x24
/* 80165EB4  90 1E 00 38 */	stw r0, 0x38(r30)
/* 80165EB8  38 04 00 30 */	addi r0, r4, 0x30
/* 80165EBC  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80165EC0  38 80 00 00 */	li r4, 0
/* 80165EC4  4B F1 2B FD */	bl __dt__11dBgS_SphChkFv
/* 80165EC8  7F E0 07 35 */	extsh. r0, r31
/* 80165ECC  40 81 00 0C */	ble lbl_80165ED8
/* 80165ED0  7F C3 F3 78 */	mr r3, r30
/* 80165ED4  48 16 8E 69 */	bl __dl__FPv
lbl_80165ED8:
/* 80165ED8  7F C3 F3 78 */	mr r3, r30
/* 80165EDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80165EE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80165EE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80165EE8  7C 08 03 A6 */	mtlr r0
/* 80165EEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80165EF0  4E 80 00 20 */	blr 
