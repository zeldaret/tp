lbl_80463FBC:
/* 80463FBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80463FC0  7C 08 02 A6 */	mflr r0
/* 80463FC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80463FC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80463FCC  7C 7F 1B 78 */	mr r31, r3
/* 80463FD0  A0 83 00 F8 */	lhz r4, 0xf8(r3)
/* 80463FD4  28 04 00 03 */	cmplwi r4, 3
/* 80463FD8  40 82 00 20 */	bne lbl_80463FF8
/* 80463FDC  38 80 00 01 */	li r4, 1
/* 80463FE0  48 00 14 21 */	bl initOpenDemo__10daDoor20_cFi
/* 80463FE4  38 00 00 03 */	li r0, 3
/* 80463FE8  98 1F 06 90 */	stb r0, 0x690(r31)
/* 80463FEC  7F E3 FB 78 */	mr r3, r31
/* 80463FF0  4B FF EF F1 */	bl demoProc__10daDoor20_cFv
/* 80463FF4  48 00 01 0C */	b lbl_80464100
lbl_80463FF8:
/* 80463FF8  88 1F 06 D8 */	lbz r0, 0x6d8(r31)
/* 80463FFC  28 00 00 00 */	cmplwi r0, 0
/* 80464000  41 82 00 98 */	beq lbl_80464098
/* 80464004  28 04 00 02 */	cmplwi r4, 2
/* 80464008  40 82 00 64 */	bne lbl_8046406C
/* 8046400C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80464010  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80464014  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80464018  3C 80 80 46 */	lis r4, struct_804668D8+0x0@ha
/* 8046401C  38 84 68 D8 */	addi r4, r4, struct_804668D8+0x0@l
/* 80464020  38 84 01 59 */	addi r4, r4, 0x159
/* 80464024  38 A0 00 00 */	li r5, 0
/* 80464028  38 C0 00 00 */	li r6, 0
/* 8046402C  4B BE 3A F0 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80464030  90 7F 06 CC */	stw r3, 0x6cc(r31)
/* 80464034  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80464038  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8046403C  88 1F 06 8C */	lbz r0, 0x68c(r31)
/* 80464040  28 00 00 01 */	cmplwi r0, 1
/* 80464044  40 82 00 10 */	bne lbl_80464054
/* 80464048  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8046404C  38 03 7F FF */	addi r0, r3, 0x7fff
/* 80464050  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_80464054:
/* 80464054  38 00 00 03 */	li r0, 3
/* 80464058  98 1F 06 90 */	stb r0, 0x690(r31)
/* 8046405C  7F E3 FB 78 */	mr r3, r31
/* 80464060  4B FF EF 81 */	bl demoProc__10daDoor20_cFv
/* 80464064  38 60 00 01 */	li r3, 1
/* 80464068  48 00 00 9C */	b lbl_80464104
lbl_8046406C:
/* 8046406C  48 00 1E B5 */	bl chkStopOpen__10daDoor20_cFv
/* 80464070  2C 03 00 00 */	cmpwi r3, 0
/* 80464074  41 82 00 24 */	beq lbl_80464098
/* 80464078  7F E3 FB 78 */	mr r3, r31
/* 8046407C  48 00 1C 45 */	bl setStopDemo__10daDoor20_cFv
/* 80464080  7F E3 FB 78 */	mr r3, r31
/* 80464084  4B FF FD AD */	bl orderStopEvent__10daDoor20_cFv
/* 80464088  2C 03 00 00 */	cmpwi r3, 0
/* 8046408C  41 82 00 0C */	beq lbl_80464098
/* 80464090  38 60 00 01 */	li r3, 1
/* 80464094  48 00 00 70 */	b lbl_80464104
lbl_80464098:
/* 80464098  88 1F 06 D8 */	lbz r0, 0x6d8(r31)
/* 8046409C  28 00 00 00 */	cmplwi r0, 0
/* 804640A0  40 82 00 44 */	bne lbl_804640E4
/* 804640A4  7F E3 FB 78 */	mr r3, r31
/* 804640A8  48 00 1D 01 */	bl chkStopClose__10daDoor20_cFv
/* 804640AC  2C 03 00 00 */	cmpwi r3, 0
/* 804640B0  41 82 00 34 */	beq lbl_804640E4
/* 804640B4  38 00 00 01 */	li r0, 1
/* 804640B8  98 1F 06 D8 */	stb r0, 0x6d8(r31)
/* 804640BC  38 7F 06 D0 */	addi r3, r31, 0x6d0
/* 804640C0  7F E4 FB 78 */	mr r4, r31
/* 804640C4  48 00 20 ED */	bl closeInit__12dDoor_stop_cFP10daDoor20_c
/* 804640C8  38 7F 06 D0 */	addi r3, r31, 0x6d0
/* 804640CC  7F E4 FB 78 */	mr r4, r31
/* 804640D0  48 00 20 25 */	bl calcMtx__12dDoor_stop_cFP10daDoor20_c
/* 804640D4  38 00 00 02 */	li r0, 2
/* 804640D8  98 1F 06 90 */	stb r0, 0x690(r31)
/* 804640DC  38 60 00 01 */	li r3, 1
/* 804640E0  48 00 00 24 */	b lbl_80464104
lbl_804640E4:
/* 804640E4  88 1F 06 D8 */	lbz r0, 0x6d8(r31)
/* 804640E8  28 00 00 00 */	cmplwi r0, 0
/* 804640EC  40 82 00 14 */	bne lbl_80464100
/* 804640F0  7F E3 FB 78 */	mr r3, r31
/* 804640F4  48 00 0E 71 */	bl makeEventId__10daDoor20_cFv
/* 804640F8  7F E3 FB 78 */	mr r3, r31
/* 804640FC  4B FF D1 A1 */	bl setEventPrm__10daDoor20_cFv
lbl_80464100:
/* 80464100  38 60 00 01 */	li r3, 1
lbl_80464104:
/* 80464104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80464108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046410C  7C 08 03 A6 */	mtlr r0
/* 80464110  38 21 00 10 */	addi r1, r1, 0x10
/* 80464114  4E 80 00 20 */	blr 
