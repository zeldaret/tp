lbl_805A3B24:
/* 805A3B24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A3B28  7C 08 02 A6 */	mflr r0
/* 805A3B2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A3B30  39 61 00 20 */	addi r11, r1, 0x20
/* 805A3B34  4B DB E6 A9 */	bl _savegpr_29
/* 805A3B38  7C 7D 1B 78 */	mr r29, r3
/* 805A3B3C  3C 80 80 5A */	lis r4, l_arcName@ha /* 0x805A4238@ha */
/* 805A3B40  3B E4 42 38 */	addi r31, r4, l_arcName@l /* 0x805A4238@l */
/* 805A3B44  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805A3B48  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805A3B4C  40 82 00 28 */	bne lbl_805A3B74
/* 805A3B50  28 1D 00 00 */	cmplwi r29, 0
/* 805A3B54  41 82 00 14 */	beq lbl_805A3B68
/* 805A3B58  4B AD 4A CD */	bl __ct__16dBgS_MoveBgActorFv
/* 805A3B5C  3C 60 80 5A */	lis r3, __vt__12daTagHjump_c@ha /* 0x805A42BC@ha */
/* 805A3B60  38 03 42 BC */	addi r0, r3, __vt__12daTagHjump_c@l /* 0x805A42BC@l */
/* 805A3B64  90 1D 05 9C */	stw r0, 0x59c(r29)
lbl_805A3B68:
/* 805A3B68  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 805A3B6C  60 00 00 08 */	ori r0, r0, 8
/* 805A3B70  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_805A3B74:
/* 805A3B74  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 805A3B78  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 805A3B7C  98 1D 05 AC */	stb r0, 0x5ac(r29)
/* 805A3B80  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 805A3B84  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 805A3B88  98 1D 05 AD */	stb r0, 0x5ad(r29)
/* 805A3B8C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 805A3B90  54 00 C5 3E */	rlwinm r0, r0, 0x18, 0x14, 0x1f
/* 805A3B94  B0 1D 05 B0 */	sth r0, 0x5b0(r29)
/* 805A3B98  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 805A3B9C  54 00 65 3E */	srwi r0, r0, 0x14
/* 805A3BA0  B0 1D 05 B2 */	sth r0, 0x5b2(r29)
/* 805A3BA4  88 1D 05 AD */	lbz r0, 0x5ad(r29)
/* 805A3BA8  28 00 00 0F */	cmplwi r0, 0xf
/* 805A3BAC  40 82 00 0C */	bne lbl_805A3BB8
/* 805A3BB0  38 00 00 00 */	li r0, 0
/* 805A3BB4  98 1D 05 AD */	stb r0, 0x5ad(r29)
lbl_805A3BB8:
/* 805A3BB8  88 1D 05 AC */	lbz r0, 0x5ac(r29)
/* 805A3BBC  28 00 00 00 */	cmplwi r0, 0
/* 805A3BC0  41 82 01 30 */	beq lbl_805A3CF0
/* 805A3BC4  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 805A3BC8  38 9F 00 00 */	addi r4, r31, 0
/* 805A3BCC  4B A8 92 F1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 805A3BD0  7C 7E 1B 78 */	mr r30, r3
/* 805A3BD4  2C 1E 00 04 */	cmpwi r30, 4
/* 805A3BD8  40 82 01 7C */	bne lbl_805A3D54
/* 805A3BDC  7F A3 EB 78 */	mr r3, r29
/* 805A3BE0  38 9F 00 00 */	addi r4, r31, 0
/* 805A3BE4  38 A0 00 07 */	li r5, 7
/* 805A3BE8  38 C0 00 00 */	li r6, 0
/* 805A3BEC  38 E0 0C A0 */	li r7, 0xca0
/* 805A3BF0  39 00 00 00 */	li r8, 0
/* 805A3BF4  4B AD 4B C9 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 805A3BF8  7C 7E 1B 78 */	mr r30, r3
/* 805A3BFC  2C 1E 00 04 */	cmpwi r30, 4
/* 805A3C00  40 82 01 54 */	bne lbl_805A3D54
/* 805A3C04  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 805A3C08  38 03 00 24 */	addi r0, r3, 0x24
/* 805A3C0C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 805A3C10  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805A3C14  98 1D 04 8C */	stb r0, 0x48c(r29)
/* 805A3C18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805A3C1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805A3C20  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 805A3C24  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 805A3C28  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 805A3C2C  4B DA 2C BD */	bl PSMTXTrans
/* 805A3C30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805A3C34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805A3C38  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 805A3C3C  4B A6 87 F9 */	bl mDoMtx_YrotM__FPA4_fs
/* 805A3C40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805A3C44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805A3C48  80 9D 05 A8 */	lwz r4, 0x5a8(r29)
/* 805A3C4C  38 84 00 24 */	addi r4, r4, 0x24
/* 805A3C50  4B DA 28 61 */	bl PSMTXCopy
/* 805A3C54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805A3C58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805A3C5C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805A3C60  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805A3C64  EC 00 08 28 */	fsubs f0, f0, f1
/* 805A3C68  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 805A3C6C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805A3C70  EC 00 08 28 */	fsubs f0, f0, f1
/* 805A3C74  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 805A3C78  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 805A3C7C  88 03 00 88 */	lbz r0, 0x88(r3)
/* 805A3C80  60 00 00 80 */	ori r0, r0, 0x80
/* 805A3C84  98 03 00 88 */	stb r0, 0x88(r3)
/* 805A3C88  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 805A3C8C  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 805A3C90  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 805A3C94  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 805A3C98  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 805A3C9C  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 805A3CA0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 805A3CA4  D0 1D 05 B8 */	stfs f0, 0x5b8(r29)
/* 805A3CA8  7F A3 EB 78 */	mr r3, r29
/* 805A3CAC  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 805A3CB0  FC 20 00 50 */	fneg f1, f0
/* 805A3CB4  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 805A3CB8  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 805A3CBC  4B A7 68 6D */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 805A3CC0  7F A3 EB 78 */	mr r3, r29
/* 805A3CC4  C0 3D 04 EC */	lfs f1, 0x4ec(r29)
/* 805A3CC8  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 805A3CCC  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 805A3CD0  4B A7 68 69 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 805A3CD4  38 00 20 00 */	li r0, 0x2000
/* 805A3CD8  B0 1D 05 AE */	sth r0, 0x5ae(r29)
/* 805A3CDC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805A3CE0  D0 1D 05 20 */	stfs f0, 0x520(r29)
/* 805A3CE4  38 00 00 04 */	li r0, 4
/* 805A3CE8  98 1D 05 AD */	stb r0, 0x5ad(r29)
/* 805A3CEC  48 00 00 68 */	b lbl_805A3D54
lbl_805A3CF0:
/* 805A3CF0  3B C0 00 04 */	li r30, 4
/* 805A3CF4  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 805A3CF8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805A3CFC  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A3D00  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 805A3D04  C0 1D 04 F4 */	lfs f0, 0x4f4(r29)
/* 805A3D08  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A3D0C  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 805A3D10  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 805A3D14  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A3D18  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 805A3D1C  88 1D 05 AD */	lbz r0, 0x5ad(r29)
/* 805A3D20  28 00 00 00 */	cmplwi r0, 0
/* 805A3D24  41 82 00 0C */	beq lbl_805A3D30
/* 805A3D28  28 00 00 01 */	cmplwi r0, 1
/* 805A3D2C  40 82 00 18 */	bne lbl_805A3D44
lbl_805A3D30:
/* 805A3D30  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 805A3D34  D0 1D 05 B8 */	stfs f0, 0x5b8(r29)
/* 805A3D38  38 00 10 00 */	li r0, 0x1000
/* 805A3D3C  B0 1D 05 AE */	sth r0, 0x5ae(r29)
/* 805A3D40  48 00 00 14 */	b lbl_805A3D54
lbl_805A3D44:
/* 805A3D44  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 805A3D48  D0 1D 05 B8 */	stfs f0, 0x5b8(r29)
/* 805A3D4C  38 00 20 00 */	li r0, 0x2000
/* 805A3D50  B0 1D 05 AE */	sth r0, 0x5ae(r29)
lbl_805A3D54:
/* 805A3D54  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 805A3D58  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 805A3D5C  EC 01 00 2A */	fadds f0, f1, f0
/* 805A3D60  D0 1D 05 B4 */	stfs f0, 0x5b4(r29)
/* 805A3D64  7F C3 F3 78 */	mr r3, r30
/* 805A3D68  39 61 00 20 */	addi r11, r1, 0x20
/* 805A3D6C  4B DB E4 BD */	bl _restgpr_29
/* 805A3D70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A3D74  7C 08 03 A6 */	mtlr r0
/* 805A3D78  38 21 00 20 */	addi r1, r1, 0x20
/* 805A3D7C  4E 80 00 20 */	blr 
