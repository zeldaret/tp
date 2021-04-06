lbl_80D23188:
/* 80D23188  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80D2318C  7C 08 02 A6 */	mflr r0
/* 80D23190  90 01 00 84 */	stw r0, 0x84(r1)
/* 80D23194  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80D23198  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80D2319C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80D231A0  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80D231A4  39 61 00 60 */	addi r11, r1, 0x60
/* 80D231A8  4B 63 F0 31 */	bl _savegpr_28
/* 80D231AC  7C 7F 1B 78 */	mr r31, r3
/* 80D231B0  3C 80 80 D2 */	lis r4, l_sph_src@ha /* 0x80D23DCC@ha */
/* 80D231B4  3B C4 3D CC */	addi r30, r4, l_sph_src@l /* 0x80D23DCC@l */
/* 80D231B8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D231BC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D231C0  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 80D231C4  3B 80 00 00 */	li r28, 0
/* 80D231C8  4B FF E9 51 */	bl getData__15daObjVolcBall_cFv
/* 80D231CC  C3 E3 00 0C */	lfs f31, 0xc(r3)
/* 80D231D0  7F E3 FB 78 */	mr r3, r31
/* 80D231D4  4B FF E9 45 */	bl getData__15daObjVolcBall_cFv
/* 80D231D8  C3 C3 00 10 */	lfs f30, 0x10(r3)
/* 80D231DC  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80D231E0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D231E4  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80D231E8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D231EC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D231F0  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80D231F4  4B 54 47 99 */	bl cM_rndFX__Ff
/* 80D231F8  FC 00 08 1E */	fctiwz f0, f1
/* 80D231FC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80D23200  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 80D23204  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D23208  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2320C  4B 2E 91 D1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80D23210  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D23214  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D23218  38 81 00 2C */	addi r4, r1, 0x2c
/* 80D2321C  7C 85 23 78 */	mr r5, r4
/* 80D23220  4B 62 3B 4D */	bl PSMTXMultVec
/* 80D23224  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80D23228  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D2322C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80D23230  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D23234  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80D23238  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D2323C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80D23240  7C 64 1B 78 */	mr r4, r3
/* 80D23244  FC 20 F8 90 */	fmr f1, f31
/* 80D23248  4B 62 3E 91 */	bl PSVECScale
/* 80D2324C  38 61 00 08 */	addi r3, r1, 8
/* 80D23250  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D23254  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80D23258  4B 54 38 8D */	bl __pl__4cXyzCFRC3Vec
/* 80D2325C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D23260  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D23264  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D23268  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D2326C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D23270  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D23274  FC 20 F0 90 */	fmr f1, f30
/* 80D23278  4B 54 46 DD */	bl cM_rndF__Ff
/* 80D2327C  38 61 00 20 */	addi r3, r1, 0x20
/* 80D23280  7C 64 1B 78 */	mr r4, r3
/* 80D23284  4B 62 3E 55 */	bl PSVECScale
/* 80D23288  38 61 00 14 */	addi r3, r1, 0x14
/* 80D2328C  38 81 00 20 */	addi r4, r1, 0x20
/* 80D23290  7C 65 1B 78 */	mr r5, r3
/* 80D23294  4B 62 3D FD */	bl PSVECAdd
/* 80D23298  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 80D2329C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80D232A0  EC 01 00 2A */	fadds f0, f1, f0
/* 80D232A4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D232A8  38 61 00 14 */	addi r3, r1, 0x14
/* 80D232AC  4B 2F AA 11 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80D232B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D232B4  40 82 00 0C */	bne lbl_80D232C0
/* 80D232B8  38 60 00 00 */	li r3, 0
/* 80D232BC  48 00 01 54 */	b lbl_80D23410
lbl_80D232C0:
/* 80D232C0  7F E3 FB 78 */	mr r3, r31
/* 80D232C4  4B FF E8 55 */	bl getData__15daObjVolcBall_cFv
/* 80D232C8  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80D232CC  4B 54 46 C1 */	bl cM_rndFX__Ff
/* 80D232D0  FF E0 08 90 */	fmr f31, f1
/* 80D232D4  7F E3 FB 78 */	mr r3, r31
/* 80D232D8  4B FF E8 41 */	bl getData__15daObjVolcBall_cFv
/* 80D232DC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80D232E0  EF C0 F8 2A */	fadds f30, f0, f31
/* 80D232E4  7F E3 FB 78 */	mr r3, r31
/* 80D232E8  4B FF E8 31 */	bl getData__15daObjVolcBall_cFv
/* 80D232EC  C3 E3 00 08 */	lfs f31, 8(r3)
/* 80D232F0  3B A0 FF FF */	li r29, -1
/* 80D232F4  38 80 00 00 */	li r4, 0
/* 80D232F8  38 60 00 00 */	li r3, 0
/* 80D232FC  38 00 00 08 */	li r0, 8
/* 80D23300  7C 09 03 A6 */	mtctr r0
lbl_80D23304:
/* 80D23304  38 03 09 82 */	addi r0, r3, 0x982
/* 80D23308  7C 1F 00 AE */	lbzx r0, r31, r0
/* 80D2330C  28 00 00 00 */	cmplwi r0, 0
/* 80D23310  40 82 00 0C */	bne lbl_80D2331C
/* 80D23314  7C 9D 23 78 */	mr r29, r4
/* 80D23318  48 00 00 10 */	b lbl_80D23328
lbl_80D2331C:
/* 80D2331C  38 84 00 01 */	addi r4, r4, 1
/* 80D23320  38 63 03 E0 */	addi r3, r3, 0x3e0
/* 80D23324  42 00 FF E0 */	bdnz lbl_80D23304
lbl_80D23328:
/* 80D23328  2C 1D FF FF */	cmpwi r29, -1
/* 80D2332C  41 82 00 E0 */	beq lbl_80D2340C
/* 80D23330  1C 7D 03 E0 */	mulli r3, r29, 0x3e0
/* 80D23334  3B 83 06 0C */	addi r28, r3, 0x60c
/* 80D23338  7F 9F E2 14 */	add r28, r31, r28
/* 80D2333C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80D23340  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80D23344  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80D23348  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80D2334C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D23350  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 80D23354  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80D23358  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 80D2335C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80D23360  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 80D23364  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D23368  D0 1C 00 18 */	stfs f0, 0x18(r28)
/* 80D2336C  D3 DC 00 1C */	stfs f30, 0x1c(r28)
/* 80D23370  D3 DC 00 20 */	stfs f30, 0x20(r28)
/* 80D23374  D3 DC 00 24 */	stfs f30, 0x24(r28)
/* 80D23378  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80D2337C  D0 1C 00 28 */	stfs f0, 0x28(r28)
/* 80D23380  D0 1C 00 2C */	stfs f0, 0x2c(r28)
/* 80D23384  D0 1C 00 30 */	stfs f0, 0x30(r28)
/* 80D23388  D0 1C 00 3C */	stfs f0, 0x3c(r28)
/* 80D2338C  D0 1C 00 40 */	stfs f0, 0x40(r28)
/* 80D23390  D0 1C 00 44 */	stfs f0, 0x44(r28)
/* 80D23394  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80D23398  4B 54 45 BD */	bl cM_rndF__Ff
/* 80D2339C  FC 00 08 1E */	fctiwz f0, f1
/* 80D233A0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80D233A4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80D233A8  B0 1C 00 36 */	sth r0, 0x36(r28)
/* 80D233AC  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80D233B0  D0 1C 00 4C */	stfs f0, 0x4c(r28)
/* 80D233B4  D3 FC 00 48 */	stfs f31, 0x48(r28)
/* 80D233B8  A8 1C 00 36 */	lha r0, 0x36(r28)
/* 80D233BC  B0 1C 03 74 */	sth r0, 0x374(r28)
/* 80D233C0  38 00 00 01 */	li r0, 1
/* 80D233C4  98 1C 03 76 */	stb r0, 0x376(r28)
/* 80D233C8  7F E3 FB 78 */	mr r3, r31
/* 80D233CC  7F A4 EB 78 */	mr r4, r29
/* 80D233D0  4B FF FB 05 */	bl setFallEffect__15daObjVolcBall_cFi
/* 80D233D4  7F E3 FB 78 */	mr r3, r31
/* 80D233D8  4B FF E7 41 */	bl getData__15daObjVolcBall_cFv
/* 80D233DC  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 80D233E0  4B 54 45 AD */	bl cM_rndFX__Ff
/* 80D233E4  FF E0 08 90 */	fmr f31, f1
/* 80D233E8  7F E3 FB 78 */	mr r3, r31
/* 80D233EC  4B FF E7 2D */	bl getData__15daObjVolcBall_cFv
/* 80D233F0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80D233F4  EC 00 F8 2A */	fadds f0, f0, f31
/* 80D233F8  FC 00 00 1E */	fctiwz f0, f0
/* 80D233FC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80D23400  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D23404  98 1F 06 02 */	stb r0, 0x602(r31)
/* 80D23408  3B 80 00 01 */	li r28, 1
lbl_80D2340C:
/* 80D2340C  7F 83 E3 78 */	mr r3, r28
lbl_80D23410:
/* 80D23410  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80D23414  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80D23418  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80D2341C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80D23420  39 61 00 60 */	addi r11, r1, 0x60
/* 80D23424  4B 63 EE 01 */	bl _restgpr_28
/* 80D23428  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80D2342C  7C 08 03 A6 */	mtlr r0
/* 80D23430  38 21 00 80 */	addi r1, r1, 0x80
/* 80D23434  4E 80 00 20 */	blr 
