lbl_80325DA0:
/* 80325DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80325DA4  7C 08 02 A6 */	mflr r0
/* 80325DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80325DAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80325DB0  7C 7F 1B 78 */	mr r31, r3
/* 80325DB4  3C 60 80 3D */	lis r3, __vt__12J3DModelData@ha
/* 80325DB8  38 03 ED 14 */	addi r0, r3, __vt__12J3DModelData@l
/* 80325DBC  90 1F 00 00 */	stw r0, 0(r31)
/* 80325DC0  38 7F 00 10 */	addi r3, r31, 0x10
/* 80325DC4  4B FF FC 55 */	bl __ct__12J3DJointTreeFv
/* 80325DC8  38 7F 00 58 */	addi r3, r31, 0x58
/* 80325DCC  48 00 98 05 */	bl __ct__16J3DMaterialTableFv
/* 80325DD0  3C 60 80 3D */	lis r3, __vt__13J3DShapeTable@ha
/* 80325DD4  38 03 ED 08 */	addi r0, r3, __vt__13J3DShapeTable@l
/* 80325DD8  90 1F 00 78 */	stw r0, 0x78(r31)
/* 80325DDC  38 00 00 00 */	li r0, 0
/* 80325DE0  B0 1F 00 7C */	sth r0, 0x7c(r31)
/* 80325DE4  90 1F 00 80 */	stw r0, 0x80(r31)
/* 80325DE8  90 1F 00 84 */	stw r0, 0x84(r31)
/* 80325DEC  38 7F 00 88 */	addi r3, r31, 0x88
/* 80325DF0  4B FE B1 09 */	bl __ct__13J3DVertexDataFv
/* 80325DF4  7F E3 FB 78 */	mr r3, r31
/* 80325DF8  4B FF FF 91 */	bl clear__12J3DModelDataFv
/* 80325DFC  7F E3 FB 78 */	mr r3, r31
/* 80325E00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80325E04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80325E08  7C 08 03 A6 */	mtlr r0
/* 80325E0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80325E10  4E 80 00 20 */	blr 
