lbl_80465C04:
/* 80465C04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80465C08  7C 08 02 A6 */	mflr r0
/* 80465C0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80465C10  39 61 00 20 */	addi r11, r1, 0x20
/* 80465C14  4B EF C5 C9 */	bl _savegpr_29
/* 80465C18  7C 7D 1B 78 */	mr r29, r3
/* 80465C1C  4B BD 45 C1 */	bl getSwbit2__13door_param2_cFP10fopAc_ac_c
/* 80465C20  7C 7F 1B 78 */	mr r31, r3
/* 80465C24  7F A3 EB 78 */	mr r3, r29
/* 80465C28  4B BD 45 9D */	bl getBRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80465C2C  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 80465C30  7F A3 EB 78 */	mr r3, r29
/* 80465C34  4B BD 45 79 */	bl getBackOption__13door_param2_cFP10fopAc_ac_c
/* 80465C38  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80465C3C  28 00 00 FF */	cmplwi r0, 0xff
/* 80465C40  40 82 00 0C */	bne lbl_80465C4C
/* 80465C44  38 60 00 00 */	li r3, 0
/* 80465C48  48 00 00 60 */	b lbl_80465CA8
lbl_80465C4C:
/* 80465C4C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80465C50  28 00 00 01 */	cmplwi r0, 1
/* 80465C54  41 82 00 14 */	beq lbl_80465C68
/* 80465C58  28 00 00 03 */	cmplwi r0, 3
/* 80465C5C  41 82 00 0C */	beq lbl_80465C68
/* 80465C60  38 60 00 00 */	li r3, 0
/* 80465C64  48 00 00 44 */	b lbl_80465CA8
lbl_80465C68:
/* 80465C68  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 80465C6C  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 80465C70  1C 1E 04 04 */	mulli r0, r30, 0x404
/* 80465C74  7C 63 02 14 */	add r3, r3, r0
/* 80465C78  88 03 03 F4 */	lbz r0, 0x3f4(r3)
/* 80465C7C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80465C80  40 82 00 0C */	bne lbl_80465C8C
/* 80465C84  38 60 FF FF */	li r3, -1
/* 80465C88  48 00 00 20 */	b lbl_80465CA8
lbl_80465C8C:
/* 80465C8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80465C90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80465C94  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 80465C98  7F C5 F3 78 */	mr r5, r30
/* 80465C9C  4B BC F6 C5 */	bl isSwitch__10dSv_info_cCFii
/* 80465CA0  7C 60 00 34 */	cntlzw r0, r3
/* 80465CA4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
lbl_80465CA8:
/* 80465CA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80465CAC  4B EF C5 7D */	bl _restgpr_29
/* 80465CB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80465CB4  7C 08 03 A6 */	mtlr r0
/* 80465CB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80465CBC  4E 80 00 20 */	blr 
