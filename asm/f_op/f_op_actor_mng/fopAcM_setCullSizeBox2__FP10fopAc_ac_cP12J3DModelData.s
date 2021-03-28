lbl_8001A578:
/* 8001A578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001A57C  7C 08 02 A6 */	mflr r0
/* 8001A580  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001A584  80 84 00 28 */	lwz r4, 0x28(r4)
/* 8001A588  80 84 00 00 */	lwz r4, 0(r4)
/* 8001A58C  C0 C3 04 F4 */	lfs f6, 0x4f4(r3)
/* 8001A590  C0 A3 04 F0 */	lfs f5, 0x4f0(r3)
/* 8001A594  C0 83 04 EC */	lfs f4, 0x4ec(r3)
/* 8001A598  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 8001A59C  EC 24 00 32 */	fmuls f1, f4, f0
/* 8001A5A0  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8001A5A4  EC 45 00 32 */	fmuls f2, f5, f0
/* 8001A5A8  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 8001A5AC  EC 66 00 32 */	fmuls f3, f6, f0
/* 8001A5B0  C0 04 00 48 */	lfs f0, 0x48(r4)
/* 8001A5B4  EC 84 00 32 */	fmuls f4, f4, f0
/* 8001A5B8  C0 04 00 4C */	lfs f0, 0x4c(r4)
/* 8001A5BC  EC A5 00 32 */	fmuls f5, f5, f0
/* 8001A5C0  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 8001A5C4  EC C6 00 32 */	fmuls f6, f6, f0
/* 8001A5C8  4B FF FF 81 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 8001A5CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001A5D0  7C 08 03 A6 */	mtlr r0
/* 8001A5D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8001A5D8  4E 80 00 20 */	blr 
