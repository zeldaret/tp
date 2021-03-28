lbl_80C28098:
/* 80C28098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2809C  7C 08 02 A6 */	mflr r0
/* 80C280A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C280A4  4B FF FF 49 */	bl draw__12daObjIBone_cFv
/* 80C280A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C280AC  7C 08 03 A6 */	mtlr r0
/* 80C280B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C280B4  4E 80 00 20 */	blr 
