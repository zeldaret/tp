lbl_80D618A4:
/* 80D618A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D618A8  7C 08 02 A6 */	mflr r0
/* 80D618AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D618B0  48 00 00 15 */	bl setBaseMtx__14daTagSpinner_cFv
/* 80D618B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D618B8  7C 08 03 A6 */	mtlr r0
/* 80D618BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D618C0  4E 80 00 20 */	blr 
