lbl_80CCDD8C:
/* 80CCDD8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCDD90  7C 08 02 A6 */	mflr r0
/* 80CCDD94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCDD98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCDD9C  7C 7F 1B 78 */	mr r31, r3
/* 80CCDDA0  48 00 02 05 */	bl initBaseMtx__14daObj_Sekizo_cFv
/* 80CCDDA4  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80CCDDA8  38 03 00 24 */	addi r0, r3, 0x24
/* 80CCDDAC  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CCDDB0  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80CCDDB4  80 83 00 04 */	lwz r4, 4(r3)
/* 80CCDDB8  7F E3 FB 78 */	mr r3, r31
/* 80CCDDBC  4B 34 C7 BC */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CCDDC0  38 00 00 00 */	li r0, 0
/* 80CCDDC4  98 1F 05 B2 */	stb r0, 0x5b2(r31)
/* 80CCDDC8  38 00 00 01 */	li r0, 1
/* 80CCDDCC  98 1F 05 B1 */	stb r0, 0x5b1(r31)
/* 80CCDDD0  38 60 00 01 */	li r3, 1
/* 80CCDDD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCDDD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCDDDC  7C 08 03 A6 */	mtlr r0
/* 80CCDDE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCDDE4  4E 80 00 20 */	blr 
