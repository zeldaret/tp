lbl_80C84BCC:
/* 80C84BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C84BD0  7C 08 02 A6 */	mflr r0
/* 80C84BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C84BD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C84BDC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C84BE0  7C 7E 1B 78 */	mr r30, r3
/* 80C84BE4  7C 9F 23 78 */	mr r31, r4
/* 80C84BE8  48 00 00 35 */	bl moveGate__13daLv7BsGate_cFv
/* 80C84BEC  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C84BF0  38 03 00 24 */	addi r0, r3, 0x24
/* 80C84BF4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C84BF8  7F C3 F3 78 */	mr r3, r30
/* 80C84BFC  4B FF FD 35 */	bl setBaseMtx__13daLv7BsGate_cFv
/* 80C84C00  38 60 00 01 */	li r3, 1
/* 80C84C04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C84C08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C84C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C84C10  7C 08 03 A6 */	mtlr r0
/* 80C84C14  38 21 00 10 */	addi r1, r1, 0x10
/* 80C84C18  4E 80 00 20 */	blr 
