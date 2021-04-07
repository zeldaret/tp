lbl_80C7BED8:
/* 80C7BED8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C7BEDC  7C 08 02 A6 */	mflr r0
/* 80C7BEE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C7BEE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C7BEE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C7BEEC  7C 7E 1B 78 */	mr r30, r3
/* 80C7BEF0  3C 60 80 C8 */	lis r3, lit_3631@ha /* 0x80C7C618@ha */
/* 80C7BEF4  3B E3 C6 18 */	addi r31, r3, lit_3631@l /* 0x80C7C618@l */
/* 80C7BEF8  88 1E 05 DA */	lbz r0, 0x5da(r30)
/* 80C7BEFC  28 00 00 03 */	cmplwi r0, 3
/* 80C7BF00  41 82 00 0C */	beq lbl_80C7BF0C
/* 80C7BF04  28 00 00 04 */	cmplwi r0, 4
/* 80C7BF08  40 82 00 58 */	bne lbl_80C7BF60
lbl_80C7BF0C:
/* 80C7BF0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7BF10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7BF14  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80C7BF18  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80C7BF1C  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80C7BF20  4B 39 02 E9 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80C7BF24  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 80C7BF28  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C7BF2C  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80C7BF30  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C7BF34  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C7BF38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7BF3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7BF40  38 81 00 0C */	addi r4, r1, 0xc
/* 80C7BF44  7C 85 23 78 */	mr r5, r4
/* 80C7BF48  4B 6C AE 25 */	bl PSMTXMultVec
/* 80C7BF4C  38 61 00 0C */	addi r3, r1, 0xc
/* 80C7BF50  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C7BF54  7C 65 1B 78 */	mr r5, r3
/* 80C7BF58  4B 6C B1 39 */	bl PSVECAdd
/* 80C7BF5C  48 00 00 1C */	b lbl_80C7BF78
lbl_80C7BF60:
/* 80C7BF60  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C7BF64  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C7BF68  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C7BF6C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C7BF70  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C7BF74  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_80C7BF78:
/* 80C7BF78  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C7BF7C  7C 03 07 74 */	extsb r3, r0
/* 80C7BF80  4B 3B 10 ED */	bl dComIfGp_getReverb__Fi
/* 80C7BF84  7C 67 1B 78 */	mr r7, r3
/* 80C7BF88  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008021F@ha */
/* 80C7BF8C  38 03 02 1F */	addi r0, r3, 0x021F /* 0x0008021F@l */
/* 80C7BF90  90 01 00 08 */	stw r0, 8(r1)
/* 80C7BF94  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C7BF98  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C7BF9C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7BFA0  38 81 00 08 */	addi r4, r1, 8
/* 80C7BFA4  38 A1 00 0C */	addi r5, r1, 0xc
/* 80C7BFA8  38 C0 00 00 */	li r6, 0
/* 80C7BFAC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C7BFB0  FC 40 08 90 */	fmr f2, f1
/* 80C7BFB4  C0 7F 01 10 */	lfs f3, 0x110(r31)
/* 80C7BFB8  FC 80 18 90 */	fmr f4, f3
/* 80C7BFBC  39 00 00 00 */	li r8, 0
/* 80C7BFC0  4B 62 F9 C5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C7BFC4  38 00 00 0C */	li r0, 0xc
/* 80C7BFC8  98 1E 05 D8 */	stb r0, 0x5d8(r30)
/* 80C7BFCC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C7BFD0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C7BFD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C7BFD8  7C 08 03 A6 */	mtlr r0
/* 80C7BFDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C7BFE0  4E 80 00 20 */	blr 
