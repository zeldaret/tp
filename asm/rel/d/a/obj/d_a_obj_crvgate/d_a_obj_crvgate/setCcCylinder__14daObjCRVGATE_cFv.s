lbl_80BD0500:
/* 80BD0500  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BD0504  7C 08 02 A6 */	mflr r0
/* 80BD0508  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BD050C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80BD0510  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80BD0514  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80BD0518  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80BD051C  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 80BD0520  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 80BD0524  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD0528  4B 79 1C A5 */	bl _savegpr_25
/* 80BD052C  7C 79 1B 78 */	mr r25, r3
/* 80BD0530  3C 60 80 BD */	lis r3, ccCylSrc@ha /* 0x80BD30C0@ha */
/* 80BD0534  3B 63 30 C0 */	addi r27, r3, ccCylSrc@l /* 0x80BD30C0@l */
/* 80BD0538  3B 40 00 00 */	li r26, 0
/* 80BD053C  3B E0 00 00 */	li r31, 0
/* 80BD0540  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD0544  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD0548  7F 9D E3 78 */	mr r29, r28
/* 80BD054C  C3 BB 00 58 */	lfs f29, 0x58(r27)
/* 80BD0550  C3 DB 00 44 */	lfs f30, 0x44(r27)
/* 80BD0554  CB FB 00 50 */	lfd f31, 0x50(r27)
/* 80BD0558  3F C0 43 30 */	lis r30, 0x4330
lbl_80BD055C:
/* 80BD055C  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 80BD0560  4B 43 C8 05 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BD0564  7F 83 E3 78 */	mr r3, r28
/* 80BD0568  A8 99 04 E6 */	lha r4, 0x4e6(r25)
/* 80BD056C  4B 43 BE C9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BD0570  7F A3 EB 78 */	mr r3, r29
/* 80BD0574  A8 99 06 46 */	lha r4, 0x646(r25)
/* 80BD0578  4B 43 BE BD */	bl mDoMtx_YrotM__FPA4_fs
/* 80BD057C  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 80BD0580  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BD0584  93 C1 00 08 */	stw r30, 8(r1)
/* 80BD0588  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BD058C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BD0590  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80BD0594  EC 3D 00 2A */	fadds f1, f29, f0
/* 80BD0598  C0 5B 00 5C */	lfs f2, 0x5c(r27)
/* 80BD059C  C0 7B 00 48 */	lfs f3, 0x48(r27)
/* 80BD05A0  4B 43 C7 FD */	bl transM__14mDoMtx_stack_cFfff
/* 80BD05A4  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80BD05A8  38 7F 06 1C */	addi r3, r31, 0x61c
/* 80BD05AC  7C 79 1A 14 */	add r3, r25, r3
/* 80BD05B0  D0 03 00 00 */	stfs f0, 0(r3)
/* 80BD05B4  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80BD05B8  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BD05BC  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80BD05C0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BD05C4  3B 5A 00 01 */	addi r26, r26, 1
/* 80BD05C8  2C 1A 00 03 */	cmpwi r26, 3
/* 80BD05CC  3B FF 00 0C */	addi r31, r31, 0xc
/* 80BD05D0  41 80 FF 8C */	blt lbl_80BD055C
/* 80BD05D4  38 79 09 FC */	addi r3, r25, 0x9fc
/* 80BD05D8  38 99 06 1C */	addi r4, r25, 0x61c
/* 80BD05DC  4B 69 F0 6D */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BD05E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD05E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD05E8  3B 63 23 3C */	addi r27, r3, 0x233c
/* 80BD05EC  7F 63 DB 78 */	mr r3, r27
/* 80BD05F0  38 99 08 D8 */	addi r4, r25, 0x8d8
/* 80BD05F4  4B 69 45 B5 */	bl Set__4cCcSFP8cCcD_Obj
/* 80BD05F8  38 79 0B 34 */	addi r3, r25, 0xb34
/* 80BD05FC  38 99 06 28 */	addi r4, r25, 0x628
/* 80BD0600  4B 69 F0 49 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BD0604  7F 63 DB 78 */	mr r3, r27
/* 80BD0608  38 99 0A 10 */	addi r4, r25, 0xa10
/* 80BD060C  4B 69 45 9D */	bl Set__4cCcSFP8cCcD_Obj
/* 80BD0610  38 79 0C 6C */	addi r3, r25, 0xc6c
/* 80BD0614  38 99 06 34 */	addi r4, r25, 0x634
/* 80BD0618  4B 69 F0 31 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BD061C  7F 63 DB 78 */	mr r3, r27
/* 80BD0620  38 99 0B 48 */	addi r4, r25, 0xb48
/* 80BD0624  4B 69 45 85 */	bl Set__4cCcSFP8cCcD_Obj
/* 80BD0628  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80BD062C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80BD0630  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80BD0634  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80BD0638  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 80BD063C  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 80BD0640  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD0644  4B 79 1B D5 */	bl _restgpr_25
/* 80BD0648  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BD064C  7C 08 03 A6 */	mtlr r0
/* 80BD0650  38 21 00 60 */	addi r1, r1, 0x60
/* 80BD0654  4E 80 00 20 */	blr 
