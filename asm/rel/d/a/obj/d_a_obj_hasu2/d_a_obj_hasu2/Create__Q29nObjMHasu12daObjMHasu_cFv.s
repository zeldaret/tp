lbl_80C184B0:
/* 80C184B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C184B4  7C 08 02 A6 */	mflr r0
/* 80C184B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C184BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C184C0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C184C4  7C 7E 1B 78 */	mr r30, r3
/* 80C184C8  3C 60 80 C2 */	lis r3, l_cull_box@ha /* 0x80C18A58@ha */
/* 80C184CC  3B E3 8A 58 */	addi r31, r3, l_cull_box@l /* 0x80C18A58@l */
/* 80C184D0  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80C184D4  80 9E 06 08 */	lwz r4, 0x608(r30)
/* 80C184D8  38 84 00 24 */	addi r4, r4, 0x24
/* 80C184DC  4B 72 DF D5 */	bl PSMTXCopy
/* 80C184E0  38 1E 05 D8 */	addi r0, r30, 0x5d8
/* 80C184E4  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C184E8  7F C3 F3 78 */	mr r3, r30
/* 80C184EC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C184F0  38 9F 00 00 */	addi r4, r31, 0
/* 80C184F4  C0 44 00 04 */	lfs f2, 4(r4)
/* 80C184F8  C0 64 00 08 */	lfs f3, 8(r4)
/* 80C184FC  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80C18500  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80C18504  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80C18508  4B 40 20 41 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C1850C  3C 60 80 C2 */	lis r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha /* 0x80C18298@ha */
/* 80C18510  38 03 82 98 */	addi r0, r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l /* 0x80C18298@l */
/* 80C18514  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80C18518  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80C1851C  38 60 00 00 */	li r3, 0
/* 80C18520  88 1E 06 0C */	lbz r0, 0x60c(r30)
/* 80C18524  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80C18528  98 1E 06 0C */	stb r0, 0x60c(r30)
/* 80C1852C  4B 64 F3 41 */	bl cM_rnd__Fv
/* 80C18530  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80C18534  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C18538  40 81 00 10 */	ble lbl_80C18548
/* 80C1853C  C0 1E 06 14 */	lfs f0, 0x614(r30)
/* 80C18540  D0 1E 06 2C */	stfs f0, 0x62c(r30)
/* 80C18544  48 00 00 10 */	b lbl_80C18554
lbl_80C18548:
/* 80C18548  C0 1E 06 14 */	lfs f0, 0x614(r30)
/* 80C1854C  FC 00 00 50 */	fneg f0, f0
/* 80C18550  D0 1E 06 2C */	stfs f0, 0x62c(r30)
lbl_80C18554:
/* 80C18554  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C18558  D0 1E 06 1C */	stfs f0, 0x61c(r30)
/* 80C1855C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C18560  D0 1E 06 20 */	stfs f0, 0x620(r30)
/* 80C18564  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C18568  D0 1E 06 24 */	stfs f0, 0x624(r30)
/* 80C1856C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80C18570  4B 64 F3 E5 */	bl cM_rndF__Ff
/* 80C18574  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80C18578  EC 00 08 2A */	fadds f0, f0, f1
/* 80C1857C  D0 1E 06 28 */	stfs f0, 0x628(r30)
/* 80C18580  38 00 00 00 */	li r0, 0
/* 80C18584  98 1E 06 30 */	stb r0, 0x630(r30)
/* 80C18588  38 60 00 01 */	li r3, 1
/* 80C1858C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C18590  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C18594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C18598  7C 08 03 A6 */	mtlr r0
/* 80C1859C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C185A0  4E 80 00 20 */	blr 
