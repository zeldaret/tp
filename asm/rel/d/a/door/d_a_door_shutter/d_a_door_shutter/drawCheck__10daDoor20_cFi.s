lbl_80464CEC:
/* 80464CEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80464CF0  7C 08 02 A6 */	mflr r0
/* 80464CF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80464CF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80464CFC  4B EF D4 DC */	b _savegpr_28
/* 80464D00  7C 7C 1B 78 */	mr r28, r3
/* 80464D04  4B FF FE 39 */	bl adjoinPlayer__10daDoor20_cFv
/* 80464D08  2C 03 00 00 */	cmpwi r3, 0
/* 80464D0C  40 82 00 20 */	bne lbl_80464D2C
/* 80464D10  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80464D14  28 00 00 02 */	cmplwi r0, 2
/* 80464D18  41 82 00 14 */	beq lbl_80464D2C
/* 80464D1C  28 00 00 03 */	cmplwi r0, 3
/* 80464D20  41 82 00 0C */	beq lbl_80464D2C
/* 80464D24  38 60 00 00 */	li r3, 0
/* 80464D28  48 00 00 D8 */	b lbl_80464E00
lbl_80464D2C:
/* 80464D2C  7F 83 E3 78 */	mr r3, r28
/* 80464D30  4B BD 54 88 */	b getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80464D34  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 80464D38  7F 83 E3 78 */	mr r3, r28
/* 80464D3C  4B BD 54 88 */	b getBRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80464D40  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 80464D44  7F 83 E3 78 */	mr r3, r28
/* 80464D48  4B BD 54 58 */	b getFrontOption__13door_param2_cFP10fopAc_ac_c
/* 80464D4C  7F 83 E3 78 */	mr r3, r28
/* 80464D50  4B BD 54 5C */	b getBackOption__13door_param2_cFP10fopAc_ac_c
/* 80464D54  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 80464D58  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 80464D5C  7C 00 07 74 */	extsb r0, r0
/* 80464D60  7C 1E 00 00 */	cmpw r30, r0
/* 80464D64  41 82 00 0C */	beq lbl_80464D70
/* 80464D68  7C 1D 00 00 */	cmpw r29, r0
/* 80464D6C  40 82 00 0C */	bne lbl_80464D78
lbl_80464D70:
/* 80464D70  98 1C 04 8C */	stb r0, 0x48c(r28)
/* 80464D74  48 00 00 44 */	b lbl_80464DB8
lbl_80464D78:
/* 80464D78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80464D7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80464D80  3B E3 4E C4 */	addi r31, r3, 0x4ec4
/* 80464D84  7F E3 FB 78 */	mr r3, r31
/* 80464D88  7F C4 F3 78 */	mr r4, r30
/* 80464D8C  4B BB F7 5C */	b checkRoomDisp__20dStage_roomControl_cCFi
/* 80464D90  2C 03 00 00 */	cmpwi r3, 0
/* 80464D94  41 82 00 0C */	beq lbl_80464DA0
/* 80464D98  9B DC 04 8C */	stb r30, 0x48c(r28)
/* 80464D9C  48 00 00 1C */	b lbl_80464DB8
lbl_80464DA0:
/* 80464DA0  7F E3 FB 78 */	mr r3, r31
/* 80464DA4  7F A4 EB 78 */	mr r4, r29
/* 80464DA8  4B BB F7 40 */	b checkRoomDisp__20dStage_roomControl_cCFi
/* 80464DAC  2C 03 00 00 */	cmpwi r3, 0
/* 80464DB0  41 82 00 08 */	beq lbl_80464DB8
/* 80464DB4  9B BC 04 8C */	stb r29, 0x48c(r28)
lbl_80464DB8:
/* 80464DB8  80 1C 06 78 */	lwz r0, 0x678(r28)
/* 80464DBC  2C 00 FF FF */	cmpwi r0, -1
/* 80464DC0  41 82 00 0C */	beq lbl_80464DCC
/* 80464DC4  88 1C 06 74 */	lbz r0, 0x674(r28)
/* 80464DC8  98 1C 04 8C */	stb r0, 0x48c(r28)
lbl_80464DCC:
/* 80464DCC  88 1C 04 8C */	lbz r0, 0x48c(r28)
/* 80464DD0  98 1C 04 E2 */	stb r0, 0x4e2(r28)
/* 80464DD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80464DD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80464DDC  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 80464DE0  88 9C 04 8C */	lbz r4, 0x48c(r28)
/* 80464DE4  7C 84 07 74 */	extsb r4, r4
/* 80464DE8  4B BB F7 00 */	b checkRoomDisp__20dStage_roomControl_cCFi
/* 80464DEC  2C 03 00 00 */	cmpwi r3, 0
/* 80464DF0  40 82 00 0C */	bne lbl_80464DFC
/* 80464DF4  38 60 00 01 */	li r3, 1
/* 80464DF8  48 00 00 08 */	b lbl_80464E00
lbl_80464DFC:
/* 80464DFC  38 60 00 01 */	li r3, 1
lbl_80464E00:
/* 80464E00  39 61 00 20 */	addi r11, r1, 0x20
/* 80464E04  4B EF D4 20 */	b _restgpr_28
/* 80464E08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80464E0C  7C 08 03 A6 */	mtlr r0
/* 80464E10  38 21 00 20 */	addi r1, r1, 0x20
/* 80464E14  4E 80 00 20 */	blr 
