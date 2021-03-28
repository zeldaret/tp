lbl_80BF9F30:
/* 80BF9F30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BF9F34  7C 08 02 A6 */	mflr r0
/* 80BF9F38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BF9F3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BF9F40  7C 7F 1B 78 */	mr r31, r3
/* 80BF9F44  3C 60 80 C0 */	lis r3, struct_80BFAFD0+0x1@ha
/* 80BF9F48  38 A3 AF D1 */	addi r5, r3, struct_80BFAFD0+0x1@l
/* 80BF9F4C  88 05 00 00 */	lbz r0, 0(r5)
/* 80BF9F50  7C 00 07 75 */	extsb. r0, r0
/* 80BF9F54  40 82 00 3C */	bne lbl_80BF9F90
/* 80BF9F58  3C 80 00 08 */	lis r4, 0x0008 /* 0x0008026D@ha */
/* 80BF9F5C  38 04 02 6D */	addi r0, r4, 0x026D /* 0x0008026D@l */
/* 80BF9F60  3C 60 80 C0 */	lis r3, sSeId@ha
/* 80BF9F64  94 03 AF D4 */	stwu r0, sSeId@l(r3)
/* 80BF9F68  38 04 02 6E */	addi r0, r4, 0x26e
/* 80BF9F6C  90 03 00 04 */	stw r0, 4(r3)
/* 80BF9F70  38 04 02 6F */	addi r0, r4, 0x26f
/* 80BF9F74  90 03 00 08 */	stw r0, 8(r3)
/* 80BF9F78  38 04 02 70 */	addi r0, r4, 0x270
/* 80BF9F7C  90 03 00 0C */	stw r0, 0xc(r3)
/* 80BF9F80  38 04 02 71 */	addi r0, r4, 0x271
/* 80BF9F84  90 03 00 10 */	stw r0, 0x10(r3)
/* 80BF9F88  38 00 00 01 */	li r0, 1
/* 80BF9F8C  98 05 00 00 */	stb r0, 0(r5)
lbl_80BF9F90:
/* 80BF9F90  48 00 07 59 */	bl getSphSe__12_GlSph_Mng_cFv
/* 80BF9F94  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BF9F98  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BF9F9C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BF9FA0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BF9FA4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80BF9FA8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BF9FAC  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80BF9FB0  3C 60 80 C0 */	lis r3, sSeId@ha
/* 80BF9FB4  38 63 AF D4 */	addi r3, r3, sSeId@l
/* 80BF9FB8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80BF9FBC  90 01 00 08 */	stw r0, 8(r1)
/* 80BF9FC0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BF9FC4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BF9FC8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF9FCC  38 81 00 08 */	addi r4, r1, 8
/* 80BF9FD0  38 A1 00 0C */	addi r5, r1, 0xc
/* 80BF9FD4  38 C0 00 00 */	li r6, 0
/* 80BF9FD8  38 E0 00 00 */	li r7, 0
/* 80BF9FDC  3D 00 80 C0 */	lis r8, lit_3714@ha
/* 80BF9FE0  C0 28 A9 A8 */	lfs f1, lit_3714@l(r8)
/* 80BF9FE4  FC 40 08 90 */	fmr f2, f1
/* 80BF9FE8  3D 00 80 C0 */	lis r8, lit_4031@ha
/* 80BF9FEC  C0 68 A9 BC */	lfs f3, lit_4031@l(r8)
/* 80BF9FF0  FC 80 18 90 */	fmr f4, f3
/* 80BF9FF4  39 00 00 00 */	li r8, 0
/* 80BF9FF8  4B 6B 19 8C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BF9FFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BFA000  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BFA004  7C 08 03 A6 */	mtlr r0
/* 80BFA008  38 21 00 20 */	addi r1, r1, 0x20
/* 80BFA00C  4E 80 00 20 */	blr 
