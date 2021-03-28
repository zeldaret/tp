lbl_80B9BFDC:
/* 80B9BFDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B9BFE0  7C 08 02 A6 */	mflr r0
/* 80B9BFE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B9BFE8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80B9BFEC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80B9BFF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B9BFF4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B9BFF8  7C 7F 1B 78 */	mr r31, r3
/* 80B9BFFC  3C 80 80 BA */	lis r4, lit_3755@ha
/* 80B9C000  3B C4 C9 20 */	addi r30, r4, lit_3755@l
/* 80B9C004  A8 03 09 54 */	lha r0, 0x954(r3)
/* 80B9C008  2C 00 00 01 */	cmpwi r0, 1
/* 80B9C00C  41 82 00 4C */	beq lbl_80B9C058
/* 80B9C010  40 80 00 14 */	bge lbl_80B9C024
/* 80B9C014  2C 00 FF FF */	cmpwi r0, -1
/* 80B9C018  41 82 01 44 */	beq lbl_80B9C15C
/* 80B9C01C  40 80 00 14 */	bge lbl_80B9C030
/* 80B9C020  48 00 01 3C */	b lbl_80B9C15C
lbl_80B9C024:
/* 80B9C024  2C 00 00 03 */	cmpwi r0, 3
/* 80B9C028  40 80 01 34 */	bge lbl_80B9C15C
/* 80B9C02C  48 00 00 AC */	b lbl_80B9C0D8
lbl_80B9C030:
/* 80B9C030  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80B9C034  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B9C038  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80B9C03C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B9C040  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80B9C044  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80B9C048  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80B9C04C  38 00 00 01 */	li r0, 1
/* 80B9C050  B0 1F 09 54 */	sth r0, 0x954(r31)
/* 80B9C054  48 00 01 08 */	b lbl_80B9C15C
lbl_80B9C058:
/* 80B9C058  4B 47 E5 B4 */	b fopAcM_calcSpeed__FP10fopAc_ac_c
/* 80B9C05C  7F E3 FB 78 */	mr r3, r31
/* 80B9C060  38 80 00 00 */	li r4, 0
/* 80B9C064  4B 47 E5 FC */	b fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
/* 80B9C068  C3 FF 04 D4 */	lfs f31, 0x4d4(r31)
/* 80B9C06C  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80B9C070  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80B9C074  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80B9C078  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80B9C07C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B9C080  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B9C084  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B9C088  4B 4D AA 24 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80B9C08C  D3 FF 04 D4 */	stfs f31, 0x4d4(r31)
/* 80B9C090  80 1F 06 24 */	lwz r0, 0x624(r31)
/* 80B9C094  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80B9C098  41 82 00 C4 */	beq lbl_80B9C15C
/* 80B9C09C  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80B9C0A0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B9C0A4  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80B9C0A8  D0 3F 04 F8 */	stfs f1, 0x4f8(r31)
/* 80B9C0AC  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80B9C0B0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B9C0B4  D0 3F 05 00 */	stfs f1, 0x500(r31)
/* 80B9C0B8  38 00 01 20 */	li r0, 0x120
/* 80B9C0BC  B0 1F 09 64 */	sth r0, 0x964(r31)
/* 80B9C0C0  38 00 00 00 */	li r0, 0
/* 80B9C0C4  B0 1F 09 66 */	sth r0, 0x966(r31)
/* 80B9C0C8  B0 1F 09 68 */	sth r0, 0x968(r31)
/* 80B9C0CC  38 00 00 02 */	li r0, 2
/* 80B9C0D0  B0 1F 09 54 */	sth r0, 0x954(r31)
/* 80B9C0D4  48 00 00 88 */	b lbl_80B9C15C
lbl_80B9C0D8:
/* 80B9C0D8  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B9C0DC  38 9F 09 64 */	addi r4, r31, 0x964
/* 80B9C0E0  4B 6C B3 7C */	b __apl__5csXyzFR5csXyz
/* 80B9C0E4  7F E3 FB 78 */	mr r3, r31
/* 80B9C0E8  4B 47 E5 24 */	b fopAcM_calcSpeed__FP10fopAc_ac_c
/* 80B9C0EC  7F E3 FB 78 */	mr r3, r31
/* 80B9C0F0  38 80 00 00 */	li r4, 0
/* 80B9C0F4  4B 47 E5 6C */	b fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
/* 80B9C0F8  C3 FF 04 D4 */	lfs f31, 0x4d4(r31)
/* 80B9C0FC  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80B9C100  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80B9C104  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80B9C108  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80B9C10C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B9C110  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B9C114  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B9C118  4B 4D A9 94 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80B9C11C  D3 FF 04 D4 */	stfs f31, 0x4d4(r31)
/* 80B9C120  80 1F 06 24 */	lwz r0, 0x624(r31)
/* 80B9C124  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80B9C128  41 82 00 34 */	beq lbl_80B9C15C
/* 80B9C12C  3C 60 80 BA */	lis r3, lit_3891@ha
/* 80B9C130  38 83 C9 E8 */	addi r4, r3, lit_3891@l
/* 80B9C134  80 64 00 00 */	lwz r3, 0(r4)
/* 80B9C138  80 04 00 04 */	lwz r0, 4(r4)
/* 80B9C13C  90 61 00 08 */	stw r3, 8(r1)
/* 80B9C140  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9C144  80 04 00 08 */	lwz r0, 8(r4)
/* 80B9C148  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B9C14C  7F E3 FB 78 */	mr r3, r31
/* 80B9C150  38 81 00 08 */	addi r4, r1, 8
/* 80B9C154  38 A0 00 01 */	li r5, 1
/* 80B9C158  4B FF FB D9 */	bl setAction__13daObjLv5Key_cFM13daObjLv5Key_cFPCvPvi_vi
lbl_80B9C15C:
/* 80B9C15C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80B9C160  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80B9C164  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B9C168  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B9C16C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B9C170  7C 08 03 A6 */	mtlr r0
/* 80B9C174  38 21 00 30 */	addi r1, r1, 0x30
/* 80B9C178  4E 80 00 20 */	blr 
