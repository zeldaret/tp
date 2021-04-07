lbl_80961770:
/* 80961770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80961774  7C 08 02 A6 */	mflr r0
/* 80961778  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096177C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80961780  7C 7F 1B 78 */	mr r31, r3
/* 80961784  88 03 0D ED */	lbz r0, 0xded(r3)
/* 80961788  28 00 00 00 */	cmplwi r0, 0
/* 8096178C  41 82 00 58 */	beq lbl_809617E4
/* 80961790  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80961794  80 63 00 04 */	lwz r3, 4(r3)
/* 80961798  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8096179C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809617A0  38 63 04 80 */	addi r3, r3, 0x480
/* 809617A4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809617A8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809617AC  4B 9E 4D 05 */	bl PSMTXCopy
/* 809617B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809617B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809617B8  80 9F 0B DC */	lwz r4, 0xbdc(r31)
/* 809617BC  38 84 00 24 */	addi r4, r4, 0x24
/* 809617C0  4B 9E 4C F1 */	bl PSMTXCopy
/* 809617C4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 809617C8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 809617CC  80 9F 0B DC */	lwz r4, 0xbdc(r31)
/* 809617D0  80 84 00 04 */	lwz r4, 4(r4)
/* 809617D4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 809617D8  4B 84 35 C9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809617DC  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 809617E0  4B 6A C4 E5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_809617E4:
/* 809617E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809617E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809617EC  7C 08 03 A6 */	mtlr r0
/* 809617F0  38 21 00 10 */	addi r1, r1, 0x10
/* 809617F4  4E 80 00 20 */	blr 
