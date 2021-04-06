lbl_8048B5FC:
/* 8048B5FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048B600  7C 08 02 A6 */	mflr r0
/* 8048B604  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048B608  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048B60C  7C 7F 1B 78 */	mr r31, r3
/* 8048B610  4B FF F7 65 */	bl getSwbit__13daTag_Event_cFv
/* 8048B614  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8048B618  2C 04 00 FF */	cmpwi r4, 0xff
/* 8048B61C  41 82 00 2C */	beq lbl_8048B648
/* 8048B620  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048B624  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048B628  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8048B62C  7C 05 07 74 */	extsb r5, r0
/* 8048B630  4B BA 9D 31 */	bl isSwitch__10dSv_info_cCFii
/* 8048B634  2C 03 00 00 */	cmpwi r3, 0
/* 8048B638  41 82 00 10 */	beq lbl_8048B648
/* 8048B63C  38 00 00 00 */	li r0, 0
/* 8048B640  98 1F 05 72 */	stb r0, 0x572(r31)
/* 8048B644  48 00 00 78 */	b lbl_8048B6BC
lbl_8048B648:
/* 8048B648  7F E3 FB 78 */	mr r3, r31
/* 8048B64C  4B FF F7 A1 */	bl arrivalTerms__13daTag_Event_cFv
/* 8048B650  2C 03 00 00 */	cmpwi r3, 0
/* 8048B654  41 82 00 60 */	beq lbl_8048B6B4
/* 8048B658  88 7F 05 73 */	lbz r3, 0x573(r31)
/* 8048B65C  4B FF F6 DD */	bl daTag_getBk__FUl
/* 8048B660  28 03 00 00 */	cmplwi r3, 0
/* 8048B664  40 82 00 50 */	bne lbl_8048B6B4
/* 8048B668  A8 7F 05 70 */	lha r3, 0x570(r31)
/* 8048B66C  2C 03 00 00 */	cmpwi r3, 0
/* 8048B670  40 81 00 10 */	ble lbl_8048B680
/* 8048B674  38 03 FF FF */	addi r0, r3, -1
/* 8048B678  B0 1F 05 70 */	sth r0, 0x570(r31)
/* 8048B67C  48 00 00 40 */	b lbl_8048B6BC
lbl_8048B680:
/* 8048B680  38 00 00 04 */	li r0, 4
/* 8048B684  98 1F 05 72 */	stb r0, 0x572(r31)
/* 8048B688  7F E3 FB 78 */	mr r3, r31
/* 8048B68C  4B FF F6 DD */	bl getEventNo__13daTag_Event_cFv
/* 8048B690  7C 65 1B 78 */	mr r5, r3
/* 8048B694  7F E3 FB 78 */	mr r3, r31
/* 8048B698  A8 9F 05 68 */	lha r4, 0x568(r31)
/* 8048B69C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8048B6A0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8048B6A4  38 E0 00 00 */	li r7, 0
/* 8048B6A8  39 00 00 01 */	li r8, 1
/* 8048B6AC  4B B8 FF D1 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8048B6B0  48 00 00 0C */	b lbl_8048B6BC
lbl_8048B6B4:
/* 8048B6B4  38 00 00 41 */	li r0, 0x41
/* 8048B6B8  B0 1F 05 70 */	sth r0, 0x570(r31)
lbl_8048B6BC:
/* 8048B6BC  38 60 00 01 */	li r3, 1
/* 8048B6C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048B6C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048B6C8  7C 08 03 A6 */	mtlr r0
/* 8048B6CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8048B6D0  4E 80 00 20 */	blr 
