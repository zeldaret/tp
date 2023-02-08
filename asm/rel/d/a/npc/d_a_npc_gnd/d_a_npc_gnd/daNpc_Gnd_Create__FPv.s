lbl_809BD248:
/* 809BD248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BD24C  7C 08 02 A6 */	mflr r0
/* 809BD250  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BD254  4B FF E4 DD */	bl create__11daNpc_Gnd_cFv
/* 809BD258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BD25C  7C 08 03 A6 */	mtlr r0
/* 809BD260  38 21 00 10 */	addi r1, r1, 0x10
/* 809BD264  4E 80 00 20 */	blr 
