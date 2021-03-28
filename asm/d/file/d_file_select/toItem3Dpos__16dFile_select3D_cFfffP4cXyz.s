lbl_80190FE8:
/* 80190FE8  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80190FEC  7C 08 02 A6 */	mflr r0
/* 80190FF0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80190FF4  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80190FF8  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80190FFC  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80191000  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80191004  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 80191008  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 8019100C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80191010  FF E0 18 90 */	fmr f31, f3
/* 80191014  7C 9F 23 78 */	mr r31, r4
/* 80191018  C0 82 9F BC */	lfs f4, lit_8978(r2)
/* 8019101C  C0 02 9F 48 */	lfs f0, lit_4778(r2)
/* 80191020  EC 21 00 28 */	fsubs f1, f1, f0
/* 80191024  C0 02 9F A4 */	lfs f0, lit_6879(r2)
/* 80191028  EC 01 00 24 */	fdivs f0, f1, f0
/* 8019102C  EC 04 00 32 */	fmuls f0, f4, f0
/* 80191030  C0 62 9F 40 */	lfs f3, lit_4611(r2)
/* 80191034  EF A0 18 28 */	fsubs f29, f0, f3
/* 80191038  C0 02 9F C0 */	lfs f0, lit_8979(r2)
/* 8019103C  EC 22 00 28 */	fsubs f1, f2, f0
/* 80191040  C0 02 9F A8 */	lfs f0, lit_6880(r2)
/* 80191044  EC 01 00 24 */	fdivs f0, f1, f0
/* 80191048  EC 04 00 32 */	fmuls f0, f4, f0
/* 8019104C  EF C0 18 28 */	fsubs f30, f0, f3
/* 80191050  38 81 00 44 */	addi r4, r1, 0x44
/* 80191054  48 00 00 81 */	bl calcViewMtx__16dFile_select3D_cFPA4_f
/* 80191058  38 61 00 44 */	addi r3, r1, 0x44
/* 8019105C  38 81 00 14 */	addi r4, r1, 0x14
/* 80191060  48 1B 55 51 */	bl PSMTXInverse
/* 80191064  C8 22 9F C8 */	lfd f1, lit_8980(r2)
/* 80191068  48 1D B6 01 */	bl tan
/* 8019106C  FC 40 08 18 */	frsp f2, f1
/* 80191070  FC 60 F8 50 */	fneg f3, f31
/* 80191074  EC 3D 07 F2 */	fmuls f1, f29, f31
/* 80191078  C0 02 9F D0 */	lfs f0, lit_8981(r2)
/* 8019107C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80191080  EC 01 00 32 */	fmuls f0, f1, f0
/* 80191084  D0 01 00 08 */	stfs f0, 8(r1)
/* 80191088  EC 1E 00 F2 */	fmuls f0, f30, f3
/* 8019108C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80191090  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80191094  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80191098  38 61 00 14 */	addi r3, r1, 0x14
/* 8019109C  38 81 00 08 */	addi r4, r1, 8
/* 801910A0  7F E5 FB 78 */	mr r5, r31
/* 801910A4  48 1B 5C C9 */	bl PSMTXMultVec
/* 801910A8  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 801910AC  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 801910B0  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 801910B4  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 801910B8  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 801910BC  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 801910C0  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 801910C4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801910C8  7C 08 03 A6 */	mtlr r0
/* 801910CC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801910D0  4E 80 00 20 */	blr 
