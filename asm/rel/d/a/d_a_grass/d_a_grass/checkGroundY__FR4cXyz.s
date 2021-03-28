lbl_8051FF88:
/* 8051FF88  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8051FF8C  7C 08 02 A6 */	mflr r0
/* 8051FF90  90 01 00 84 */	stw r0, 0x84(r1)
/* 8051FF94  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8051FF98  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8051FF9C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8051FFA0  7C 7F 1B 78 */	mr r31, r3
/* 8051FFA4  38 61 00 08 */	addi r3, r1, 8
/* 8051FFA8  4B B5 75 D4 */	b __ct__11dBgS_GndChkFv
/* 8051FFAC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8051FFB0  3C 60 80 52 */	lis r3, lit_5022@ha
/* 8051FFB4  C0 03 31 30 */	lfs f0, lit_5022@l(r3)
/* 8051FFB8  EC 01 00 2A */	fadds f0, f1, f0
/* 8051FFBC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8051FFC0  7F E3 FB 78 */	mr r3, r31
/* 8051FFC4  4B AF DC F8 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8051FFC8  3C 80 80 45 */	lis r4, mGroundY__11fopAcM_gc_c@ha
/* 8051FFCC  C3 E4 0C D0 */	lfs f31, mGroundY__11fopAcM_gc_c@l(r4)
/* 8051FFD0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8051FFD4  3C 80 80 52 */	lis r4, lit_5022@ha
/* 8051FFD8  C0 04 31 30 */	lfs f0, lit_5022@l(r4)
/* 8051FFDC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8051FFE0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8051FFE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8051FFE8  40 82 00 1C */	bne lbl_80520004
/* 8051FFEC  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8051FFF0  38 61 00 08 */	addi r3, r1, 8
/* 8051FFF4  38 80 FF FF */	li r4, -1
/* 8051FFF8  4B B5 75 F8 */	b __dt__11dBgS_GndChkFv
/* 8051FFFC  FC 20 F8 90 */	fmr f1, f31
/* 80520000  48 00 00 14 */	b lbl_80520014
lbl_80520004:
/* 80520004  38 61 00 08 */	addi r3, r1, 8
/* 80520008  38 80 FF FF */	li r4, -1
/* 8052000C  4B B5 75 E4 */	b __dt__11dBgS_GndChkFv
/* 80520010  FC 20 F8 90 */	fmr f1, f31
lbl_80520014:
/* 80520014  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80520018  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8052001C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80520020  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80520024  7C 08 03 A6 */	mtlr r0
/* 80520028  38 21 00 80 */	addi r1, r1, 0x80
/* 8052002C  4E 80 00 20 */	blr 
