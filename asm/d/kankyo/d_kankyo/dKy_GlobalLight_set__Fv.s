lbl_801A60E0:
/* 801A60E0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801A60E4  7C 08 02 A6 */	mflr r0
/* 801A60E8  90 01 00 94 */	stw r0, 0x94(r1)
/* 801A60EC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 801A60F0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 801A60F4  39 61 00 80 */	addi r11, r1, 0x80
/* 801A60F8  48 1B C0 D5 */	bl _savegpr_25
/* 801A60FC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 801A6100  38 03 4A C8 */	addi r0, r3, j3dSys@l /* 0x80434AC8@l */
/* 801A6104  7C 1B 03 78 */	mr r27, r0
/* 801A6108  3B 40 00 00 */	li r26, 0
/* 801A610C  3B E0 00 00 */	li r31, 0
/* 801A6110  3B C0 00 00 */	li r30, 0
/* 801A6114  3C 60 80 43 */	lis r3, lightStatusData@ha /* 0x8042E07C@ha */
/* 801A6118  3B 83 E0 7C */	addi r28, r3, lightStatusData@l /* 0x8042E07C@l */
/* 801A611C  C3 E2 A2 0C */	lfs f31, lit_4409(r2)
/* 801A6120  3C 60 80 3C */	lis r3, lightMaskData@ha /* 0x803BBEAC@ha */
/* 801A6124  3B A3 BE AC */	addi r29, r3, lightMaskData@l /* 0x803BBEAC@l */
lbl_801A6128:
/* 801A6128  7F 3C F2 14 */	add r25, r28, r30
/* 801A612C  7F 63 DB 78 */	mr r3, r27
/* 801A6130  7F 24 CB 78 */	mr r4, r25
/* 801A6134  38 A1 00 0C */	addi r5, r1, 0xc
/* 801A6138  48 1A 0C 35 */	bl PSMTXMultVec
/* 801A613C  38 61 00 18 */	addi r3, r1, 0x18
/* 801A6140  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801A6144  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 801A6148  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 801A614C  48 1B 77 61 */	bl GXInitLightPos
/* 801A6150  38 61 00 18 */	addi r3, r1, 0x18
/* 801A6154  C0 39 00 38 */	lfs f1, 0x38(r25)
/* 801A6158  C0 59 00 3C */	lfs f2, 0x3c(r25)
/* 801A615C  C0 79 00 40 */	lfs f3, 0x40(r25)
/* 801A6160  48 1B 77 5D */	bl GXInitLightDir
/* 801A6164  80 19 00 18 */	lwz r0, 0x18(r25)
/* 801A6168  90 01 00 08 */	stw r0, 8(r1)
/* 801A616C  38 61 00 18 */	addi r3, r1, 0x18
/* 801A6170  38 81 00 08 */	addi r4, r1, 8
/* 801A6174  48 1B 77 65 */	bl GXInitLightColor
/* 801A6178  C0 19 00 4C */	lfs f0, 0x4c(r25)
/* 801A617C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 801A6180  4C 40 13 82 */	cror 2, 0, 2
/* 801A6184  40 82 00 0C */	bne lbl_801A6190
/* 801A6188  C0 02 A3 10 */	lfs f0, lit_6042(r2)
/* 801A618C  D0 19 00 4C */	stfs f0, 0x4c(r25)
lbl_801A6190:
/* 801A6190  38 61 00 18 */	addi r3, r1, 0x18
/* 801A6194  C0 39 00 4C */	lfs f1, 0x4c(r25)
/* 801A6198  C0 59 00 50 */	lfs f2, 0x50(r25)
/* 801A619C  80 99 00 54 */	lwz r4, 0x54(r25)
/* 801A61A0  48 1B 76 3D */	bl GXInitLightDistAttn
/* 801A61A4  38 61 00 18 */	addi r3, r1, 0x18
/* 801A61A8  C0 39 00 44 */	lfs f1, 0x44(r25)
/* 801A61AC  80 99 00 48 */	lwz r4, 0x48(r25)
/* 801A61B0  48 1B 74 9D */	bl GXInitLightSpot
/* 801A61B4  38 61 00 18 */	addi r3, r1, 0x18
/* 801A61B8  7C 9D FA 2E */	lhzx r4, r29, r31
/* 801A61BC  48 1B 77 29 */	bl GXLoadLightObjImm
/* 801A61C0  3B 5A 00 01 */	addi r26, r26, 1
/* 801A61C4  2C 1A 00 08 */	cmpwi r26, 8
/* 801A61C8  3B FF 00 02 */	addi r31, r31, 2
/* 801A61CC  3B DE 00 E8 */	addi r30, r30, 0xe8
/* 801A61D0  41 80 FF 58 */	blt lbl_801A6128
/* 801A61D4  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 801A61D8  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 801A61DC  39 61 00 80 */	addi r11, r1, 0x80
/* 801A61E0  48 1B C0 39 */	bl _restgpr_25
/* 801A61E4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801A61E8  7C 08 03 A6 */	mtlr r0
/* 801A61EC  38 21 00 90 */	addi r1, r1, 0x90
/* 801A61F0  4E 80 00 20 */	blr 
