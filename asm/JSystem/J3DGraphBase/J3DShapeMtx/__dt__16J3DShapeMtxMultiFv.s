lbl_803146B0:
/* 803146B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803146B4  7C 08 02 A6 */	mflr r0
/* 803146B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803146BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803146C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 803146C4  41 82 00 30 */	beq lbl_803146F4
/* 803146C8  3C 60 80 3D */	lis r3, __vt__16J3DShapeMtxMulti@ha
/* 803146CC  38 03 DB FC */	addi r0, r3, __vt__16J3DShapeMtxMulti@l
/* 803146D0  90 1F 00 00 */	stw r0, 0(r31)
/* 803146D4  41 82 00 10 */	beq lbl_803146E4
/* 803146D8  3C 60 80 3D */	lis r3, __vt__11J3DShapeMtx@ha
/* 803146DC  38 03 DC 44 */	addi r0, r3, __vt__11J3DShapeMtx@l
/* 803146E0  90 1F 00 00 */	stw r0, 0(r31)
lbl_803146E4:
/* 803146E4  7C 80 07 35 */	extsh. r0, r4
/* 803146E8  40 81 00 0C */	ble lbl_803146F4
/* 803146EC  7F E3 FB 78 */	mr r3, r31
/* 803146F0  4B FB A6 4D */	bl __dl__FPv
lbl_803146F4:
/* 803146F4  7F E3 FB 78 */	mr r3, r31
/* 803146F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803146FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80314700  7C 08 03 A6 */	mtlr r0
/* 80314704  38 21 00 10 */	addi r1, r1, 0x10
/* 80314708  4E 80 00 20 */	blr 
