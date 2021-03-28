lbl_8054048C:
/* 8054048C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80540490  7C 08 02 A6 */	mflr r0
/* 80540494  90 01 00 34 */	stw r0, 0x34(r1)
/* 80540498  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8054049C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 805404A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805404A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805404A8  7C 7E 1B 78 */	mr r30, r3
/* 805404AC  48 00 05 8D */	bl selectAction__19daNpc_FairySeirei_cFv
/* 805404B0  7F C3 F3 78 */	mr r3, r30
/* 805404B4  48 00 00 FD */	bl srchActors__19daNpc_FairySeirei_cFv
/* 805404B8  3C 60 80 54 */	lis r3, m__25daNpc_FairySeirei_Param_c@ha
/* 805404BC  3B E3 1D 8C */	addi r31, r3, m__25daNpc_FairySeirei_Param_c@l
/* 805404C0  C3 FF 00 90 */	lfs f31, 0x90(r31)
/* 805404C4  38 60 00 28 */	li r3, 0x28
/* 805404C8  48 00 00 D5 */	bl getDistTable__12dAttention_cFi
/* 805404CC  D3 E3 00 00 */	stfs f31, 0(r3)
/* 805404D0  38 60 00 28 */	li r3, 0x28
/* 805404D4  48 00 00 C9 */	bl getDistTable__12dAttention_cFi
/* 805404D8  D3 E3 00 04 */	stfs f31, 4(r3)
/* 805404DC  38 60 00 27 */	li r3, 0x27
/* 805404E0  48 00 00 BD */	bl getDistTable__12dAttention_cFi
/* 805404E4  D3 E3 00 00 */	stfs f31, 0(r3)
/* 805404E8  38 60 00 27 */	li r3, 0x27
/* 805404EC  48 00 00 B1 */	bl getDistTable__12dAttention_cFi
/* 805404F0  D3 E3 00 04 */	stfs f31, 4(r3)
/* 805404F4  38 00 00 27 */	li r0, 0x27
/* 805404F8  98 1E 05 44 */	stb r0, 0x544(r30)
/* 805404FC  98 1E 05 45 */	stb r0, 0x545(r30)
/* 80540500  98 1E 05 47 */	stb r0, 0x547(r30)
/* 80540504  38 00 00 08 */	li r0, 8
/* 80540508  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8054050C  3C 60 80 54 */	lis r3, m__25daNpc_FairySeirei_Param_c@ha
/* 80540510  38 63 1D 8C */	addi r3, r3, m__25daNpc_FairySeirei_Param_c@l
/* 80540514  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80540518  FC 00 00 1E */	fctiwz f0, f0
/* 8054051C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80540520  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80540524  98 1E 08 78 */	stb r0, 0x878(r30)
/* 80540528  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8054052C  D0 1E 0D EC */	stfs f0, 0xdec(r30)
/* 80540530  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80540534  D0 1E 0D F0 */	stfs f0, 0xdf0(r30)
/* 80540538  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 8054053C  D0 1E 0D F8 */	stfs f0, 0xdf8(r30)
/* 80540540  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80540544  C0 3E 0D F0 */	lfs f1, 0xdf0(r30)
/* 80540548  4B B3 59 F8 */	b SetWallR__12dBgS_AcchCirFf
/* 8054054C  3C 60 80 54 */	lis r3, m__25daNpc_FairySeirei_Param_c@ha
/* 80540550  38 63 1D 8C */	addi r3, r3, m__25daNpc_FairySeirei_Param_c@l
/* 80540554  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80540558  D0 1E 08 D0 */	stfs f0, 0x8d0(r30)
/* 8054055C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80540560  D0 1E 0D E8 */	stfs f0, 0xde8(r30)
/* 80540564  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80540568  D0 1E 0A 80 */	stfs f0, 0xa80(r30)
/* 8054056C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80540570  D0 1E 0A 84 */	stfs f0, 0xa84(r30)
/* 80540574  C0 03 00 04 */	lfs f0, 4(r3)
/* 80540578  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8054057C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80540580  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80540584  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80540588  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8054058C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80540590  7C 08 03 A6 */	mtlr r0
/* 80540594  38 21 00 30 */	addi r1, r1, 0x30
/* 80540598  4E 80 00 20 */	blr 
