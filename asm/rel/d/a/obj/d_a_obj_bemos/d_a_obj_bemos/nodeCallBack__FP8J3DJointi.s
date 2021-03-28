lbl_80BAE4A8:
/* 80BAE4A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BAE4AC  7C 08 02 A6 */	mflr r0
/* 80BAE4B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BAE4B4  39 61 00 20 */	addi r11, r1, 0x20
/* 80BAE4B8  4B 7B 3D 20 */	b _savegpr_28
/* 80BAE4BC  2C 04 00 00 */	cmpwi r4, 0
/* 80BAE4C0  40 82 01 20 */	bne lbl_80BAE5E0
/* 80BAE4C4  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 80BAE4C8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BAE4CC  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80BAE4D0  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 80BAE4D4  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 80BAE4D8  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80BAE4DC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80BAE4E0  1F BF 00 30 */	mulli r29, r31, 0x30
/* 80BAE4E4  7C 60 EA 14 */	add r3, r0, r29
/* 80BAE4E8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80BAE4EC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80BAE4F0  4B 79 7F C0 */	b PSMTXCopy
/* 80BAE4F4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80BAE4F8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80BAE4FC  80 1C 0F F0 */	lwz r0, 0xff0(r28)
/* 80BAE500  1C 00 2C EC */	mulli r0, r0, 0x2cec
/* 80BAE504  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BAE508  7C 63 02 14 */	add r3, r3, r0
/* 80BAE50C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80BAE510  C0 1C 10 00 */	lfs f0, 0x1000(r28)
/* 80BAE514  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BAE518  FC 00 00 1E */	fctiwz f0, f0
/* 80BAE51C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80BAE520  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BAE524  A8 1C 0F 8C */	lha r0, 0xf8c(r28)
/* 80BAE528  7C 1F 00 00 */	cmpw r31, r0
/* 80BAE52C  40 82 00 20 */	bne lbl_80BAE54C
/* 80BAE530  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BAE534  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BAE538  A8 1C 0F 96 */	lha r0, 0xf96(r28)
/* 80BAE53C  7C 00 22 14 */	add r0, r0, r4
/* 80BAE540  7C 04 07 34 */	extsh r4, r0
/* 80BAE544  4B 45 DE 58 */	b mDoMtx_XrotM__FPA4_fs
/* 80BAE548  48 00 00 80 */	b lbl_80BAE5C8
lbl_80BAE54C:
/* 80BAE54C  A8 1C 0F 8E */	lha r0, 0xf8e(r28)
/* 80BAE550  7C 1F 00 00 */	cmpw r31, r0
/* 80BAE554  40 82 00 18 */	bne lbl_80BAE56C
/* 80BAE558  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BAE55C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BAE560  A8 9C 0F 9A */	lha r4, 0xf9a(r28)
/* 80BAE564  4B 45 DE 38 */	b mDoMtx_XrotM__FPA4_fs
/* 80BAE568  48 00 00 60 */	b lbl_80BAE5C8
lbl_80BAE56C:
/* 80BAE56C  A8 1C 0F 90 */	lha r0, 0xf90(r28)
/* 80BAE570  7C 1F 00 00 */	cmpw r31, r0
/* 80BAE574  40 82 00 18 */	bne lbl_80BAE58C
/* 80BAE578  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BAE57C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BAE580  A8 9C 0F 9E */	lha r4, 0xf9e(r28)
/* 80BAE584  4B 45 DE 18 */	b mDoMtx_XrotM__FPA4_fs
/* 80BAE588  48 00 00 40 */	b lbl_80BAE5C8
lbl_80BAE58C:
/* 80BAE58C  A8 1C 0F 92 */	lha r0, 0xf92(r28)
/* 80BAE590  7C 1F 00 00 */	cmpw r31, r0
/* 80BAE594  40 82 00 18 */	bne lbl_80BAE5AC
/* 80BAE598  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BAE59C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BAE5A0  A8 9C 0F A2 */	lha r4, 0xfa2(r28)
/* 80BAE5A4  4B 45 DD F8 */	b mDoMtx_XrotM__FPA4_fs
/* 80BAE5A8  48 00 00 20 */	b lbl_80BAE5C8
lbl_80BAE5AC:
/* 80BAE5AC  A8 1C 0F 94 */	lha r0, 0xf94(r28)
/* 80BAE5B0  7C 1F 00 00 */	cmpw r31, r0
/* 80BAE5B4  40 82 00 14 */	bne lbl_80BAE5C8
/* 80BAE5B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BAE5BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BAE5C0  A8 9C 0F A6 */	lha r4, 0xfa6(r28)
/* 80BAE5C4  4B 45 DD D8 */	b mDoMtx_XrotM__FPA4_fs
lbl_80BAE5C8:
/* 80BAE5C8  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80BAE5CC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80BAE5D0  7C 80 EA 14 */	add r4, r0, r29
/* 80BAE5D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BAE5D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BAE5DC  4B 79 7E D4 */	b PSMTXCopy
lbl_80BAE5E0:
/* 80BAE5E0  38 60 00 01 */	li r3, 1
/* 80BAE5E4  39 61 00 20 */	addi r11, r1, 0x20
/* 80BAE5E8  4B 7B 3C 3C */	b _restgpr_28
/* 80BAE5EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BAE5F0  7C 08 03 A6 */	mtlr r0
/* 80BAE5F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80BAE5F8  4E 80 00 20 */	blr 
