lbl_80BAE5FC:
/* 80BAE5FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAE600  7C 08 02 A6 */	mflr r0
/* 80BAE604  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAE608  3C 80 80 BB */	lis r4, lit_3933@ha /* 0x80BB3820@ha */
/* 80BAE60C  C0 04 38 20 */	lfs f0, lit_3933@l(r4)  /* 0x80BB3820@l */
/* 80BAE610  D0 03 10 A0 */	stfs f0, 0x10a0(r3)
/* 80BAE614  D0 03 10 A4 */	stfs f0, 0x10a4(r3)
/* 80BAE618  3C 80 80 BB */	lis r4, lit_3934@ha /* 0x80BB3824@ha */
/* 80BAE61C  C0 04 38 24 */	lfs f0, lit_3934@l(r4)  /* 0x80BB3824@l */
/* 80BAE620  D0 03 10 A8 */	stfs f0, 0x10a8(r3)
/* 80BAE624  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80BAE628  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80BAE62C  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80BAE630  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80BAE634  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80BAE638  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80BAE63C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80BAE640  80 83 05 C4 */	lwz r4, 0x5c4(r3)
/* 80BAE644  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80BAE648  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80BAE64C  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80BAE650  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80BAE654  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80BAE658  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80BAE65C  80 83 05 B4 */	lwz r4, 0x5b4(r3)
/* 80BAE660  C0 03 10 A0 */	lfs f0, 0x10a0(r3)
/* 80BAE664  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80BAE668  C0 03 10 A4 */	lfs f0, 0x10a4(r3)
/* 80BAE66C  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80BAE670  C0 03 10 A8 */	lfs f0, 0x10a8(r3)
/* 80BAE674  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80BAE678  48 00 00 15 */	bl setBaseMtx__9daObjBm_cFv
/* 80BAE67C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAE680  7C 08 03 A6 */	mtlr r0
/* 80BAE684  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAE688  4E 80 00 20 */	blr 
