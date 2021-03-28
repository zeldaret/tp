lbl_80B8AA1C:
/* 80B8AA1C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B8AA20  7C 08 02 A6 */	mflr r0
/* 80B8AA24  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B8AA28  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80B8AA2C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80B8AA30  7C 7F 1B 78 */	mr r31, r3
/* 80B8AA34  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B8AA38  3B C3 C4 58 */	addi r30, r3, m__17daNpc_zrA_Param_c@l
/* 80B8AA3C  A0 1F 14 E6 */	lhz r0, 0x14e6(r31)
/* 80B8AA40  2C 00 00 02 */	cmpwi r0, 2
/* 80B8AA44  41 82 00 40 */	beq lbl_80B8AA84
/* 80B8AA48  40 80 01 14 */	bge lbl_80B8AB5C
/* 80B8AA4C  2C 00 00 00 */	cmpwi r0, 0
/* 80B8AA50  41 82 00 0C */	beq lbl_80B8AA5C
/* 80B8AA54  48 00 01 08 */	b lbl_80B8AB5C
/* 80B8AA58  48 00 01 04 */	b lbl_80B8AB5C
lbl_80B8AA5C:
/* 80B8AA5C  38 00 00 04 */	li r0, 4
/* 80B8AA60  98 1F 15 94 */	stb r0, 0x1594(r31)
/* 80B8AA64  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80B8AA68  B0 1F 15 36 */	sth r0, 0x1536(r31)
/* 80B8AA6C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80B8AA70  B0 1F 15 38 */	sth r0, 0x1538(r31)
/* 80B8AA74  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80B8AA78  B0 1F 15 3A */	sth r0, 0x153a(r31)
/* 80B8AA7C  38 00 00 02 */	li r0, 2
/* 80B8AA80  B0 1F 14 E6 */	sth r0, 0x14e6(r31)
lbl_80B8AA84:
/* 80B8AA84  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B8AA88  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B8AA8C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B8AA90  C0 3E 07 64 */	lfs f1, 0x764(r30)
/* 80B8AA94  38 7E 00 00 */	addi r3, r30, 0
/* 80B8AA98  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B8AA9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B8AAA0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B8AAA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B8AAA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B8AAAC  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 80B8AAB0  4B 48 19 2C */	b mDoMtx_YrotS__FPA4_fs
/* 80B8AAB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B8AAB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B8AABC  38 81 00 20 */	addi r4, r1, 0x20
/* 80B8AAC0  7C 85 23 78 */	mr r5, r4
/* 80B8AAC4  4B 7B C2 A8 */	b PSMTXMultVec
/* 80B8AAC8  38 7F 15 44 */	addi r3, r31, 0x1544
/* 80B8AACC  38 81 00 20 */	addi r4, r1, 0x20
/* 80B8AAD0  C0 3E 08 28 */	lfs f1, 0x828(r30)
/* 80B8AAD4  4B 6E 5C D8 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80B8AAD8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B8AADC  38 9F 15 44 */	addi r4, r31, 0x1544
/* 80B8AAE0  7C 65 1B 78 */	mr r5, r3
/* 80B8AAE4  4B 7B C5 AC */	b PSVECAdd
/* 80B8AAE8  80 1F 14 EC */	lwz r0, 0x14ec(r31)
/* 80B8AAEC  2C 00 00 2C */	cmpwi r0, 0x2c
/* 80B8AAF0  40 82 00 6C */	bne lbl_80B8AB5C
/* 80B8AAF4  88 1F 15 C1 */	lbz r0, 0x15c1(r31)
/* 80B8AAF8  28 00 00 00 */	cmplwi r0, 0
/* 80B8AAFC  41 82 00 34 */	beq lbl_80B8AB30
/* 80B8AB00  3C 60 80 B9 */	lis r3, lit_11420@ha
/* 80B8AB04  38 83 D8 B8 */	addi r4, r3, lit_11420@l
/* 80B8AB08  80 64 00 00 */	lwz r3, 0(r4)
/* 80B8AB0C  80 04 00 04 */	lwz r0, 4(r4)
/* 80B8AB10  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B8AB14  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B8AB18  80 04 00 08 */	lwz r0, 8(r4)
/* 80B8AB1C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B8AB20  7F E3 FB 78 */	mr r3, r31
/* 80B8AB24  38 81 00 14 */	addi r4, r1, 0x14
/* 80B8AB28  4B FF 2F F9 */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B8AB2C  48 00 00 30 */	b lbl_80B8AB5C
lbl_80B8AB30:
/* 80B8AB30  3C 60 80 B9 */	lis r3, lit_11423@ha
/* 80B8AB34  38 83 D8 C4 */	addi r4, r3, lit_11423@l
/* 80B8AB38  80 64 00 00 */	lwz r3, 0(r4)
/* 80B8AB3C  80 04 00 04 */	lwz r0, 4(r4)
/* 80B8AB40  90 61 00 08 */	stw r3, 8(r1)
/* 80B8AB44  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B8AB48  80 04 00 08 */	lwz r0, 8(r4)
/* 80B8AB4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B8AB50  7F E3 FB 78 */	mr r3, r31
/* 80B8AB54  38 81 00 08 */	addi r4, r1, 8
/* 80B8AB58  4B FF 2F C9 */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
lbl_80B8AB5C:
/* 80B8AB5C  38 60 00 01 */	li r3, 1
/* 80B8AB60  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80B8AB64  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80B8AB68  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B8AB6C  7C 08 03 A6 */	mtlr r0
/* 80B8AB70  38 21 00 40 */	addi r1, r1, 0x40
/* 80B8AB74  4E 80 00 20 */	blr 
