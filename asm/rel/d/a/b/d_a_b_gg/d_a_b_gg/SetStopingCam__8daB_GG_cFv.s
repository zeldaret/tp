lbl_805DFD78:
/* 805DFD78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DFD7C  7C 08 02 A6 */	mflr r0
/* 805DFD80  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DFD84  7C 66 1B 78 */	mr r6, r3
/* 805DFD88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805DFD8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805DFD90  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 805DFD94  7C 00 07 74 */	extsb r0, r0
/* 805DFD98  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805DFD9C  7C 63 02 14 */	add r3, r3, r0
/* 805DFDA0  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 805DFDA4  C0 06 05 F4 */	lfs f0, 0x5f4(r6)
/* 805DFDA8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805DFDAC  C0 06 05 F8 */	lfs f0, 0x5f8(r6)
/* 805DFDB0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805DFDB4  C0 06 05 FC */	lfs f0, 0x5fc(r6)
/* 805DFDB8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805DFDBC  C0 06 06 00 */	lfs f0, 0x600(r6)
/* 805DFDC0  D0 01 00 08 */	stfs f0, 8(r1)
/* 805DFDC4  C0 06 06 04 */	lfs f0, 0x604(r6)
/* 805DFDC8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805DFDCC  C0 06 06 08 */	lfs f0, 0x608(r6)
/* 805DFDD0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805DFDD4  38 63 02 48 */	addi r3, r3, 0x248
/* 805DFDD8  38 81 00 14 */	addi r4, r1, 0x14
/* 805DFDDC  38 A1 00 08 */	addi r5, r1, 8
/* 805DFDE0  C0 26 06 3C */	lfs f1, 0x63c(r6)
/* 805DFDE4  38 C0 00 00 */	li r6, 0
/* 805DFDE8  4B BA 0C F9 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 805DFDEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DFDF0  7C 08 03 A6 */	mtlr r0
/* 805DFDF4  38 21 00 20 */	addi r1, r1, 0x20
/* 805DFDF8  4E 80 00 20 */	blr 
