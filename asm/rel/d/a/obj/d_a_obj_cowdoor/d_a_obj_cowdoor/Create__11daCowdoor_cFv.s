lbl_80BCC86C:
/* 80BCC86C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCC870  7C 08 02 A6 */	mflr r0
/* 80BCC874  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCC878  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCC87C  7C 7F 1B 78 */	mr r31, r3
/* 80BCC880  4B FF FF 79 */	bl setBaseMtx__11daCowdoor_cFv
/* 80BCC884  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BCC888  38 03 00 24 */	addi r0, r3, 0x24
/* 80BCC88C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80BCC890  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BCC894  80 83 00 04 */	lwz r4, 4(r3)
/* 80BCC898  7F E3 FB 78 */	mr r3, r31
/* 80BCC89C  4B 44 DC DC */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80BCC8A0  3C 60 80 BD */	lis r3, lit_3648@ha
/* 80BCC8A4  C0 03 CB B4 */	lfs f0, lit_3648@l(r3)
/* 80BCC8A8  D0 1F 05 20 */	stfs f0, 0x520(r31)
/* 80BCC8AC  38 60 00 01 */	li r3, 1
/* 80BCC8B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCC8B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCC8B8  7C 08 03 A6 */	mtlr r0
/* 80BCC8BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCC8C0  4E 80 00 20 */	blr 
