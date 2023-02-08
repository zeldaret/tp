lbl_804BD254:
/* 804BD254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BD258  7C 08 02 A6 */	mflr r0
/* 804BD25C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BD260  4B FF F6 09 */	bl createHeap__9daMidna_cFv
/* 804BD264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BD268  7C 08 03 A6 */	mtlr r0
/* 804BD26C  38 21 00 10 */	addi r1, r1, 0x10
/* 804BD270  4E 80 00 20 */	blr 
