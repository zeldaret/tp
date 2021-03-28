lbl_80A1CD28:
/* 80A1CD28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A1CD2C  7C 08 02 A6 */	mflr r0
/* 80A1CD30  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A1CD34  39 61 00 30 */	addi r11, r1, 0x30
/* 80A1CD38  4B 94 54 A4 */	b _savegpr_29
/* 80A1CD3C  7C 7E 1B 78 */	mr r30, r3
/* 80A1CD40  3C 60 80 A2 */	lis r3, lit_3908@ha
/* 80A1CD44  3B E3 10 80 */	addi r31, r3, lit_3908@l
/* 80A1CD48  A8 1E 14 3C */	lha r0, 0x143c(r30)
/* 80A1CD4C  2C 00 00 01 */	cmpwi r0, 1
/* 80A1CD50  40 82 00 34 */	bne lbl_80A1CD84
/* 80A1CD54  38 60 00 00 */	li r3, 0
/* 80A1CD58  7C 66 1B 78 */	mr r6, r3
/* 80A1CD5C  7C 65 1B 78 */	mr r5, r3
/* 80A1CD60  7C 64 1B 78 */	mr r4, r3
/* 80A1CD64  38 00 00 03 */	li r0, 3
/* 80A1CD68  7C 09 03 A6 */	mtctr r0
lbl_80A1CD6C:
/* 80A1CD6C  7C FE 1A 14 */	add r7, r30, r3
/* 80A1CD70  B0 C7 09 1A */	sth r6, 0x91a(r7)
/* 80A1CD74  B0 A7 09 1C */	sth r5, 0x91c(r7)
/* 80A1CD78  B0 87 09 1E */	sth r4, 0x91e(r7)
/* 80A1CD7C  38 63 00 06 */	addi r3, r3, 6
/* 80A1CD80  42 00 FF EC */	bdnz lbl_80A1CD6C
lbl_80A1CD84:
/* 80A1CD84  7F C3 F3 78 */	mr r3, r30
/* 80A1CD88  4B 73 59 E4 */	b setMtx__8daNpcF_cFv
/* 80A1CD8C  7F C3 F3 78 */	mr r3, r30
/* 80A1CD90  48 00 0A B9 */	bl lookat__15daNpcKasiHana_cFv
/* 80A1CD94  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80A1CD98  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A1CD9C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A1CDA0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A1CDA4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A1CDA8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A1CDAC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A1CDB0  80 63 00 04 */	lwz r3, 4(r3)
/* 80A1CDB4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A1CDB8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A1CDBC  38 63 00 90 */	addi r3, r3, 0x90
/* 80A1CDC0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A1CDC4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A1CDC8  4B 92 96 E8 */	b PSMTXCopy
/* 80A1CDCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A1CDD0  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
/* 80A1CDD4  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80A1CDD8  D0 1E 08 E4 */	stfs f0, 0x8e4(r30)
/* 80A1CDDC  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80A1CDE0  D0 1E 08 E8 */	stfs f0, 0x8e8(r30)
/* 80A1CDE4  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80A1CDE8  D0 1E 08 EC */	stfs f0, 0x8ec(r30)
/* 80A1CDEC  7F A3 EB 78 */	mr r3, r29
/* 80A1CDF0  38 81 00 14 */	addi r4, r1, 0x14
/* 80A1CDF4  38 BE 05 38 */	addi r5, r30, 0x538
/* 80A1CDF8  4B 92 9F 74 */	b PSMTXMultVec
/* 80A1CDFC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A1CE00  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A1CE04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A1CE08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A1CE0C  38 81 00 14 */	addi r4, r1, 0x14
/* 80A1CE10  7C 85 23 78 */	mr r5, r4
/* 80A1CE14  4B 92 9F 58 */	b PSMTXMultVec
/* 80A1CE18  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80A1CE1C  38 81 00 14 */	addi r4, r1, 0x14
/* 80A1CE20  4B 85 3E 54 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80A1CE24  B0 7E 09 02 */	sth r3, 0x902(r30)
/* 80A1CE28  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80A1CE2C  38 81 00 14 */	addi r4, r1, 0x14
/* 80A1CE30  4B 85 3D D4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A1CE34  B0 7E 09 04 */	sth r3, 0x904(r30)
/* 80A1CE38  C0 5E 08 EC */	lfs f2, 0x8ec(r30)
/* 80A1CE3C  C0 3E 08 E8 */	lfs f1, 0x8e8(r30)
/* 80A1CE40  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80A1CE44  EC 21 00 2A */	fadds f1, f1, f0
/* 80A1CE48  C0 1E 08 E4 */	lfs f0, 0x8e4(r30)
/* 80A1CE4C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80A1CE50  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 80A1CE54  D0 5E 05 58 */	stfs f2, 0x558(r30)
/* 80A1CE58  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A1CE5C  80 63 00 04 */	lwz r3, 4(r3)
/* 80A1CE60  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A1CE64  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A1CE68  38 63 00 30 */	addi r3, r3, 0x30
/* 80A1CE6C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A1CE70  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A1CE74  4B 92 96 3C */	b PSMTXCopy
/* 80A1CE78  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80A1CE7C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A1CE80  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80A1CE84  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A1CE88  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80A1CE8C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A1CE90  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A1CE94  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A1CE98  38 7E 13 EC */	addi r3, r30, 0x13ec
/* 80A1CE9C  38 81 00 08 */	addi r4, r1, 8
/* 80A1CEA0  4B 85 23 3C */	b SetC__8cM3dGCylFRC4cXyz
/* 80A1CEA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A1CEA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A1CEAC  38 63 23 3C */	addi r3, r3, 0x233c
/* 80A1CEB0  38 9E 12 C8 */	addi r4, r30, 0x12c8
/* 80A1CEB4  4B 84 7C F4 */	b Set__4cCcSFP8cCcD_Obj
/* 80A1CEB8  39 61 00 30 */	addi r11, r1, 0x30
/* 80A1CEBC  4B 94 53 6C */	b _restgpr_29
/* 80A1CEC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A1CEC4  7C 08 03 A6 */	mtlr r0
/* 80A1CEC8  38 21 00 30 */	addi r1, r1, 0x30
/* 80A1CECC  4E 80 00 20 */	blr 
