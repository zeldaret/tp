lbl_80C7BD70:
/* 80C7BD70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C7BD74  7C 08 02 A6 */	mflr r0
/* 80C7BD78  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C7BD7C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C7BD80  4B 6E 64 5D */	bl _savegpr_29
/* 80C7BD84  7C 7E 1B 78 */	mr r30, r3
/* 80C7BD88  3C 60 80 C8 */	lis r3, lit_3631@ha /* 0x80C7C618@ha */
/* 80C7BD8C  3B E3 C6 18 */	addi r31, r3, lit_3631@l /* 0x80C7C618@l */
/* 80C7BD90  38 7E 06 50 */	addi r3, r30, 0x650
/* 80C7BD94  4B 40 88 C5 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 80C7BD98  28 03 00 00 */	cmplwi r3, 0
/* 80C7BD9C  41 82 00 2C */	beq lbl_80C7BDC8
/* 80C7BDA0  38 7E 07 38 */	addi r3, r30, 0x738
/* 80C7BDA4  4B 40 78 E5 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80C7BDA8  28 03 00 00 */	cmplwi r3, 0
/* 80C7BDAC  41 82 00 1C */	beq lbl_80C7BDC8
/* 80C7BDB0  A8 03 00 0E */	lha r0, 0xe(r3)
/* 80C7BDB4  2C 00 01 98 */	cmpwi r0, 0x198
/* 80C7BDB8  40 82 00 10 */	bne lbl_80C7BDC8
/* 80C7BDBC  88 1E 05 AD */	lbz r0, 0x5ad(r30)
/* 80C7BDC0  1C 00 FF FF */	mulli r0, r0, -1
/* 80C7BDC4  98 1E 05 AD */	stb r0, 0x5ad(r30)
lbl_80C7BDC8:
/* 80C7BDC8  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80C7BDCC  88 1E 05 AD */	lbz r0, 0x5ad(r30)
/* 80C7BDD0  7C 03 07 74 */	extsb r3, r0
/* 80C7BDD4  C0 BF 01 04 */	lfs f5, 0x104(r31)
/* 80C7BDD8  C0 9F 01 38 */	lfs f4, 0x138(r31)
/* 80C7BDDC  C0 7E 05 D4 */	lfs f3, 0x5d4(r30)
/* 80C7BDE0  C0 5F 01 3C */	lfs f2, 0x13c(r31)
/* 80C7BDE4  C0 3F 01 40 */	lfs f1, 0x140(r31)
/* 80C7BDE8  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 80C7BDEC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C7BDF0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C7BDF4  EC 03 00 24 */	fdivs f0, f3, f0
/* 80C7BDF8  EC 04 00 32 */	fmuls f0, f4, f0
/* 80C7BDFC  EC 05 00 32 */	fmuls f0, f5, f0
/* 80C7BE00  FC 00 00 1E */	fctiwz f0, f0
/* 80C7BE04  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C7BE08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7BE0C  7C 03 01 D6 */	mullw r0, r3, r0
/* 80C7BE10  7C 04 02 14 */	add r0, r4, r0
/* 80C7BE14  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80C7BE18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7BE1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7BE20  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80C7BE24  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80C7BE28  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80C7BE2C  4B 39 03 DD */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80C7BE30  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 80C7BE34  D0 1E 08 C4 */	stfs f0, 0x8c4(r30)
/* 80C7BE38  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80C7BE3C  D0 1E 08 C8 */	stfs f0, 0x8c8(r30)
/* 80C7BE40  D0 1E 08 CC */	stfs f0, 0x8cc(r30)
/* 80C7BE44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7BE48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7BE4C  38 9E 08 C4 */	addi r4, r30, 0x8c4
/* 80C7BE50  7C 85 23 78 */	mr r5, r4
/* 80C7BE54  4B 6C AF 19 */	bl PSMTXMultVec
/* 80C7BE58  38 7E 08 C4 */	addi r3, r30, 0x8c4
/* 80C7BE5C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C7BE60  7C 65 1B 78 */	mr r5, r3
/* 80C7BE64  4B 6C B2 2D */	bl PSVECAdd
/* 80C7BE68  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C7BE6C  7C 03 07 74 */	extsb r3, r0
/* 80C7BE70  4B 3B 11 FD */	bl dComIfGp_getReverb__Fi
/* 80C7BE74  7C 7D 1B 78 */	mr r29, r3
/* 80C7BE78  C0 3E 05 D4 */	lfs f1, 0x5d4(r30)
/* 80C7BE7C  4B 6E 62 31 */	bl __cvt_fp2unsigned
/* 80C7BE80  7C 66 1B 78 */	mr r6, r3
/* 80C7BE84  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A9@ha */
/* 80C7BE88  38 03 01 A9 */	addi r0, r3, 0x01A9 /* 0x000801A9@l */
/* 80C7BE8C  90 01 00 08 */	stw r0, 8(r1)
/* 80C7BE90  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C7BE94  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C7BE98  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7BE9C  38 81 00 08 */	addi r4, r1, 8
/* 80C7BEA0  38 BE 08 C4 */	addi r5, r30, 0x8c4
/* 80C7BEA4  7F A7 EB 78 */	mr r7, r29
/* 80C7BEA8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C7BEAC  FC 40 08 90 */	fmr f2, f1
/* 80C7BEB0  C0 7F 01 10 */	lfs f3, 0x110(r31)
/* 80C7BEB4  FC 80 18 90 */	fmr f4, f3
/* 80C7BEB8  39 00 00 00 */	li r8, 0
/* 80C7BEBC  4B 63 06 51 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C7BEC0  39 61 00 30 */	addi r11, r1, 0x30
/* 80C7BEC4  4B 6E 63 65 */	bl _restgpr_29
/* 80C7BEC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C7BECC  7C 08 03 A6 */	mtlr r0
/* 80C7BED0  38 21 00 30 */	addi r1, r1, 0x30
/* 80C7BED4  4E 80 00 20 */	blr 
