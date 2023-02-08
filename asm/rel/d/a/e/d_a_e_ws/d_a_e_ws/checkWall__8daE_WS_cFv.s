lbl_807E63F8:
/* 807E63F8  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 807E63FC  7C 08 02 A6 */	mflr r0
/* 807E6400  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 807E6404  39 61 00 D0 */	addi r11, r1, 0xd0
/* 807E6408  4B B7 BD D1 */	bl _savegpr_28
/* 807E640C  7C 7F 1B 78 */	mr r31, r3
/* 807E6410  3C 60 80 7E */	lis r3, lit_3802@ha /* 0x807E7300@ha */
/* 807E6414  3B A3 73 00 */	addi r29, r3, lit_3802@l /* 0x807E7300@l */
/* 807E6418  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807E641C  4B 82 69 49 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 807E6420  38 7F 06 6E */	addi r3, r31, 0x66e
/* 807E6424  4B 82 6B 21 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 807E6428  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 807E642C  4B 82 6B 19 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 807E6430  C0 3D 00 04 */	lfs f1, 4(r29)
/* 807E6434  C0 5D 00 00 */	lfs f2, 0(r29)
/* 807E6438  FC 60 08 90 */	fmr f3, f1
/* 807E643C  4B 82 69 61 */	bl transM__14mDoMtx_stack_cFfff
/* 807E6440  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E6444  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E6448  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 807E644C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807E6450  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 807E6454  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807E6458  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 807E645C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807E6460  C0 3D 00 04 */	lfs f1, 4(r29)
/* 807E6464  C0 5D 00 FC */	lfs f2, 0xfc(r29)
/* 807E6468  FC 60 08 90 */	fmr f3, f1
/* 807E646C  4B 82 69 31 */	bl transM__14mDoMtx_stack_cFfff
/* 807E6470  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 807E6474  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807E6478  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 807E647C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807E6480  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 807E6484  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807E6488  38 61 00 44 */	addi r3, r1, 0x44
/* 807E648C  4B 89 17 DD */	bl __ct__11dBgS_LinChkFv
/* 807E6490  38 61 00 44 */	addi r3, r1, 0x44
/* 807E6494  38 81 00 24 */	addi r4, r1, 0x24
/* 807E6498  38 A1 00 18 */	addi r5, r1, 0x18
/* 807E649C  38 C0 00 00 */	li r6, 0
/* 807E64A0  4B 89 18 C5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807E64A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E64A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E64AC  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 807E64B0  7F C3 F3 78 */	mr r3, r30
/* 807E64B4  38 81 00 44 */	addi r4, r1, 0x44
/* 807E64B8  4B 88 DE FD */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 807E64BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E64C0  41 82 01 C4 */	beq lbl_807E6684
/* 807E64C4  88 1F 06 91 */	lbz r0, 0x691(r31)
/* 807E64C8  28 00 00 00 */	cmplwi r0, 0
/* 807E64CC  40 82 00 44 */	bne lbl_807E6510
/* 807E64D0  7F C3 F3 78 */	mr r3, r30
/* 807E64D4  3B 81 00 58 */	addi r28, r1, 0x58
/* 807E64D8  7F 84 E3 78 */	mr r4, r28
/* 807E64DC  4B 88 E9 25 */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 807E64E0  2C 03 00 01 */	cmpwi r3, 1
/* 807E64E4  41 82 00 2C */	beq lbl_807E6510
/* 807E64E8  7F C3 F3 78 */	mr r3, r30
/* 807E64EC  7F 84 E3 78 */	mr r4, r28
/* 807E64F0  4B 88 E9 11 */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 807E64F4  2C 03 00 04 */	cmpwi r3, 4
/* 807E64F8  41 82 00 18 */	beq lbl_807E6510
/* 807E64FC  38 61 00 44 */	addi r3, r1, 0x44
/* 807E6500  38 80 FF FF */	li r4, -1
/* 807E6504  4B 89 17 D9 */	bl __dt__11dBgS_LinChkFv
/* 807E6508  38 60 00 00 */	li r3, 0
/* 807E650C  48 00 01 88 */	b lbl_807E6694
lbl_807E6510:
/* 807E6510  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 807E6514  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 807E6518  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 807E651C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 807E6520  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 807E6524  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 807E6528  3C 60 80 7E */	lis r3, __vt__8cM3dGPla@ha /* 0x807E7594@ha */
/* 807E652C  38 03 75 94 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x807E7594@l */
/* 807E6530  90 01 00 40 */	stw r0, 0x40(r1)
/* 807E6534  7F C3 F3 78 */	mr r3, r30
/* 807E6538  38 81 00 58 */	addi r4, r1, 0x58
/* 807E653C  38 A1 00 30 */	addi r5, r1, 0x30
/* 807E6540  4B 88 E2 05 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 807E6544  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 807E6548  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 807E654C  4B A8 11 29 */	bl cM_atan2s__Fff
/* 807E6550  B0 7F 06 6A */	sth r3, 0x66a(r31)
/* 807E6554  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 807E6558  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807E655C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807E6560  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807E6564  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807E6568  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807E656C  38 61 00 0C */	addi r3, r1, 0xc
/* 807E6570  4B B6 0B C9 */	bl PSVECSquareMag
/* 807E6574  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807E6578  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E657C  40 81 00 58 */	ble lbl_807E65D4
/* 807E6580  FC 00 08 34 */	frsqrte f0, f1
/* 807E6584  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 807E6588  FC 44 00 32 */	fmul f2, f4, f0
/* 807E658C  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 807E6590  FC 00 00 32 */	fmul f0, f0, f0
/* 807E6594  FC 01 00 32 */	fmul f0, f1, f0
/* 807E6598  FC 03 00 28 */	fsub f0, f3, f0
/* 807E659C  FC 02 00 32 */	fmul f0, f2, f0
/* 807E65A0  FC 44 00 32 */	fmul f2, f4, f0
/* 807E65A4  FC 00 00 32 */	fmul f0, f0, f0
/* 807E65A8  FC 01 00 32 */	fmul f0, f1, f0
/* 807E65AC  FC 03 00 28 */	fsub f0, f3, f0
/* 807E65B0  FC 02 00 32 */	fmul f0, f2, f0
/* 807E65B4  FC 44 00 32 */	fmul f2, f4, f0
/* 807E65B8  FC 00 00 32 */	fmul f0, f0, f0
/* 807E65BC  FC 01 00 32 */	fmul f0, f1, f0
/* 807E65C0  FC 03 00 28 */	fsub f0, f3, f0
/* 807E65C4  FC 02 00 32 */	fmul f0, f2, f0
/* 807E65C8  FC 21 00 32 */	fmul f1, f1, f0
/* 807E65CC  FC 20 08 18 */	frsp f1, f1
/* 807E65D0  48 00 00 88 */	b lbl_807E6658
lbl_807E65D4:
/* 807E65D4  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 807E65D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E65DC  40 80 00 10 */	bge lbl_807E65EC
/* 807E65E0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807E65E4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807E65E8  48 00 00 70 */	b lbl_807E6658
lbl_807E65EC:
/* 807E65EC  D0 21 00 08 */	stfs f1, 8(r1)
/* 807E65F0  80 81 00 08 */	lwz r4, 8(r1)
/* 807E65F4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807E65F8  3C 00 7F 80 */	lis r0, 0x7f80
/* 807E65FC  7C 03 00 00 */	cmpw r3, r0
/* 807E6600  41 82 00 14 */	beq lbl_807E6614
/* 807E6604  40 80 00 40 */	bge lbl_807E6644
/* 807E6608  2C 03 00 00 */	cmpwi r3, 0
/* 807E660C  41 82 00 20 */	beq lbl_807E662C
/* 807E6610  48 00 00 34 */	b lbl_807E6644
lbl_807E6614:
/* 807E6614  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807E6618  41 82 00 0C */	beq lbl_807E6624
/* 807E661C  38 00 00 01 */	li r0, 1
/* 807E6620  48 00 00 28 */	b lbl_807E6648
lbl_807E6624:
/* 807E6624  38 00 00 02 */	li r0, 2
/* 807E6628  48 00 00 20 */	b lbl_807E6648
lbl_807E662C:
/* 807E662C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807E6630  41 82 00 0C */	beq lbl_807E663C
/* 807E6634  38 00 00 05 */	li r0, 5
/* 807E6638  48 00 00 10 */	b lbl_807E6648
lbl_807E663C:
/* 807E663C  38 00 00 03 */	li r0, 3
/* 807E6640  48 00 00 08 */	b lbl_807E6648
lbl_807E6644:
/* 807E6644  38 00 00 04 */	li r0, 4
lbl_807E6648:
/* 807E6648  2C 00 00 01 */	cmpwi r0, 1
/* 807E664C  40 82 00 0C */	bne lbl_807E6658
/* 807E6650  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807E6654  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807E6658:
/* 807E6658  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 807E665C  4B A8 10 19 */	bl cM_atan2s__Fff
/* 807E6660  B0 7F 06 68 */	sth r3, 0x668(r31)
/* 807E6664  3C 60 80 7E */	lis r3, __vt__8cM3dGPla@ha /* 0x807E7594@ha */
/* 807E6668  38 03 75 94 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x807E7594@l */
/* 807E666C  90 01 00 40 */	stw r0, 0x40(r1)
/* 807E6670  38 61 00 44 */	addi r3, r1, 0x44
/* 807E6674  38 80 FF FF */	li r4, -1
/* 807E6678  4B 89 16 65 */	bl __dt__11dBgS_LinChkFv
/* 807E667C  38 60 00 01 */	li r3, 1
/* 807E6680  48 00 00 14 */	b lbl_807E6694
lbl_807E6684:
/* 807E6684  38 61 00 44 */	addi r3, r1, 0x44
/* 807E6688  38 80 FF FF */	li r4, -1
/* 807E668C  4B 89 16 51 */	bl __dt__11dBgS_LinChkFv
/* 807E6690  38 60 00 00 */	li r3, 0
lbl_807E6694:
/* 807E6694  39 61 00 D0 */	addi r11, r1, 0xd0
/* 807E6698  4B B7 BB 8D */	bl _restgpr_28
/* 807E669C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 807E66A0  7C 08 03 A6 */	mtlr r0
/* 807E66A4  38 21 00 D0 */	addi r1, r1, 0xd0
/* 807E66A8  4E 80 00 20 */	blr 
