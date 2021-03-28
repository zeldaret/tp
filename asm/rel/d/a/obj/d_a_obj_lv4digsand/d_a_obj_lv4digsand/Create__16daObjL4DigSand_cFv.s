lbl_80C66BC8:
/* 80C66BC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C66BCC  7C 08 02 A6 */	mflr r0
/* 80C66BD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C66BD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C66BD8  7C 7F 1B 78 */	mr r31, r3
/* 80C66BDC  4B FF FF 3D */	bl initBaseMtx__16daObjL4DigSand_cFv
/* 80C66BE0  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C66BE4  38 03 00 24 */	addi r0, r3, 0x24
/* 80C66BE8  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C66BEC  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C66BF0  80 83 00 04 */	lwz r4, 4(r3)
/* 80C66BF4  7F E3 FB 78 */	mr r3, r31
/* 80C66BF8  4B 3B 39 80 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C66BFC  38 00 00 1F */	li r0, 0x1f
/* 80C66C00  98 1F 05 4B */	stb r0, 0x54b(r31)
/* 80C66C04  7F E3 FB 78 */	mr r3, r31
/* 80C66C08  48 00 02 6D */	bl mode_init_wait__16daObjL4DigSand_cFv
/* 80C66C0C  38 60 00 01 */	li r3, 1
/* 80C66C10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C66C14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C66C18  7C 08 03 A6 */	mtlr r0
/* 80C66C1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C66C20  4E 80 00 20 */	blr 
