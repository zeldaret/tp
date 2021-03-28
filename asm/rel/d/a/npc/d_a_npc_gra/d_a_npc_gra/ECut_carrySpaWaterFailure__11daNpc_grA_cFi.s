lbl_809C5D44:
/* 809C5D44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809C5D48  7C 08 02 A6 */	mflr r0
/* 809C5D4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 809C5D50  39 61 00 30 */	addi r11, r1, 0x30
/* 809C5D54  4B 99 C4 7C */	b _savegpr_26
/* 809C5D58  7C 7E 1B 78 */	mr r30, r3
/* 809C5D5C  7C 9A 23 78 */	mr r26, r4
/* 809C5D60  3C 60 80 9D */	lis r3, m__17daNpc_grA_Param_c@ha
/* 809C5D64  3B A3 9D 98 */	addi r29, r3, m__17daNpc_grA_Param_c@l
/* 809C5D68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C5D6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809C5D70  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 809C5D74  3B E0 00 00 */	li r31, 0
/* 809C5D78  3B 60 FF FF */	li r27, -1
/* 809C5D7C  7F 83 E3 78 */	mr r3, r28
/* 809C5D80  3C A0 80 9D */	lis r5, struct_809CA4B8+0x0@ha
/* 809C5D84  38 A5 A4 B8 */	addi r5, r5, struct_809CA4B8+0x0@l
/* 809C5D88  38 A5 01 46 */	addi r5, r5, 0x146
/* 809C5D8C  38 C0 00 03 */	li r6, 3
/* 809C5D90  4B 68 23 5C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809C5D94  28 03 00 00 */	cmplwi r3, 0
/* 809C5D98  41 82 00 08 */	beq lbl_809C5DA0
/* 809C5D9C  83 63 00 00 */	lwz r27, 0(r3)
lbl_809C5DA0:
/* 809C5DA0  7F 83 E3 78 */	mr r3, r28
/* 809C5DA4  7F 44 D3 78 */	mr r4, r26
/* 809C5DA8  4B 68 1F A4 */	b getIsAddvance__16dEvent_manager_cFi
/* 809C5DAC  2C 03 00 00 */	cmpwi r3, 0
/* 809C5DB0  41 82 00 D4 */	beq lbl_809C5E84
/* 809C5DB4  2C 1B 00 0A */	cmpwi r27, 0xa
/* 809C5DB8  41 82 00 74 */	beq lbl_809C5E2C
/* 809C5DBC  40 80 00 10 */	bge lbl_809C5DCC
/* 809C5DC0  2C 1B 00 00 */	cmpwi r27, 0
/* 809C5DC4  41 82 00 14 */	beq lbl_809C5DD8
/* 809C5DC8  48 00 00 BC */	b lbl_809C5E84
lbl_809C5DCC:
/* 809C5DCC  2C 1B 00 14 */	cmpwi r27, 0x14
/* 809C5DD0  41 82 00 9C */	beq lbl_809C5E6C
/* 809C5DD4  48 00 00 B0 */	b lbl_809C5E84
lbl_809C5DD8:
/* 809C5DD8  7F C3 F3 78 */	mr r3, r30
/* 809C5DDC  38 80 00 16 */	li r4, 0x16
/* 809C5DE0  C0 3D 06 70 */	lfs f1, 0x670(r29)
/* 809C5DE4  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809C5DE8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C5DEC  7D 89 03 A6 */	mtctr r12
/* 809C5DF0  4E 80 04 21 */	bctrl 
/* 809C5DF4  7F C3 F3 78 */	mr r3, r30
/* 809C5DF8  38 80 00 02 */	li r4, 2
/* 809C5DFC  C0 3D 06 70 */	lfs f1, 0x670(r29)
/* 809C5E00  38 A0 00 00 */	li r5, 0
/* 809C5E04  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809C5E08  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C5E0C  7D 89 03 A6 */	mtctr r12
/* 809C5E10  4E 80 04 21 */	bctrl 
/* 809C5E14  7F C3 F3 78 */	mr r3, r30
/* 809C5E18  38 80 00 00 */	li r4, 0
/* 809C5E1C  4B FF D2 55 */	bl setLookMode__11daNpc_grA_cFi
/* 809C5E20  38 00 00 02 */	li r0, 2
/* 809C5E24  98 1E 16 90 */	stb r0, 0x1690(r30)
/* 809C5E28  48 00 00 5C */	b lbl_809C5E84
lbl_809C5E2C:
/* 809C5E2C  7F C3 F3 78 */	mr r3, r30
/* 809C5E30  38 80 00 16 */	li r4, 0x16
/* 809C5E34  C0 3D 06 70 */	lfs f1, 0x670(r29)
/* 809C5E38  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809C5E3C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C5E40  7D 89 03 A6 */	mtctr r12
/* 809C5E44  4E 80 04 21 */	bctrl 
/* 809C5E48  7F C3 F3 78 */	mr r3, r30
/* 809C5E4C  38 80 00 08 */	li r4, 8
/* 809C5E50  C0 3D 06 70 */	lfs f1, 0x670(r29)
/* 809C5E54  38 A0 00 00 */	li r5, 0
/* 809C5E58  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809C5E5C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C5E60  7D 89 03 A6 */	mtctr r12
/* 809C5E64  4E 80 04 21 */	bctrl 
/* 809C5E68  48 00 00 1C */	b lbl_809C5E84
lbl_809C5E6C:
/* 809C5E6C  38 60 00 52 */	li r3, 0x52
/* 809C5E70  4B 78 F8 84 */	b daNpcF_onTmpBit__FUl
/* 809C5E74  7F C3 F3 78 */	mr r3, r30
/* 809C5E78  38 80 00 29 */	li r4, 0x29
/* 809C5E7C  38 A0 00 00 */	li r5, 0
/* 809C5E80  4B 78 DE 9C */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_809C5E84:
/* 809C5E84  2C 1B 00 0A */	cmpwi r27, 0xa
/* 809C5E88  41 82 00 28 */	beq lbl_809C5EB0
/* 809C5E8C  40 80 00 10 */	bge lbl_809C5E9C
/* 809C5E90  2C 1B 00 00 */	cmpwi r27, 0
/* 809C5E94  41 82 00 14 */	beq lbl_809C5EA8
/* 809C5E98  48 00 00 D8 */	b lbl_809C5F70
lbl_809C5E9C:
/* 809C5E9C  2C 1B 00 14 */	cmpwi r27, 0x14
/* 809C5EA0  41 82 00 AC */	beq lbl_809C5F4C
/* 809C5EA4  48 00 00 CC */	b lbl_809C5F70
lbl_809C5EA8:
/* 809C5EA8  3B E0 00 01 */	li r31, 1
/* 809C5EAC  48 00 00 C8 */	b lbl_809C5F74
lbl_809C5EB0:
/* 809C5EB0  A8 1E 09 E0 */	lha r0, 0x9e0(r30)
/* 809C5EB4  2C 00 00 08 */	cmpwi r0, 8
/* 809C5EB8  40 82 00 BC */	bne lbl_809C5F74
/* 809C5EBC  A8 1E 09 DA */	lha r0, 0x9da(r30)
/* 809C5EC0  2C 00 00 00 */	cmpwi r0, 0
/* 809C5EC4  40 81 00 0C */	ble lbl_809C5ED0
/* 809C5EC8  3B E0 00 01 */	li r31, 1
/* 809C5ECC  48 00 00 A8 */	b lbl_809C5F74
lbl_809C5ED0:
/* 809C5ED0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809C5ED4  38 63 00 0C */	addi r3, r3, 0xc
/* 809C5ED8  C0 3D 06 F4 */	lfs f1, 0x6f4(r29)
/* 809C5EDC  4B 96 25 50 */	b checkPass__12J3DFrameCtrlFf
/* 809C5EE0  2C 03 00 00 */	cmpwi r3, 0
/* 809C5EE4  41 82 00 90 */	beq lbl_809C5F74
/* 809C5EE8  C0 1D 00 9C */	lfs f0, 0x9c(r29)
/* 809C5EEC  D0 01 00 08 */	stfs f0, 8(r1)
/* 809C5EF0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809C5EF4  C0 1D 00 E8 */	lfs f0, 0xe8(r29)
/* 809C5EF8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809C5EFC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 809C5F00  4B 64 6E 64 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 809C5F04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809C5F08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809C5F0C  A8 9E 08 F2 */	lha r4, 0x8f2(r30)
/* 809C5F10  4B 64 65 24 */	b mDoMtx_YrotM__FPA4_fs
/* 809C5F14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809C5F18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809C5F1C  38 81 00 08 */	addi r4, r1, 8
/* 809C5F20  38 BE 15 24 */	addi r5, r30, 0x1524
/* 809C5F24  4B 98 0E 48 */	b PSMTXMultVec
/* 809C5F28  A8 1E 08 F0 */	lha r0, 0x8f0(r30)
/* 809C5F2C  B0 1E 15 30 */	sth r0, 0x1530(r30)
/* 809C5F30  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 809C5F34  B0 1E 15 32 */	sth r0, 0x1532(r30)
/* 809C5F38  A8 1E 08 F4 */	lha r0, 0x8f4(r30)
/* 809C5F3C  B0 1E 15 34 */	sth r0, 0x1534(r30)
/* 809C5F40  38 00 00 01 */	li r0, 1
/* 809C5F44  98 1E 15 20 */	stb r0, 0x1520(r30)
/* 809C5F48  48 00 00 2C */	b lbl_809C5F74
lbl_809C5F4C:
/* 809C5F4C  7F C3 F3 78 */	mr r3, r30
/* 809C5F50  38 80 00 00 */	li r4, 0
/* 809C5F54  38 A0 00 01 */	li r5, 1
/* 809C5F58  38 C0 00 00 */	li r6, 0
/* 809C5F5C  4B 78 DE 28 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809C5F60  2C 03 00 00 */	cmpwi r3, 0
/* 809C5F64  41 82 00 10 */	beq lbl_809C5F74
/* 809C5F68  3B E0 00 01 */	li r31, 1
/* 809C5F6C  48 00 00 08 */	b lbl_809C5F74
lbl_809C5F70:
/* 809C5F70  3B E0 00 01 */	li r31, 1
lbl_809C5F74:
/* 809C5F74  7F E3 FB 78 */	mr r3, r31
/* 809C5F78  39 61 00 30 */	addi r11, r1, 0x30
/* 809C5F7C  4B 99 C2 A0 */	b _restgpr_26
/* 809C5F80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809C5F84  7C 08 03 A6 */	mtlr r0
/* 809C5F88  38 21 00 30 */	addi r1, r1, 0x30
/* 809C5F8C  4E 80 00 20 */	blr 
