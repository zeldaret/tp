lbl_80D15F0C:
/* 80D15F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D15F10  7C 08 02 A6 */	mflr r0
/* 80D15F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D15F18  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80D15F1C  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D15F20  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80D15F24  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80D15F28  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80D15F2C  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80D15F30  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80D15F34  48 00 00 15 */	bl setBaseMtx__16daObjTobyHouse_cFv
/* 80D15F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D15F3C  7C 08 03 A6 */	mtlr r0
/* 80D15F40  38 21 00 10 */	addi r1, r1, 0x10
/* 80D15F44  4E 80 00 20 */	blr 
