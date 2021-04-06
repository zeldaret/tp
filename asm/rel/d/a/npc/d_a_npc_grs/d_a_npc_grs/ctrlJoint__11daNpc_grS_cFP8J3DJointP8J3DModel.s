lbl_809E4D3C:
/* 809E4D3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809E4D40  7C 08 02 A6 */	mflr r0
/* 809E4D44  90 01 00 34 */	stw r0, 0x34(r1)
/* 809E4D48  39 61 00 30 */	addi r11, r1, 0x30
/* 809E4D4C  4B 97 D4 8D */	bl _savegpr_28
/* 809E4D50  7C 7F 1B 78 */	mr r31, r3
/* 809E4D54  7C BC 2B 78 */	mr r28, r5
/* 809E4D58  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 809E4D5C  7C BD 2B 78 */	mr r29, r5
/* 809E4D60  3C 60 80 9E */	lis r3, lit_4543@ha /* 0x809E7E50@ha */
/* 809E4D64  38 83 7E 50 */	addi r4, r3, lit_4543@l /* 0x809E7E50@l */
/* 809E4D68  80 64 00 00 */	lwz r3, 0(r4)
/* 809E4D6C  80 04 00 04 */	lwz r0, 4(r4)
/* 809E4D70  90 61 00 08 */	stw r3, 8(r1)
/* 809E4D74  90 01 00 0C */	stw r0, 0xc(r1)
/* 809E4D78  80 04 00 08 */	lwz r0, 8(r4)
/* 809E4D7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 809E4D80  2C 05 00 00 */	cmpwi r5, 0
/* 809E4D84  40 82 00 B0 */	bne lbl_809E4E34
/* 809E4D88  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E4D8C  80 63 00 04 */	lwz r3, 4(r3)
/* 809E4D90  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809E4D94  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809E4D98  38 63 00 30 */	addi r3, r3, 0x30
/* 809E4D9C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E4DA0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E4DA4  4B 96 17 0D */	bl PSMTXCopy
/* 809E4DA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E4DAC  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E4DB0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809E4DB4  D0 1F 08 54 */	stfs f0, 0x854(r31)
/* 809E4DB8  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809E4DBC  D0 1F 08 58 */	stfs f0, 0x858(r31)
/* 809E4DC0  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809E4DC4  D0 1F 08 5C */	stfs f0, 0x85c(r31)
/* 809E4DC8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E4DCC  80 63 00 04 */	lwz r3, 4(r3)
/* 809E4DD0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809E4DD4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809E4DD8  38 63 00 90 */	addi r3, r3, 0x90
/* 809E4DDC  7F C4 F3 78 */	mr r4, r30
/* 809E4DE0  4B 96 16 D1 */	bl PSMTXCopy
/* 809E4DE4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809E4DE8  D0 1F 08 60 */	stfs f0, 0x860(r31)
/* 809E4DEC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809E4DF0  D0 1F 08 64 */	stfs f0, 0x864(r31)
/* 809E4DF4  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809E4DF8  D0 1F 08 68 */	stfs f0, 0x868(r31)
/* 809E4DFC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E4E00  80 63 00 04 */	lwz r3, 4(r3)
/* 809E4E04  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809E4E08  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809E4E0C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809E4E10  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E4E14  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E4E18  4B 96 16 99 */	bl PSMTXCopy
/* 809E4E1C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809E4E20  D0 1F 08 6C */	stfs f0, 0x86c(r31)
/* 809E4E24  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809E4E28  D0 1F 08 70 */	stfs f0, 0x870(r31)
/* 809E4E2C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809E4E30  D0 1F 08 74 */	stfs f0, 0x874(r31)
lbl_809E4E34:
/* 809E4E34  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 809E4E38  80 03 00 0C */	lwz r0, 0xc(r3)
/* 809E4E3C  1F DD 00 30 */	mulli r30, r29, 0x30
/* 809E4E40  7C 60 F2 14 */	add r3, r0, r30
/* 809E4E44  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E4E48  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E4E4C  4B 96 16 65 */	bl PSMTXCopy
/* 809E4E50  2C 1D 00 02 */	cmpwi r29, 2
/* 809E4E54  41 82 00 38 */	beq lbl_809E4E8C
/* 809E4E58  40 80 00 10 */	bge lbl_809E4E68
/* 809E4E5C  2C 1D 00 01 */	cmpwi r29, 1
/* 809E4E60  40 80 00 10 */	bge lbl_809E4E70
/* 809E4E64  48 00 00 28 */	b lbl_809E4E8C
lbl_809E4E68:
/* 809E4E68  2C 1D 00 05 */	cmpwi r29, 5
/* 809E4E6C  40 80 00 20 */	bge lbl_809E4E8C
lbl_809E4E70:
/* 809E4E70  7F E3 FB 78 */	mr r3, r31
/* 809E4E74  7F A4 EB 78 */	mr r4, r29
/* 809E4E78  38 A1 00 08 */	addi r5, r1, 8
/* 809E4E7C  3C C0 80 9E */	lis r6, m__17daNpc_grS_Param_c@ha /* 0x809E7DCC@ha */
/* 809E4E80  38 C6 7D CC */	addi r6, r6, m__17daNpc_grS_Param_c@l /* 0x809E7DCC@l */
/* 809E4E84  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 809E4E88  4B 76 E4 F5 */	bl setLookatMtx__8daNpcF_cFiPif
lbl_809E4E8C:
/* 809E4E8C  2C 1D 00 01 */	cmpwi r29, 1
/* 809E4E90  40 82 00 30 */	bne lbl_809E4EC0
/* 809E4E94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E4E98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E4E9C  A8 1F 09 0C */	lha r0, 0x90c(r31)
/* 809E4EA0  7C 00 00 D0 */	neg r0, r0
/* 809E4EA4  7C 04 07 34 */	extsh r4, r0
/* 809E4EA8  4B 62 75 8D */	bl mDoMtx_YrotM__FPA4_fs
/* 809E4EAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E4EB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E4EB4  A8 9F 09 08 */	lha r4, 0x908(r31)
/* 809E4EB8  4B 62 76 15 */	bl mDoMtx_ZrotM__FPA4_fs
/* 809E4EBC  48 00 00 34 */	b lbl_809E4EF0
lbl_809E4EC0:
/* 809E4EC0  2C 1D 00 04 */	cmpwi r29, 4
/* 809E4EC4  40 82 00 2C */	bne lbl_809E4EF0
/* 809E4EC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E4ECC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E4ED0  A8 1F 09 18 */	lha r0, 0x918(r31)
/* 809E4ED4  7C 00 00 D0 */	neg r0, r0
/* 809E4ED8  7C 04 07 34 */	extsh r4, r0
/* 809E4EDC  4B 62 75 59 */	bl mDoMtx_YrotM__FPA4_fs
/* 809E4EE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E4EE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E4EE8  A8 9F 09 14 */	lha r4, 0x914(r31)
/* 809E4EEC  4B 62 75 E1 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_809E4EF0:
/* 809E4EF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E4EF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E4EF8  80 9C 00 84 */	lwz r4, 0x84(r28)
/* 809E4EFC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 809E4F00  7C 80 F2 14 */	add r4, r0, r30
/* 809E4F04  4B 96 15 AD */	bl PSMTXCopy
/* 809E4F08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809E4F0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809E4F10  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 809E4F14  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 809E4F18  4B 96 15 99 */	bl PSMTXCopy
/* 809E4F1C  2C 1D 00 04 */	cmpwi r29, 4
/* 809E4F20  41 82 00 0C */	beq lbl_809E4F2C
/* 809E4F24  2C 1D 00 08 */	cmpwi r29, 8
/* 809E4F28  40 82 00 2C */	bne lbl_809E4F54
lbl_809E4F2C:
/* 809E4F2C  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 809E4F30  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 809E4F34  41 82 00 20 */	beq lbl_809E4F54
/* 809E4F38  83 9F 05 80 */	lwz r28, 0x580(r31)
/* 809E4F3C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E4F40  80 83 00 08 */	lwz r4, 8(r3)
/* 809E4F44  38 7F 05 6C */	addi r3, r31, 0x56c
/* 809E4F48  4B 62 8A 49 */	bl changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 809E4F4C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E4F50  93 83 00 08 */	stw r28, 8(r3)
lbl_809E4F54:
/* 809E4F54  38 60 00 01 */	li r3, 1
/* 809E4F58  39 61 00 30 */	addi r11, r1, 0x30
/* 809E4F5C  4B 97 D2 C9 */	bl _restgpr_28
/* 809E4F60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809E4F64  7C 08 03 A6 */	mtlr r0
/* 809E4F68  38 21 00 30 */	addi r1, r1, 0x30
/* 809E4F6C  4E 80 00 20 */	blr 
