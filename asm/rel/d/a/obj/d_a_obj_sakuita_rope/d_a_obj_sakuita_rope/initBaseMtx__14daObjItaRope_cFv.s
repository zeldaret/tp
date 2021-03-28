lbl_80CC5E48:
/* 80CC5E48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC5E4C  7C 08 02 A6 */	mflr r0
/* 80CC5E50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC5E54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC5E58  7C 7F 1B 78 */	mr r31, r3
/* 80CC5E5C  48 00 00 21 */	bl setBaseMtx__14daObjItaRope_cFv
/* 80CC5E60  38 1F 05 AC */	addi r0, r31, 0x5ac
/* 80CC5E64  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CC5E68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC5E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC5E70  7C 08 03 A6 */	mtlr r0
/* 80CC5E74  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC5E78  4E 80 00 20 */	blr 
