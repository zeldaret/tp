lbl_801397A4:
/* 801397A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801397A8  7C 08 02 A6 */	mflr r0
/* 801397AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801397B0  39 61 00 20 */	addi r11, r1, 0x20
/* 801397B4  48 22 8A 29 */	bl _savegpr_29
/* 801397B8  3B E0 00 00 */	li r31, 0
/* 801397BC  7F FE FB 78 */	mr r30, r31
/* 801397C0  7F FD FB 78 */	mr r29, r31
/* 801397C4  80 03 05 70 */	lwz r0, 0x570(r3)
/* 801397C8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 801397CC  41 82 00 24 */	beq lbl_801397F0
/* 801397D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801397D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801397D8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 801397DC  38 80 05 01 */	li r4, 0x501
/* 801397E0  4B EF B1 DD */	bl isEventBit__11dSv_event_cCFUs
/* 801397E4  2C 03 00 00 */	cmpwi r3, 0
/* 801397E8  41 82 00 08 */	beq lbl_801397F0
/* 801397EC  3B A0 00 01 */	li r29, 1
lbl_801397F0:
/* 801397F0  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801397F4  41 82 00 50 */	beq lbl_80139844
/* 801397F8  3B A0 00 00 */	li r29, 0
/* 801397FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80139800  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80139804  38 63 00 28 */	addi r3, r3, 0x28
/* 80139808  38 80 00 03 */	li r4, 3
/* 8013980C  4B EF 93 E1 */	bl isTransformLV__21dSv_player_status_b_cCFi
/* 80139810  2C 03 00 00 */	cmpwi r3, 0
/* 80139814  41 82 00 24 */	beq lbl_80139838
/* 80139818  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013981C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80139820  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80139824  38 80 1E 08 */	li r4, 0x1e08
/* 80139828  4B EF B1 95 */	bl isEventBit__11dSv_event_cCFUs
/* 8013982C  2C 03 00 00 */	cmpwi r3, 0
/* 80139830  40 82 00 08 */	bne lbl_80139838
/* 80139834  3B A0 00 01 */	li r29, 1
lbl_80139838:
/* 80139838  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8013983C  40 82 00 08 */	bne lbl_80139844
/* 80139840  3B C0 00 01 */	li r30, 1
lbl_80139844:
/* 80139844  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80139848  41 82 00 44 */	beq lbl_8013988C
/* 8013984C  3B A0 00 01 */	li r29, 1
/* 80139850  48 07 2D 2D */	bl dKy_darkworld_check__Fv
/* 80139854  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80139858  28 00 00 01 */	cmplwi r0, 1
/* 8013985C  41 82 00 24 */	beq lbl_80139880
/* 80139860  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80139864  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80139868  38 63 00 28 */	addi r3, r3, 0x28
/* 8013986C  38 80 00 03 */	li r4, 3
/* 80139870  4B EF 93 7D */	bl isTransformLV__21dSv_player_status_b_cCFi
/* 80139874  2C 03 00 00 */	cmpwi r3, 0
/* 80139878  40 82 00 08 */	bne lbl_80139880
/* 8013987C  3B A0 00 00 */	li r29, 0
lbl_80139880:
/* 80139880  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80139884  41 82 00 08 */	beq lbl_8013988C
/* 80139888  3B E0 00 01 */	li r31, 1
lbl_8013988C:
/* 8013988C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80139890  39 61 00 20 */	addi r11, r1, 0x20
/* 80139894  48 22 89 95 */	bl _restgpr_29
/* 80139898  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013989C  7C 08 03 A6 */	mtlr r0
/* 801398A0  38 21 00 20 */	addi r1, r1, 0x20
/* 801398A4  4E 80 00 20 */	blr 
