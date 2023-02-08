lbl_80D318A0:
/* 80D318A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D318A4  7C 08 02 A6 */	mflr r0
/* 80D318A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D318AC  4B FF FF 65 */	bl draw__13daObjWchain_cFv
/* 80D318B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D318B4  7C 08 03 A6 */	mtlr r0
/* 80D318B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D318BC  4E 80 00 20 */	blr 
