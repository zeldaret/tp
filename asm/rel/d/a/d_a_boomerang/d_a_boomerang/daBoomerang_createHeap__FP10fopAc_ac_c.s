lbl_804A2064:
/* 804A2064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A2068  7C 08 02 A6 */	mflr r0
/* 804A206C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A2070  4B FF FE 75 */	bl createHeap__13daBoomerang_cFv
/* 804A2074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A2078  7C 08 03 A6 */	mtlr r0
/* 804A207C  38 21 00 10 */	addi r1, r1, 0x10
/* 804A2080  4E 80 00 20 */	blr 
