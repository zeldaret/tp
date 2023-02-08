lbl_80CA46B8:
/* 80CA46B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA46BC  7C 08 02 A6 */	mflr r0
/* 80CA46C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA46C4  4B FF FC 65 */	bl CreateHeap__13daObj_Nougu_cFv
/* 80CA46C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA46CC  7C 08 03 A6 */	mtlr r0
/* 80CA46D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA46D4  4E 80 00 20 */	blr 
