lbl_80D188DC:
/* 80D188DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D188E0  7C 08 02 A6 */	mflr r0
/* 80D188E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D188E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D188EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80D188F0  7C 7E 1B 78 */	mr r30, r3
/* 80D188F4  3C 60 80 D2 */	lis r3, lit_3655@ha /* 0x80D18E98@ha */
/* 80D188F8  3B E3 8E 98 */	addi r31, r3, lit_3655@l /* 0x80D18E98@l */
/* 80D188FC  3C 60 80 D2 */	lis r3, l_HIO@ha /* 0x80D190B4@ha */
/* 80D18900  38 63 90 B4 */	addi r3, r3, l_HIO@l /* 0x80D190B4@l */
/* 80D18904  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 80D18908  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80D1890C  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80D18910  EC 41 00 24 */	fdivs f2, f1, f0
/* 80D18914  4B 55 7E 2D */	bl cLib_chaseF__FPfff
/* 80D18918  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80D1891C  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80D18920  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80D18924  EC 21 00 28 */	fsubs f1, f1, f0
/* 80D18928  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 80D1892C  C0 7E 05 2C */	lfs f3, 0x52c(r30)
/* 80D18930  FC 80 10 90 */	fmr f4, f2
/* 80D18934  4B 55 70 49 */	bl cLib_addCalc__FPfffff
/* 80D18938  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D1893C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80D18940  40 82 00 3C */	bne lbl_80D1897C
/* 80D18944  38 60 00 00 */	li r3, 0
/* 80D18948  38 00 00 04 */	li r0, 4
/* 80D1894C  7C 09 03 A6 */	mtctr r0
lbl_80D18950:
/* 80D18950  7C 9E 1A 14 */	add r4, r30, r3
/* 80D18954  80 04 05 F4 */	lwz r0, 0x5f4(r4)
/* 80D18958  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D1895C  90 04 05 F4 */	stw r0, 0x5f4(r4)
/* 80D18960  80 04 05 DC */	lwz r0, 0x5dc(r4)
/* 80D18964  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D18968  90 04 05 DC */	stw r0, 0x5dc(r4)
/* 80D1896C  38 63 01 3C */	addi r3, r3, 0x13c
/* 80D18970  42 00 FF E0 */	bdnz lbl_80D18950
/* 80D18974  7F C3 F3 78 */	mr r3, r30
/* 80D18978  4B FF FD 39 */	bl init_modeWait__12daTogeTrap_cFv
lbl_80D1897C:
/* 80D1897C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D18980  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D18984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D18988  7C 08 03 A6 */	mtlr r0
/* 80D1898C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D18990  4E 80 00 20 */	blr 
