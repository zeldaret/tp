lbl_80C68050:
/* 80C68050  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C68054  7C 08 02 A6 */	mflr r0
/* 80C68058  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6805C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C68060  7C 7F 1B 78 */	mr r31, r3
/* 80C68064  4B FF FF 51 */	bl initBaseMtx__14daObjLv4Gear_cFv
/* 80C68068  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C6806C  38 03 00 24 */	addi r0, r3, 0x24
/* 80C68070  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C68074  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C68078  80 83 00 04 */	lwz r4, 4(r3)
/* 80C6807C  7F E3 FB 78 */	mr r3, r31
/* 80C68080  4B 3B 24 F9 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C68084  38 00 FF FF */	li r0, -1
/* 80C68088  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 80C6808C  38 60 00 01 */	li r3, 1
/* 80C68090  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C68094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C68098  7C 08 03 A6 */	mtlr r0
/* 80C6809C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C680A0  4E 80 00 20 */	blr 
