lbl_80A82878:
/* 80A82878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A8287C  7C 08 02 A6 */	mflr r0
/* 80A82880  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A82884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A82888  7C 7F 1B 78 */	mr r31, r3
/* 80A8288C  88 03 0E 0A */	lbz r0, 0xe0a(r3)
/* 80A82890  28 00 00 00 */	cmplwi r0, 0
/* 80A82894  40 82 00 58 */	bne lbl_80A828EC
/* 80A82898  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A8289C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A828A0  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80A828A4  80 84 00 04 */	lwz r4, 4(r4)
/* 80A828A8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80A828AC  4B 72 24 F5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A828B0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A828B4  80 63 00 04 */	lwz r3, 4(r3)
/* 80A828B8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A828BC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A828C0  38 63 03 30 */	addi r3, r3, 0x330
/* 80A828C4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A828C8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A828CC  4B 8C 3B E5 */	bl PSMTXCopy
/* 80A828D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A828D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A828D8  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80A828DC  38 84 00 24 */	addi r4, r4, 0x24
/* 80A828E0  4B 8C 3B D1 */	bl PSMTXCopy
/* 80A828E4  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80A828E8  4B 58 B3 DD */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80A828EC:
/* 80A828EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A828F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A828F4  7C 08 03 A6 */	mtlr r0
/* 80A828F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A828FC  4E 80 00 20 */	blr 
