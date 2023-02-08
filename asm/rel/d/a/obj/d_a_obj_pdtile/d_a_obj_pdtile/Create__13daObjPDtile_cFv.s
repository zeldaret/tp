lbl_80CAB258:
/* 80CAB258  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CAB25C  7C 08 02 A6 */	mflr r0
/* 80CAB260  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CAB264  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CAB268  7C 7F 1B 78 */	mr r31, r3
/* 80CAB26C  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 80CAB270  80 9F 06 08 */	lwz r4, 0x608(r31)
/* 80CAB274  38 84 00 24 */	addi r4, r4, 0x24
/* 80CAB278  4B 69 B2 39 */	bl PSMTXCopy
/* 80CAB27C  38 1F 05 D8 */	addi r0, r31, 0x5d8
/* 80CAB280  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CAB284  80 9F 07 C8 */	lwz r4, 0x7c8(r31)
/* 80CAB288  7F E3 FB 78 */	mr r3, r31
/* 80CAB28C  C0 24 00 00 */	lfs f1, 0(r4)
/* 80CAB290  C0 44 00 04 */	lfs f2, 4(r4)
/* 80CAB294  C0 64 00 08 */	lfs f3, 8(r4)
/* 80CAB298  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80CAB29C  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80CAB2A0  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80CAB2A4  4B 36 F2 A5 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CAB2A8  3C 60 80 CB */	lis r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha /* 0x80CAACB8@ha */
/* 80CAB2AC  38 03 AC B8 */	addi r0, r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l /* 0x80CAACB8@l */
/* 80CAB2B0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80CAB2B4  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80CAB2B8  38 00 00 00 */	li r0, 0
/* 80CAB2BC  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80CAB2C0  98 1F 06 14 */	stb r0, 0x614(r31)
/* 80CAB2C4  90 1F 06 18 */	stw r0, 0x618(r31)
/* 80CAB2C8  3C 60 80 CB */	lis r3, lit_3683@ha /* 0x80CAC518@ha */
/* 80CAB2CC  C0 03 C5 18 */	lfs f0, lit_3683@l(r3)  /* 0x80CAC518@l */
/* 80CAB2D0  D0 1F 06 1C */	stfs f0, 0x61c(r31)
/* 80CAB2D4  D0 1F 06 2C */	stfs f0, 0x62c(r31)
/* 80CAB2D8  98 1F 06 30 */	stb r0, 0x630(r31)
/* 80CAB2DC  38 7F 06 34 */	addi r3, r31, 0x634
/* 80CAB2E0  38 80 00 FF */	li r4, 0xff
/* 80CAB2E4  38 A0 00 00 */	li r5, 0
/* 80CAB2E8  7F E6 FB 78 */	mr r6, r31
/* 80CAB2EC  4B 3D 85 75 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CAB2F0  38 7F 06 70 */	addi r3, r31, 0x670
/* 80CAB2F4  3C 80 80 CB */	lis r4, cc_cyl_src@ha /* 0x80CAC648@ha */
/* 80CAB2F8  38 84 C6 48 */	addi r4, r4, cc_cyl_src@l /* 0x80CAC648@l */
/* 80CAB2FC  4B 3D 95 B9 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CAB300  38 1F 06 34 */	addi r0, r31, 0x634
/* 80CAB304  90 1F 06 B4 */	stw r0, 0x6b4(r31)
/* 80CAB308  38 00 00 00 */	li r0, 0
/* 80CAB30C  90 1F 07 AC */	stw r0, 0x7ac(r31)
/* 80CAB310  B0 1F 07 B0 */	sth r0, 0x7b0(r31)
/* 80CAB314  3C 60 80 CB */	lis r3, lit_3780@ha /* 0x80CAC52C@ha */
/* 80CAB318  C0 23 C5 2C */	lfs f1, lit_3780@l(r3)  /* 0x80CAC52C@l */
/* 80CAB31C  4B 5B C6 39 */	bl cM_rndF__Ff
/* 80CAB320  FC 00 08 1E */	fctiwz f0, f1
/* 80CAB324  D8 01 00 08 */	stfd f0, 8(r1)
/* 80CAB328  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80CAB32C  B0 1F 07 B2 */	sth r0, 0x7b2(r31)
/* 80CAB330  38 00 00 00 */	li r0, 0
/* 80CAB334  98 1F 07 B4 */	stb r0, 0x7b4(r31)
/* 80CAB338  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 80CAB33C  90 1F 07 D8 */	stw r0, 0x7d8(r31)
/* 80CAB340  38 7F 07 DC */	addi r3, r31, 0x7dc
/* 80CAB344  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CAB348  38 A0 00 01 */	li r5, 1
/* 80CAB34C  81 9F 07 EC */	lwz r12, 0x7ec(r31)
/* 80CAB350  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CAB354  7D 89 03 A6 */	mtctr r12
/* 80CAB358  4E 80 04 21 */	bctrl 
/* 80CAB35C  38 60 00 01 */	li r3, 1
/* 80CAB360  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CAB364  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CAB368  7C 08 03 A6 */	mtlr r0
/* 80CAB36C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CAB370  4E 80 00 20 */	blr 
