lbl_80BDCD08:
/* 80BDCD08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDCD0C  7C 08 02 A6 */	mflr r0
/* 80BDCD10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDCD14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDCD18  7C 7F 1B 78 */	mr r31, r3
/* 80BDCD1C  4B FF FF 3D */	bl initBaseMtx__14daObjDigSnow_cFv
/* 80BDCD20  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BDCD24  38 03 00 24 */	addi r0, r3, 0x24
/* 80BDCD28  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80BDCD2C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BDCD30  80 83 00 04 */	lwz r4, 4(r3)
/* 80BDCD34  7F E3 FB 78 */	mr r3, r31
/* 80BDCD38  4B 43 D8 40 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80BDCD3C  38 00 00 1F */	li r0, 0x1f
/* 80BDCD40  98 1F 05 4B */	stb r0, 0x54b(r31)
/* 80BDCD44  7F E3 FB 78 */	mr r3, r31
/* 80BDCD48  48 00 02 5D */	bl mode_init_wait__14daObjDigSnow_cFv
/* 80BDCD4C  38 60 00 01 */	li r3, 1
/* 80BDCD50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDCD54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDCD58  7C 08 03 A6 */	mtlr r0
/* 80BDCD5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDCD60  4E 80 00 20 */	blr 
