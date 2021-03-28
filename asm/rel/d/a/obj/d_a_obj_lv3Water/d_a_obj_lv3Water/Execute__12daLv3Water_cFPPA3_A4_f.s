lbl_80C58D68:
/* 80C58D68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C58D6C  7C 08 02 A6 */	mflr r0
/* 80C58D70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C58D74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C58D78  93 C1 00 08 */	stw r30, 8(r1)
/* 80C58D7C  7C 7E 1B 78 */	mr r30, r3
/* 80C58D80  7C 9F 23 78 */	mr r31, r4
/* 80C58D84  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80C58D88  4B 3B 46 A0 */	b play__14mDoExt_baseAnmFv
/* 80C58D8C  80 1E 05 C4 */	lwz r0, 0x5c4(r30)
/* 80C58D90  28 00 00 00 */	cmplwi r0, 0
/* 80C58D94  41 82 00 0C */	beq lbl_80C58DA0
/* 80C58D98  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 80C58D9C  4B 3B 46 8C */	b play__14mDoExt_baseAnmFv
lbl_80C58DA0:
/* 80C58DA0  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80C58DA4  4B 3E FA C8 */	b eventUpdate__17dEvLib_callback_cFv
/* 80C58DA8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C58DAC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C58DB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C58DB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C58DB8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C58DBC  7C 05 07 74 */	extsb r5, r0
/* 80C58DC0  4B 3D C5 A0 */	b isSwitch__10dSv_info_cCFii
/* 80C58DC4  98 7E 06 03 */	stb r3, 0x603(r30)
/* 80C58DC8  7F C3 F3 78 */	mr r3, r30
/* 80C58DCC  88 1E 05 F8 */	lbz r0, 0x5f8(r30)
/* 80C58DD0  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80C58DD4  3C 80 80 C6 */	lis r4, l_mode_func@ha
/* 80C58DD8  38 04 A1 C8 */	addi r0, r4, l_mode_func@l
/* 80C58DDC  7D 80 2A 14 */	add r12, r0, r5
/* 80C58DE0  4B 70 92 A4 */	b __ptmf_scall
/* 80C58DE4  60 00 00 00 */	nop 
/* 80C58DE8  7F C3 F3 78 */	mr r3, r30
/* 80C58DEC  48 00 00 35 */	bl effectSet__12daLv3Water_cFv
/* 80C58DF0  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80C58DF4  38 03 00 24 */	addi r0, r3, 0x24
/* 80C58DF8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C58DFC  7F C3 F3 78 */	mr r3, r30
/* 80C58E00  4B FF FA 39 */	bl setBaseMtx__12daLv3Water_cFv
/* 80C58E04  38 60 00 01 */	li r3, 1
/* 80C58E08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C58E0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C58E10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C58E14  7C 08 03 A6 */	mtlr r0
/* 80C58E18  38 21 00 10 */	addi r1, r1, 0x10
/* 80C58E1C  4E 80 00 20 */	blr 
