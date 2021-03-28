lbl_8032A93C:
/* 8032A93C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032A940  7C 08 02 A6 */	mflr r0
/* 8032A944  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032A948  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032A94C  7C 7F 1B 78 */	mr r31, r3
/* 8032A950  4B FF FE D9 */	bl __ct__11J3DAnmColorFv
/* 8032A954  3C 60 80 3D */	lis r3, __vt__15J3DAnmColorFull@ha
/* 8032A958  38 03 ED 84 */	addi r0, r3, __vt__15J3DAnmColorFull@l
/* 8032A95C  90 1F 00 00 */	stw r0, 0(r31)
/* 8032A960  38 00 00 00 */	li r0, 0
/* 8032A964  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8032A968  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8032A96C  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8032A970  90 1F 00 38 */	stw r0, 0x38(r31)
/* 8032A974  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 8032A978  7F E3 FB 78 */	mr r3, r31
/* 8032A97C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032A980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032A984  7C 08 03 A6 */	mtlr r0
/* 8032A988  38 21 00 10 */	addi r1, r1, 0x10
/* 8032A98C  4E 80 00 20 */	blr 
