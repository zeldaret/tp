lbl_80C8A7E8:
/* 80C8A7E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8A7EC  7C 08 02 A6 */	mflr r0
/* 80C8A7F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8A7F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8A7F8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C8A7FC  7C 7E 1B 78 */	mr r30, r3
/* 80C8A800  7C 9F 23 78 */	mr r31, r4
/* 80C8A804  48 00 00 45 */	bl moveLift__12daOptiLift_cFv
/* 80C8A808  7F C3 F3 78 */	mr r3, r30
/* 80C8A80C  4B FF FF 75 */	bl lightSet__12daOptiLift_cFv
/* 80C8A810  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C8A814  38 03 00 24 */	addi r0, r3, 0x24
/* 80C8A818  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8A81C  7F C3 F3 78 */	mr r3, r30
/* 80C8A820  4B FF FB 91 */	bl setBaseMtx__12daOptiLift_cFv
/* 80C8A824  38 00 00 00 */	li r0, 0
/* 80C8A828  98 1E 05 EB */	stb r0, 0x5eb(r30)
/* 80C8A82C  38 60 00 01 */	li r3, 1
/* 80C8A830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8A834  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C8A838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8A83C  7C 08 03 A6 */	mtlr r0
/* 80C8A840  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8A844  4E 80 00 20 */	blr 
