lbl_809E5D04:
/* 809E5D04  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809E5D08  7C 08 02 A6 */	mflr r0
/* 809E5D0C  90 01 00 44 */	stw r0, 0x44(r1)
/* 809E5D10  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 809E5D14  93 C1 00 38 */	stw r30, 0x38(r1)
/* 809E5D18  7C 7E 1B 78 */	mr r30, r3
/* 809E5D1C  80 63 05 68 */	lwz r3, 0x568(r3)
/* 809E5D20  83 E3 00 04 */	lwz r31, 4(r3)
/* 809E5D24  80 9E 0B DC */	lwz r4, 0xbdc(r30)
/* 809E5D28  28 04 00 00 */	cmplwi r4, 0
/* 809E5D2C  41 82 00 70 */	beq lbl_809E5D9C
/* 809E5D30  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809E5D34  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809E5D38  80 84 00 04 */	lwz r4, 4(r4)
/* 809E5D3C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 809E5D40  4B 7B F0 60 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809E5D44  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 809E5D48  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809E5D4C  38 63 02 40 */	addi r3, r3, 0x240
/* 809E5D50  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809E5D54  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809E5D58  4B 96 07 58 */	b PSMTXCopy
/* 809E5D5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809E5D60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809E5D64  38 81 00 08 */	addi r4, r1, 8
/* 809E5D68  4B 96 07 48 */	b PSMTXCopy
/* 809E5D6C  38 61 00 08 */	addi r3, r1, 8
/* 809E5D70  80 9E 0B DC */	lwz r4, 0xbdc(r30)
/* 809E5D74  38 84 00 24 */	addi r4, r4, 0x24
/* 809E5D78  4B 96 07 38 */	b PSMTXCopy
/* 809E5D7C  80 7E 0B DC */	lwz r3, 0xbdc(r30)
/* 809E5D80  4B 62 7F 44 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 809E5D84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809E5D88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809E5D8C  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 809E5D90  80 9E 09 A0 */	lwz r4, 0x9a0(r30)
/* 809E5D94  80 BE 0B DC */	lwz r5, 0xbdc(r30)
/* 809E5D98  4B 67 01 84 */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_809E5D9C:
/* 809E5D9C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 809E5DA0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 809E5DA4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809E5DA8  7C 08 03 A6 */	mtlr r0
/* 809E5DAC  38 21 00 40 */	addi r1, r1, 0x40
/* 809E5DB0  4E 80 00 20 */	blr 
