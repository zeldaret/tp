lbl_80C2E77C:
/* 80C2E77C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2E780  7C 08 02 A6 */	mflr r0
/* 80C2E784  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2E788  48 00 1F 65 */	bl _delete__10daObjKAG_cFv
/* 80C2E78C  38 60 00 01 */	li r3, 1
/* 80C2E790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2E794  7C 08 03 A6 */	mtlr r0
/* 80C2E798  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2E79C  4E 80 00 20 */	blr 
