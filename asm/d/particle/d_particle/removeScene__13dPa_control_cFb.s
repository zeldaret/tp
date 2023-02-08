lbl_8004BFD4:
/* 8004BFD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004BFD8  7C 08 02 A6 */	mflr r0
/* 8004BFDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004BFE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004BFE4  93 C1 00 08 */	stw r30, 8(r1)
/* 8004BFE8  7C 7E 1B 78 */	mr r30, r3
/* 8004BFEC  7C 9F 23 78 */	mr r31, r4
/* 8004BFF0  38 7E 02 10 */	addi r3, r30, 0x210
/* 8004BFF4  4B FF F8 15 */	bl cleanup__Q213dPa_control_c7level_cFv
/* 8004BFF8  7F C3 F3 78 */	mr r3, r30
/* 8004BFFC  7F E4 FB 78 */	mr r4, r31
/* 8004C000  4B FF FF 3D */	bl removeRoomScene__13dPa_control_cFb
/* 8004C004  38 A0 00 00 */	li r5, 0
/* 8004C008  38 60 00 00 */	li r3, 0
/* 8004C00C  7C 64 1B 78 */	mr r4, r3
/* 8004C010  48 00 00 14 */	b lbl_8004C024
lbl_8004C014:
/* 8004C014  38 03 00 20 */	addi r0, r3, 0x20
/* 8004C018  7C 9E 01 2E */	stwx r4, r30, r0
/* 8004C01C  38 A5 00 01 */	addi r5, r5, 1
/* 8004C020  38 63 00 14 */	addi r3, r3, 0x14
lbl_8004C024:
/* 8004C024  88 1E 00 1A */	lbz r0, 0x1a(r30)
/* 8004C028  7C 05 00 00 */	cmpw r5, r0
/* 8004C02C  41 80 FF E8 */	blt lbl_8004C014
/* 8004C030  80 6D 89 20 */	lwz r3, mEmitterMng__13dPa_control_c(r13)
/* 8004C034  48 23 21 ED */	bl forceDeleteAllEmitter__17JPAEmitterManagerFv
/* 8004C038  4B FF EB 8D */	bl remove__18dPa_modelEcallBackFv
/* 8004C03C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004C040  83 C1 00 08 */	lwz r30, 8(r1)
/* 8004C044  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004C048  7C 08 03 A6 */	mtlr r0
/* 8004C04C  38 21 00 10 */	addi r1, r1, 0x10
/* 8004C050  4E 80 00 20 */	blr 
