lbl_80464B3C:
/* 80464B3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80464B40  7C 08 02 A6 */	mflr r0
/* 80464B44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80464B48  39 61 00 20 */	addi r11, r1, 0x20
/* 80464B4C  4B EF D6 90 */	b _savegpr_29
/* 80464B50  7C 7D 1B 78 */	mr r29, r3
/* 80464B54  4B BD 56 64 */	b getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80464B58  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 80464B5C  7F A3 EB 78 */	mr r3, r29
/* 80464B60  4B BD 56 64 */	b getBRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80464B64  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 80464B68  2C 1E 00 3F */	cmpwi r30, 0x3f
/* 80464B6C  41 82 00 0C */	beq lbl_80464B78
/* 80464B70  2C 1D 00 3F */	cmpwi r29, 0x3f
/* 80464B74  40 82 00 0C */	bne lbl_80464B80
lbl_80464B78:
/* 80464B78  38 60 00 01 */	li r3, 1
/* 80464B7C  48 00 00 44 */	b lbl_80464BC0
lbl_80464B80:
/* 80464B80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80464B84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80464B88  3B E3 4E C4 */	addi r31, r3, 0x4ec4
/* 80464B8C  7F E3 FB 78 */	mr r3, r31
/* 80464B90  7F C4 F3 78 */	mr r4, r30
/* 80464B94  4B BB F9 54 */	b checkRoomDisp__20dStage_roomControl_cCFi
/* 80464B98  2C 03 00 00 */	cmpwi r3, 0
/* 80464B9C  40 82 00 18 */	bne lbl_80464BB4
/* 80464BA0  7F E3 FB 78 */	mr r3, r31
/* 80464BA4  7F A4 EB 78 */	mr r4, r29
/* 80464BA8  4B BB F9 40 */	b checkRoomDisp__20dStage_roomControl_cCFi
/* 80464BAC  2C 03 00 00 */	cmpwi r3, 0
/* 80464BB0  41 82 00 0C */	beq lbl_80464BBC
lbl_80464BB4:
/* 80464BB4  38 60 00 01 */	li r3, 1
/* 80464BB8  48 00 00 08 */	b lbl_80464BC0
lbl_80464BBC:
/* 80464BBC  38 60 00 00 */	li r3, 0
lbl_80464BC0:
/* 80464BC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80464BC4  4B EF D6 64 */	b _restgpr_29
/* 80464BC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80464BCC  7C 08 03 A6 */	mtlr r0
/* 80464BD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80464BD4  4E 80 00 20 */	blr 
