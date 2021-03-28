lbl_802BE880:
/* 802BE880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BE884  7C 08 02 A6 */	mflr r0
/* 802BE888  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BE88C  4B FF F7 25 */	bl init__14Z2SoundObjBaseFP3VecUc
/* 802BE890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BE894  7C 08 03 A6 */	mtlr r0
/* 802BE898  38 21 00 10 */	addi r1, r1, 0x10
/* 802BE89C  4E 80 00 20 */	blr 
