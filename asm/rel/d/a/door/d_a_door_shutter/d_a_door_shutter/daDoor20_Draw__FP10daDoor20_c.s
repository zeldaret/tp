lbl_804665B0:
/* 804665B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804665B4  7C 08 02 A6 */	mflr r0
/* 804665B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804665BC  4B FF DD F5 */	bl draw__10daDoor20_cFv
/* 804665C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804665C4  7C 08 03 A6 */	mtlr r0
/* 804665C8  38 21 00 10 */	addi r1, r1, 0x10
/* 804665CC  4E 80 00 20 */	blr 
