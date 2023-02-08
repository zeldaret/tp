lbl_8057FA4C:
/* 8057FA4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057FA50  7C 08 02 A6 */	mflr r0
/* 8057FA54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057FA58  48 00 14 49 */	bl create__13daObjHHASHI_cFv
/* 8057FA5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057FA60  7C 08 03 A6 */	mtlr r0
/* 8057FA64  38 21 00 10 */	addi r1, r1, 0x10
/* 8057FA68  4E 80 00 20 */	blr 
