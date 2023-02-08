lbl_80B44D60:
/* 80B44D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B44D64  7C 08 02 A6 */	mflr r0
/* 80B44D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B44D6C  4B FF EA 71 */	bl Draw__13daNpc_yamiD_cFv
/* 80B44D70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B44D74  7C 08 03 A6 */	mtlr r0
/* 80B44D78  38 21 00 10 */	addi r1, r1, 0x10
/* 80B44D7C  4E 80 00 20 */	blr 
