lbl_805C808C:
/* 805C808C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805C8090  7C 08 02 A6 */	mflr r0
/* 805C8094  90 01 00 54 */	stw r0, 0x54(r1)
/* 805C8098  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805C809C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805C80A0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805C80A4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805C80A8  7C 7E 1B 78 */	mr r30, r3
/* 805C80AC  FF E0 08 90 */	fmr f31, f1
/* 805C80B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C80B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C80B8  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 805C80BC  7C 00 07 74 */	extsb r0, r0
/* 805C80C0  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805C80C4  7C 63 02 14 */	add r3, r3, r0
/* 805C80C8  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 805C80CC  3C 60 80 5D */	lis r3, lit_3862@ha /* 0x805CAD60@ha */
/* 805C80D0  C0 03 AD 60 */	lfs f0, lit_3862@l(r3)  /* 0x805CAD60@l */
/* 805C80D4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805C80D8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 805C80DC  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 805C80E0  C0 44 00 08 */	lfs f2, 8(r4)
/* 805C80E4  C0 24 00 04 */	lfs f1, 4(r4)
/* 805C80E8  C0 04 00 00 */	lfs f0, 0(r4)
/* 805C80EC  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 805C80F0  D0 3E 05 CC */	stfs f1, 0x5cc(r30)
/* 805C80F4  D0 5E 05 D0 */	stfs f2, 0x5d0(r30)
/* 805C80F8  C0 1E 05 C8 */	lfs f0, 0x5c8(r30)
/* 805C80FC  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 805C8100  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 805C8104  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 805C8108  C0 1E 05 D0 */	lfs f0, 0x5d0(r30)
/* 805C810C  D0 1E 05 DC */	stfs f0, 0x5dc(r30)
/* 805C8110  38 61 00 20 */	addi r3, r1, 0x20
/* 805C8114  7C 66 1B 78 */	mr r6, r3
/* 805C8118  4B CA 8C A9 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805C811C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805C8120  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 805C8124  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805C8128  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 805C812C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805C8130  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 805C8134  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805C8138  D0 1E 05 EC */	stfs f0, 0x5ec(r30)
/* 805C813C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805C8140  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 805C8144  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805C8148  D0 1E 05 F4 */	stfs f0, 0x5f4(r30)
/* 805C814C  C0 1E 05 C8 */	lfs f0, 0x5c8(r30)
/* 805C8150  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805C8154  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 805C8158  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C815C  C0 1E 05 D0 */	lfs f0, 0x5d0(r30)
/* 805C8160  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805C8164  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 805C8168  D0 01 00 08 */	stfs f0, 8(r1)
/* 805C816C  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 805C8170  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805C8174  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 805C8178  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805C817C  38 7F 02 48 */	addi r3, r31, 0x248
/* 805C8180  38 81 00 14 */	addi r4, r1, 0x14
/* 805C8184  38 A1 00 08 */	addi r5, r1, 8
/* 805C8188  C0 3E 06 00 */	lfs f1, 0x600(r30)
/* 805C818C  38 C0 00 00 */	li r6, 0
/* 805C8190  4B BB 89 51 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 805C8194  D3 FE 06 08 */	stfs f31, 0x608(r30)
/* 805C8198  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805C819C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805C81A0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805C81A4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805C81A8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805C81AC  7C 08 03 A6 */	mtlr r0
/* 805C81B0  38 21 00 50 */	addi r1, r1, 0x50
/* 805C81B4  4E 80 00 20 */	blr 
