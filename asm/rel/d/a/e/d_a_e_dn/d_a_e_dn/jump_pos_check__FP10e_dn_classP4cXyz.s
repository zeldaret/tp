lbl_804E6448:
/* 804E6448  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 804E644C  7C 08 02 A6 */	mflr r0
/* 804E6450  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 804E6454  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 804E6458  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 804E645C  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 804E6460  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 804E6464  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 804E6468  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 804E646C  39 61 00 90 */	addi r11, r1, 0x90
/* 804E6470  4B E7 BD 64 */	b _savegpr_27
/* 804E6474  7C 7B 1B 78 */	mr r27, r3
/* 804E6478  7C 9C 23 78 */	mr r28, r4
/* 804E647C  3C 60 80 4F */	lis r3, lit_3789@ha
/* 804E6480  3B E3 E8 AC */	addi r31, r3, lit_3789@l
/* 804E6484  38 61 00 20 */	addi r3, r1, 0x20
/* 804E6488  4B B9 10 F4 */	b __ct__11dBgS_GndChkFv
/* 804E648C  C3 BF 00 38 */	lfs f29, 0x38(r31)
/* 804E6490  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E6494  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E6498  80 63 00 00 */	lwz r3, 0(r3)
/* 804E649C  A8 9B 06 D4 */	lha r4, 0x6d4(r27)
/* 804E64A0  4B B2 5F 3C */	b mDoMtx_YrotS__FPA4_fs
/* 804E64A4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E64A8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804E64AC  C3 DF 00 5C */	lfs f30, 0x5c(r31)
/* 804E64B0  D3 C1 00 18 */	stfs f30, 0x18(r1)
/* 804E64B4  3B A0 00 00 */	li r29, 0
/* 804E64B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E64BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E64C0  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 804E64C4  C3 FF 00 44 */	lfs f31, 0x44(r31)
lbl_804E64C8:
/* 804E64C8  D3 A1 00 1C */	stfs f29, 0x1c(r1)
/* 804E64CC  38 61 00 14 */	addi r3, r1, 0x14
/* 804E64D0  38 81 00 08 */	addi r4, r1, 8
/* 804E64D4  4B D8 AA 18 */	b MtxPosition__FP4cXyzP4cXyz
/* 804E64D8  38 61 00 08 */	addi r3, r1, 8
/* 804E64DC  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 804E64E0  7C 65 1B 78 */	mr r5, r3
/* 804E64E4  4B E6 0B AC */	b PSVECAdd
/* 804E64E8  38 61 00 20 */	addi r3, r1, 0x20
/* 804E64EC  38 81 00 08 */	addi r4, r1, 8
/* 804E64F0  4B D8 18 38 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 804E64F4  7F C3 F3 78 */	mr r3, r30
/* 804E64F8  38 81 00 20 */	addi r4, r1, 0x20
/* 804E64FC  4B B8 DF A4 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 804E6500  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804E6504  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 804E6508  FC 00 08 18 */	frsp f0, f1
/* 804E650C  EC 02 00 28 */	fsubs f0, f2, f0
/* 804E6510  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 804E6514  40 80 00 A4 */	bge lbl_804E65B8
/* 804E6518  C0 01 00 08 */	lfs f0, 8(r1)
/* 804E651C  D0 1C 00 00 */	stfs f0, 0(r28)
/* 804E6520  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804E6524  D0 1C 00 04 */	stfs f0, 4(r28)
/* 804E6528  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804E652C  D0 1C 00 08 */	stfs f0, 8(r28)
/* 804E6530  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804E6534  EC 00 F0 2A */	fadds f0, f0, f30
/* 804E6538  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E653C  38 61 00 14 */	addi r3, r1, 0x14
/* 804E6540  38 81 00 08 */	addi r4, r1, 8
/* 804E6544  4B D8 A9 A8 */	b MtxPosition__FP4cXyzP4cXyz
/* 804E6548  38 61 00 08 */	addi r3, r1, 8
/* 804E654C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 804E6550  7C 65 1B 78 */	mr r5, r3
/* 804E6554  4B E6 0B 3C */	b PSVECAdd
/* 804E6558  38 61 00 20 */	addi r3, r1, 0x20
/* 804E655C  38 81 00 08 */	addi r4, r1, 8
/* 804E6560  4B D8 17 C8 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 804E6564  7F C3 F3 78 */	mr r3, r30
/* 804E6568  38 81 00 20 */	addi r4, r1, 0x20
/* 804E656C  4B B8 DF 34 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 804E6570  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804E6574  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 804E6578  FC 00 08 18 */	frsp f0, f1
/* 804E657C  EC 22 00 28 */	fsubs f1, f2, f0
/* 804E6580  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 804E6584  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E6588  40 80 00 1C */	bge lbl_804E65A4
/* 804E658C  C0 01 00 08 */	lfs f0, 8(r1)
/* 804E6590  D0 1C 00 00 */	stfs f0, 0(r28)
/* 804E6594  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804E6598  D0 1C 00 04 */	stfs f0, 4(r28)
/* 804E659C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804E65A0  D0 1C 00 08 */	stfs f0, 8(r28)
lbl_804E65A4:
/* 804E65A4  38 61 00 20 */	addi r3, r1, 0x20
/* 804E65A8  38 80 FF FF */	li r4, -1
/* 804E65AC  4B B9 10 44 */	b __dt__11dBgS_GndChkFv
/* 804E65B0  38 60 00 01 */	li r3, 1
/* 804E65B4  48 00 00 24 */	b lbl_804E65D8
lbl_804E65B8:
/* 804E65B8  EF BD F8 2A */	fadds f29, f29, f31
/* 804E65BC  3B BD 00 01 */	addi r29, r29, 1
/* 804E65C0  2C 1D 00 0A */	cmpwi r29, 0xa
/* 804E65C4  41 80 FF 04 */	blt lbl_804E64C8
/* 804E65C8  38 61 00 20 */	addi r3, r1, 0x20
/* 804E65CC  38 80 FF FF */	li r4, -1
/* 804E65D0  4B B9 10 20 */	b __dt__11dBgS_GndChkFv
/* 804E65D4  38 60 00 00 */	li r3, 0
lbl_804E65D8:
/* 804E65D8  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 804E65DC  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 804E65E0  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 804E65E4  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 804E65E8  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 804E65EC  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 804E65F0  39 61 00 90 */	addi r11, r1, 0x90
/* 804E65F4  4B E7 BC 2C */	b _restgpr_27
/* 804E65F8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 804E65FC  7C 08 03 A6 */	mtlr r0
/* 804E6600  38 21 00 C0 */	addi r1, r1, 0xc0
/* 804E6604  4E 80 00 20 */	blr 
