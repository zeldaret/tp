lbl_800412C0:
/* 800412C0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 800412C4  7C 08 02 A6 */	mflr r0
/* 800412C8  90 01 00 84 */	stw r0, 0x84(r1)
/* 800412CC  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 800412D0  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 800412D4  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 800412D8  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 800412DC  39 61 00 60 */	addi r11, r1, 0x60
/* 800412E0  48 32 0E F5 */	bl _savegpr_27
/* 800412E4  7C BC 2B 78 */	mr r28, r5
/* 800412E8  7C DB 33 78 */	mr r27, r6
/* 800412EC  C0 02 84 B8 */	lfs f0, lit_4731(r2)
/* 800412F0  EC 61 00 24 */	fdivs f3, f1, f0
/* 800412F4  C0 23 00 08 */	lfs f1, 8(r3)
/* 800412F8  A0 03 00 20 */	lhz r0, 0x20(r3)
/* 800412FC  C8 42 84 40 */	lfd f2, lit_4211(r2)
/* 80041300  90 01 00 34 */	stw r0, 0x34(r1)
/* 80041304  3C A0 43 30 */	lis r5, 0x4330
/* 80041308  90 A1 00 30 */	stw r5, 0x30(r1)
/* 8004130C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80041310  EC 00 10 28 */	fsubs f0, f0, f2
/* 80041314  EC 01 00 24 */	fdivs f0, f1, f0
/* 80041318  EF E3 00 32 */	fmuls f31, f3, f0
/* 8004131C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80041320  A0 03 00 22 */	lhz r0, 0x22(r3)
/* 80041324  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80041328  90 A1 00 38 */	stw r5, 0x38(r1)
/* 8004132C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80041330  EC 00 10 28 */	fsubs f0, f0, f2
/* 80041334  EC 01 00 24 */	fdivs f0, f1, f0
/* 80041338  EF C3 00 32 */	fmuls f30, f3, f0
/* 8004133C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80041340  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80041344  C0 24 00 00 */	lfs f1, 0(r4)
/* 80041348  C0 42 84 28 */	lfs f2, lit_3796(r2)
/* 8004134C  C0 64 00 08 */	lfs f3, 8(r4)
/* 80041350  48 30 55 99 */	bl PSMTXTrans
/* 80041354  FC 20 F8 90 */	fmr f1, f31
/* 80041358  C0 42 84 38 */	lfs f2, lit_4202(r2)
/* 8004135C  FC 60 F0 90 */	fmr f3, f30
/* 80041360  4B FC BA D9 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80041364  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80041368  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8004136C  7F 84 E3 78 */	mr r4, r28
/* 80041370  4B FC B0 C5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80041374  3B 80 00 00 */	li r28, 0
/* 80041378  3B E0 00 00 */	li r31, 0
/* 8004137C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80041380  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
/* 80041384  3C 60 80 38 */	lis r3, l_offset@ha
/* 80041388  3B C3 9D 5C */	addi r30, r3, l_offset@l
lbl_8004138C:
/* 8004138C  7F A3 EB 78 */	mr r3, r29
/* 80041390  7C 9E FA 14 */	add r4, r30, r31
/* 80041394  38 A1 00 0C */	addi r5, r1, 0xc
/* 80041398  7C A5 FA 14 */	add r5, r5, r31
/* 8004139C  48 30 59 D1 */	bl PSMTXMultVec
/* 800413A0  3B 9C 00 01 */	addi r28, r28, 1
/* 800413A4  2C 1C 00 03 */	cmpwi r28, 3
/* 800413A8  3B FF 00 0C */	addi r31, r31, 0xc
/* 800413AC  41 80 FF E0 */	blt lbl_8004138C
/* 800413B0  48 31 A1 DD */	bl GXClearVtxDesc
/* 800413B4  38 60 00 09 */	li r3, 9
/* 800413B8  38 80 00 01 */	li r4, 1
/* 800413BC  48 31 9A FD */	bl GXSetVtxDesc
/* 800413C0  38 60 00 00 */	li r3, 0
/* 800413C4  38 80 00 09 */	li r4, 9
/* 800413C8  38 A0 00 00 */	li r5, 0
/* 800413CC  38 C0 00 04 */	li r6, 4
/* 800413D0  38 E0 00 00 */	li r7, 0
/* 800413D4  48 31 A1 F1 */	bl GXSetVtxAttrFmt
/* 800413D8  57 60 16 3A */	rlwinm r0, r27, 2, 0x18, 0x1d
/* 800413DC  98 0D 80 B8 */	stb r0, l_cursorColor(r13)
/* 800413E0  80 0D 80 B8 */	lwz r0, l_cursorColor(r13)
/* 800413E4  90 01 00 08 */	stw r0, 8(r1)
/* 800413E8  38 60 00 01 */	li r3, 1
/* 800413EC  38 81 00 08 */	addi r4, r1, 8
/* 800413F0  48 31 DF 8D */	bl GXSetTevColor
/* 800413F4  38 60 00 90 */	li r3, 0x90
/* 800413F8  38 80 00 00 */	li r4, 0
/* 800413FC  38 A0 00 03 */	li r5, 3
/* 80041400  48 31 B3 65 */	bl GXBegin
/* 80041404  38 60 00 00 */	li r3, 0
/* 80041408  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 8004140C  38 00 00 03 */	li r0, 3
/* 80041410  7C 09 03 A6 */	mtctr r0
lbl_80041414:
/* 80041414  38 A1 00 0C */	addi r5, r1, 0xc
/* 80041418  7C A5 1A 14 */	add r5, r5, r3
/* 8004141C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80041420  D0 04 80 00 */	stfs f0, 0x8000(r4)
/* 80041424  C0 05 00 08 */	lfs f0, 8(r5)
/* 80041428  D0 04 80 00 */	stfs f0, -0x8000(r4)
/* 8004142C  38 63 00 0C */	addi r3, r3, 0xc
/* 80041430  42 00 FF E4 */	bdnz lbl_80041414
/* 80041434  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80041438  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8004143C  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80041440  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80041444  39 61 00 60 */	addi r11, r1, 0x60
/* 80041448  48 32 0D D9 */	bl _restgpr_27
/* 8004144C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80041450  7C 08 03 A6 */	mtlr r0
/* 80041454  38 21 00 80 */	addi r1, r1, 0x80
/* 80041458  4E 80 00 20 */	blr 
