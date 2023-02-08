lbl_804959EC:
/* 804959EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804959F0  7C 08 02 A6 */	mflr r0
/* 804959F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804959F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804959FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80495A00  7C 7F 1B 78 */	mr r31, r3
/* 80495A04  7C 9E 23 78 */	mr r30, r4
/* 80495A08  4B FF FC 59 */	bl mode_proc_call__8daTbox_cFv
/* 80495A0C  38 1F 05 6C */	addi r0, r31, 0x56c
/* 80495A10  90 1E 00 00 */	stw r0, 0(r30)
/* 80495A14  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80495A18  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 80495A1C  1C 80 00 14 */	mulli r4, r0, 0x14
/* 80495A20  3C 60 80 49 */	lis r3, l_cyl_info@ha /* 0x804961EC@ha */
/* 80495A24  38 03 61 EC */	addi r0, r3, l_cyl_info@l /* 0x804961EC@l */
/* 80495A28  7C 60 22 14 */	add r3, r0, r4
/* 80495A2C  C0 03 00 00 */	lfs f0, 0(r3)
/* 80495A30  D0 01 00 08 */	stfs f0, 8(r1)
/* 80495A34  C0 03 00 04 */	lfs f0, 4(r3)
/* 80495A38  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80495A3C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80495A40  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80495A44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80495A48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80495A4C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80495A50  4B B7 69 8D */	bl mDoMtx_YrotS__FPA4_fs
/* 80495A54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80495A58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80495A5C  38 81 00 08 */	addi r4, r1, 8
/* 80495A60  7C 85 23 78 */	mr r5, r4
/* 80495A64  4B EB 13 09 */	bl PSMTXMultVec
/* 80495A68  38 61 00 08 */	addi r3, r1, 8
/* 80495A6C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80495A70  7C 65 1B 78 */	mr r5, r3
/* 80495A74  4B EB 16 1D */	bl PSVECAdd
/* 80495A78  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80495A7C  54 04 A6 3E */	rlwinm r4, r0, 0x14, 0x18, 0x1f
/* 80495A80  2C 04 00 FF */	cmpwi r4, 0xff
/* 80495A84  41 82 00 20 */	beq lbl_80495AA4
/* 80495A88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80495A8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80495A90  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80495A94  7C 05 07 74 */	extsb r5, r0
/* 80495A98  4B B9 F8 C9 */	bl isSwitch__10dSv_info_cCFii
/* 80495A9C  2C 03 00 00 */	cmpwi r3, 0
/* 80495AA0  40 82 00 14 */	bne lbl_80495AB4
lbl_80495AA4:
/* 80495AA4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80495AA8  54 00 A6 3E */	rlwinm r0, r0, 0x14, 0x18, 0x1f
/* 80495AAC  2C 00 00 FF */	cmpwi r0, 0xff
/* 80495AB0  40 82 00 24 */	bne lbl_80495AD4
lbl_80495AB4:
/* 80495AB4  38 7F 07 00 */	addi r3, r31, 0x700
/* 80495AB8  38 81 00 08 */	addi r4, r1, 8
/* 80495ABC  4B DD 97 21 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80495AC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80495AC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80495AC8  38 63 23 3C */	addi r3, r3, 0x233c
/* 80495ACC  38 9F 05 DC */	addi r4, r31, 0x5dc
/* 80495AD0  4B DC F0 D9 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80495AD4:
/* 80495AD4  38 60 00 01 */	li r3, 1
/* 80495AD8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80495ADC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80495AE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80495AE4  7C 08 03 A6 */	mtlr r0
/* 80495AE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80495AEC  4E 80 00 20 */	blr 
