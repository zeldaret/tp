lbl_80CEF38C:
/* 80CEF38C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEF390  7C 08 02 A6 */	mflr r0
/* 80CEF394  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEF398  80 83 05 70 */	lwz r4, 0x570(r3)
/* 80CEF39C  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80CEF3A0  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80CEF3A4  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80CEF3A8  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80CEF3AC  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80CEF3B0  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80CEF3B4  48 00 00 15 */	bl setBaseMtx__15daObjStopper2_cFv
/* 80CEF3B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEF3BC  7C 08 03 A6 */	mtlr r0
/* 80CEF3C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEF3C4  4E 80 00 20 */	blr 
