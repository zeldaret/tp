lbl_80CE2A64:
/* 80CE2A64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE2A68  7C 08 02 A6 */	mflr r0
/* 80CE2A6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE2A70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE2A74  93 C1 00 08 */	stw r30, 8(r1)
/* 80CE2A78  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CE2A7C  7C 9F 23 78 */	mr r31, r4
/* 80CE2A80  41 82 00 40 */	beq lbl_80CE2AC0
/* 80CE2A84  3C 80 80 CE */	lis r4, __vt__14dBgS_ObjGndChk@ha /* 0x80CE3C48@ha */
/* 80CE2A88  38 84 3C 48 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l /* 0x80CE3C48@l */
/* 80CE2A8C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CE2A90  38 04 00 0C */	addi r0, r4, 0xc
/* 80CE2A94  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80CE2A98  38 04 00 18 */	addi r0, r4, 0x18
/* 80CE2A9C  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80CE2AA0  38 04 00 24 */	addi r0, r4, 0x24
/* 80CE2AA4  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80CE2AA8  38 80 00 00 */	li r4, 0
/* 80CE2AAC  4B 39 4B 45 */	bl __dt__11dBgS_GndChkFv
/* 80CE2AB0  7F E0 07 35 */	extsh. r0, r31
/* 80CE2AB4  40 81 00 0C */	ble lbl_80CE2AC0
/* 80CE2AB8  7F C3 F3 78 */	mr r3, r30
/* 80CE2ABC  4B 5E C2 81 */	bl __dl__FPv
lbl_80CE2AC0:
/* 80CE2AC0  7F C3 F3 78 */	mr r3, r30
/* 80CE2AC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE2AC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CE2ACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE2AD0  7C 08 03 A6 */	mtlr r0
/* 80CE2AD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE2AD8  4E 80 00 20 */	blr 
