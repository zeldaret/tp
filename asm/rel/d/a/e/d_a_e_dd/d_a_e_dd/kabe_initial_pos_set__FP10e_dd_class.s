lbl_806A6400:
/* 806A6400  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 806A6404  7C 08 02 A6 */	mflr r0
/* 806A6408  90 01 01 04 */	stw r0, 0x104(r1)
/* 806A640C  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 806A6410  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 806A6414  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 806A6418  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, 0 /* qr0 */
/* 806A641C  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 806A6420  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, 0 /* qr0 */
/* 806A6424  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 806A6428  F3 81 00 C8 */	psq_st f28, 200(r1), 0, 0 /* qr0 */
/* 806A642C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 806A6430  4B CB BD 99 */	bl _savegpr_24
/* 806A6434  7C 7F 1B 78 */	mr r31, r3
/* 806A6438  3C 60 80 6A */	lis r3, lit_3903@ha /* 0x806A71C4@ha */
/* 806A643C  3B 43 71 C4 */	addi r26, r3, lit_3903@l /* 0x806A71C4@l */
/* 806A6440  38 61 00 2C */	addi r3, r1, 0x2c
/* 806A6444  4B 9D 18 25 */	bl __ct__11dBgS_LinChkFv
/* 806A6448  3B 00 00 00 */	li r24, 0
/* 806A644C  3B C0 00 00 */	li r30, 0
/* 806A6450  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A6454  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A6458  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 806A645C  C3 9A 00 80 */	lfs f28, 0x80(r26)
/* 806A6460  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A6464  3B 63 07 68 */	addi r27, r3, calc_mtx@l /* 0x80450768@l */
/* 806A6468  3C 60 80 6A */	lis r3, ya@ha /* 0x806A734C@ha */
/* 806A646C  3B 83 73 4C */	addi r28, r3, ya@l /* 0x806A734C@l */
/* 806A6470  3C 60 80 6A */	lis r3, xa@ha /* 0x806A7358@ha */
/* 806A6474  3B A3 73 58 */	addi r29, r3, xa@l /* 0x806A7358@l */
/* 806A6478  C3 BA 00 04 */	lfs f29, 4(r26)
/* 806A647C  C3 DA 00 58 */	lfs f30, 0x58(r26)
/* 806A6480  C3 FA 00 DC */	lfs f31, 0xdc(r26)
lbl_806A6484:
/* 806A6484  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 806A6488  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806A648C  EC 5C 00 2A */	fadds f2, f28, f0
/* 806A6490  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 806A6494  38 60 00 00 */	li r3, 0
/* 806A6498  4B BC A9 C5 */	bl MtxTrans__FfffUc
/* 806A649C  80 7B 00 00 */	lwz r3, 0(r27)
/* 806A64A0  7C 9C F2 AE */	lhax r4, r28, r30
/* 806A64A4  4B 96 5F 91 */	bl mDoMtx_YrotM__FPA4_fs
/* 806A64A8  80 7B 00 00 */	lwz r3, 0(r27)
/* 806A64AC  7C 9D F2 AE */	lhax r4, r29, r30
/* 806A64B0  4B 96 5E ED */	bl mDoMtx_XrotM__FPA4_fs
/* 806A64B4  D3 A1 00 20 */	stfs f29, 0x20(r1)
/* 806A64B8  D3 C1 00 24 */	stfs f30, 0x24(r1)
/* 806A64BC  D3 A1 00 28 */	stfs f29, 0x28(r1)
/* 806A64C0  38 61 00 20 */	addi r3, r1, 0x20
/* 806A64C4  38 81 00 14 */	addi r4, r1, 0x14
/* 806A64C8  4B BC AA 25 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806A64CC  D3 E1 00 24 */	stfs f31, 0x24(r1)
/* 806A64D0  38 61 00 20 */	addi r3, r1, 0x20
/* 806A64D4  38 81 00 08 */	addi r4, r1, 8
/* 806A64D8  4B BC AA 15 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806A64DC  38 61 00 2C */	addi r3, r1, 0x2c
/* 806A64E0  38 81 00 14 */	addi r4, r1, 0x14
/* 806A64E4  38 A1 00 08 */	addi r5, r1, 8
/* 806A64E8  38 C0 00 00 */	li r6, 0
/* 806A64EC  4B 9D 18 79 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806A64F0  7F 23 CB 78 */	mr r3, r25
/* 806A64F4  38 81 00 2C */	addi r4, r1, 0x2c
/* 806A64F8  4B 9C DE BD */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 806A64FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806A6500  41 82 00 6C */	beq lbl_806A656C
/* 806A6504  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 806A6508  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 806A650C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 806A6510  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 806A6514  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 806A6518  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 806A651C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806A6520  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 806A6524  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806A6528  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 806A652C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806A6530  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 806A6534  38 18 00 01 */	addi r0, r24, 1
/* 806A6538  98 1F 06 D4 */	stb r0, 0x6d4(r31)
/* 806A653C  7C 1C F2 AE */	lhax r0, r28, r30
/* 806A6540  B0 1F 06 D8 */	sth r0, 0x6d8(r31)
/* 806A6544  7C 1D F2 AE */	lhax r0, r29, r30
/* 806A6548  B0 1F 06 D6 */	sth r0, 0x6d6(r31)
/* 806A654C  3C 60 00 05 */	lis r3, 0x0005 /* 0x000564FF@ha */
/* 806A6550  38 03 64 FF */	addi r0, r3, 0x64FF /* 0x000564FF@l */
/* 806A6554  90 1F 06 B4 */	stw r0, 0x6b4(r31)
/* 806A6558  38 61 00 2C */	addi r3, r1, 0x2c
/* 806A655C  38 80 FF FF */	li r4, -1
/* 806A6560  4B 9D 17 7D */	bl __dt__11dBgS_LinChkFv
/* 806A6564  38 60 00 01 */	li r3, 1
/* 806A6568  48 00 00 24 */	b lbl_806A658C
lbl_806A656C:
/* 806A656C  3B 18 00 01 */	addi r24, r24, 1
/* 806A6570  2C 18 00 05 */	cmpwi r24, 5
/* 806A6574  3B DE 00 02 */	addi r30, r30, 2
/* 806A6578  41 80 FF 0C */	blt lbl_806A6484
/* 806A657C  38 61 00 2C */	addi r3, r1, 0x2c
/* 806A6580  38 80 FF FF */	li r4, -1
/* 806A6584  4B 9D 17 59 */	bl __dt__11dBgS_LinChkFv
/* 806A6588  38 60 00 00 */	li r3, 0
lbl_806A658C:
/* 806A658C  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 806A6590  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 806A6594  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, 0 /* qr0 */
/* 806A6598  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 806A659C  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, 0 /* qr0 */
/* 806A65A0  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 806A65A4  E3 81 00 C8 */	psq_l f28, 200(r1), 0, 0 /* qr0 */
/* 806A65A8  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 806A65AC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 806A65B0  4B CB BC 65 */	bl _restgpr_24
/* 806A65B4  80 01 01 04 */	lwz r0, 0x104(r1)
/* 806A65B8  7C 08 03 A6 */	mtlr r0
/* 806A65BC  38 21 01 00 */	addi r1, r1, 0x100
/* 806A65C0  4E 80 00 20 */	blr 
