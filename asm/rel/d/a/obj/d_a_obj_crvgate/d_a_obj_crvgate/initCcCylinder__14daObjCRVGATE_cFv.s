lbl_80BD0398:
/* 80BD0398  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BD039C  7C 08 02 A6 */	mflr r0
/* 80BD03A0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BD03A4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80BD03A8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80BD03AC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80BD03B0  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80BD03B4  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 80BD03B8  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 80BD03BC  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD03C0  4B 79 1E 11 */	bl _savegpr_26
/* 80BD03C4  7C 7A 1B 78 */	mr r26, r3
/* 80BD03C8  3C 60 80 BD */	lis r3, ccCylSrc@ha /* 0x80BD30C0@ha */
/* 80BD03CC  3B 83 30 C0 */	addi r28, r3, ccCylSrc@l /* 0x80BD30C0@l */
/* 80BD03D0  38 7A 08 9C */	addi r3, r26, 0x89c
/* 80BD03D4  38 80 00 FF */	li r4, 0xff
/* 80BD03D8  38 A0 00 FF */	li r5, 0xff
/* 80BD03DC  7F 46 D3 78 */	mr r6, r26
/* 80BD03E0  4B 4B 34 81 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BD03E4  3B 60 00 00 */	li r27, 0
/* 80BD03E8  3B E0 00 00 */	li r31, 0
/* 80BD03EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD03F0  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD03F4  C3 BC 00 40 */	lfs f29, 0x40(r28)
/* 80BD03F8  C3 DC 00 44 */	lfs f30, 0x44(r28)
/* 80BD03FC  CB FC 00 50 */	lfd f31, 0x50(r28)
/* 80BD0400  3F C0 43 30 */	lis r30, 0x4330
lbl_80BD0404:
/* 80BD0404  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80BD0408  4B 43 C9 5D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BD040C  7F A3 EB 78 */	mr r3, r29
/* 80BD0410  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 80BD0414  4B 43 C0 21 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BD0418  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 80BD041C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BD0420  93 C1 00 08 */	stw r30, 8(r1)
/* 80BD0424  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BD0428  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BD042C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80BD0430  EC 3D 00 2A */	fadds f1, f29, f0
/* 80BD0434  C0 5C 00 48 */	lfs f2, 0x48(r28)
/* 80BD0438  FC 60 10 90 */	fmr f3, f2
/* 80BD043C  4B 43 C9 61 */	bl transM__14mDoMtx_stack_cFfff
/* 80BD0440  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80BD0444  38 7F 06 1C */	addi r3, r31, 0x61c
/* 80BD0448  7C 7A 1A 14 */	add r3, r26, r3
/* 80BD044C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80BD0450  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80BD0454  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BD0458  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80BD045C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BD0460  3B 7B 00 01 */	addi r27, r27, 1
/* 80BD0464  2C 1B 00 03 */	cmpwi r27, 3
/* 80BD0468  3B FF 00 0C */	addi r31, r31, 0xc
/* 80BD046C  41 80 FF 98 */	blt lbl_80BD0404
/* 80BD0470  38 7A 08 D8 */	addi r3, r26, 0x8d8
/* 80BD0474  38 9C 00 00 */	addi r4, r28, 0
/* 80BD0478  4B 4B 45 BD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80BD047C  38 1A 08 9C */	addi r0, r26, 0x89c
/* 80BD0480  90 1A 09 1C */	stw r0, 0x91c(r26)
/* 80BD0484  38 7A 09 FC */	addi r3, r26, 0x9fc
/* 80BD0488  38 9A 06 1C */	addi r4, r26, 0x61c
/* 80BD048C  4B 69 F1 BD */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BD0490  38 7A 0A 10 */	addi r3, r26, 0xa10
/* 80BD0494  38 9C 00 00 */	addi r4, r28, 0
/* 80BD0498  4B 4B 45 9D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80BD049C  38 1A 08 9C */	addi r0, r26, 0x89c
/* 80BD04A0  90 1A 0A 54 */	stw r0, 0xa54(r26)
/* 80BD04A4  38 7A 0B 34 */	addi r3, r26, 0xb34
/* 80BD04A8  38 9A 06 28 */	addi r4, r26, 0x628
/* 80BD04AC  4B 69 F1 9D */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BD04B0  38 7A 0B 48 */	addi r3, r26, 0xb48
/* 80BD04B4  38 9C 00 00 */	addi r4, r28, 0
/* 80BD04B8  4B 4B 45 7D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80BD04BC  38 1A 08 9C */	addi r0, r26, 0x89c
/* 80BD04C0  90 1A 0B 8C */	stw r0, 0xb8c(r26)
/* 80BD04C4  38 7A 0C 6C */	addi r3, r26, 0xc6c
/* 80BD04C8  38 9A 06 34 */	addi r4, r26, 0x634
/* 80BD04CC  4B 69 F1 7D */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BD04D0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80BD04D4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80BD04D8  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80BD04DC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80BD04E0  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 80BD04E4  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 80BD04E8  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD04EC  4B 79 1D 31 */	bl _restgpr_26
/* 80BD04F0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BD04F4  7C 08 03 A6 */	mtlr r0
/* 80BD04F8  38 21 00 60 */	addi r1, r1, 0x60
/* 80BD04FC  4E 80 00 20 */	blr 
