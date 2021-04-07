lbl_8014F60C:
/* 8014F60C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014F610  7C 08 02 A6 */	mflr r0
/* 8014F614  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014F618  39 61 00 20 */	addi r11, r1, 0x20
/* 8014F61C  48 21 2B B9 */	bl _savegpr_27
/* 8014F620  7C 7B 1B 78 */	mr r27, r3
/* 8014F624  7C 9C 23 78 */	mr r28, r4
/* 8014F628  7C BD 2B 78 */	mr r29, r5
/* 8014F62C  7C DE 33 78 */	mr r30, r6
/* 8014F630  7C FF 3B 78 */	mr r31, r7
/* 8014F634  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 8014F638  4B EB D7 2D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8014F63C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8014F640  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8014F644  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 8014F648  4B EB CD ED */	bl mDoMtx_YrotM__FPA4_fs
/* 8014F64C  38 7B 04 EC */	addi r3, r27, 0x4ec
/* 8014F650  4B EB D8 21 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 8014F654  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8014F658  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8014F65C  38 9B 0A 18 */	addi r4, r27, 0xa18
/* 8014F660  48 1F 6E 51 */	bl PSMTXCopy
/* 8014F664  93 8D 8A 60 */	stw r28, m_name__23daBaseNpc_moveBgActor_c(r13)
/* 8014F668  93 AD 8A 64 */	stw r29, m_dzb_id__23daBaseNpc_moveBgActor_c(r13)
/* 8014F66C  93 CD 8A 68 */	stw r30, m_set_func__23daBaseNpc_moveBgActor_c(r13)
/* 8014F670  7F 63 DB 78 */	mr r3, r27
/* 8014F674  3C 80 80 15 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha /* 0x8014F4F8@ha */
/* 8014F678  38 84 F4 F8 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l /* 0x8014F4F8@l */
/* 8014F67C  7F E5 FB 78 */	mr r5, r31
/* 8014F680  4B EC AE 31 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8014F684  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8014F688  40 82 00 0C */	bne lbl_8014F694
/* 8014F68C  38 60 00 05 */	li r3, 5
/* 8014F690  48 00 00 54 */	b lbl_8014F6E4
lbl_8014F694:
/* 8014F694  80 9B 0A 14 */	lwz r4, 0xa14(r27)
/* 8014F698  28 04 00 00 */	cmplwi r4, 0
/* 8014F69C  41 82 00 28 */	beq lbl_8014F6C4
/* 8014F6A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8014F6A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8014F6A8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8014F6AC  7F 65 DB 78 */	mr r5, r27
/* 8014F6B0  4B F2 53 59 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 8014F6B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8014F6B8  41 82 00 0C */	beq lbl_8014F6C4
/* 8014F6BC  38 60 00 05 */	li r3, 5
/* 8014F6C0  48 00 00 24 */	b lbl_8014F6E4
lbl_8014F6C4:
/* 8014F6C4  7F 63 DB 78 */	mr r3, r27
/* 8014F6C8  81 9B 05 68 */	lwz r12, 0x568(r27)
/* 8014F6CC  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8014F6D0  7D 89 03 A6 */	mtctr r12
/* 8014F6D4  4E 80 04 21 */	bctrl 
/* 8014F6D8  20 03 00 00 */	subfic r0, r3, 0
/* 8014F6DC  7C 60 01 10 */	subfe r3, r0, r0
/* 8014F6E0  38 63 00 05 */	addi r3, r3, 5
lbl_8014F6E4:
/* 8014F6E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8014F6E8  48 21 2B 39 */	bl _restgpr_27
/* 8014F6EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014F6F0  7C 08 03 A6 */	mtlr r0
/* 8014F6F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8014F6F8  4E 80 00 20 */	blr 
