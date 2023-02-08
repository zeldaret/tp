lbl_80CCDFA4:
/* 80CCDFA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCDFA8  7C 08 02 A6 */	mflr r0
/* 80CCDFAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCDFB0  80 83 05 AC */	lwz r4, 0x5ac(r3)
/* 80CCDFB4  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80CCDFB8  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80CCDFBC  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80CCDFC0  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80CCDFC4  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80CCDFC8  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80CCDFCC  48 00 00 15 */	bl setBaseMtx__14daObj_Sekizo_cFv
/* 80CCDFD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCDFD4  7C 08 03 A6 */	mtlr r0
/* 80CCDFD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCDFDC  4E 80 00 20 */	blr 
