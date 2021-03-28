lbl_80BECAE0:
/* 80BECAE0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80BECAE4  7C 08 02 A6 */	mflr r0
/* 80BECAE8  90 01 00 94 */	stw r0, 0x94(r1)
/* 80BECAEC  39 61 00 90 */	addi r11, r1, 0x90
/* 80BECAF0  4B 77 56 E8 */	b _savegpr_28
/* 80BECAF4  7C 9C 23 78 */	mr r28, r4
/* 80BECAF8  3B E3 05 40 */	addi r31, r3, 0x540
/* 80BECAFC  1C 05 00 0C */	mulli r0, r5, 0xc
/* 80BECB00  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80BECB04  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80BECB08  7C 7F 02 14 */	add r3, r31, r0
/* 80BECB0C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BECB10  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80BECB14  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BECB18  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80BECB1C  1C 85 00 1C */	mulli r4, r5, 0x1c
/* 80BECB20  3C 60 80 BF */	lis r3, rel_pos_idx_tbl_3734@ha
/* 80BECB24  38 03 E7 10 */	addi r0, r3, rel_pos_idx_tbl_3734@l
/* 80BECB28  7F C0 22 14 */	add r30, r0, r4
/* 80BECB2C  3C 60 80 BF */	lis r3, lit_3685@ha
/* 80BECB30  C0 03 E0 F4 */	lfs f0, lit_3685@l(r3)
/* 80BECB34  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BECB38  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BECB3C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BECB40  3B A0 00 00 */	li r29, 0
lbl_80BECB44:
/* 80BECB44  80 1E 00 04 */	lwz r0, 4(r30)
/* 80BECB48  2C 00 FF FF */	cmpwi r0, -1
/* 80BECB4C  41 82 00 AC */	beq lbl_80BECBF8
/* 80BECB50  38 61 00 2C */	addi r3, r1, 0x2c
/* 80BECB54  80 1E 00 00 */	lwz r0, 0(r30)
/* 80BECB58  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BECB5C  7C 9F 02 14 */	add r4, r31, r0
/* 80BECB60  38 A1 00 68 */	addi r5, r1, 0x68
/* 80BECB64  4B 67 9F D0 */	b __mi__4cXyzCFRC3Vec
/* 80BECB68  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80BECB6C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80BECB70  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80BECB74  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80BECB78  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80BECB7C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80BECB80  38 61 00 20 */	addi r3, r1, 0x20
/* 80BECB84  80 1E 00 04 */	lwz r0, 4(r30)
/* 80BECB88  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BECB8C  7C 9F 02 14 */	add r4, r31, r0
/* 80BECB90  38 A1 00 68 */	addi r5, r1, 0x68
/* 80BECB94  4B 67 9F A0 */	b __mi__4cXyzCFRC3Vec
/* 80BECB98  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BECB9C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80BECBA0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80BECBA4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80BECBA8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BECBAC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80BECBB0  38 61 00 14 */	addi r3, r1, 0x14
/* 80BECBB4  38 81 00 50 */	addi r4, r1, 0x50
/* 80BECBB8  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80BECBBC  4B 67 A1 00 */	b outprod__4cXyzCFRC3Vec
/* 80BECBC0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BECBC4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BECBC8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80BECBCC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BECBD0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BECBD4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BECBD8  38 61 00 38 */	addi r3, r1, 0x38
/* 80BECBDC  38 81 00 44 */	addi r4, r1, 0x44
/* 80BECBE0  7C 65 1B 78 */	mr r5, r3
/* 80BECBE4  4B 75 A4 AC */	b PSVECAdd
/* 80BECBE8  3B BD 00 01 */	addi r29, r29, 1
/* 80BECBEC  2C 1D 00 06 */	cmpwi r29, 6
/* 80BECBF0  3B DE 00 04 */	addi r30, r30, 4
/* 80BECBF4  41 80 FF 50 */	blt lbl_80BECB44
lbl_80BECBF8:
/* 80BECBF8  38 61 00 08 */	addi r3, r1, 8
/* 80BECBFC  38 81 00 38 */	addi r4, r1, 0x38
/* 80BECC00  4B 67 A3 48 */	b normalizeZP__4cXyzFv
/* 80BECC04  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80BECC08  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80BECC0C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80BECC10  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80BECC14  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80BECC18  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80BECC1C  39 61 00 90 */	addi r11, r1, 0x90
/* 80BECC20  4B 77 56 04 */	b _restgpr_28
/* 80BECC24  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80BECC28  7C 08 03 A6 */	mtlr r0
/* 80BECC2C  38 21 00 90 */	addi r1, r1, 0x90
/* 80BECC30  4E 80 00 20 */	blr 
