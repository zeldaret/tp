lbl_80D3DB00:
/* 80D3DB00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3DB04  7C 08 02 A6 */	mflr r0
/* 80D3DB08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3DB0C  4B FF EE 65 */	bl Execute__12daObj_YBag_cFv
/* 80D3DB10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3DB14  7C 08 03 A6 */	mtlr r0
/* 80D3DB18  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3DB1C  4E 80 00 20 */	blr 
