lbl_80C5285C:
/* 80C5285C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C52860  7C 08 02 A6 */	mflr r0
/* 80C52864  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C52868  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5286C  7C 7F 1B 78 */	mr r31, r3
/* 80C52870  48 00 00 21 */	bl setBaseMtx__14daObjLndRope_cFv
/* 80C52874  38 1F 05 AC */	addi r0, r31, 0x5ac
/* 80C52878  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C5287C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C52880  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C52884  7C 08 03 A6 */	mtlr r0
/* 80C52888  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5288C  4E 80 00 20 */	blr 
