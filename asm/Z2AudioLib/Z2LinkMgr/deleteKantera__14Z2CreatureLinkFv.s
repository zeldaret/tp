lbl_802C374C:
/* 802C374C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C3750  7C 08 02 A6 */	mflr r0
/* 802C3754  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C3758  38 00 00 00 */	li r0, 0
/* 802C375C  98 03 00 C5 */	stb r0, 0xc5(r3)
/* 802C3760  38 63 00 94 */	addi r3, r3, 0x94
/* 802C3764  4B FF A8 95 */	bl deleteObject__14Z2SoundObjBaseFv
/* 802C3768  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C376C  7C 08 03 A6 */	mtlr r0
/* 802C3770  38 21 00 10 */	addi r1, r1, 0x10
/* 802C3774  4E 80 00 20 */	blr 
