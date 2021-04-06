lbl_80D5DFB0:
/* 80D5DFB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D5DFB4  7C 08 02 A6 */	mflr r0
/* 80D5DFB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D5DFBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D5DFC0  4B 60 42 19 */	bl _savegpr_28
/* 80D5DFC4  7C 7E 1B 78 */	mr r30, r3
/* 80D5DFC8  3C 80 80 D6 */	lis r4, lit_3734@ha /* 0x80D5ECE0@ha */
/* 80D5DFCC  3B E4 EC E0 */	addi r31, r4, lit_3734@l /* 0x80D5ECE0@l */
/* 80D5DFD0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D5DFD4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D5DFD8  40 82 00 A8 */	bne lbl_80D5E080
/* 80D5DFDC  7F C0 F3 79 */	or. r0, r30, r30
/* 80D5DFE0  41 82 00 94 */	beq lbl_80D5E074
/* 80D5DFE4  7C 1D 03 78 */	mr r29, r0
/* 80D5DFE8  4B 2B AB 7D */	bl __ct__10fopAc_ac_cFv
/* 80D5DFEC  3B 9D 05 78 */	addi r28, r29, 0x578
/* 80D5DFF0  7F 83 E3 78 */	mr r3, r28
/* 80D5DFF4  4B 32 5A 35 */	bl __ct__12dCcD_GObjInfFv
/* 80D5DFF8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D5DFFC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D5E000  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80D5E004  3C 60 80 D6 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D5EDD8@ha */
/* 80D5E008  38 03 ED D8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D5EDD8@l */
/* 80D5E00C  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80D5E010  3C 60 80 D6 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80D5EDE4@ha */
/* 80D5E014  38 03 ED E4 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80D5EDE4@l */
/* 80D5E018  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80D5E01C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80D5E020  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80D5E024  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80D5E028  38 03 00 58 */	addi r0, r3, 0x58
/* 80D5E02C  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80D5E030  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80D5E034  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80D5E038  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80D5E03C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D5E040  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80D5E044  38 03 00 84 */	addi r0, r3, 0x84
/* 80D5E048  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80D5E04C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80D5E050  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80D5E054  90 1D 06 CC */	stw r0, 0x6cc(r29)
/* 80D5E058  38 7D 06 D0 */	addi r3, r29, 0x6d0
/* 80D5E05C  4B 32 57 05 */	bl __ct__10dCcD_GSttsFv
/* 80D5E060  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80D5E064  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80D5E068  90 7D 06 CC */	stw r3, 0x6cc(r29)
/* 80D5E06C  38 03 00 20 */	addi r0, r3, 0x20
/* 80D5E070  90 1D 06 D0 */	stw r0, 0x6d0(r29)
lbl_80D5E074:
/* 80D5E074  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80D5E078  60 00 00 08 */	ori r0, r0, 8
/* 80D5E07C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80D5E080:
/* 80D5E080  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D5E084  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D5E088  40 82 00 0C */	bne lbl_80D5E094
/* 80D5E08C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80D5E090  48 00 00 08 */	b lbl_80D5E098
lbl_80D5E094:
/* 80D5E094  C0 5F 00 04 */	lfs f2, 4(r31)
lbl_80D5E098:
/* 80D5E098  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80D5E09C  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80D5E0A0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D5E0A4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80D5E0A8  D0 1E 05 68 */	stfs f0, 0x568(r30)
/* 80D5E0AC  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80D5E0B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D5E0B4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80D5E0B8  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 80D5E0BC  38 00 00 00 */	li r0, 0
/* 80D5E0C0  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80D5E0C4  90 1E 05 74 */	stw r0, 0x574(r30)
/* 80D5E0C8  38 7E 06 B4 */	addi r3, r30, 0x6b4
/* 80D5E0CC  38 80 00 FF */	li r4, 0xff
/* 80D5E0D0  38 A0 00 00 */	li r5, 0
/* 80D5E0D4  7F C6 F3 78 */	mr r6, r30
/* 80D5E0D8  4B 32 57 89 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D5E0DC  38 7E 05 78 */	addi r3, r30, 0x578
/* 80D5E0E0  3C 80 80 D6 */	lis r4, l_cc_cyl_src@ha /* 0x80D5ED44@ha */
/* 80D5E0E4  38 84 ED 44 */	addi r4, r4, l_cc_cyl_src@l /* 0x80D5ED44@l */
/* 80D5E0E8  4B 32 67 CD */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D5E0EC  38 1E 06 B4 */	addi r0, r30, 0x6b4
/* 80D5E0F0  90 1E 05 BC */	stw r0, 0x5bc(r30)
/* 80D5E0F4  38 60 00 04 */	li r3, 4
/* 80D5E0F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D5E0FC  4B 60 41 29 */	bl _restgpr_28
/* 80D5E100  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D5E104  7C 08 03 A6 */	mtlr r0
/* 80D5E108  38 21 00 20 */	addi r1, r1, 0x20
/* 80D5E10C  4E 80 00 20 */	blr 
