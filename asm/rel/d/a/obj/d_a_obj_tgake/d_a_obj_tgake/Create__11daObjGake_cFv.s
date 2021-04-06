lbl_80D0BCB8:
/* 80D0BCB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0BCBC  7C 08 02 A6 */	mflr r0
/* 80D0BCC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0BCC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0BCC8  7C 7F 1B 78 */	mr r31, r3
/* 80D0BCCC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D0BCD0  54 00 05 BE */	clrlwi r0, r0, 0x16
/* 80D0BCD4  B0 03 05 AC */	sth r0, 0x5ac(r3)
/* 80D0BCD8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D0BCDC  54 00 B5 BE */	rlwinm r0, r0, 0x16, 0x16, 0x1f
/* 80D0BCE0  B0 03 05 AE */	sth r0, 0x5ae(r3)
/* 80D0BCE4  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D0BCE8  54 00 66 3E */	rlwinm r0, r0, 0xc, 0x18, 0x1f
/* 80D0BCEC  98 03 00 FF */	stb r0, 0xff(r3)
/* 80D0BCF0  4B FF FF 29 */	bl initBaseMtx__11daObjGake_cFv
/* 80D0BCF4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D0BCF8  38 03 00 24 */	addi r0, r3, 0x24
/* 80D0BCFC  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80D0BD00  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D0BD04  80 83 00 04 */	lwz r4, 4(r3)
/* 80D0BD08  7F E3 FB 78 */	mr r3, r31
/* 80D0BD0C  4B 30 E8 6D */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80D0BD10  7F E3 FB 78 */	mr r3, r31
/* 80D0BD14  4B 36 CC 3D */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D0BD18  38 60 00 01 */	li r3, 1
/* 80D0BD1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0BD20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0BD24  7C 08 03 A6 */	mtlr r0
/* 80D0BD28  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0BD2C  4E 80 00 20 */	blr 
