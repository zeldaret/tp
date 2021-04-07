lbl_8049A9CC:
/* 8049A9CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049A9D0  7C 08 02 A6 */	mflr r0
/* 8049A9D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049A9D8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8049A9DC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8049A9E0  7C 7F 1B 78 */	mr r31, r3
/* 8049A9E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049A9E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049A9EC  83 C3 5D B4 */	lwz r30, 0x5db4(r3)
/* 8049A9F0  7F C3 F3 78 */	mr r3, r30
/* 8049A9F4  4B C4 3D 5D */	bl getBombArrowFlyExplodeTime__9daAlink_cCFv
/* 8049A9F8  B0 7F 09 50 */	sth r3, 0x950(r31)
/* 8049A9FC  88 1F 09 3C */	lbz r0, 0x93c(r31)
/* 8049AA00  28 00 00 04 */	cmplwi r0, 4
/* 8049AA04  40 82 00 24 */	bne lbl_8049AA28
/* 8049AA08  A8 1E 05 9C */	lha r0, 0x59c(r30)
/* 8049AA0C  7C 00 00 D0 */	neg r0, r0
/* 8049AA10  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 8049AA14  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8049AA18  A8 1E 05 9E */	lha r0, 0x59e(r30)
/* 8049AA1C  7C 03 02 14 */	add r0, r3, r0
/* 8049AA20  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8049AA24  48 00 00 9C */	b lbl_8049AAC0
lbl_8049AA28:
/* 8049AA28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049AA2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049AA30  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8049AA34  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 8049AA38  40 82 00 10 */	bne lbl_8049AA48
/* 8049AA3C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8049AA40  28 00 00 02 */	cmplwi r0, 2
/* 8049AA44  40 82 00 7C */	bne lbl_8049AAC0
lbl_8049AA48:
/* 8049AA48  7F C3 F3 78 */	mr r3, r30
/* 8049AA4C  38 9F 04 E4 */	addi r4, r31, 0x4e4
/* 8049AA50  38 BF 04 E6 */	addi r5, r31, 0x4e6
/* 8049AA54  4B C4 3E 31 */	bl checkBowCameraArrowPosP__9daAlink_cFPsPs
/* 8049AA58  28 03 00 00 */	cmplwi r3, 0
/* 8049AA5C  41 82 00 64 */	beq lbl_8049AAC0
/* 8049AA60  C0 03 00 00 */	lfs f0, 0(r3)
/* 8049AA64  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8049AA68  C0 03 00 04 */	lfs f0, 4(r3)
/* 8049AA6C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8049AA70  C0 03 00 08 */	lfs f0, 8(r3)
/* 8049AA74  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8049AA78  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 8049AA7C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 8049AA80  41 82 00 2C */	beq lbl_8049AAAC
/* 8049AA84  38 7E 2C 48 */	addi r3, r30, 0x2c48
/* 8049AA88  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8049AA8C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8049AA90  4B EA BA 21 */	bl PSMTXCopy
/* 8049AA94  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8049AA98  4B B7 24 AD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8049AA9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8049AAA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8049AAA4  38 9F 04 E4 */	addi r4, r31, 0x4e4
/* 8049AAA8  4B B7 21 59 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
lbl_8049AAAC:
/* 8049AAAC  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 8049AAB0  7C 00 00 D0 */	neg r0, r0
/* 8049AAB4  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 8049AAB8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8049AABC  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_8049AAC0:
/* 8049AAC0  3C 60 80 4A */	lis r3, lit_4541@ha /* 0x8049DD74@ha */
/* 8049AAC4  C0 03 DD 74 */	lfs f0, lit_4541@l(r3)  /* 0x8049DD74@l */
/* 8049AAC8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8049AACC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8049AAD0  D0 1F 09 C0 */	stfs f0, 0x9c0(r31)
/* 8049AAD4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8049AAD8  D0 1F 09 C4 */	stfs f0, 0x9c4(r31)
/* 8049AADC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8049AAE0  D0 1F 09 C8 */	stfs f0, 0x9c8(r31)
/* 8049AAE4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8049AAE8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8049AAEC  38 83 00 04 */	addi r4, r3, 4
/* 8049AAF0  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 8049AAF4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8049AAF8  7C 00 1E 70 */	srawi r0, r0, 3
/* 8049AAFC  54 00 18 38 */	slwi r0, r0, 3
/* 8049AB00  7C 24 04 2E */	lfsx f1, r4, r0
/* 8049AB04  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8049AB08  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8049AB0C  7C 43 04 2E */	lfsx f2, r3, r0
/* 8049AB10  C0 1F 09 9C */	lfs f0, 0x99c(r31)
/* 8049AB14  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8049AB18  EC 01 00 32 */	fmuls f0, f1, f0
/* 8049AB1C  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 8049AB20  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 8049AB24  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8049AB28  7C 43 04 2E */	lfsx f2, r3, r0
/* 8049AB2C  C0 1F 09 9C */	lfs f0, 0x99c(r31)
/* 8049AB30  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8049AB34  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8049AB38  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8049AB3C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8049AB40  7C 44 04 2E */	lfsx f2, r4, r0
/* 8049AB44  C0 1F 09 9C */	lfs f0, 0x99c(r31)
/* 8049AB48  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8049AB4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8049AB50  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 8049AB54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049AB58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049AB5C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8049AB60  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8049AB64  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8049AB68  7D 89 03 A6 */	mtctr r12
/* 8049AB6C  4E 80 04 21 */	bctrl 
/* 8049AB70  28 03 00 00 */	cmplwi r3, 0
/* 8049AB74  41 82 00 58 */	beq lbl_8049ABCC
/* 8049AB78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049AB7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049AB80  83 C3 5D B8 */	lwz r30, 0x5db8(r3)
/* 8049AB84  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8049AB88  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8049AB8C  80 63 00 00 */	lwz r3, 0(r3)
/* 8049AB90  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8049AB94  4B B7 18 49 */	bl mDoMtx_YrotS__FPA4_fs
/* 8049AB98  3C 60 80 4A */	lis r3, lit_4130@ha /* 0x8049DD1C@ha */
/* 8049AB9C  C0 03 DD 1C */	lfs f0, lit_4130@l(r3)  /* 0x8049DD1C@l */
/* 8049ABA0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8049ABA4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8049ABA8  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 8049ABAC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8049ABB0  38 61 00 14 */	addi r3, r1, 0x14
/* 8049ABB4  38 81 00 08 */	addi r4, r1, 8
/* 8049ABB8  4B DD 63 35 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8049ABBC  38 7F 04 F8 */	addi r3, r31, 0x4f8
/* 8049ABC0  38 81 00 08 */	addi r4, r1, 8
/* 8049ABC4  7C 65 1B 78 */	mr r5, r3
/* 8049ABC8  4B EA C4 C9 */	bl PSVECAdd
lbl_8049ABCC:
/* 8049ABCC  88 1F 09 3C */	lbz r0, 0x93c(r31)
/* 8049ABD0  28 00 00 02 */	cmplwi r0, 2
/* 8049ABD4  40 82 00 1C */	bne lbl_8049ABF0
/* 8049ABD8  38 00 00 04 */	li r0, 4
/* 8049ABDC  98 1F 06 FD */	stb r0, 0x6fd(r31)
/* 8049ABE0  80 1F 06 E0 */	lwz r0, 0x6e0(r31)
/* 8049ABE4  60 00 00 02 */	ori r0, r0, 2
/* 8049ABE8  90 1F 06 E0 */	stw r0, 0x6e0(r31)
/* 8049ABEC  48 00 00 60 */	b lbl_8049AC4C
lbl_8049ABF0:
/* 8049ABF0  28 00 00 04 */	cmplwi r0, 4
/* 8049ABF4  40 82 00 28 */	bne lbl_8049AC1C
/* 8049ABF8  38 00 00 80 */	li r0, 0x80
/* 8049ABFC  90 1F 06 98 */	stw r0, 0x698(r31)
/* 8049AC00  38 00 00 16 */	li r0, 0x16
/* 8049AC04  98 1F 06 FC */	stb r0, 0x6fc(r31)
/* 8049AC08  38 00 00 00 */	li r0, 0
/* 8049AC0C  98 1F 06 9C */	stb r0, 0x69c(r31)
/* 8049AC10  80 1F 06 E0 */	lwz r0, 0x6e0(r31)
/* 8049AC14  60 00 00 02 */	ori r0, r0, 2
/* 8049AC18  90 1F 06 E0 */	stw r0, 0x6e0(r31)
lbl_8049AC1C:
/* 8049AC1C  3C 60 80 45 */	lis r3, struct_80450D88+0x0@ha /* 0x80450D88@ha */
/* 8049AC20  38 83 0D 88 */	addi r4, r3, struct_80450D88+0x0@l /* 0x80450D88@l */
/* 8049AC24  A8 04 00 00 */	lha r0, 0(r4)
/* 8049AC28  B0 1F 09 4E */	sth r0, 0x94e(r31)
/* 8049AC2C  A8 64 00 00 */	lha r3, 0(r4)
/* 8049AC30  38 03 00 01 */	addi r0, r3, 1
/* 8049AC34  B0 04 00 00 */	sth r0, 0(r4)
/* 8049AC38  7C 00 07 34 */	extsh r0, r0
/* 8049AC3C  2C 00 00 06 */	cmpwi r0, 6
/* 8049AC40  40 82 00 0C */	bne lbl_8049AC4C
/* 8049AC44  38 00 00 00 */	li r0, 0
/* 8049AC48  B0 04 00 00 */	sth r0, 0(r4)
lbl_8049AC4C:
/* 8049AC4C  7F E3 FB 78 */	mr r3, r31
/* 8049AC50  4B FF F3 FD */	bl setBlur__9daArrow_cFv
/* 8049AC54  7F E3 FB 78 */	mr r3, r31
/* 8049AC58  3C 80 80 4A */	lis r4, lit_4130@ha /* 0x8049DD1C@ha */
/* 8049AC5C  C0 24 DD 1C */	lfs f1, lit_4130@l(r4)  /* 0x8049DD1C@l */
/* 8049AC60  4B FF FB 0D */	bl setArrowAt__9daArrow_cFf
/* 8049AC64  7F E3 FB 78 */	mr r3, r31
/* 8049AC68  48 00 01 0D */	bl clearNearActorData__9daArrow_cFv
/* 8049AC6C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8049AC70  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8049AC74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049AC78  7C 08 03 A6 */	mtlr r0
/* 8049AC7C  38 21 00 30 */	addi r1, r1, 0x30
/* 8049AC80  4E 80 00 20 */	blr 
