lbl_8025AE24:
/* 8025AE24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8025AE28  7C 08 02 A6 */	mflr r0
/* 8025AE2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8025AE30  39 61 00 30 */	addi r11, r1, 0x30
/* 8025AE34  48 10 73 99 */	bl _savegpr_25
/* 8025AE38  7C 79 1B 78 */	mr r25, r3
/* 8025AE3C  7C 9A 23 78 */	mr r26, r4
/* 8025AE40  83 CD 87 EC */	lwz r30, mArcBankName__20dStage_roomControl_c(r13)
/* 8025AE44  3B A0 00 00 */	li r29, 0
/* 8025AE48  38 00 00 00 */	li r0, 0
/* 8025AE4C  90 04 00 00 */	stw r0, 0(r4)
/* 8025AE50  28 1E 00 00 */	cmplwi r30, 0
/* 8025AE54  41 82 00 58 */	beq lbl_8025AEAC
/* 8025AE58  83 ED 87 F0 */	lwz r31, mArcBankData__20dStage_roomControl_c(r13)
/* 8025AE5C  3B 9F 00 01 */	addi r28, r31, 1
/* 8025AE60  3B 60 00 00 */	li r27, 0
/* 8025AE64  48 00 00 3C */	b lbl_8025AEA0
lbl_8025AE68:
/* 8025AE68  88 1C 00 00 */	lbz r0, 0(r28)
/* 8025AE6C  7C 00 C8 00 */	cmpw r0, r25
/* 8025AE70  40 82 00 28 */	bne lbl_8025AE98
/* 8025AE74  38 60 00 00 */	li r3, 0
/* 8025AE78  4B DD 1B 05 */	bl getLayerNo__14dComIfG_play_cFi
/* 8025AE7C  88 1C 00 01 */	lbz r0, 1(r28)
/* 8025AE80  7C 00 18 00 */	cmpw r0, r3
/* 8025AE84  40 82 00 14 */	bne lbl_8025AE98
/* 8025AE88  3B A0 00 20 */	li r29, 0x20
/* 8025AE8C  38 1C 00 02 */	addi r0, r28, 2
/* 8025AE90  90 1A 00 00 */	stw r0, 0(r26)
/* 8025AE94  48 00 00 18 */	b lbl_8025AEAC
lbl_8025AE98:
/* 8025AE98  3B 9C 00 22 */	addi r28, r28, 0x22
/* 8025AE9C  3B 7B 00 01 */	addi r27, r27, 1
lbl_8025AEA0:
/* 8025AEA0  88 1F 00 00 */	lbz r0, 0(r31)
/* 8025AEA4  7C 1B 00 00 */	cmpw r27, r0
/* 8025AEA8  41 80 FF C0 */	blt lbl_8025AE68
lbl_8025AEAC:
/* 8025AEAC  83 7A 00 00 */	lwz r27, 0(r26)
/* 8025AEB0  3B 80 00 00 */	li r28, 0
/* 8025AEB4  3C 60 80 3A */	lis r3, d_s_d_s_room__stringBase0@ha
/* 8025AEB8  3B E3 A3 88 */	addi r31, r3, d_s_d_s_room__stringBase0@l
/* 8025AEBC  48 00 00 44 */	b lbl_8025AF00
lbl_8025AEC0:
/* 8025AEC0  7F 83 E3 78 */	mr r3, r28
/* 8025AEC4  4B DC 9A 7D */	bl getArcBank__20dStage_roomControl_cFi
/* 8025AEC8  7F E4 FB 78 */	mr r4, r31
/* 8025AECC  88 1B 00 00 */	lbz r0, 0(r27)
/* 8025AED0  2C 00 00 FF */	cmpwi r0, 0xff
/* 8025AED4  41 82 00 10 */	beq lbl_8025AEE4
/* 8025AED8  1C 80 00 0A */	mulli r4, r0, 0xa
/* 8025AEDC  38 84 00 01 */	addi r4, r4, 1
/* 8025AEE0  7C 9E 22 14 */	add r4, r30, r4
lbl_8025AEE4:
/* 8025AEE4  48 10 DA B1 */	bl strcmp
/* 8025AEE8  2C 03 00 00 */	cmpwi r3, 0
/* 8025AEEC  41 82 00 0C */	beq lbl_8025AEF8
/* 8025AEF0  7F 83 E3 78 */	mr r3, r28
/* 8025AEF4  48 00 00 18 */	b lbl_8025AF0C
lbl_8025AEF8:
/* 8025AEF8  3B 7B 00 01 */	addi r27, r27, 1
/* 8025AEFC  3B 9C 00 01 */	addi r28, r28, 1
lbl_8025AF00:
/* 8025AF00  7C 1C E8 00 */	cmpw r28, r29
/* 8025AF04  41 80 FF BC */	blt lbl_8025AEC0
/* 8025AF08  7F A3 EB 78 */	mr r3, r29
lbl_8025AF0C:
/* 8025AF0C  39 61 00 30 */	addi r11, r1, 0x30
/* 8025AF10  48 10 73 09 */	bl _restgpr_25
/* 8025AF14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8025AF18  7C 08 03 A6 */	mtlr r0
/* 8025AF1C  38 21 00 30 */	addi r1, r1, 0x30
/* 8025AF20  4E 80 00 20 */	blr 
