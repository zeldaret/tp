lbl_80CE93A4:
/* 80CE93A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE93A8  7C 08 02 A6 */	mflr r0
/* 80CE93AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE93B0  48 00 04 11 */	bl CreateHeap__12daObjStone_cFv
/* 80CE93B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE93B8  7C 08 03 A6 */	mtlr r0
/* 80CE93BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE93C0  4E 80 00 20 */	blr 
