lbl_807ED674:
/* 807ED674  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807ED678  7C 08 02 A6 */	mflr r0
/* 807ED67C  90 01 00 44 */	stw r0, 0x44(r1)
/* 807ED680  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 807ED684  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 807ED688  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807ED68C  7C 7F 1B 78 */	mr r31, r3
/* 807ED690  3C 60 80 7F */	lis r3, lit_3905@ha
/* 807ED694  38 63 F7 70 */	addi r3, r3, lit_3905@l
/* 807ED698  88 1F 07 5B */	lbz r0, 0x75b(r31)
/* 807ED69C  28 00 00 00 */	cmplwi r0, 0
/* 807ED6A0  41 82 00 28 */	beq lbl_807ED6C8
/* 807ED6A4  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 807ED6A8  C0 03 00 04 */	lfs f0, 4(r3)
/* 807ED6AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ED6B0  40 80 00 18 */	bge lbl_807ED6C8
/* 807ED6B4  80 1F 07 CC */	lwz r0, 0x7cc(r31)
/* 807ED6B8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807ED6BC  41 82 00 0C */	beq lbl_807ED6C8
/* 807ED6C0  38 00 00 00 */	li r0, 0
/* 807ED6C4  98 1F 07 5B */	stb r0, 0x75b(r31)
lbl_807ED6C8:
/* 807ED6C8  88 1F 07 5B */	lbz r0, 0x75b(r31)
/* 807ED6CC  2C 00 00 01 */	cmpwi r0, 1
/* 807ED6D0  41 82 00 2C */	beq lbl_807ED6FC
/* 807ED6D4  40 80 00 10 */	bge lbl_807ED6E4
/* 807ED6D8  2C 00 00 00 */	cmpwi r0, 0
/* 807ED6DC  40 80 00 14 */	bge lbl_807ED6F0
/* 807ED6E0  48 00 00 30 */	b lbl_807ED710
lbl_807ED6E4:
/* 807ED6E4  2C 00 00 03 */	cmpwi r0, 3
/* 807ED6E8  40 80 00 28 */	bge lbl_807ED710
/* 807ED6EC  48 00 00 1C */	b lbl_807ED708
lbl_807ED6F0:
/* 807ED6F0  C0 03 00 FC */	lfs f0, 0xfc(r3)
/* 807ED6F4  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 807ED6F8  48 00 00 18 */	b lbl_807ED710
lbl_807ED6FC:
/* 807ED6FC  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 807ED700  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 807ED704  48 00 00 0C */	b lbl_807ED710
lbl_807ED708:
/* 807ED708  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 807ED70C  D0 1F 05 30 */	stfs f0, 0x530(r31)
lbl_807ED710:
/* 807ED710  C3 FF 05 2C */	lfs f31, 0x52c(r31)
/* 807ED714  80 1F 07 CC */	lwz r0, 0x7cc(r31)
/* 807ED718  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807ED71C  41 82 00 44 */	beq lbl_807ED760
/* 807ED720  3C 60 80 7F */	lis r3, __vt__8cM3dGPla@ha
/* 807ED724  38 03 FB 60 */	addi r0, r3, __vt__8cM3dGPla@l
/* 807ED728  90 01 00 18 */	stw r0, 0x18(r1)
/* 807ED72C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807ED730  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807ED734  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807ED738  38 9F 08 90 */	addi r4, r31, 0x890
/* 807ED73C  38 A1 00 08 */	addi r5, r1, 8
/* 807ED740  4B 88 70 04 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 807ED744  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 807ED748  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807ED74C  EC 01 00 32 */	fmuls f0, f1, f0
/* 807ED750  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 807ED754  3C 60 80 7F */	lis r3, __vt__8cM3dGPla@ha
/* 807ED758  38 03 FB 60 */	addi r0, r3, __vt__8cM3dGPla@l
/* 807ED75C  90 01 00 18 */	stw r0, 0x18(r1)
lbl_807ED760:
/* 807ED760  7F E3 FB 78 */	mr r3, r31
/* 807ED764  38 9F 09 78 */	addi r4, r31, 0x978
/* 807ED768  4B 82 CF 64 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 807ED76C  D3 FF 05 2C */	stfs f31, 0x52c(r31)
/* 807ED770  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 807ED774  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 807ED778  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807ED77C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807ED780  7C 08 03 A6 */	mtlr r0
/* 807ED784  38 21 00 40 */	addi r1, r1, 0x40
/* 807ED788  4E 80 00 20 */	blr 
