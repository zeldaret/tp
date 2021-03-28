lbl_80336398:
/* 80336398  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033639C  7C 08 02 A6 */	mflr r0
/* 803363A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803363A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803363A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 803363AC  41 82 00 30 */	beq lbl_803363DC
/* 803363B0  3C 60 80 3D */	lis r3, __vt__18J3DModelLoader_v26@ha
/* 803363B4  38 03 F1 4C */	addi r0, r3, __vt__18J3DModelLoader_v26@l
/* 803363B8  90 1F 00 00 */	stw r0, 0(r31)
/* 803363BC  41 82 00 10 */	beq lbl_803363CC
/* 803363C0  3C 60 80 3D */	lis r3, __vt__14J3DModelLoader@ha
/* 803363C4  38 03 F1 F4 */	addi r0, r3, __vt__14J3DModelLoader@l
/* 803363C8  90 1F 00 00 */	stw r0, 0(r31)
lbl_803363CC:
/* 803363CC  7C 80 07 35 */	extsh. r0, r4
/* 803363D0  40 81 00 0C */	ble lbl_803363DC
/* 803363D4  7F E3 FB 78 */	mr r3, r31
/* 803363D8  4B F9 89 65 */	bl __dl__FPv
lbl_803363DC:
/* 803363DC  7F E3 FB 78 */	mr r3, r31
/* 803363E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803363E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803363E8  7C 08 03 A6 */	mtlr r0
/* 803363EC  38 21 00 10 */	addi r1, r1, 0x10
/* 803363F0  4E 80 00 20 */	blr 
