lbl_802C1FB0:
/* 802C1FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C1FB4  7C 08 02 A6 */	mflr r0
/* 802C1FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C1FBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C1FC0  7C 7F 1B 78 */	mr r31, r3
/* 802C1FC4  4B FF F0 01 */	bl deleteObject__15Z2CreatureEnemyFv
/* 802C1FC8  38 7F 00 A4 */	addi r3, r31, 0xa4
/* 802C1FCC  4B FF C0 2D */	bl deleteObject__14Z2SoundObjBaseFv
/* 802C1FD0  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 802C1FD4  4B FF C0 25 */	bl deleteObject__14Z2SoundObjBaseFv
/* 802C1FD8  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 802C1FDC  4B FF C0 1D */	bl deleteObject__14Z2SoundObjBaseFv
/* 802C1FE0  38 7F 01 04 */	addi r3, r31, 0x104
/* 802C1FE4  4B FF C0 15 */	bl deleteObject__14Z2SoundObjBaseFv
/* 802C1FE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C1FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C1FF0  7C 08 03 A6 */	mtlr r0
/* 802C1FF4  38 21 00 10 */	addi r1, r1, 0x10
/* 802C1FF8  4E 80 00 20 */	blr 
