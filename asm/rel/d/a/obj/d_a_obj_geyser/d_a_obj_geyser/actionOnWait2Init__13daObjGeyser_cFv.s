lbl_80BF7838:
/* 80BF7838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF783C  7C 08 02 A6 */	mflr r0
/* 80BF7840  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF7844  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF7848  7C 7F 1B 78 */	mr r31, r3
/* 80BF784C  48 00 10 C9 */	bl setEmitterPre00__13daObjGeyser_cFv
/* 80BF7850  7F E3 FB 78 */	mr r3, r31
/* 80BF7854  48 00 11 59 */	bl setEmitterSrc00Sand__13daObjGeyser_cFv
/* 80BF7858  7F E3 FB 78 */	mr r3, r31
/* 80BF785C  48 00 11 55 */	bl setEmitterSrc01Smk__13daObjGeyser_cFv
/* 80BF7860  38 00 00 01 */	li r0, 1
/* 80BF7864  98 1F 07 62 */	stb r0, 0x762(r31)
/* 80BF7868  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF786C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF7870  7C 08 03 A6 */	mtlr r0
/* 80BF7874  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF7878  4E 80 00 20 */	blr 
