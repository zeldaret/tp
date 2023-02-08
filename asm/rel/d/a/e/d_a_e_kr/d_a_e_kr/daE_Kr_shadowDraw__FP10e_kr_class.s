lbl_80700174:
/* 80700174  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80700178  7C 08 02 A6 */	mflr r0
/* 8070017C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80700180  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80700184  7C 7F 1B 78 */	mr r31, r3
/* 80700188  3C 60 80 70 */	lis r3, lit_3903@ha /* 0x80705AF8@ha */
/* 8070018C  39 43 5A F8 */	addi r10, r3, lit_3903@l /* 0x80705AF8@l */
/* 80700190  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80700194  80 A3 00 04 */	lwz r5, 4(r3)
/* 80700198  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 8070019C  C0 0A 00 3C */	lfs f0, 0x3c(r10)
/* 807001A0  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 807001A4  EC 20 18 2A */	fadds f1, f0, f3
/* 807001A8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807001AC  D0 01 00 08 */	stfs f0, 8(r1)
/* 807001B0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807001B4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 807001B8  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 807001BC  38 80 00 01 */	li r4, 1
/* 807001C0  38 C1 00 08 */	addi r6, r1, 8
/* 807001C4  C0 2A 00 40 */	lfs f1, 0x40(r10)
/* 807001C8  C0 4A 00 04 */	lfs f2, 4(r10)
/* 807001CC  C0 9F 07 DC */	lfs f4, 0x7dc(r31)
/* 807001D0  38 FF 08 34 */	addi r7, r31, 0x834
/* 807001D4  39 1F 01 0C */	addi r8, r31, 0x10c
/* 807001D8  39 20 00 00 */	li r9, 0
/* 807001DC  C0 AA 00 08 */	lfs f5, 8(r10)
/* 807001E0  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 807001E4  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 807001E8  4B 92 E7 29 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 807001EC  90 7F 05 BC */	stw r3, 0x5bc(r31)
/* 807001F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807001F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807001F8  7C 08 03 A6 */	mtlr r0
/* 807001FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80700200  4E 80 00 20 */	blr 
