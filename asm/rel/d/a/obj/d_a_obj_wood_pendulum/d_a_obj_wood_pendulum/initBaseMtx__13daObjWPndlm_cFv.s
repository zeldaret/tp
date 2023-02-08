lbl_80D39418:
/* 80D39418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3941C  7C 08 02 A6 */	mflr r0
/* 80D39420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D39424  80 83 05 70 */	lwz r4, 0x570(r3)
/* 80D39428  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D3942C  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80D39430  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80D39434  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80D39438  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80D3943C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80D39440  48 00 00 15 */	bl setBaseMtx__13daObjWPndlm_cFv
/* 80D39444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D39448  7C 08 03 A6 */	mtlr r0
/* 80D3944C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D39450  4E 80 00 20 */	blr 
