lbl_8024C994:
/* 8024C994  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024C998  7C 08 02 A6 */	mflr r0
/* 8024C99C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024C9A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8024C9A4  7C 86 23 78 */	mr r6, r4
/* 8024C9A8  7C BF 2B 78 */	mr r31, r5
/* 8024C9AC  38 81 00 08 */	addi r4, r1, 8
/* 8024C9B0  38 A1 00 0A */	addi r5, r1, 0xa
/* 8024C9B4  38 C6 00 04 */	addi r6, r6, 4
/* 8024C9B8  4B FF E7 39 */	bl getParam__10dMsgFlow_cFPUsPUsPUc
/* 8024C9BC  38 80 FF FF */	li r4, -1
/* 8024C9C0  28 1F 00 00 */	cmplwi r31, 0
/* 8024C9C4  41 82 00 10 */	beq lbl_8024C9D4
/* 8024C9C8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8024C9CC  7C 00 07 74 */	extsb r0, r0
/* 8024C9D0  7C 04 03 78 */	mr r4, r0
lbl_8024C9D4:
/* 8024C9D4  A0 01 00 08 */	lhz r0, 8(r1)
/* 8024C9D8  2C 00 00 02 */	cmpwi r0, 2
/* 8024C9DC  41 82 00 54 */	beq lbl_8024CA30
/* 8024C9E0  40 80 00 14 */	bge lbl_8024C9F4
/* 8024C9E4  2C 00 00 00 */	cmpwi r0, 0
/* 8024C9E8  41 82 00 18 */	beq lbl_8024CA00
/* 8024C9EC  40 80 00 2C */	bge lbl_8024CA18
/* 8024C9F0  48 00 00 54 */	b lbl_8024CA44
lbl_8024C9F4:
/* 8024C9F4  2C 00 00 04 */	cmpwi r0, 4
/* 8024C9F8  40 80 00 4C */	bge lbl_8024CA44
/* 8024C9FC  48 00 00 40 */	b lbl_8024CA3C
lbl_8024CA00:
/* 8024CA00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024CA04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024CA08  38 63 09 58 */	addi r3, r3, 0x958
/* 8024CA0C  A0 81 00 0A */	lhz r4, 0xa(r1)
/* 8024CA10  4B DE 7E 29 */	bl offSwitch__12dSv_memBit_cFi
/* 8024CA14  48 00 00 30 */	b lbl_8024CA44
lbl_8024CA18:
/* 8024CA18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024CA1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024CA20  38 63 09 78 */	addi r3, r3, 0x978
/* 8024CA24  A0 81 00 0A */	lhz r4, 0xa(r1)
/* 8024CA28  4B DE 81 99 */	bl offSwitch__12dSv_danBit_cFi
/* 8024CA2C  48 00 00 18 */	b lbl_8024CA44
lbl_8024CA30:
/* 8024CA30  A0 61 00 0A */	lhz r3, 0xa(r1)
/* 8024CA34  4B DE 0F 99 */	bl dComIfGs_offZoneSwitch__Fii
/* 8024CA38  48 00 00 0C */	b lbl_8024CA44
lbl_8024CA3C:
/* 8024CA3C  A0 61 00 0A */	lhz r3, 0xa(r1)
/* 8024CA40  4B DE 10 C1 */	bl dComIfGs_offOneZoneSwitch__Fii
lbl_8024CA44:
/* 8024CA44  38 60 00 01 */	li r3, 1
/* 8024CA48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8024CA4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024CA50  7C 08 03 A6 */	mtlr r0
/* 8024CA54  38 21 00 20 */	addi r1, r1, 0x20
/* 8024CA58  4E 80 00 20 */	blr 
