lbl_804CDBC8:
/* 804CDBC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CDBCC  7C 08 02 A6 */	mflr r0
/* 804CDBD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CDBD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CDBD8  7C 7F 1B 78 */	mr r31, r3
/* 804CDBDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804CDBE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804CDBE4  38 80 00 FF */	li r4, 0xff
/* 804CDBE8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 804CDBEC  7C 05 07 74 */	extsb r5, r0
/* 804CDBF0  4B B6 77 71 */	bl isSwitch__10dSv_info_cCFii
/* 804CDBF4  2C 03 00 00 */	cmpwi r3, 0
/* 804CDBF8  41 82 00 1C */	beq lbl_804CDC14
/* 804CDBFC  38 7F 09 35 */	addi r3, r31, 0x935
/* 804CDC00  48 00 07 C1 */	bl func_804CE3C0
/* 804CDC04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804CDC08  40 82 00 0C */	bne lbl_804CDC14
/* 804CDC0C  7F E3 FB 78 */	mr r3, r31
/* 804CDC10  4B FF F9 A9 */	bl actionWaitInit__11daObjLife_cFv
lbl_804CDC14:
/* 804CDC14  38 60 00 01 */	li r3, 1
/* 804CDC18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CDC1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CDC20  7C 08 03 A6 */	mtlr r0
/* 804CDC24  38 21 00 10 */	addi r1, r1, 0x10
/* 804CDC28  4E 80 00 20 */	blr 
