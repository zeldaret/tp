lbl_8057B958:
/* 8057B958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057B95C  7C 08 02 A6 */	mflr r0
/* 8057B960  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057B964  48 00 00 15 */	bl setBaseMtx__12daObjBoard_cFv
/* 8057B968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057B96C  7C 08 03 A6 */	mtlr r0
/* 8057B970  38 21 00 10 */	addi r1, r1, 0x10
/* 8057B974  4E 80 00 20 */	blr 
