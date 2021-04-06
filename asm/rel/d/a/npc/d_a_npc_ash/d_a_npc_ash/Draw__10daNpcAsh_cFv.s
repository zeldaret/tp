lbl_8095911C:
/* 8095911C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80959120  7C 08 02 A6 */	mflr r0
/* 80959124  90 01 00 14 */	stw r0, 0x14(r1)
/* 80959128  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8095912C  7C 7F 1B 78 */	mr r31, r3
/* 80959130  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80959134  80 84 00 04 */	lwz r4, 4(r4)
/* 80959138  80 84 00 04 */	lwz r4, 4(r4)
/* 8095913C  80 84 00 60 */	lwz r4, 0x60(r4)
/* 80959140  80 84 00 08 */	lwz r4, 8(r4)
/* 80959144  80 03 0B E0 */	lwz r0, 0xbe0(r3)
/* 80959148  90 04 00 3C */	stw r0, 0x3c(r4)
/* 8095914C  38 80 00 00 */	li r4, 0
/* 80959150  38 A0 00 00 */	li r5, 0
/* 80959154  3C C0 80 96 */	lis r6, m__16daNpcAsh_Param_c@ha /* 0x8095D640@ha */
/* 80959158  38 C6 D6 40 */	addi r6, r6, m__16daNpcAsh_Param_c@l /* 0x8095D640@l */
/* 8095915C  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80959160  38 C0 00 00 */	li r6, 0
/* 80959164  38 E0 00 00 */	li r7, 0
/* 80959168  4B 7F 91 45 */	bl draw__8daNpcF_cFiifP11_GXColorS10i
/* 8095916C  88 1F 0F 60 */	lbz r0, 0xf60(r31)
/* 80959170  28 00 00 01 */	cmplwi r0, 1
/* 80959174  40 82 00 AC */	bne lbl_80959220
/* 80959178  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8095917C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80959180  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80959184  80 84 00 04 */	lwz r4, 4(r4)
/* 80959188  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8095918C  4B 84 BC 15 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80959190  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80959194  80 63 00 04 */	lwz r3, 4(r3)
/* 80959198  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8095919C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809591A0  38 63 03 00 */	addi r3, r3, 0x300
/* 809591A4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809591A8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809591AC  4B 9E D3 05 */	bl PSMTXCopy
/* 809591B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809591B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809591B8  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 809591BC  38 84 00 24 */	addi r4, r4, 0x24
/* 809591C0  4B 9E D2 F1 */	bl PSMTXCopy
/* 809591C4  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809591C8  4B 6B 4A FD */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 809591CC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 809591D0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 809591D4  80 9F 0B DC */	lwz r4, 0xbdc(r31)
/* 809591D8  80 84 00 04 */	lwz r4, 4(r4)
/* 809591DC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 809591E0  4B 84 BB C1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809591E4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809591E8  80 63 00 04 */	lwz r3, 4(r3)
/* 809591EC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809591F0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809591F4  38 63 00 60 */	addi r3, r3, 0x60
/* 809591F8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809591FC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80959200  4B 9E D2 B1 */	bl PSMTXCopy
/* 80959204  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80959208  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8095920C  80 9F 0B DC */	lwz r4, 0xbdc(r31)
/* 80959210  38 84 00 24 */	addi r4, r4, 0x24
/* 80959214  4B 9E D2 9D */	bl PSMTXCopy
/* 80959218  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 8095921C  4B 6B 4A A9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80959220:
/* 80959220  38 60 00 01 */	li r3, 1
/* 80959224  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80959228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095922C  7C 08 03 A6 */	mtlr r0
/* 80959230  38 21 00 10 */	addi r1, r1, 0x10
/* 80959234  4E 80 00 20 */	blr 
