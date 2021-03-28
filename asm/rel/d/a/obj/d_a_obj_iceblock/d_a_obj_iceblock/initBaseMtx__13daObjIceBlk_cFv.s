lbl_80C21DC4:
/* 80C21DC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C21DC8  7C 08 02 A6 */	mflr r0
/* 80C21DCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C21DD0  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80C21DD4  28 04 00 00 */	cmplwi r4, 0
/* 80C21DD8  41 82 00 1C */	beq lbl_80C21DF4
/* 80C21DDC  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80C21DE0  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80C21DE4  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80C21DE8  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80C21DEC  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80C21DF0  D0 04 00 20 */	stfs f0, 0x20(r4)
lbl_80C21DF4:
/* 80C21DF4  80 83 05 AC */	lwz r4, 0x5ac(r3)
/* 80C21DF8  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80C21DFC  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80C21E00  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80C21E04  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80C21E08  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80C21E0C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80C21E10  48 00 00 15 */	bl setBaseMtx__13daObjIceBlk_cFv
/* 80C21E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C21E18  7C 08 03 A6 */	mtlr r0
/* 80C21E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C21E20  4E 80 00 20 */	blr 
