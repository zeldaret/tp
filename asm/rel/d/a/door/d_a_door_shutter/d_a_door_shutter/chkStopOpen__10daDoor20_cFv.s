lbl_80465F20:
/* 80465F20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80465F24  7C 08 02 A6 */	mflr r0
/* 80465F28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80465F2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80465F30  4B EF C2 A4 */	b _savegpr_27
/* 80465F34  7C 7F 1B 78 */	mr r31, r3
/* 80465F38  4B BD 42 68 */	b getFrontOption__13door_param2_cFP10fopAc_ac_c
/* 80465F3C  7C 7D 1B 78 */	mr r29, r3
/* 80465F40  7F E3 FB 78 */	mr r3, r31
/* 80465F44  4B BD 42 68 */	b getBackOption__13door_param2_cFP10fopAc_ac_c
/* 80465F48  7C 7E 1B 78 */	mr r30, r3
/* 80465F4C  88 1F 06 8C */	lbz r0, 0x68c(r31)
/* 80465F50  28 00 00 00 */	cmplwi r0, 0
/* 80465F54  40 82 00 20 */	bne lbl_80465F74
/* 80465F58  7F E3 FB 78 */	mr r3, r31
/* 80465F5C  4B BD 42 74 */	b getSwbit__13door_param2_cFP10fopAc_ac_c
/* 80465F60  7C 7C 1B 78 */	mr r28, r3
/* 80465F64  7F E3 FB 78 */	mr r3, r31
/* 80465F68  4B BD 42 50 */	b getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80465F6C  7C 7B 1B 78 */	mr r27, r3
/* 80465F70  48 00 00 1C */	b lbl_80465F8C
lbl_80465F74:
/* 80465F74  7F E3 FB 78 */	mr r3, r31
/* 80465F78  4B BD 42 64 */	b getSwbit2__13door_param2_cFP10fopAc_ac_c
/* 80465F7C  7C 7C 1B 78 */	mr r28, r3
/* 80465F80  7F E3 FB 78 */	mr r3, r31
/* 80465F84  4B BD 42 40 */	b getBRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80465F88  7C 7B 1B 78 */	mr r27, r3
lbl_80465F8C:
/* 80465F8C  88 7F 06 8C */	lbz r3, 0x68c(r31)
/* 80465F90  28 03 00 00 */	cmplwi r3, 0
/* 80465F94  40 82 00 10 */	bne lbl_80465FA4
/* 80465F98  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80465F9C  28 00 00 03 */	cmplwi r0, 3
/* 80465FA0  41 82 00 18 */	beq lbl_80465FB8
lbl_80465FA4:
/* 80465FA4  28 03 00 01 */	cmplwi r3, 1
/* 80465FA8  40 82 00 AC */	bne lbl_80466054
/* 80465FAC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80465FB0  28 00 00 03 */	cmplwi r0, 3
/* 80465FB4  40 82 00 A0 */	bne lbl_80466054
lbl_80465FB8:
/* 80465FB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80465FBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80465FC0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80465FC4  28 00 00 00 */	cmplwi r0, 0
/* 80465FC8  41 82 00 10 */	beq lbl_80465FD8
/* 80465FCC  88 1F 06 8D */	lbz r0, 0x68d(r31)
/* 80465FD0  28 00 00 00 */	cmplwi r0, 0
/* 80465FD4  40 82 00 AC */	bne lbl_80466080
lbl_80465FD8:
/* 80465FD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80465FDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80465FE0  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 80465FE4  57 7D 06 3E */	clrlwi r29, r27, 0x18
/* 80465FE8  7F A4 EB 78 */	mr r4, r29
/* 80465FEC  4B BB E4 FC */	b checkRoomDisp__20dStage_roomControl_cCFi
/* 80465FF0  2C 03 00 00 */	cmpwi r3, 0
/* 80465FF4  41 82 00 54 */	beq lbl_80466048
/* 80465FF8  7F 63 07 74 */	extsb r3, r27
/* 80465FFC  4B BB 6A 20 */	b fopAcM_myRoomSearchEnemy__FSc
/* 80466000  28 03 00 00 */	cmplwi r3, 0
/* 80466004  40 82 00 44 */	bne lbl_80466048
/* 80466008  88 7F 06 8D */	lbz r3, 0x68d(r31)
/* 8046600C  28 03 00 00 */	cmplwi r3, 0
/* 80466010  41 82 00 14 */	beq lbl_80466024
/* 80466014  38 03 FF FF */	addi r0, r3, -1
/* 80466018  98 1F 06 8D */	stb r0, 0x68d(r31)
/* 8046601C  38 60 00 00 */	li r3, 0
/* 80466020  48 00 00 64 */	b lbl_80466084
lbl_80466024:
/* 80466024  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 80466028  28 04 00 FF */	cmplwi r4, 0xff
/* 8046602C  41 82 00 14 */	beq lbl_80466040
/* 80466030  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80466034  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80466038  7F A5 EB 78 */	mr r5, r29
/* 8046603C  4B BC F1 C4 */	b onSwitch__10dSv_info_cFii
lbl_80466040:
/* 80466040  38 60 00 01 */	li r3, 1
/* 80466044  48 00 00 40 */	b lbl_80466084
lbl_80466048:
/* 80466048  38 00 00 41 */	li r0, 0x41
/* 8046604C  98 1F 06 8D */	stb r0, 0x68d(r31)
/* 80466050  48 00 00 30 */	b lbl_80466080
lbl_80466054:
/* 80466054  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 80466058  28 04 00 FF */	cmplwi r4, 0xff
/* 8046605C  41 82 00 24 */	beq lbl_80466080
/* 80466060  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80466064  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80466068  57 65 06 3E */	clrlwi r5, r27, 0x18
/* 8046606C  4B BC F2 F4 */	b isSwitch__10dSv_info_cCFii
/* 80466070  2C 03 00 00 */	cmpwi r3, 0
/* 80466074  41 82 00 0C */	beq lbl_80466080
/* 80466078  38 60 00 01 */	li r3, 1
/* 8046607C  48 00 00 08 */	b lbl_80466084
lbl_80466080:
/* 80466080  38 60 00 00 */	li r3, 0
lbl_80466084:
/* 80466084  39 61 00 20 */	addi r11, r1, 0x20
/* 80466088  4B EF C1 98 */	b _restgpr_27
/* 8046608C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80466090  7C 08 03 A6 */	mtlr r0
/* 80466094  38 21 00 20 */	addi r1, r1, 0x20
/* 80466098  4E 80 00 20 */	blr 
