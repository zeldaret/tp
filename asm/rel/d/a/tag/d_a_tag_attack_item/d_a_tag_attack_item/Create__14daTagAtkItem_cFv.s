lbl_805A2990:
/* 805A2990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2994  7C 08 02 A6 */	mflr r0
/* 805A2998  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A299C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A29A0  7C 7F 1B 78 */	mr r31, r3
/* 805A29A4  38 7F 05 84 */	addi r3, r31, 0x584
/* 805A29A8  38 80 00 00 */	li r4, 0
/* 805A29AC  38 A0 00 FF */	li r5, 0xff
/* 805A29B0  7F E6 FB 78 */	mr r6, r31
/* 805A29B4  4B AE 0E AD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 805A29B8  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805A29BC  3C 80 80 5A */	lis r4, l_cyl_src@ha /* 0x805A32F4@ha */
/* 805A29C0  38 84 32 F4 */	addi r4, r4, l_cyl_src@l /* 0x805A32F4@l */
/* 805A29C4  4B AE 1E F1 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 805A29C8  38 1F 05 84 */	addi r0, r31, 0x584
/* 805A29CC  90 1F 06 04 */	stw r0, 0x604(r31)
/* 805A29D0  38 7F 06 E4 */	addi r3, r31, 0x6e4
/* 805A29D4  3C 80 80 5A */	lis r4, lit_3657@ha /* 0x805A32C8@ha */
/* 805A29D8  C0 24 32 C8 */	lfs f1, lit_3657@l(r4)  /* 0x805A32C8@l */
/* 805A29DC  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 805A29E0  EC 21 00 32 */	fmuls f1, f1, f0
/* 805A29E4  4B CC C8 1D */	bl SetR__8cM3dGCylFf
/* 805A29E8  38 7F 06 E4 */	addi r3, r31, 0x6e4
/* 805A29EC  3C 80 80 5A */	lis r4, lit_3658@ha /* 0x805A32CC@ha */
/* 805A29F0  C0 24 32 CC */	lfs f1, lit_3658@l(r4)  /* 0x805A32CC@l */
/* 805A29F4  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 805A29F8  EC 21 00 32 */	fmuls f1, f1, f0
/* 805A29FC  4B CC C7 FD */	bl SetH__8cM3dGCylFf
/* 805A2A00  C0 5F 04 AC */	lfs f2, 0x4ac(r31)
/* 805A2A04  3C 60 80 5A */	lis r3, lit_3658@ha /* 0x805A32CC@ha */
/* 805A2A08  C0 23 32 CC */	lfs f1, lit_3658@l(r3)  /* 0x805A32CC@l */
/* 805A2A0C  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 805A2A10  EC 01 00 32 */	fmuls f0, f1, f0
/* 805A2A14  EC 02 00 28 */	fsubs f0, f2, f0
/* 805A2A18  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805A2A1C  38 60 00 01 */	li r3, 1
/* 805A2A20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A2A24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2A28  7C 08 03 A6 */	mtlr r0
/* 805A2A2C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2A30  4E 80 00 20 */	blr 
