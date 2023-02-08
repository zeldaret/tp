lbl_80CA0954:
/* 80CA0954  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA0958  7C 08 02 A6 */	mflr r0
/* 80CA095C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA0960  48 00 1F A5 */	bl _delete__10daObjNAN_cFv
/* 80CA0964  38 60 00 01 */	li r3, 1
/* 80CA0968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA096C  7C 08 03 A6 */	mtlr r0
/* 80CA0970  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA0974  4E 80 00 20 */	blr 
