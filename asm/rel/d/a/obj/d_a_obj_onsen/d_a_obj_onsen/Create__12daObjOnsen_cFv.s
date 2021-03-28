lbl_80CA7C28:
/* 80CA7C28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA7C2C  7C 08 02 A6 */	mflr r0
/* 80CA7C30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA7C34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA7C38  7C 7F 1B 78 */	mr r31, r3
/* 80CA7C3C  4B FF FF 1D */	bl initBaseMtx__12daObjOnsen_cFv
/* 80CA7C40  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CA7C44  38 03 00 24 */	addi r0, r3, 0x24
/* 80CA7C48  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CA7C4C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CA7C50  80 83 00 04 */	lwz r4, 4(r3)
/* 80CA7C54  7F E3 FB 78 */	mr r3, r31
/* 80CA7C58  4B 37 29 20 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CA7C5C  38 60 00 01 */	li r3, 1
/* 80CA7C60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA7C64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA7C68  7C 08 03 A6 */	mtlr r0
/* 80CA7C6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA7C70  4E 80 00 20 */	blr 
