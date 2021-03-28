lbl_80465CC0:
/* 80465CC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80465CC4  7C 08 02 A6 */	mflr r0
/* 80465CC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80465CCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80465CD0  4B EF C5 08 */	b _savegpr_28
/* 80465CD4  7C 7C 1B 78 */	mr r28, r3
/* 80465CD8  4B BD 44 C8 */	b getFrontOption__13door_param2_cFP10fopAc_ac_c
/* 80465CDC  7C 7D 1B 78 */	mr r29, r3
/* 80465CE0  7F 83 E3 78 */	mr r3, r28
/* 80465CE4  4B BD 44 C8 */	b getBackOption__13door_param2_cFP10fopAc_ac_c
/* 80465CE8  7C 7E 1B 78 */	mr r30, r3
/* 80465CEC  7F 83 E3 78 */	mr r3, r28
/* 80465CF0  4B BD 45 04 */	b isMsgDoor__13door_param2_cFP10fopAc_ac_c
/* 80465CF4  7C 7F 1B 78 */	mr r31, r3
/* 80465CF8  88 1C 06 8C */	lbz r0, 0x68c(r28)
/* 80465CFC  28 00 00 00 */	cmplwi r0, 0
/* 80465D00  40 82 00 4C */	bne lbl_80465D4C
/* 80465D04  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80465D08  28 00 00 03 */	cmplwi r0, 3
/* 80465D0C  41 82 00 0C */	beq lbl_80465D18
/* 80465D10  28 00 00 01 */	cmplwi r0, 1
/* 80465D14  40 82 00 7C */	bne lbl_80465D90
lbl_80465D18:
/* 80465D18  7F 83 E3 78 */	mr r3, r28
/* 80465D1C  4B BD 44 E4 */	b getEventNo__13door_param2_cFP10fopAc_ac_c
/* 80465D20  2C 1F 00 00 */	cmpwi r31, 0
/* 80465D24  40 82 00 1C */	bne lbl_80465D40
/* 80465D28  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80465D2C  28 00 00 FF */	cmplwi r0, 0xff
/* 80465D30  41 82 00 10 */	beq lbl_80465D40
/* 80465D34  38 00 00 02 */	li r0, 2
/* 80465D38  98 1C 06 CB */	stb r0, 0x6cb(r28)
/* 80465D3C  48 00 00 54 */	b lbl_80465D90
lbl_80465D40:
/* 80465D40  38 00 00 00 */	li r0, 0
/* 80465D44  98 1C 06 CB */	stb r0, 0x6cb(r28)
/* 80465D48  48 00 00 48 */	b lbl_80465D90
lbl_80465D4C:
/* 80465D4C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80465D50  28 00 00 03 */	cmplwi r0, 3
/* 80465D54  41 82 00 0C */	beq lbl_80465D60
/* 80465D58  28 00 00 01 */	cmplwi r0, 1
/* 80465D5C  40 82 00 34 */	bne lbl_80465D90
lbl_80465D60:
/* 80465D60  7F 83 E3 78 */	mr r3, r28
/* 80465D64  4B BD 44 A8 */	b getEventNo2__13door_param2_cFP10fopAc_ac_c
/* 80465D68  2C 1F 00 00 */	cmpwi r31, 0
/* 80465D6C  40 82 00 1C */	bne lbl_80465D88
/* 80465D70  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80465D74  28 00 00 FF */	cmplwi r0, 0xff
/* 80465D78  41 82 00 10 */	beq lbl_80465D88
/* 80465D7C  38 00 00 03 */	li r0, 3
/* 80465D80  98 1C 06 CB */	stb r0, 0x6cb(r28)
/* 80465D84  48 00 00 0C */	b lbl_80465D90
lbl_80465D88:
/* 80465D88  38 00 00 01 */	li r0, 1
/* 80465D8C  98 1C 06 CB */	stb r0, 0x6cb(r28)
lbl_80465D90:
/* 80465D90  39 61 00 20 */	addi r11, r1, 0x20
/* 80465D94  4B EF C4 90 */	b _restgpr_28
/* 80465D98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80465D9C  7C 08 03 A6 */	mtlr r0
/* 80465DA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80465DA4  4E 80 00 20 */	blr 
