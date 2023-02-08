lbl_80BDDD38:
/* 80BDDD38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDDD3C  7C 08 02 A6 */	mflr r0
/* 80BDDD40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDDD44  80 83 05 B0 */	lwz r4, 0x5b0(r3)
/* 80BDDD48  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80BDDD4C  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80BDDD50  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80BDDD54  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80BDDD58  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80BDDD5C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80BDDD60  80 83 05 B4 */	lwz r4, 0x5b4(r3)
/* 80BDDD64  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80BDDD68  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80BDDD6C  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80BDDD70  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80BDDD74  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80BDDD78  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80BDDD7C  48 00 00 15 */	bl setBaseMtx__17daObjDmElevator_cFv
/* 80BDDD80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDDD84  7C 08 03 A6 */	mtlr r0
/* 80BDDD88  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDDD8C  4E 80 00 20 */	blr 
