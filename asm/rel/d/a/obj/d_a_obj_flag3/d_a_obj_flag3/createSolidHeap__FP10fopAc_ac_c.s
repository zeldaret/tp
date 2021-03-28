lbl_80BEEC3C:
/* 80BEEC3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEEC40  7C 08 02 A6 */	mflr r0
/* 80BEEC44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEEC48  4B FF FE 31 */	bl createHeap__12daObjFlag3_cFv
/* 80BEEC4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEEC50  7C 08 03 A6 */	mtlr r0
/* 80BEEC54  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEEC58  4E 80 00 20 */	blr 
