lbl_8048B514:
/* 8048B514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048B518  7C 08 02 A6 */	mflr r0
/* 8048B51C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048B520  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048B524  7C 7F 1B 78 */	mr r31, r3
/* 8048B528  4B FF F8 4D */	bl getSwbit__13daTag_Event_cFv
/* 8048B52C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8048B530  2C 04 00 FF */	cmpwi r4, 0xff
/* 8048B534  41 82 00 2C */	beq lbl_8048B560
/* 8048B538  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048B53C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048B540  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8048B544  7C 05 07 74 */	extsb r5, r0
/* 8048B548  4B BA 9E 19 */	bl isSwitch__10dSv_info_cCFii
/* 8048B54C  2C 03 00 00 */	cmpwi r3, 0
/* 8048B550  41 82 00 10 */	beq lbl_8048B560
/* 8048B554  38 00 00 00 */	li r0, 0
/* 8048B558  98 1F 05 72 */	stb r0, 0x572(r31)
/* 8048B55C  48 00 00 54 */	b lbl_8048B5B0
lbl_8048B560:
/* 8048B560  7F E3 FB 78 */	mr r3, r31
/* 8048B564  4B FF F8 89 */	bl arrivalTerms__13daTag_Event_cFv
/* 8048B568  2C 03 00 00 */	cmpwi r3, 0
/* 8048B56C  41 82 00 44 */	beq lbl_8048B5B0
/* 8048B570  7F E3 FB 78 */	mr r3, r31
/* 8048B574  4B FF FE 05 */	bl checkArea__13daTag_Event_cFv
/* 8048B578  2C 03 00 00 */	cmpwi r3, 0
/* 8048B57C  41 82 00 34 */	beq lbl_8048B5B0
/* 8048B580  38 00 00 04 */	li r0, 4
/* 8048B584  98 1F 05 72 */	stb r0, 0x572(r31)
/* 8048B588  7F E3 FB 78 */	mr r3, r31
/* 8048B58C  4B FF F7 DD */	bl getEventNo__13daTag_Event_cFv
/* 8048B590  7C 65 1B 78 */	mr r5, r3
/* 8048B594  7F E3 FB 78 */	mr r3, r31
/* 8048B598  A8 9F 05 68 */	lha r4, 0x568(r31)
/* 8048B59C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8048B5A0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8048B5A4  38 E0 00 00 */	li r7, 0
/* 8048B5A8  39 00 00 01 */	li r8, 1
/* 8048B5AC  4B B9 00 D1 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_8048B5B0:
/* 8048B5B0  38 60 00 01 */	li r3, 1
/* 8048B5B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048B5B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048B5BC  7C 08 03 A6 */	mtlr r0
/* 8048B5C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048B5C4  4E 80 00 20 */	blr 
