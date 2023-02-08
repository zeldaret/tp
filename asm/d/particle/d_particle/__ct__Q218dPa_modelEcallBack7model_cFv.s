lbl_8004FB90:
/* 8004FB90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004FB94  7C 08 02 A6 */	mflr r0
/* 8004FB98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004FB9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004FBA0  93 C1 00 08 */	stw r30, 8(r1)
/* 8004FBA4  7C 7E 1B 78 */	mr r30, r3
/* 8004FBA8  3B FE 00 08 */	addi r31, r30, 8
/* 8004FBAC  7F E3 FB 78 */	mr r3, r31
/* 8004FBB0  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha /* 0x803A1EC8@ha */
/* 8004FBB4  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l /* 0x803A1EC8@l */
/* 8004FBB8  48 2D 5B 0D */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 8004FBBC  38 7F 00 74 */	addi r3, r31, 0x74
/* 8004FBC0  3C 80 80 02 */	lis r4, __ct__11J3DLightObjFv@ha /* 0x80018C0C@ha */
/* 8004FBC4  38 84 8C 0C */	addi r4, r4, __ct__11J3DLightObjFv@l /* 0x80018C0C@l */
/* 8004FBC8  38 A0 00 00 */	li r5, 0
/* 8004FBCC  38 C0 00 74 */	li r6, 0x74
/* 8004FBD0  38 E0 00 06 */	li r7, 6
/* 8004FBD4  48 31 21 8D */	bl __construct_array
/* 8004FBD8  38 00 00 00 */	li r0, 0
/* 8004FBDC  90 1E 00 00 */	stw r0, 0(r30)
/* 8004FBE0  7F C3 F3 78 */	mr r3, r30
/* 8004FBE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004FBE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8004FBEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004FBF0  7C 08 03 A6 */	mtlr r0
/* 8004FBF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8004FBF8  4E 80 00 20 */	blr 
