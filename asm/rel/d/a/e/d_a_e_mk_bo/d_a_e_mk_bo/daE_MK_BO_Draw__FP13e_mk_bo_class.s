lbl_8071CCEC:
/* 8071CCEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071CCF0  7C 08 02 A6 */	mflr r0
/* 8071CCF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071CCF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8071CCFC  7C 7F 1B 78 */	mr r31, r3
/* 8071CD00  88 03 09 B4 */	lbz r0, 0x9b4(r3)
/* 8071CD04  7C 00 07 75 */	extsb. r0, r0
/* 8071CD08  41 82 00 0C */	beq lbl_8071CD14
/* 8071CD0C  38 60 00 01 */	li r3, 1
/* 8071CD10  48 00 01 0C */	b lbl_8071CE1C
lbl_8071CD14:
/* 8071CD14  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8071CD18  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8071CD1C  38 80 00 00 */	li r4, 0
/* 8071CD20  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8071CD24  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8071CD28  4B A8 6A 9D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8071CD2C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8071CD30  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8071CD34  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 8071CD38  80 84 00 04 */	lwz r4, 4(r4)
/* 8071CD3C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8071CD40  4B A8 80 61 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8071CD44  A8 1F 05 DA */	lha r0, 0x5da(r31)
/* 8071CD48  2C 00 00 02 */	cmpwi r0, 2
/* 8071CD4C  41 80 00 94 */	blt lbl_8071CDE0
/* 8071CD50  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8071CD54  80 63 00 04 */	lwz r3, 4(r3)
/* 8071CD58  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8071CD5C  80 63 00 04 */	lwz r3, 4(r3)
/* 8071CD60  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8071CD64  38 80 00 01 */	li r4, 1
/* 8071CD68  81 83 00 00 */	lwz r12, 0(r3)
/* 8071CD6C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8071CD70  7D 89 03 A6 */	mtctr r12
/* 8071CD74  4E 80 04 21 */	bctrl 
/* 8071CD78  38 00 00 19 */	li r0, 0x19
/* 8071CD7C  B0 03 00 00 */	sth r0, 0(r3)
/* 8071CD80  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8071CD84  80 63 00 04 */	lwz r3, 4(r3)
/* 8071CD88  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8071CD8C  80 63 00 04 */	lwz r3, 4(r3)
/* 8071CD90  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8071CD94  38 80 00 01 */	li r4, 1
/* 8071CD98  81 83 00 00 */	lwz r12, 0(r3)
/* 8071CD9C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8071CDA0  7D 89 03 A6 */	mtctr r12
/* 8071CDA4  4E 80 04 21 */	bctrl 
/* 8071CDA8  38 00 00 23 */	li r0, 0x23
/* 8071CDAC  B0 03 00 02 */	sth r0, 2(r3)
/* 8071CDB0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8071CDB4  80 63 00 04 */	lwz r3, 4(r3)
/* 8071CDB8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8071CDBC  80 63 00 04 */	lwz r3, 4(r3)
/* 8071CDC0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8071CDC4  38 80 00 01 */	li r4, 1
/* 8071CDC8  81 83 00 00 */	lwz r12, 0(r3)
/* 8071CDCC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8071CDD0  7D 89 03 A6 */	mtctr r12
/* 8071CDD4  4E 80 04 21 */	bctrl 
/* 8071CDD8  38 00 00 0A */	li r0, 0xa
/* 8071CDDC  B0 03 00 04 */	sth r0, 4(r3)
lbl_8071CDE0:
/* 8071CDE0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8071CDE4  4B 8F 0E E1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8071CDE8  88 1F 09 B5 */	lbz r0, 0x9b5(r31)
/* 8071CDEC  7C 00 07 75 */	extsb. r0, r0
/* 8071CDF0  41 82 00 28 */	beq lbl_8071CE18
/* 8071CDF4  80 7F 09 B8 */	lwz r3, 0x9b8(r31)
/* 8071CDF8  80 63 00 04 */	lwz r3, 4(r3)
/* 8071CDFC  80 83 00 04 */	lwz r4, 4(r3)
/* 8071CE00  80 7F 09 BC */	lwz r3, 0x9bc(r31)
/* 8071CE04  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8071CE08  38 84 00 58 */	addi r4, r4, 0x58
/* 8071CE0C  4B 8F 08 CD */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 8071CE10  80 7F 09 B8 */	lwz r3, 0x9b8(r31)
/* 8071CE14  4B 8F 38 6D */	bl entryDL__14mDoExt_McaMorfFv
lbl_8071CE18:
/* 8071CE18  38 60 00 01 */	li r3, 1
lbl_8071CE1C:
/* 8071CE1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8071CE20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071CE24  7C 08 03 A6 */	mtlr r0
/* 8071CE28  38 21 00 10 */	addi r1, r1, 0x10
/* 8071CE2C  4E 80 00 20 */	blr 
