lbl_804D6024:
/* 804D6024  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D6028  7C 08 02 A6 */	mflr r0
/* 804D602C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D6030  39 61 00 20 */	addi r11, r1, 0x20
/* 804D6034  4B E8 C1 A1 */	bl _savegpr_27
/* 804D6038  7C 7B 1B 78 */	mr r27, r3
/* 804D603C  4B FF FE 05 */	bl getTopSw__10daAndsw2_cFv
/* 804D6040  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 804D6044  7F 63 DB 78 */	mr r3, r27
/* 804D6048  4B FF FD ED */	bl getNum__10daAndsw2_cFv
/* 804D604C  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 804D6050  2C 1D 00 FF */	cmpwi r29, 0xff
/* 804D6054  41 82 00 14 */	beq lbl_804D6068
/* 804D6058  2C 1D 00 00 */	cmpwi r29, 0
/* 804D605C  41 82 00 0C */	beq lbl_804D6068
/* 804D6060  2C 1E 00 FF */	cmpwi r30, 0xff
/* 804D6064  40 82 00 0C */	bne lbl_804D6070
lbl_804D6068:
/* 804D6068  38 60 00 00 */	li r3, 0
/* 804D606C  48 00 00 48 */	b lbl_804D60B4
lbl_804D6070:
/* 804D6070  3B 80 00 00 */	li r28, 0
/* 804D6074  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D6078  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D607C  48 00 00 2C */	b lbl_804D60A8
lbl_804D6080:
/* 804D6080  7F E3 FB 78 */	mr r3, r31
/* 804D6084  7C 9E E2 14 */	add r4, r30, r28
/* 804D6088  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 804D608C  7C 05 07 74 */	extsb r5, r0
/* 804D6090  4B B5 F2 D1 */	bl isSwitch__10dSv_info_cCFii
/* 804D6094  2C 03 00 00 */	cmpwi r3, 0
/* 804D6098  41 82 00 0C */	beq lbl_804D60A4
/* 804D609C  38 60 00 01 */	li r3, 1
/* 804D60A0  48 00 00 14 */	b lbl_804D60B4
lbl_804D60A4:
/* 804D60A4  3B 9C 00 01 */	addi r28, r28, 1
lbl_804D60A8:
/* 804D60A8  7C 1C E8 00 */	cmpw r28, r29
/* 804D60AC  41 80 FF D4 */	blt lbl_804D6080
/* 804D60B0  38 60 00 00 */	li r3, 0
lbl_804D60B4:
/* 804D60B4  39 61 00 20 */	addi r11, r1, 0x20
/* 804D60B8  4B E8 C1 69 */	bl _restgpr_27
/* 804D60BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D60C0  7C 08 03 A6 */	mtlr r0
/* 804D60C4  38 21 00 20 */	addi r1, r1, 0x20
/* 804D60C8  4E 80 00 20 */	blr 
