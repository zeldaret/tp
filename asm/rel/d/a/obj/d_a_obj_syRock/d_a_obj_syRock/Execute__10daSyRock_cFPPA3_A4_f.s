lbl_80D02BE0:
/* 80D02BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D02BE4  7C 08 02 A6 */	mflr r0
/* 80D02BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D02BEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D02BF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D02BF4  7C 7E 1B 78 */	mr r30, r3
/* 80D02BF8  7C 9F 23 78 */	mr r31, r4
/* 80D02BFC  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80D02C00  4B 34 5C 6D */	bl eventUpdate__17dEvLib_callback_cFv
/* 80D02C04  7F C3 F3 78 */	mr r3, r30
/* 80D02C08  48 00 00 4D */	bl move__10daSyRock_cFv
/* 80D02C0C  88 1E 09 9C */	lbz r0, 0x99c(r30)
/* 80D02C10  54 00 10 3A */	slwi r0, r0, 2
/* 80D02C14  7C 7E 02 14 */	add r3, r30, r0
/* 80D02C18  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 80D02C1C  38 03 00 24 */	addi r0, r3, 0x24
/* 80D02C20  90 1F 00 00 */	stw r0, 0(r31)
/* 80D02C24  80 1E 07 E8 */	lwz r0, 0x7e8(r30)
/* 80D02C28  54 00 A7 FE */	rlwinm r0, r0, 0x14, 0x1f, 0x1f
/* 80D02C2C  98 1E 07 78 */	stb r0, 0x778(r30)
/* 80D02C30  7F C3 F3 78 */	mr r3, r30
/* 80D02C34  4B FF F7 49 */	bl setBaseMtx__10daSyRock_cFv
/* 80D02C38  38 60 00 01 */	li r3, 1
/* 80D02C3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D02C40  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D02C44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D02C48  7C 08 03 A6 */	mtlr r0
/* 80D02C4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D02C50  4E 80 00 20 */	blr 
