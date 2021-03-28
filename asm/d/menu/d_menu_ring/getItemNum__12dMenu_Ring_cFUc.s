lbl_801EE058:
/* 801EE058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EE05C  7C 08 02 A6 */	mflr r0
/* 801EE060  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EE064  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801EE068  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EE06C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EE070  38 63 00 9C */	addi r3, r3, 0x9c
/* 801EE074  54 9F 06 3E */	clrlwi r31, r4, 0x18
/* 801EE078  7F E4 FB 78 */	mr r4, r31
/* 801EE07C  38 A0 00 00 */	li r5, 0
/* 801EE080  4B E4 4F B1 */	bl getItem__17dSv_player_item_cCFib
/* 801EE084  38 80 00 00 */	li r4, 0
/* 801EE088  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EE08C  2C 00 00 53 */	cmpwi r0, 0x53
/* 801EE090  40 80 00 28 */	bge lbl_801EE0B8
/* 801EE094  2C 00 00 4B */	cmpwi r0, 0x4b
/* 801EE098  41 82 00 A0 */	beq lbl_801EE138
/* 801EE09C  40 80 00 10 */	bge lbl_801EE0AC
/* 801EE0A0  2C 00 00 43 */	cmpwi r0, 0x43
/* 801EE0A4  41 82 00 84 */	beq lbl_801EE128
/* 801EE0A8  48 00 00 9C */	b lbl_801EE144
lbl_801EE0AC:
/* 801EE0AC  2C 00 00 50 */	cmpwi r0, 0x50
/* 801EE0B0  41 82 00 30 */	beq lbl_801EE0E0
/* 801EE0B4  48 00 00 90 */	b lbl_801EE144
lbl_801EE0B8:
/* 801EE0B8  2C 00 00 73 */	cmpwi r0, 0x73
/* 801EE0BC  40 80 00 18 */	bge lbl_801EE0D4
/* 801EE0C0  2C 00 00 70 */	cmpwi r0, 0x70
/* 801EE0C4  40 80 00 24 */	bge lbl_801EE0E8
/* 801EE0C8  2C 00 00 57 */	cmpwi r0, 0x57
/* 801EE0CC  40 80 00 78 */	bge lbl_801EE144
/* 801EE0D0  48 00 00 58 */	b lbl_801EE128
lbl_801EE0D4:
/* 801EE0D4  2C 00 00 76 */	cmpwi r0, 0x76
/* 801EE0D8  41 82 00 30 */	beq lbl_801EE108
/* 801EE0DC  48 00 00 68 */	b lbl_801EE144
lbl_801EE0E0:
/* 801EE0E0  38 80 00 00 */	li r4, 0
/* 801EE0E4  48 00 00 60 */	b lbl_801EE144
lbl_801EE0E8:
/* 801EE0E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EE0EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EE0F0  38 63 00 EC */	addi r3, r3, 0xec
/* 801EE0F4  38 1F FF F1 */	addi r0, r31, -15
/* 801EE0F8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801EE0FC  4B E4 5E 81 */	bl getBombNum__24dSv_player_item_record_cCFUc
/* 801EE100  7C 64 1B 78 */	mr r4, r3
/* 801EE104  48 00 00 40 */	b lbl_801EE144
lbl_801EE108:
/* 801EE108  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EE10C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EE110  38 63 00 EC */	addi r3, r3, 0xec
/* 801EE114  38 1F FF F5 */	addi r0, r31, -11
/* 801EE118  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801EE11C  4B E4 5F 15 */	bl getBottleNum__24dSv_player_item_record_cCFUc
/* 801EE120  7C 64 1B 78 */	mr r4, r3
/* 801EE124  48 00 00 20 */	b lbl_801EE144
lbl_801EE128:
/* 801EE128  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EE12C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EE130  88 83 00 EC */	lbz r4, 0xec(r3)
/* 801EE134  48 00 00 10 */	b lbl_801EE144
lbl_801EE138:
/* 801EE138  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EE13C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EE140  88 83 00 F4 */	lbz r4, 0xf4(r3)
lbl_801EE144:
/* 801EE144  7C 83 23 78 */	mr r3, r4
/* 801EE148  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801EE14C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EE150  7C 08 03 A6 */	mtlr r0
/* 801EE154  38 21 00 10 */	addi r1, r1, 0x10
/* 801EE158  4E 80 00 20 */	blr 
