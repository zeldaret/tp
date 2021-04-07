lbl_80BB621C:
/* 80BB621C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB6220  7C 08 02 A6 */	mflr r0
/* 80BB6224  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB6228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB622C  7C 7F 1B 78 */	mr r31, r3
/* 80BB6230  4B FF FF 5D */	bl initBaseMtx__10daBkLeaf_cFv
/* 80BB6234  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BB6238  38 03 00 24 */	addi r0, r3, 0x24
/* 80BB623C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80BB6240  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BB6244  80 83 00 04 */	lwz r4, 4(r3)
/* 80BB6248  7F E3 FB 78 */	mr r3, r31
/* 80BB624C  4B 46 43 2D */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80BB6250  38 00 FF FF */	li r0, -1
/* 80BB6254  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80BB6258  38 60 00 00 */	li r3, 0
/* 80BB625C  98 7F 05 7D */	stb r3, 0x57d(r31)
/* 80BB6260  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BB6264  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80BB6268  41 82 00 14 */	beq lbl_80BB627C
/* 80BB626C  98 7F 05 7C */	stb r3, 0x57c(r31)
/* 80BB6270  7F E3 FB 78 */	mr r3, r31
/* 80BB6274  4B FF FE 85 */	bl setBokkuri__10daBkLeaf_cFv
/* 80BB6278  48 00 00 0C */	b lbl_80BB6284
lbl_80BB627C:
/* 80BB627C  38 00 00 02 */	li r0, 2
/* 80BB6280  98 1F 05 7C */	stb r0, 0x57c(r31)
lbl_80BB6284:
/* 80BB6284  38 60 00 01 */	li r3, 1
/* 80BB6288  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB628C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB6290  7C 08 03 A6 */	mtlr r0
/* 80BB6294  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB6298  4E 80 00 20 */	blr 
