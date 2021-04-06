lbl_809D0D1C:
/* 809D0D1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D0D20  7C 08 02 A6 */	mflr r0
/* 809D0D24  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D0D28  39 61 00 20 */	addi r11, r1, 0x20
/* 809D0D2C  4B 99 14 B1 */	bl _savegpr_29
/* 809D0D30  7C 7E 1B 78 */	mr r30, r3
/* 809D0D34  3C 80 80 9D */	lis r4, cNullVec__6Z2Calc@ha /* 0x809D3C14@ha */
/* 809D0D38  3B E4 3C 14 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x809D3C14@l */
/* 809D0D3C  48 00 14 7D */	bl doEvent__11daNpc_Grd_cFv
/* 809D0D40  2C 03 00 00 */	cmpwi r3, 0
/* 809D0D44  40 82 00 10 */	bne lbl_809D0D54
/* 809D0D48  7F C3 F3 78 */	mr r3, r30
/* 809D0D4C  38 80 00 01 */	li r4, 1
/* 809D0D50  48 00 13 55 */	bl doNormalAction__11daNpc_Grd_cFi
lbl_809D0D54:
/* 809D0D54  3B A0 00 00 */	li r29, 0
/* 809D0D58  88 1E 09 F2 */	lbz r0, 0x9f2(r30)
/* 809D0D5C  28 00 00 00 */	cmplwi r0, 0
/* 809D0D60  40 82 00 1C */	bne lbl_809D0D7C
/* 809D0D64  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 809D0D68  28 00 00 00 */	cmplwi r0, 0
/* 809D0D6C  41 82 00 14 */	beq lbl_809D0D80
/* 809D0D70  4B 65 EC E5 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 809D0D74  2C 03 00 00 */	cmpwi r3, 0
/* 809D0D78  40 82 00 08 */	bne lbl_809D0D80
lbl_809D0D7C:
/* 809D0D7C  3B A0 00 01 */	li r29, 1
lbl_809D0D80:
/* 809D0D80  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 809D0D84  41 82 00 0C */	beq lbl_809D0D90
/* 809D0D88  38 00 00 00 */	li r0, 0
/* 809D0D8C  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_809D0D90:
/* 809D0D90  3C 60 80 9D */	lis r3, m__17daNpc_Grd_Param_c@ha /* 0x809D3A04@ha */
/* 809D0D94  38 63 3A 04 */	addi r3, r3, m__17daNpc_Grd_Param_c@l /* 0x809D3A04@l */
/* 809D0D98  88 03 00 6A */	lbz r0, 0x6a(r3)
/* 809D0D9C  28 00 00 00 */	cmplwi r0, 0
/* 809D0DA0  40 82 00 AC */	bne lbl_809D0E4C
/* 809D0DA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D0DA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D0DAC  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 809D0DB0  28 03 00 00 */	cmplwi r3, 0
/* 809D0DB4  41 82 00 30 */	beq lbl_809D0DE4
/* 809D0DB8  88 1E 09 ED */	lbz r0, 0x9ed(r30)
/* 809D0DBC  28 00 00 00 */	cmplwi r0, 0
/* 809D0DC0  41 82 00 8C */	beq lbl_809D0E4C
/* 809D0DC4  38 00 00 00 */	li r0, 0
/* 809D0DC8  28 03 00 00 */	cmplwi r3, 0
/* 809D0DCC  41 82 00 0C */	beq lbl_809D0DD8
/* 809D0DD0  28 03 00 02 */	cmplwi r3, 2
/* 809D0DD4  40 82 00 08 */	bne lbl_809D0DDC
lbl_809D0DD8:
/* 809D0DD8  38 00 00 01 */	li r0, 1
lbl_809D0DDC:
/* 809D0DDC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809D0DE0  41 82 00 6C */	beq lbl_809D0E4C
lbl_809D0DE4:
/* 809D0DE4  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 809D0DE8  28 00 00 00 */	cmplwi r0, 0
/* 809D0DEC  41 82 00 24 */	beq lbl_809D0E10
/* 809D0DF0  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 809D0DF4  54 00 1B 78 */	rlwinm r0, r0, 3, 0xd, 0x1c
/* 809D0DF8  7C 63 02 14 */	add r3, r3, r0
/* 809D0DFC  80 03 00 04 */	lwz r0, 4(r3)
/* 809D0E00  54 00 10 3A */	slwi r0, r0, 2
/* 809D0E04  38 7F 00 E8 */	addi r3, r31, 0xe8
/* 809D0E08  7C 03 00 2E */	lwzx r0, r3, r0
/* 809D0E0C  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_809D0E10:
/* 809D0E10  7F C3 F3 78 */	mr r3, r30
/* 809D0E14  88 9E 09 E9 */	lbz r4, 0x9e9(r30)
/* 809D0E18  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 809D0E1C  54 00 18 38 */	slwi r0, r0, 3
/* 809D0E20  38 BF 00 B0 */	addi r5, r31, 0xb0
/* 809D0E24  7C 05 00 2E */	lwzx r0, r5, r0
/* 809D0E28  54 00 10 3A */	slwi r0, r0, 2
/* 809D0E2C  38 BF 00 F0 */	addi r5, r31, 0xf0
/* 809D0E30  7C A5 00 2E */	lwzx r5, r5, r0
/* 809D0E34  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 809D0E38  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 809D0E3C  38 E0 00 28 */	li r7, 0x28
/* 809D0E40  39 00 00 FF */	li r8, 0xff
/* 809D0E44  39 20 00 01 */	li r9, 1
/* 809D0E48  4B 78 2A 35 */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_809D0E4C:
/* 809D0E4C  88 1E 09 EE */	lbz r0, 0x9ee(r30)
/* 809D0E50  28 00 00 00 */	cmplwi r0, 0
/* 809D0E54  41 82 00 1C */	beq lbl_809D0E70
/* 809D0E58  3C 60 80 9D */	lis r3, lit_4451@ha /* 0x809D3A84@ha */
/* 809D0E5C  C0 03 3A 84 */	lfs f0, lit_4451@l(r3)  /* 0x809D3A84@l */
/* 809D0E60  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 809D0E64  D0 1E 09 7C */	stfs f0, 0x97c(r30)
/* 809D0E68  38 00 00 00 */	li r0, 0
/* 809D0E6C  98 1E 09 EE */	stb r0, 0x9ee(r30)
lbl_809D0E70:
/* 809D0E70  7F C3 F3 78 */	mr r3, r30
/* 809D0E74  48 00 0D 29 */	bl playExpression__11daNpc_Grd_cFv
/* 809D0E78  7F C3 F3 78 */	mr r3, r30
/* 809D0E7C  48 00 0E 85 */	bl playMotion__11daNpc_Grd_cFv
/* 809D0E80  38 60 00 01 */	li r3, 1
/* 809D0E84  39 61 00 20 */	addi r11, r1, 0x20
/* 809D0E88  4B 99 13 A1 */	bl _restgpr_29
/* 809D0E8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D0E90  7C 08 03 A6 */	mtlr r0
/* 809D0E94  38 21 00 20 */	addi r1, r1, 0x20
/* 809D0E98  4E 80 00 20 */	blr 
