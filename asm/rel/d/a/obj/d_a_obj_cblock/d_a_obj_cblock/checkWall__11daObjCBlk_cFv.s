lbl_80BC66DC:
/* 80BC66DC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80BC66E0  7C 08 02 A6 */	mflr r0
/* 80BC66E4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80BC66E8  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80BC66EC  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80BC66F0  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80BC66F4  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80BC66F8  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 80BC66FC  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 80BC6700  39 61 00 80 */	addi r11, r1, 0x80
/* 80BC6704  4B 79 BA CD */	bl _savegpr_26
/* 80BC6708  7C 7A 1B 78 */	mr r26, r3
/* 80BC670C  3C 60 80 BC */	lis r3, l_cull_box@ha /* 0x80BC6A38@ha */
/* 80BC6710  38 63 6A 38 */	addi r3, r3, l_cull_box@l /* 0x80BC6A38@l */
/* 80BC6714  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 80BC6718  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BC671C  C0 23 00 7C */	lfs f1, 0x7c(r3)
/* 80BC6720  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BC6724  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 80BC6728  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80BC672C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BC6730  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80BC6734  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80BC6738  C0 03 00 80 */	lfs f0, 0x80(r3)
/* 80BC673C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BC6740  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BC6744  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80BC6748  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80BC674C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80BC6750  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80BC6754  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80BC6758  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80BC675C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80BC6760  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80BC6764  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80BC6768  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BC676C  3B 80 00 00 */	li r28, 0
/* 80BC6770  3B 60 00 00 */	li r27, 0
/* 80BC6774  3B E0 00 00 */	li r31, 0
/* 80BC6778  FF A0 08 18 */	frsp f29, f1
/* 80BC677C  FF C0 E8 90 */	fmr f30, f29
/* 80BC6780  FF E0 00 18 */	frsp f31, f0
/* 80BC6784  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BC6788  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BC678C  7F BE EB 78 */	mr r30, r29
lbl_80BC6790:
/* 80BC6790  38 61 00 44 */	addi r3, r1, 0x44
/* 80BC6794  7C 63 FA 14 */	add r3, r3, r31
/* 80BC6798  C0 03 00 00 */	lfs f0, 0(r3)
/* 80BC679C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BC67A0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BC67A4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BC67A8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BC67AC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BC67B0  D3 A1 00 20 */	stfs f29, 0x20(r1)
/* 80BC67B4  D3 C1 00 24 */	stfs f30, 0x24(r1)
/* 80BC67B8  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 80BC67BC  7F A3 EB 78 */	mr r3, r29
/* 80BC67C0  A8 9A 04 DE */	lha r4, 0x4de(r26)
/* 80BC67C4  4B 44 5C 19 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BC67C8  7F A3 EB 78 */	mr r3, r29
/* 80BC67CC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80BC67D0  7C 85 23 78 */	mr r5, r4
/* 80BC67D4  4B 78 05 99 */	bl PSMTXMultVec
/* 80BC67D8  38 61 00 2C */	addi r3, r1, 0x2c
/* 80BC67DC  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80BC67E0  7C 65 1B 78 */	mr r5, r3
/* 80BC67E4  4B 78 08 AD */	bl PSVECAdd
/* 80BC67E8  7F C3 F3 78 */	mr r3, r30
/* 80BC67EC  38 81 00 20 */	addi r4, r1, 0x20
/* 80BC67F0  7C 85 23 78 */	mr r5, r4
/* 80BC67F4  4B 78 05 79 */	bl PSMTXMultVec
/* 80BC67F8  38 61 00 20 */	addi r3, r1, 0x20
/* 80BC67FC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80BC6800  7C 65 1B 78 */	mr r5, r3
/* 80BC6804  4B 78 08 8D */	bl PSVECAdd
/* 80BC6808  38 61 00 2C */	addi r3, r1, 0x2c
/* 80BC680C  38 81 00 20 */	addi r4, r1, 0x20
/* 80BC6810  7F 45 D3 78 */	mr r5, r26
/* 80BC6814  4B 45 74 55 */	bl lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BC6818  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BC681C  41 82 00 08 */	beq lbl_80BC6824
/* 80BC6820  3B 80 00 01 */	li r28, 1
lbl_80BC6824:
/* 80BC6824  3B 7B 00 01 */	addi r27, r27, 1
/* 80BC6828  2C 1B 00 02 */	cmpwi r27, 2
/* 80BC682C  3B FF 00 0C */	addi r31, r31, 0xc
/* 80BC6830  41 80 FF 60 */	blt lbl_80BC6790
/* 80BC6834  7F 83 E3 78 */	mr r3, r28
/* 80BC6838  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80BC683C  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80BC6840  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 80BC6844  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80BC6848  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 80BC684C  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 80BC6850  39 61 00 80 */	addi r11, r1, 0x80
/* 80BC6854  4B 79 B9 C9 */	bl _restgpr_26
/* 80BC6858  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80BC685C  7C 08 03 A6 */	mtlr r0
/* 80BC6860  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80BC6864  4E 80 00 20 */	blr 
