lbl_8069DEC4:
/* 8069DEC4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8069DEC8  7C 08 02 A6 */	mflr r0
/* 8069DECC  90 01 00 94 */	stw r0, 0x94(r1)
/* 8069DED0  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8069DED4  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8069DED8  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8069DEDC  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8069DEE0  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8069DEE4  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 8069DEE8  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 8069DEEC  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 8069DEF0  39 61 00 50 */	addi r11, r1, 0x50
/* 8069DEF4  4B CC 42 DC */	b _savegpr_26
/* 8069DEF8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8069DEFC  D0 03 07 20 */	stfs f0, 0x720(r3)
/* 8069DF00  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8069DF04  D0 03 07 24 */	stfs f0, 0x724(r3)
/* 8069DF08  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8069DF0C  D0 03 07 28 */	stfs f0, 0x728(r3)
/* 8069DF10  3C 80 80 6A */	lis r4, lit_3903@ha
/* 8069DF14  C3 E4 19 10 */	lfs f31, lit_3903@l(r4)
/* 8069DF18  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 8069DF1C  D3 E1 00 24 */	stfs f31, 0x24(r1)
/* 8069DF20  C0 03 08 40 */	lfs f0, 0x840(r3)
/* 8069DF24  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8069DF28  3B C0 00 0A */	li r30, 0xa
/* 8069DF2C  3B 63 07 14 */	addi r27, r3, 0x714
/* 8069DF30  3B 43 07 68 */	addi r26, r3, 0x768
/* 8069DF34  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8069DF38  3B E3 07 68 */	addi r31, r3, calc_mtx@l
lbl_8069DF3C:
/* 8069DF3C  C0 3B 00 00 */	lfs f1, 0(r27)
/* 8069DF40  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 8069DF44  EF C1 00 28 */	fsubs f30, f1, f0
/* 8069DF48  C0 3B 00 04 */	lfs f1, 4(r27)
/* 8069DF4C  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 8069DF50  EF A1 00 28 */	fsubs f29, f1, f0
/* 8069DF54  C0 3B 00 08 */	lfs f1, 8(r27)
/* 8069DF58  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 8069DF5C  EF 81 00 28 */	fsubs f28, f1, f0
/* 8069DF60  FC 20 F0 90 */	fmr f1, f30
/* 8069DF64  FC 40 E0 90 */	fmr f2, f28
/* 8069DF68  4B BC 97 0C */	b cM_atan2s__Fff
/* 8069DF6C  7C 7C 07 34 */	extsh r28, r3
/* 8069DF70  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 8069DF74  EC 1C 07 32 */	fmuls f0, f28, f28
/* 8069DF78  EC 41 00 2A */	fadds f2, f1, f0
/* 8069DF7C  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 8069DF80  40 81 00 0C */	ble lbl_8069DF8C
/* 8069DF84  FC 00 10 34 */	frsqrte f0, f2
/* 8069DF88  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8069DF8C:
/* 8069DF8C  FC 20 E8 90 */	fmr f1, f29
/* 8069DF90  4B BC 96 E4 */	b cM_atan2s__Fff
/* 8069DF94  7C 03 00 D0 */	neg r0, r3
/* 8069DF98  7C 1D 07 34 */	extsh r29, r0
/* 8069DF9C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8069DFA0  7F 84 E3 78 */	mr r4, r28
/* 8069DFA4  4B 96 E4 38 */	b mDoMtx_YrotS__FPA4_fs
/* 8069DFA8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8069DFAC  7F A4 EB 78 */	mr r4, r29
/* 8069DFB0  4B 96 E3 EC */	b mDoMtx_XrotM__FPA4_fs
/* 8069DFB4  38 61 00 20 */	addi r3, r1, 0x20
/* 8069DFB8  38 81 00 14 */	addi r4, r1, 0x14
/* 8069DFBC  4B BD 2F 30 */	b MtxPosition__FP4cXyzP4cXyz
/* 8069DFC0  38 61 00 08 */	addi r3, r1, 8
/* 8069DFC4  38 9B 00 0C */	addi r4, r27, 0xc
/* 8069DFC8  38 A1 00 14 */	addi r5, r1, 0x14
/* 8069DFCC  4B BC 8B 18 */	b __pl__4cXyzCFRC3Vec
/* 8069DFD0  C0 01 00 08 */	lfs f0, 8(r1)
/* 8069DFD4  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8069DFD8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8069DFDC  D0 1B 00 04 */	stfs f0, 4(r27)
/* 8069DFE0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8069DFE4  D0 1B 00 08 */	stfs f0, 8(r27)
/* 8069DFE8  B3 BA 00 00 */	sth r29, 0(r26)
/* 8069DFEC  B3 9A 00 02 */	sth r28, 2(r26)
/* 8069DFF0  37 DE FF FF */	addic. r30, r30, -1
/* 8069DFF4  3B 7B FF F4 */	addi r27, r27, -12
/* 8069DFF8  3B 5A FF FA */	addi r26, r26, -6
/* 8069DFFC  40 80 FF 40 */	bge lbl_8069DF3C
/* 8069E000  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8069E004  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8069E008  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8069E00C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8069E010  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 8069E014  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8069E018  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 8069E01C  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 8069E020  39 61 00 50 */	addi r11, r1, 0x50
/* 8069E024  4B CC 41 F8 */	b _restgpr_26
/* 8069E028  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8069E02C  7C 08 03 A6 */	mtlr r0
/* 8069E030  38 21 00 90 */	addi r1, r1, 0x90
/* 8069E034  4E 80 00 20 */	blr 
