lbl_80BB558C:
/* 80BB558C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB5590  7C 08 02 A6 */	mflr r0
/* 80BB5594  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB5598  80 83 05 EC */	lwz r4, 0x5ec(r3)
/* 80BB559C  38 04 00 24 */	addi r0, r4, 0x24
/* 80BB55A0  90 03 05 04 */	stw r0, 0x504(r3)
/* 80BB55A4  48 00 00 15 */	bl setBaseMtx__15daObjBhbridge_cFv
/* 80BB55A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB55AC  7C 08 03 A6 */	mtlr r0
/* 80BB55B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB55B4  4E 80 00 20 */	blr 
