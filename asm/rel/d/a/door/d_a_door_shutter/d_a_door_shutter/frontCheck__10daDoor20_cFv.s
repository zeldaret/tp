lbl_80464C68:
/* 80464C68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80464C6C  7C 08 02 A6 */	mflr r0
/* 80464C70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80464C74  39 61 00 20 */	addi r11, r1, 0x20
/* 80464C78  4B EF D5 65 */	bl _savegpr_29
/* 80464C7C  7C 7D 1B 78 */	mr r29, r3
/* 80464C80  3C 80 80 45 */	lis r4, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80464C84  8B E4 0D 64 */	lbz r31, mStayNo__20dStage_roomControl_c+0x0@l(r4)  /* 0x80450D64@l */
/* 80464C88  7F FF 07 74 */	extsb r31, r31
/* 80464C8C  4B BD 55 2D */	bl getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80464C90  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 80464C94  7F A3 EB 78 */	mr r3, r29
/* 80464C98  4B BD 55 2D */	bl getBRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80464C9C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80464CA0  7C 1E 00 00 */	cmpw r30, r0
/* 80464CA4  40 82 00 10 */	bne lbl_80464CB4
/* 80464CA8  7F A3 EB 78 */	mr r3, r29
/* 80464CAC  4B FF FF 2D */	bl frontCheckOld__10daDoor20_cFv
/* 80464CB0  48 00 00 24 */	b lbl_80464CD4
lbl_80464CB4:
/* 80464CB4  7C 1F F0 00 */	cmpw r31, r30
/* 80464CB8  40 82 00 0C */	bne lbl_80464CC4
/* 80464CBC  38 60 00 00 */	li r3, 0
/* 80464CC0  48 00 00 14 */	b lbl_80464CD4
lbl_80464CC4:
/* 80464CC4  7C 00 F8 50 */	subf r0, r0, r31
/* 80464CC8  30 00 FF FF */	addic r0, r0, -1
/* 80464CCC  7C 60 01 10 */	subfe r3, r0, r0
/* 80464CD0  38 63 00 02 */	addi r3, r3, 2
lbl_80464CD4:
/* 80464CD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80464CD8  4B EF D5 51 */	bl _restgpr_29
/* 80464CDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80464CE0  7C 08 03 A6 */	mtlr r0
/* 80464CE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80464CE8  4E 80 00 20 */	blr 
