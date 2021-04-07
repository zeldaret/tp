lbl_80A04BE4:
/* 80A04BE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A04BE8  7C 08 02 A6 */	mflr r0
/* 80A04BEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A04BF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A04BF4  4B 95 D5 E1 */	bl _savegpr_27
/* 80A04BF8  7C 7B 1B 78 */	mr r27, r3
/* 80A04BFC  7C 9C 23 78 */	mr r28, r4
/* 80A04C00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A04C04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A04C08  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A04C0C  3B C0 00 00 */	li r30, 0
/* 80A04C10  3B A0 FF FF */	li r29, -1
/* 80A04C14  7F E3 FB 78 */	mr r3, r31
/* 80A04C18  3C A0 80 A0 */	lis r5, d_a_npc_hoz__stringBase0@ha /* 0x80A06764@ha */
/* 80A04C1C  38 A5 67 64 */	addi r5, r5, d_a_npc_hoz__stringBase0@l /* 0x80A06764@l */
/* 80A04C20  38 A5 00 9C */	addi r5, r5, 0x9c
/* 80A04C24  38 C0 00 03 */	li r6, 3
/* 80A04C28  4B 64 34 C5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A04C2C  28 03 00 00 */	cmplwi r3, 0
/* 80A04C30  41 82 00 08 */	beq lbl_80A04C38
/* 80A04C34  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A04C38:
/* 80A04C38  7F E3 FB 78 */	mr r3, r31
/* 80A04C3C  7F 84 E3 78 */	mr r4, r28
/* 80A04C40  4B 64 31 0D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A04C44  2C 03 00 00 */	cmpwi r3, 0
/* 80A04C48  41 82 00 2C */	beq lbl_80A04C74
/* 80A04C4C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A04C50  41 82 00 14 */	beq lbl_80A04C64
/* 80A04C54  40 80 00 20 */	bge lbl_80A04C74
/* 80A04C58  2C 1D 00 00 */	cmpwi r29, 0
/* 80A04C5C  41 82 00 18 */	beq lbl_80A04C74
/* 80A04C60  48 00 00 14 */	b lbl_80A04C74
lbl_80A04C64:
/* 80A04C64  7F 63 DB 78 */	mr r3, r27
/* 80A04C68  80 9B 0A 7C */	lwz r4, 0xa7c(r27)
/* 80A04C6C  38 A0 00 00 */	li r5, 0
/* 80A04C70  4B 74 6F 81 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80A04C74:
/* 80A04C74  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A04C78  41 82 00 1C */	beq lbl_80A04C94
/* 80A04C7C  40 80 00 40 */	bge lbl_80A04CBC
/* 80A04C80  2C 1D 00 00 */	cmpwi r29, 0
/* 80A04C84  41 82 00 08 */	beq lbl_80A04C8C
/* 80A04C88  48 00 00 34 */	b lbl_80A04CBC
lbl_80A04C8C:
/* 80A04C8C  3B C0 00 01 */	li r30, 1
/* 80A04C90  48 00 00 30 */	b lbl_80A04CC0
lbl_80A04C94:
/* 80A04C94  7F 63 DB 78 */	mr r3, r27
/* 80A04C98  38 80 00 00 */	li r4, 0
/* 80A04C9C  38 A0 00 00 */	li r5, 0
/* 80A04CA0  38 C0 00 00 */	li r6, 0
/* 80A04CA4  38 E0 00 00 */	li r7, 0
/* 80A04CA8  4B 74 6F D1 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A04CAC  2C 03 00 00 */	cmpwi r3, 0
/* 80A04CB0  41 82 00 10 */	beq lbl_80A04CC0
/* 80A04CB4  3B C0 00 01 */	li r30, 1
/* 80A04CB8  48 00 00 08 */	b lbl_80A04CC0
lbl_80A04CBC:
/* 80A04CBC  3B C0 00 01 */	li r30, 1
lbl_80A04CC0:
/* 80A04CC0  7F C3 F3 78 */	mr r3, r30
/* 80A04CC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A04CC8  4B 95 D5 59 */	bl _restgpr_27
/* 80A04CCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A04CD0  7C 08 03 A6 */	mtlr r0
/* 80A04CD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A04CD8  4E 80 00 20 */	blr 
