lbl_8025D538:
/* 8025D538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025D53C  7C 08 02 A6 */	mflr r0
/* 8025D540  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025D544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025D548  93 C1 00 08 */	stw r30, 8(r1)
/* 8025D54C  7C 7E 1B 78 */	mr r30, r3
/* 8025D550  7C 9F 23 78 */	mr r31, r4
/* 8025D554  88 03 01 6C */	lbz r0, 0x16c(r3)
/* 8025D558  28 00 00 00 */	cmplwi r0, 0
/* 8025D55C  41 82 00 0C */	beq lbl_8025D568
/* 8025D560  28 00 00 01 */	cmplwi r0, 1
/* 8025D564  40 82 00 98 */	bne lbl_8025D5FC
lbl_8025D568:
/* 8025D568  38 00 00 04 */	li r0, 4
/* 8025D56C  98 1E 01 6C */	stb r0, 0x16c(r30)
/* 8025D570  4B DD 52 95 */	bl getTime__11dLib_time_cFv
/* 8025D574  90 9E 01 14 */	stw r4, 0x114(r30)
/* 8025D578  90 7E 01 10 */	stw r3, 0x110(r30)
/* 8025D57C  90 9E 01 1C */	stw r4, 0x11c(r30)
/* 8025D580  90 7E 01 18 */	stw r3, 0x118(r30)
/* 8025D584  38 1F FF FD */	addi r0, r31, -3
/* 8025D588  28 00 00 01 */	cmplwi r0, 1
/* 8025D58C  40 81 00 14 */	ble lbl_8025D5A0
/* 8025D590  2C 1F 00 06 */	cmpwi r31, 6
/* 8025D594  41 82 00 0C */	beq lbl_8025D5A0
/* 8025D598  2C 1F 00 05 */	cmpwi r31, 5
/* 8025D59C  40 82 00 58 */	bne lbl_8025D5F4
lbl_8025D5A0:
/* 8025D5A0  7F C3 F3 78 */	mr r3, r30
/* 8025D5A4  38 80 00 03 */	li r4, 3
/* 8025D5A8  48 00 02 41 */	bl stop__8dTimer_cFUc
/* 8025D5AC  2C 1F 00 03 */	cmpwi r31, 3
/* 8025D5B0  41 82 00 2C */	beq lbl_8025D5DC
/* 8025D5B4  80 7E 00 FC */	lwz r3, 0xfc(r30)
/* 8025D5B8  38 80 05 15 */	li r4, 0x515
/* 8025D5BC  48 00 2F B9 */	bl createStart__21dDlst_TimerScrnDraw_cFUs
/* 8025D5C0  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8025D5C4  38 83 EB C8 */	addi r4, r3, g_drawHIO@l
/* 8025D5C8  A8 64 0B E8 */	lha r3, 0xbe8(r4)
/* 8025D5CC  A8 04 0B EA */	lha r0, 0xbea(r4)
/* 8025D5D0  7C 03 02 14 */	add r0, r3, r0
/* 8025D5D4  B0 1E 01 68 */	sth r0, 0x168(r30)
/* 8025D5D8  48 00 00 14 */	b lbl_8025D5EC
lbl_8025D5DC:
/* 8025D5DC  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8025D5E0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8025D5E4  A8 03 0B EA */	lha r0, 0xbea(r3)
/* 8025D5E8  B0 1E 01 68 */	sth r0, 0x168(r30)
lbl_8025D5EC:
/* 8025D5EC  38 00 00 01 */	li r0, 1
/* 8025D5F0  98 1E 01 6E */	stb r0, 0x16e(r30)
lbl_8025D5F4:
/* 8025D5F4  38 60 00 01 */	li r3, 1
/* 8025D5F8  48 00 00 08 */	b lbl_8025D600
lbl_8025D5FC:
/* 8025D5FC  38 60 00 00 */	li r3, 0
lbl_8025D600:
/* 8025D600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025D604  83 C1 00 08 */	lwz r30, 8(r1)
/* 8025D608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025D60C  7C 08 03 A6 */	mtlr r0
/* 8025D610  38 21 00 10 */	addi r1, r1, 0x10
/* 8025D614  4E 80 00 20 */	blr 
