lbl_80B44D40:
/* 80B44D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B44D44  7C 08 02 A6 */	mflr r0
/* 80B44D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B44D4C  4B FF EA 71 */	bl Execute__13daNpc_yamiD_cFv
/* 80B44D50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B44D54  7C 08 03 A6 */	mtlr r0
/* 80B44D58  38 21 00 10 */	addi r1, r1, 0x10
/* 80B44D5C  4E 80 00 20 */	blr 
