lbl_80C14DA0:
/* 80C14DA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C14DA4  7C 08 02 A6 */	mflr r0
/* 80C14DA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C14DAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C14DB0  7C 7F 1B 78 */	mr r31, r3
/* 80C14DB4  4B FF FE 25 */	bl setBaseMtx__14daObjGrzRock_cFv
/* 80C14DB8  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C14DBC  38 03 00 24 */	addi r0, r3, 0x24
/* 80C14DC0  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C14DC4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C14DC8  80 63 00 04 */	lwz r3, 4(r3)
/* 80C14DCC  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C14DD0  80 83 00 00 */	lwz r4, 0(r3)
/* 80C14DD4  7F E3 FB 78 */	mr r3, r31
/* 80C14DD8  C0 24 00 3C */	lfs f1, 0x3c(r4)
/* 80C14DDC  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 80C14DE0  C0 64 00 44 */	lfs f3, 0x44(r4)
/* 80C14DE4  C0 84 00 48 */	lfs f4, 0x48(r4)
/* 80C14DE8  C0 A4 00 4C */	lfs f5, 0x4c(r4)
/* 80C14DEC  C0 C4 00 50 */	lfs f6, 0x50(r4)
/* 80C14DF0  4B 40 57 58 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C14DF4  38 7F 07 84 */	addi r3, r31, 0x784
/* 80C14DF8  3C 80 80 C1 */	lis r4, lit_3886@ha
/* 80C14DFC  C0 24 53 74 */	lfs f1, lit_3886@l(r4)
/* 80C14E00  FC 40 08 90 */	fmr f2, f1
/* 80C14E04  4B 46 11 54 */	b SetWall__12dBgS_AcchCirFff
/* 80C14E08  38 1F 04 E4 */	addi r0, r31, 0x4e4
/* 80C14E0C  90 01 00 08 */	stw r0, 8(r1)
/* 80C14E10  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80C14E14  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C14E18  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80C14E1C  7F E6 FB 78 */	mr r6, r31
/* 80C14E20  38 E0 00 01 */	li r7, 1
/* 80C14E24  39 1F 07 84 */	addi r8, r31, 0x784
/* 80C14E28  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80C14E2C  39 5F 04 DC */	addi r10, r31, 0x4dc
/* 80C14E30  4B 46 14 18 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C14E34  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80C14E38  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C14E3C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C14E40  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C14E44  4B 46 1C 68 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80C14E48  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 80C14E4C  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 80C14E50  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 80C14E54  90 1F 07 C8 */	stw r0, 0x7c8(r31)
/* 80C14E58  80 1F 06 90 */	lwz r0, 0x690(r31)
/* 80C14E5C  90 1F 07 CC */	stw r0, 0x7cc(r31)
/* 80C14E60  88 1F 06 94 */	lbz r0, 0x694(r31)
/* 80C14E64  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 80C14E68  A0 1F 06 9C */	lhz r0, 0x69c(r31)
/* 80C14E6C  B0 1F 07 D8 */	sth r0, 0x7d8(r31)
/* 80C14E70  A0 1F 06 9E */	lhz r0, 0x69e(r31)
/* 80C14E74  B0 1F 07 DA */	sth r0, 0x7da(r31)
/* 80C14E78  80 1F 06 A0 */	lwz r0, 0x6a0(r31)
/* 80C14E7C  90 1F 07 DC */	stw r0, 0x7dc(r31)
/* 80C14E80  80 1F 06 A4 */	lwz r0, 0x6a4(r31)
/* 80C14E84  90 1F 07 E0 */	stw r0, 0x7e0(r31)
/* 80C14E88  C0 1F 06 AC */	lfs f0, 0x6ac(r31)
/* 80C14E8C  D0 1F 07 E8 */	stfs f0, 0x7e8(r31)
/* 80C14E90  C0 1F 06 B0 */	lfs f0, 0x6b0(r31)
/* 80C14E94  D0 1F 07 EC */	stfs f0, 0x7ec(r31)
/* 80C14E98  C0 1F 06 B4 */	lfs f0, 0x6b4(r31)
/* 80C14E9C  D0 1F 07 F0 */	stfs f0, 0x7f0(r31)
/* 80C14EA0  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80C14EA4  90 1F 07 F4 */	stw r0, 0x7f4(r31)
/* 80C14EA8  C0 1F 06 BC */	lfs f0, 0x6bc(r31)
/* 80C14EAC  D0 1F 07 F8 */	stfs f0, 0x7f8(r31)
/* 80C14EB0  80 1F 06 C0 */	lwz r0, 0x6c0(r31)
/* 80C14EB4  90 1F 07 FC */	stw r0, 0x7fc(r31)
/* 80C14EB8  7F E3 FB 78 */	mr r3, r31
/* 80C14EBC  4B FF FD 99 */	bl setEnvTevColor__14daObjGrzRock_cFv
/* 80C14EC0  7F E3 FB 78 */	mr r3, r31
/* 80C14EC4  4B FF FD ED */	bl setRoomNo__14daObjGrzRock_cFv
/* 80C14EC8  38 60 00 01 */	li r3, 1
/* 80C14ECC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C14ED0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C14ED4  7C 08 03 A6 */	mtlr r0
/* 80C14ED8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C14EDC  4E 80 00 20 */	blr 
