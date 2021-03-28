lbl_8023A680:
/* 8023A680  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8023A684  7C 08 02 A6 */	mflr r0
/* 8023A688  90 01 00 44 */	stw r0, 0x44(r1)
/* 8023A68C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8023A690  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8023A694  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8023A698  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8023A69C  39 61 00 20 */	addi r11, r1, 0x20
/* 8023A6A0  48 12 7B 39 */	bl _savegpr_28
/* 8023A6A4  7C 7F 1B 78 */	mr r31, r3
/* 8023A6A8  88 03 01 13 */	lbz r0, 0x113(r3)
/* 8023A6AC  28 00 00 06 */	cmplwi r0, 6
/* 8023A6B0  40 82 00 0C */	bne lbl_8023A6BC
/* 8023A6B4  38 60 00 01 */	li r3, 1
/* 8023A6B8  48 00 02 54 */	b lbl_8023A90C
lbl_8023A6BC:
/* 8023A6BC  3B C0 00 00 */	li r30, 0
/* 8023A6C0  9B DF 01 14 */	stb r30, 0x114(r31)
/* 8023A6C4  88 1F 01 13 */	lbz r0, 0x113(r31)
/* 8023A6C8  28 00 00 05 */	cmplwi r0, 5
/* 8023A6CC  41 82 00 70 */	beq lbl_8023A73C
/* 8023A6D0  C0 02 B1 80 */	lfs f0, lit_4434(r2)
/* 8023A6D4  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
/* 8023A6D8  3B 80 00 00 */	li r28, 0
lbl_8023A6DC:
/* 8023A6DC  3B BE 00 34 */	addi r29, r30, 0x34
/* 8023A6E0  7C 7F E8 2E */	lwzx r3, r31, r29
/* 8023A6E4  80 63 00 04 */	lwz r3, 4(r3)
/* 8023A6E8  C3 E3 00 CC */	lfs f31, 0xcc(r3)
/* 8023A6EC  C3 C3 00 D0 */	lfs f30, 0xd0(r3)
/* 8023A6F0  7F E3 FB 78 */	mr r3, r31
/* 8023A6F4  7F 84 E3 78 */	mr r4, r28
/* 8023A6F8  48 00 11 79 */	bl selectAnimeTransform__17dMsgScrn3Select_cFi
/* 8023A6FC  7C 7F E8 2E */	lwzx r3, r31, r29
/* 8023A700  80 63 00 04 */	lwz r3, 4(r3)
/* 8023A704  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 8023A708  D3 C3 00 D0 */	stfs f30, 0xd0(r3)
/* 8023A70C  81 83 00 00 */	lwz r12, 0(r3)
/* 8023A710  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023A714  7D 89 03 A6 */	mtctr r12
/* 8023A718  4E 80 04 21 */	bctrl 
/* 8023A71C  3B 9C 00 01 */	addi r28, r28, 1
/* 8023A720  2C 1C 00 03 */	cmpwi r28, 3
/* 8023A724  3B DE 00 04 */	addi r30, r30, 4
/* 8023A728  41 80 FF B4 */	blt lbl_8023A6DC
/* 8023A72C  38 00 00 05 */	li r0, 5
/* 8023A730  98 1F 01 13 */	stb r0, 0x113(r31)
/* 8023A734  38 00 00 00 */	li r0, 0
/* 8023A738  98 1F 01 17 */	stb r0, 0x117(r31)
lbl_8023A73C:
/* 8023A73C  7F E3 FB 78 */	mr r3, r31
/* 8023A740  88 1F 01 13 */	lbz r0, 0x113(r31)
/* 8023A744  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8023A748  3C 80 80 3C */	lis r4, process@ha
/* 8023A74C  38 04 0C 54 */	addi r0, r4, process@l
/* 8023A750  7D 80 2A 14 */	add r12, r0, r5
/* 8023A754  48 12 79 31 */	bl __ptmf_scall
/* 8023A758  60 00 00 00 */	nop 
/* 8023A75C  C0 3F 00 F4 */	lfs f1, 0xf4(r31)
/* 8023A760  C0 02 B1 60 */	lfs f0, lit_3911(r2)
/* 8023A764  EC 01 00 2A */	fadds f0, f1, f0
/* 8023A768  D0 1F 00 F4 */	stfs f0, 0xf4(r31)
/* 8023A76C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8023A770  A8 03 00 06 */	lha r0, 6(r3)
/* 8023A774  C0 5F 00 F4 */	lfs f2, 0xf4(r31)
/* 8023A778  C8 22 B1 78 */	lfd f1, lit_4345(r2)
/* 8023A77C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8023A780  90 61 00 0C */	stw r3, 0xc(r1)
/* 8023A784  3C 00 43 30 */	lis r0, 0x4330
/* 8023A788  90 01 00 08 */	stw r0, 8(r1)
/* 8023A78C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8023A790  EC 00 08 28 */	fsubs f0, f0, f1
/* 8023A794  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8023A798  4C 41 13 82 */	cror 2, 1, 2
/* 8023A79C  40 82 00 1C */	bne lbl_8023A7B8
/* 8023A7A0  90 61 00 0C */	stw r3, 0xc(r1)
/* 8023A7A4  90 01 00 08 */	stw r0, 8(r1)
/* 8023A7A8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8023A7AC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8023A7B0  EC 02 00 28 */	fsubs f0, f2, f0
/* 8023A7B4  D0 1F 00 F4 */	stfs f0, 0xf4(r31)
lbl_8023A7B8:
/* 8023A7B8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8023A7BC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8023A7C0  D0 03 00 08 */	stfs f0, 8(r3)
/* 8023A7C4  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 8023A7C8  C0 02 B1 60 */	lfs f0, lit_3911(r2)
/* 8023A7CC  EC 01 00 2A */	fadds f0, f1, f0
/* 8023A7D0  D0 1F 00 F8 */	stfs f0, 0xf8(r31)
/* 8023A7D4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8023A7D8  A8 03 00 06 */	lha r0, 6(r3)
/* 8023A7DC  C0 5F 00 F8 */	lfs f2, 0xf8(r31)
/* 8023A7E0  C8 22 B1 78 */	lfd f1, lit_4345(r2)
/* 8023A7E4  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8023A7E8  90 61 00 0C */	stw r3, 0xc(r1)
/* 8023A7EC  3C 00 43 30 */	lis r0, 0x4330
/* 8023A7F0  90 01 00 08 */	stw r0, 8(r1)
/* 8023A7F4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8023A7F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8023A7FC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8023A800  4C 41 13 82 */	cror 2, 1, 2
/* 8023A804  40 82 00 1C */	bne lbl_8023A820
/* 8023A808  90 61 00 0C */	stw r3, 0xc(r1)
/* 8023A80C  90 01 00 08 */	stw r0, 8(r1)
/* 8023A810  C8 01 00 08 */	lfd f0, 8(r1)
/* 8023A814  EC 00 08 28 */	fsubs f0, f0, f1
/* 8023A818  EC 02 00 28 */	fsubs f0, f2, f0
/* 8023A81C  D0 1F 00 F8 */	stfs f0, 0xf8(r31)
lbl_8023A820:
/* 8023A820  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 8023A824  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8023A828  D0 03 00 08 */	stfs f0, 8(r3)
/* 8023A82C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023A830  48 0B EE 61 */	bl animation__9J2DScreenFv
/* 8023A834  3B 80 00 00 */	li r28, 0
/* 8023A838  3B C0 00 00 */	li r30, 0
lbl_8023A83C:
/* 8023A83C  88 1F 01 0E */	lbz r0, 0x10e(r31)
/* 8023A840  7C 1C 00 00 */	cmpw r28, r0
/* 8023A844  40 82 00 54 */	bne lbl_8023A898
/* 8023A848  7F BF F2 14 */	add r29, r31, r30
/* 8023A84C  80 7D 00 40 */	lwz r3, 0x40(r29)
/* 8023A850  80 63 00 04 */	lwz r3, 4(r3)
/* 8023A854  C0 02 B1 60 */	lfs f0, lit_3911(r2)
/* 8023A858  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8023A85C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8023A860  81 83 00 00 */	lwz r12, 0(r3)
/* 8023A864  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023A868  7D 89 03 A6 */	mtctr r12
/* 8023A86C  4E 80 04 21 */	bctrl 
/* 8023A870  80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 8023A874  80 63 00 04 */	lwz r3, 4(r3)
/* 8023A878  C0 02 B1 60 */	lfs f0, lit_3911(r2)
/* 8023A87C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8023A880  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8023A884  81 83 00 00 */	lwz r12, 0(r3)
/* 8023A888  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023A88C  7D 89 03 A6 */	mtctr r12
/* 8023A890  4E 80 04 21 */	bctrl 
/* 8023A894  48 00 00 50 */	b lbl_8023A8E4
lbl_8023A898:
/* 8023A898  7F BF F2 14 */	add r29, r31, r30
/* 8023A89C  80 7D 00 40 */	lwz r3, 0x40(r29)
/* 8023A8A0  80 63 00 04 */	lwz r3, 4(r3)
/* 8023A8A4  C0 02 B1 58 */	lfs f0, lit_3909(r2)
/* 8023A8A8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8023A8AC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8023A8B0  81 83 00 00 */	lwz r12, 0(r3)
/* 8023A8B4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023A8B8  7D 89 03 A6 */	mtctr r12
/* 8023A8BC  4E 80 04 21 */	bctrl 
/* 8023A8C0  80 7D 00 4C */	lwz r3, 0x4c(r29)
/* 8023A8C4  80 63 00 04 */	lwz r3, 4(r3)
/* 8023A8C8  C0 02 B1 58 */	lfs f0, lit_3909(r2)
/* 8023A8CC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8023A8D0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8023A8D4  81 83 00 00 */	lwz r12, 0(r3)
/* 8023A8D8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023A8DC  7D 89 03 A6 */	mtctr r12
/* 8023A8E0  4E 80 04 21 */	bctrl 
lbl_8023A8E4:
/* 8023A8E4  3B 9C 00 01 */	addi r28, r28, 1
/* 8023A8E8  2C 1C 00 03 */	cmpwi r28, 3
/* 8023A8EC  3B DE 00 04 */	addi r30, r30, 4
/* 8023A8F0  41 80 FF 4C */	blt lbl_8023A83C
/* 8023A8F4  7F E3 FB 78 */	mr r3, r31
/* 8023A8F8  48 00 0B B5 */	bl selectTrans__17dMsgScrn3Select_cFv
/* 8023A8FC  88 1F 01 13 */	lbz r0, 0x113(r31)
/* 8023A900  20 00 00 06 */	subfic r0, r0, 6
/* 8023A904  7C 00 00 34 */	cntlzw r0, r0
/* 8023A908  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
lbl_8023A90C:
/* 8023A90C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8023A910  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8023A914  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8023A918  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8023A91C  39 61 00 20 */	addi r11, r1, 0x20
/* 8023A920  48 12 79 05 */	bl _restgpr_28
/* 8023A924  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8023A928  7C 08 03 A6 */	mtlr r0
/* 8023A92C  38 21 00 40 */	addi r1, r1, 0x40
/* 8023A930  4E 80 00 20 */	blr 
