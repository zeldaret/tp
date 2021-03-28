lbl_8024C8CC:
/* 8024C8CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024C8D0  7C 08 02 A6 */	mflr r0
/* 8024C8D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024C8D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8024C8DC  7C 86 23 78 */	mr r6, r4
/* 8024C8E0  7C BF 2B 78 */	mr r31, r5
/* 8024C8E4  38 81 00 08 */	addi r4, r1, 8
/* 8024C8E8  38 A1 00 0A */	addi r5, r1, 0xa
/* 8024C8EC  38 C6 00 04 */	addi r6, r6, 4
/* 8024C8F0  4B FF E8 01 */	bl getParam__10dMsgFlow_cFPUsPUsPUc
/* 8024C8F4  38 80 FF FF */	li r4, -1
/* 8024C8F8  28 1F 00 00 */	cmplwi r31, 0
/* 8024C8FC  41 82 00 10 */	beq lbl_8024C90C
/* 8024C900  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8024C904  7C 00 07 74 */	extsb r0, r0
/* 8024C908  7C 04 03 78 */	mr r4, r0
lbl_8024C90C:
/* 8024C90C  A0 01 00 08 */	lhz r0, 8(r1)
/* 8024C910  2C 00 00 02 */	cmpwi r0, 2
/* 8024C914  41 82 00 54 */	beq lbl_8024C968
/* 8024C918  40 80 00 14 */	bge lbl_8024C92C
/* 8024C91C  2C 00 00 00 */	cmpwi r0, 0
/* 8024C920  41 82 00 18 */	beq lbl_8024C938
/* 8024C924  40 80 00 2C */	bge lbl_8024C950
/* 8024C928  48 00 00 54 */	b lbl_8024C97C
lbl_8024C92C:
/* 8024C92C  2C 00 00 04 */	cmpwi r0, 4
/* 8024C930  40 80 00 4C */	bge lbl_8024C97C
/* 8024C934  48 00 00 40 */	b lbl_8024C974
lbl_8024C938:
/* 8024C938  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024C93C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024C940  38 63 09 58 */	addi r3, r3, 0x958
/* 8024C944  A0 81 00 0A */	lhz r4, 0xa(r1)
/* 8024C948  4B DE 7E C9 */	bl onSwitch__12dSv_memBit_cFi
/* 8024C94C  48 00 00 30 */	b lbl_8024C97C
lbl_8024C950:
/* 8024C950  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024C954  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024C958  38 63 09 78 */	addi r3, r3, 0x978
/* 8024C95C  A0 81 00 0A */	lhz r4, 0xa(r1)
/* 8024C960  4B DE 82 39 */	bl onSwitch__12dSv_danBit_cFi
/* 8024C964  48 00 00 18 */	b lbl_8024C97C
lbl_8024C968:
/* 8024C968  A0 61 00 0A */	lhz r3, 0xa(r1)
/* 8024C96C  4B DE 0F E1 */	bl dComIfGs_onZoneSwitch__Fii
/* 8024C970  48 00 00 0C */	b lbl_8024C97C
lbl_8024C974:
/* 8024C974  A0 61 00 0A */	lhz r3, 0xa(r1)
/* 8024C978  4B DE 11 25 */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_8024C97C:
/* 8024C97C  38 60 00 01 */	li r3, 1
/* 8024C980  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8024C984  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024C988  7C 08 03 A6 */	mtlr r0
/* 8024C98C  38 21 00 20 */	addi r1, r1, 0x20
/* 8024C990  4E 80 00 20 */	blr 
