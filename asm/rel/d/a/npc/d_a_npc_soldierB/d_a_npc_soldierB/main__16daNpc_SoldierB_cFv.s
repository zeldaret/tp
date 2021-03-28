lbl_80AF39B8:
/* 80AF39B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AF39BC  7C 08 02 A6 */	mflr r0
/* 80AF39C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF39C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF39C8  4B 86 E8 14 */	b _savegpr_29
/* 80AF39CC  7C 7E 1B 78 */	mr r30, r3
/* 80AF39D0  3C 80 80 AF */	lis r4, cNullVec__6Z2Calc@ha
/* 80AF39D4  3B E4 5C 10 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 80AF39D8  48 00 0D 99 */	bl doEvent__16daNpc_SoldierB_cFv
/* 80AF39DC  2C 03 00 00 */	cmpwi r3, 0
/* 80AF39E0  40 82 00 10 */	bne lbl_80AF39F0
/* 80AF39E4  7F C3 F3 78 */	mr r3, r30
/* 80AF39E8  38 80 00 01 */	li r4, 1
/* 80AF39EC  48 00 0C 71 */	bl doNormalAction__16daNpc_SoldierB_cFi
lbl_80AF39F0:
/* 80AF39F0  3B A0 00 00 */	li r29, 0
/* 80AF39F4  88 1E 09 F2 */	lbz r0, 0x9f2(r30)
/* 80AF39F8  28 00 00 00 */	cmplwi r0, 0
/* 80AF39FC  40 82 00 1C */	bne lbl_80AF3A18
/* 80AF3A00  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 80AF3A04  28 00 00 00 */	cmplwi r0, 0
/* 80AF3A08  41 82 00 14 */	beq lbl_80AF3A1C
/* 80AF3A0C  4B 53 C0 48 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80AF3A10  2C 03 00 00 */	cmpwi r3, 0
/* 80AF3A14  40 82 00 08 */	bne lbl_80AF3A1C
lbl_80AF3A18:
/* 80AF3A18  3B A0 00 01 */	li r29, 1
lbl_80AF3A1C:
/* 80AF3A1C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80AF3A20  41 82 00 0C */	beq lbl_80AF3A2C
/* 80AF3A24  38 00 00 00 */	li r0, 0
/* 80AF3A28  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80AF3A2C:
/* 80AF3A2C  3C 60 80 AF */	lis r3, m__22daNpc_SoldierB_Param_c@ha
/* 80AF3A30  38 63 5A D4 */	addi r3, r3, m__22daNpc_SoldierB_Param_c@l
/* 80AF3A34  88 03 00 6A */	lbz r0, 0x6a(r3)
/* 80AF3A38  28 00 00 00 */	cmplwi r0, 0
/* 80AF3A3C  40 82 00 AC */	bne lbl_80AF3AE8
/* 80AF3A40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AF3A44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AF3A48  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 80AF3A4C  28 03 00 00 */	cmplwi r3, 0
/* 80AF3A50  41 82 00 30 */	beq lbl_80AF3A80
/* 80AF3A54  88 1E 09 ED */	lbz r0, 0x9ed(r30)
/* 80AF3A58  28 00 00 00 */	cmplwi r0, 0
/* 80AF3A5C  41 82 00 8C */	beq lbl_80AF3AE8
/* 80AF3A60  38 00 00 00 */	li r0, 0
/* 80AF3A64  28 03 00 00 */	cmplwi r3, 0
/* 80AF3A68  41 82 00 0C */	beq lbl_80AF3A74
/* 80AF3A6C  28 03 00 02 */	cmplwi r3, 2
/* 80AF3A70  40 82 00 08 */	bne lbl_80AF3A78
lbl_80AF3A74:
/* 80AF3A74  38 00 00 01 */	li r0, 1
lbl_80AF3A78:
/* 80AF3A78  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AF3A7C  41 82 00 6C */	beq lbl_80AF3AE8
lbl_80AF3A80:
/* 80AF3A80  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80AF3A84  28 00 00 00 */	cmplwi r0, 0
/* 80AF3A88  41 82 00 24 */	beq lbl_80AF3AAC
/* 80AF3A8C  38 7F 00 50 */	addi r3, r31, 0x50
/* 80AF3A90  54 00 1B 78 */	rlwinm r0, r0, 3, 0xd, 0x1c
/* 80AF3A94  7C 63 02 14 */	add r3, r3, r0
/* 80AF3A98  80 03 00 04 */	lwz r0, 4(r3)
/* 80AF3A9C  54 00 10 3A */	slwi r0, r0, 2
/* 80AF3AA0  38 7F 00 7C */	addi r3, r31, 0x7c
/* 80AF3AA4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80AF3AA8  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_80AF3AAC:
/* 80AF3AAC  7F C3 F3 78 */	mr r3, r30
/* 80AF3AB0  88 9E 09 E9 */	lbz r4, 0x9e9(r30)
/* 80AF3AB4  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80AF3AB8  54 00 18 38 */	slwi r0, r0, 3
/* 80AF3ABC  38 BF 00 50 */	addi r5, r31, 0x50
/* 80AF3AC0  7C 05 00 2E */	lwzx r0, r5, r0
/* 80AF3AC4  54 00 10 3A */	slwi r0, r0, 2
/* 80AF3AC8  38 BF 00 58 */	addi r5, r31, 0x58
/* 80AF3ACC  7C A5 00 2E */	lwzx r5, r5, r0
/* 80AF3AD0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80AF3AD4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80AF3AD8  38 E0 00 28 */	li r7, 0x28
/* 80AF3ADC  39 00 00 FF */	li r8, 0xff
/* 80AF3AE0  39 20 00 01 */	li r9, 1
/* 80AF3AE4  4B 65 FD 98 */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80AF3AE8:
/* 80AF3AE8  88 1E 09 EE */	lbz r0, 0x9ee(r30)
/* 80AF3AEC  28 00 00 00 */	cmplwi r0, 0
/* 80AF3AF0  41 82 00 1C */	beq lbl_80AF3B0C
/* 80AF3AF4  3C 60 80 AF */	lis r3, lit_4454@ha
/* 80AF3AF8  C0 03 5B 54 */	lfs f0, lit_4454@l(r3)
/* 80AF3AFC  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 80AF3B00  D0 1E 09 7C */	stfs f0, 0x97c(r30)
/* 80AF3B04  38 00 00 00 */	li r0, 0
/* 80AF3B08  98 1E 09 EE */	stb r0, 0x9ee(r30)
lbl_80AF3B0C:
/* 80AF3B0C  7F C3 F3 78 */	mr r3, r30
/* 80AF3B10  48 00 08 D5 */	bl playMotion__16daNpc_SoldierB_cFv
/* 80AF3B14  38 60 00 01 */	li r3, 1
/* 80AF3B18  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF3B1C  4B 86 E7 0C */	b _restgpr_29
/* 80AF3B20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AF3B24  7C 08 03 A6 */	mtlr r0
/* 80AF3B28  38 21 00 20 */	addi r1, r1, 0x20
/* 80AF3B2C  4E 80 00 20 */	blr 
