lbl_8028E400:
/* 8028E400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028E404  7C 08 02 A6 */	mflr r0
/* 8028E408  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028E40C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028E410  7C 66 1B 78 */	mr r6, r3
/* 8028E414  7C 9F 23 78 */	mr r31, r4
/* 8028E418  80 65 00 00 */	lwz r3, 0(r5)
/* 8028E41C  80 83 00 04 */	lwz r4, 4(r3)
/* 8028E420  3C 60 4A 50 */	lis r3, 0x4A50 /* 0x4A505443@ha */
/* 8028E424  38 03 54 43 */	addi r0, r3, 0x5443 /* 0x4A505443@l */
/* 8028E428  7C 04 00 00 */	cmpw r4, r0
/* 8028E42C  41 82 00 08 */	beq lbl_8028E434
/* 8028E430  48 00 00 10 */	b lbl_8028E440
lbl_8028E434:
/* 8028E434  3C 60 80 29 */	lis r3, createObject_JPA_PARTICLE___Q217JStudio_JParticle13TCreateObjectFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ217JStudio_JParticle13TCreateObject@ha
/* 8028E438  39 83 E5 08 */	addi r12, r3, createObject_JPA_PARTICLE___Q217JStudio_JParticle13TCreateObjectFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ217JStudio_JParticle13TCreateObject@l
/* 8028E43C  48 00 00 0C */	b lbl_8028E448
lbl_8028E440:
/* 8028E440  38 60 00 00 */	li r3, 0
/* 8028E444  48 00 00 1C */	b lbl_8028E460
lbl_8028E448:
/* 8028E448  7C A3 2B 78 */	mr r3, r5
/* 8028E44C  7C C4 33 78 */	mr r4, r6
/* 8028E450  7D 89 03 A6 */	mtctr r12
/* 8028E454  4E 80 04 21 */	bctrl 
/* 8028E458  90 7F 00 00 */	stw r3, 0(r31)
/* 8028E45C  38 60 00 01 */	li r3, 1
lbl_8028E460:
/* 8028E460  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028E464  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028E468  7C 08 03 A6 */	mtlr r0
/* 8028E46C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028E470  4E 80 00 20 */	blr 
