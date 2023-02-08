lbl_802C1D4C:
/* 802C1D4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C1D50  7C 08 02 A6 */	mflr r0
/* 802C1D54  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C1D58  4B FF C2 59 */	bl init__14Z2SoundObjBaseFP3VecUc
/* 802C1D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C1D60  7C 08 03 A6 */	mtlr r0
/* 802C1D64  38 21 00 10 */	addi r1, r1, 0x10
/* 802C1D68  4E 80 00 20 */	blr 
