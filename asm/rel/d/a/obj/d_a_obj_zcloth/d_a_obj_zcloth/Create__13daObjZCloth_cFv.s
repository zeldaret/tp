lbl_80D3EEC0:
/* 80D3EEC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3EEC4  7C 08 02 A6 */	mflr r0
/* 80D3EEC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3EECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3EED0  7C 7F 1B 78 */	mr r31, r3
/* 80D3EED4  4B FF FF 45 */	bl initBaseMtx__13daObjZCloth_cFv
/* 80D3EED8  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D3EEDC  38 03 00 24 */	addi r0, r3, 0x24
/* 80D3EEE0  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80D3EEE4  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D3EEE8  80 83 00 04 */	lwz r4, 4(r3)
/* 80D3EEEC  7F E3 FB 78 */	mr r3, r31
/* 80D3EEF0  4B 2D B6 89 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80D3EEF4  38 60 00 01 */	li r3, 1
/* 80D3EEF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3EEFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3EF00  7C 08 03 A6 */	mtlr r0
/* 80D3EF04  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3EF08  4E 80 00 20 */	blr 
