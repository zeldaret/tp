lbl_806B811C:
/* 806B811C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806B8120  7C 08 02 A6 */	mflr r0
/* 806B8124  90 01 00 34 */	stw r0, 0x34(r1)
/* 806B8128  39 61 00 30 */	addi r11, r1, 0x30
/* 806B812C  4B CA A0 AC */	b _savegpr_28
/* 806B8130  7C 7E 1B 78 */	mr r30, r3
/* 806B8134  3C 60 80 6C */	lis r3, lit_3662@ha
/* 806B8138  3B E3 8F 8C */	addi r31, r3, lit_3662@l
/* 806B813C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806B8140  80 63 00 04 */	lwz r3, 4(r3)
/* 806B8144  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806B8148  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B814C  38 63 00 60 */	addi r3, r3, 0x60
/* 806B8150  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806B8154  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806B8158  4B C8 E3 58 */	b PSMTXCopy
/* 806B815C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B8160  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
/* 806B8164  7F A3 EB 78 */	mr r3, r29
/* 806B8168  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 806B816C  C0 5D 00 1C */	lfs f2, 0x1c(r29)
/* 806B8170  C0 7D 00 2C */	lfs f3, 0x2c(r29)
/* 806B8174  4B C8 E7 74 */	b PSMTXTrans
/* 806B8178  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 806B817C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 806B8180  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 806B8184  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 806B8188  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 806B818C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 806B8190  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 806B8194  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806B8198  EC 01 00 2A */	fadds f0, f1, f0
/* 806B819C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 806B81A0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806B81A4  80 63 00 04 */	lwz r3, 4(r3)
/* 806B81A8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806B81AC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B81B0  38 63 00 60 */	addi r3, r3, 0x60
/* 806B81B4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806B81B8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806B81BC  4B C8 E2 F4 */	b PSMTXCopy
/* 806B81C0  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806B81C4  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 806B81C8  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 806B81CC  4B 95 4B D0 */	b transM__14mDoMtx_stack_cFfff
/* 806B81D0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 806B81D4  D0 01 00 08 */	stfs f0, 8(r1)
/* 806B81D8  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 806B81DC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806B81E0  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 806B81E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806B81E8  38 7E 0A 1C */	addi r3, r30, 0xa1c
/* 806B81EC  38 81 00 08 */	addi r4, r1, 8
/* 806B81F0  4B BB 74 58 */	b SetC__8cM3dGSphFRC4cXyz
/* 806B81F4  38 7E 0A 1C */	addi r3, r30, 0xa1c
/* 806B81F8  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 806B81FC  4B BB 75 0C */	b SetR__8cM3dGSphFf
/* 806B8200  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B8204  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B8208  3B 83 23 3C */	addi r28, r3, 0x233c
/* 806B820C  7F 83 E3 78 */	mr r3, r28
/* 806B8210  38 9E 08 F8 */	addi r4, r30, 0x8f8
/* 806B8214  4B BA C9 94 */	b Set__4cCcSFP8cCcD_Obj
/* 806B8218  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806B821C  80 63 00 04 */	lwz r3, 4(r3)
/* 806B8220  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806B8224  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B8228  38 63 00 30 */	addi r3, r3, 0x30
/* 806B822C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806B8230  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806B8234  4B C8 E2 7C */	b PSMTXCopy
/* 806B8238  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 806B823C  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 806B8240  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 806B8244  4B 95 4B 58 */	b transM__14mDoMtx_stack_cFfff
/* 806B8248  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 806B824C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806B8250  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 806B8254  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806B8258  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 806B825C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806B8260  38 7E 0B 54 */	addi r3, r30, 0xb54
/* 806B8264  38 81 00 08 */	addi r4, r1, 8
/* 806B8268  4B BB 73 E0 */	b SetC__8cM3dGSphFRC4cXyz
/* 806B826C  38 7E 0B 54 */	addi r3, r30, 0xb54
/* 806B8270  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 806B8274  4B BB 74 94 */	b SetR__8cM3dGSphFf
/* 806B8278  7F 83 E3 78 */	mr r3, r28
/* 806B827C  38 9E 0A 30 */	addi r4, r30, 0xa30
/* 806B8280  4B BA C9 28 */	b Set__4cCcSFP8cCcD_Obj
/* 806B8284  C0 01 00 08 */	lfs f0, 8(r1)
/* 806B8288  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 806B828C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806B8290  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 806B8294  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806B8298  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 806B829C  39 61 00 30 */	addi r11, r1, 0x30
/* 806B82A0  4B CA 9F 84 */	b _restgpr_28
/* 806B82A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806B82A8  7C 08 03 A6 */	mtlr r0
/* 806B82AC  38 21 00 30 */	addi r1, r1, 0x30
/* 806B82B0  4E 80 00 20 */	blr 
