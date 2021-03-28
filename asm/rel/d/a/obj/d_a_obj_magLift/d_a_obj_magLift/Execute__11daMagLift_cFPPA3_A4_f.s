lbl_80C8DD38:
/* 80C8DD38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8DD3C  7C 08 02 A6 */	mflr r0
/* 80C8DD40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8DD44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8DD48  93 C1 00 08 */	stw r30, 8(r1)
/* 80C8DD4C  7C 7E 1B 78 */	mr r30, r3
/* 80C8DD50  7C 9F 23 78 */	mr r31, r4
/* 80C8DD54  48 00 00 35 */	bl moveLift__11daMagLift_cFv
/* 80C8DD58  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C8DD5C  38 03 00 24 */	addi r0, r3, 0x24
/* 80C8DD60  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8DD64  7F C3 F3 78 */	mr r3, r30
/* 80C8DD68  4B FF FD 39 */	bl setBaseMtx__11daMagLift_cFv
/* 80C8DD6C  38 60 00 01 */	li r3, 1
/* 80C8DD70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8DD74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C8DD78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8DD7C  7C 08 03 A6 */	mtlr r0
/* 80C8DD80  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8DD84  4E 80 00 20 */	blr 
