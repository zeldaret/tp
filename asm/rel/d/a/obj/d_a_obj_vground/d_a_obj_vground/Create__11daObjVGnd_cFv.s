lbl_80D214AC:
/* 80D214AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D214B0  7C 08 02 A6 */	mflr r0
/* 80D214B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D214B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D214BC  7C 7F 1B 78 */	mr r31, r3
/* 80D214C0  4B FF FF 39 */	bl initBaseMtx__11daObjVGnd_cFv
/* 80D214C4  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D214C8  38 03 00 24 */	addi r0, r3, 0x24
/* 80D214CC  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80D214D0  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D214D4  80 83 00 04 */	lwz r4, 4(r3)
/* 80D214D8  7F E3 FB 78 */	mr r3, r31
/* 80D214DC  4B 2F 90 9D */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80D214E0  7F E3 FB 78 */	mr r3, r31
/* 80D214E4  48 00 02 C5 */	bl execute__11daObjVGnd_cFv
/* 80D214E8  38 60 00 01 */	li r3, 1
/* 80D214EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D214F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D214F4  7C 08 03 A6 */	mtlr r0
/* 80D214F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D214FC  4E 80 00 20 */	blr 
