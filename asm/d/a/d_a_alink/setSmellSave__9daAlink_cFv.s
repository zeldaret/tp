lbl_8013F90C:
/* 8013F90C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013F910  7C 08 02 A6 */	mflr r0
/* 8013F914  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013F918  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013F91C  7C 7F 1B 78 */	mr r31, r3
/* 8013F920  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013F924  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013F928  88 03 00 16 */	lbz r0, 0x16(r3)
/* 8013F92C  28 00 00 B5 */	cmplwi r0, 0xb5
/* 8013F930  40 82 00 10 */	bne lbl_8013F940
/* 8013F934  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8013F938  38 80 2F 04 */	li r4, 0x2f04
/* 8013F93C  4B EF 50 69 */	bl offEventBit__11dSv_event_cFUs
lbl_8013F940:
/* 8013F940  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 8013F944  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8013F948  48 0F 8A C9 */	bl setSmellType__12dMsgObject_cFUc
/* 8013F94C  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 8013F950  2C 00 00 B5 */	cmpwi r0, 0xb5
/* 8013F954  40 82 00 1C */	bne lbl_8013F970
/* 8013F958  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013F95C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013F960  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8013F964  38 80 2F 04 */	li r4, 0x2f04
/* 8013F968  4B EF 50 25 */	bl onEventBit__11dSv_event_cFUs
/* 8013F96C  48 00 00 88 */	b lbl_8013F9F4
lbl_8013F970:
/* 8013F970  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 8013F974  40 82 00 20 */	bne lbl_8013F994
/* 8013F978  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013F97C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013F980  38 80 00 66 */	li r4, 0x66
/* 8013F984  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8013F988  7C 05 07 74 */	extsb r5, r0
/* 8013F98C  4B EF 58 75 */	bl onSwitch__10dSv_info_cFii
/* 8013F990  48 00 00 64 */	b lbl_8013F9F4
lbl_8013F994:
/* 8013F994  2C 00 00 B0 */	cmpwi r0, 0xb0
/* 8013F998  40 82 00 20 */	bne lbl_8013F9B8
/* 8013F99C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013F9A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013F9A4  38 80 00 67 */	li r4, 0x67
/* 8013F9A8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8013F9AC  7C 05 07 74 */	extsb r5, r0
/* 8013F9B0  4B EF 58 51 */	bl onSwitch__10dSv_info_cFii
/* 8013F9B4  48 00 00 40 */	b lbl_8013F9F4
lbl_8013F9B8:
/* 8013F9B8  2C 00 00 B3 */	cmpwi r0, 0xb3
/* 8013F9BC  40 82 00 1C */	bne lbl_8013F9D8
/* 8013F9C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013F9C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013F9C8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8013F9CC  38 80 61 20 */	li r4, 0x6120
/* 8013F9D0  4B EF 4F BD */	bl onEventBit__11dSv_event_cFUs
/* 8013F9D4  48 00 00 20 */	b lbl_8013F9F4
lbl_8013F9D8:
/* 8013F9D8  2C 00 00 B2 */	cmpwi r0, 0xb2
/* 8013F9DC  40 82 00 18 */	bne lbl_8013F9F4
/* 8013F9E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013F9E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013F9E8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8013F9EC  38 80 62 10 */	li r4, 0x6210
/* 8013F9F0  4B EF 4F 9D */	bl onEventBit__11dSv_event_cFUs
lbl_8013F9F4:
/* 8013F9F4  7F E3 FB 78 */	mr r3, r31
/* 8013F9F8  A8 9F 30 12 */	lha r4, 0x3012(r31)
/* 8013F9FC  4B FD AC 8D */	bl setGetSubBgm__9daAlink_cFi
/* 8013FA00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013FA04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013FA08  7C 08 03 A6 */	mtlr r0
/* 8013FA0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8013FA10  4E 80 00 20 */	blr 
