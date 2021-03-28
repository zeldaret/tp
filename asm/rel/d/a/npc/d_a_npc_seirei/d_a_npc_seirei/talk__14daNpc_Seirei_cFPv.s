lbl_80AD6D30:
/* 80AD6D30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD6D34  7C 08 02 A6 */	mflr r0
/* 80AD6D38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD6D3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AD6D40  7C 7F 1B 78 */	mr r31, r3
/* 80AD6D44  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AD6D48  2C 00 00 02 */	cmpwi r0, 2
/* 80AD6D4C  41 82 00 2C */	beq lbl_80AD6D78
/* 80AD6D50  40 80 00 F4 */	bge lbl_80AD6E44
/* 80AD6D54  2C 00 00 00 */	cmpwi r0, 0
/* 80AD6D58  40 80 00 0C */	bge lbl_80AD6D64
/* 80AD6D5C  48 00 00 E8 */	b lbl_80AD6E44
/* 80AD6D60  48 00 00 E4 */	b lbl_80AD6E44
lbl_80AD6D64:
/* 80AD6D64  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80AD6D68  38 A0 00 00 */	li r5, 0
/* 80AD6D6C  4B 67 4E 84 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80AD6D70  38 00 00 02 */	li r0, 2
/* 80AD6D74  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AD6D78:
/* 80AD6D78  7F E3 FB 78 */	mr r3, r31
/* 80AD6D7C  38 80 00 00 */	li r4, 0
/* 80AD6D80  38 A0 00 00 */	li r5, 0
/* 80AD6D84  38 C0 00 00 */	li r6, 0
/* 80AD6D88  38 E0 00 00 */	li r7, 0
/* 80AD6D8C  4B 67 4E EC */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80AD6D90  2C 03 00 00 */	cmpwi r3, 0
/* 80AD6D94  41 82 00 A8 */	beq lbl_80AD6E3C
/* 80AD6D98  38 7F 09 74 */	addi r3, r31, 0x974
/* 80AD6D9C  38 81 00 08 */	addi r4, r1, 8
/* 80AD6DA0  4B 77 37 88 */	b getEventId__10dMsgFlow_cFPi
/* 80AD6DA4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80AD6DA8  2C 00 00 01 */	cmpwi r0, 1
/* 80AD6DAC  40 82 00 64 */	bne lbl_80AD6E10
/* 80AD6DB0  80 7F 0D 90 */	lwz r3, 0xd90(r31)
/* 80AD6DB4  3C 03 00 01 */	addis r0, r3, 1
/* 80AD6DB8  28 00 FF FF */	cmplwi r0, 0xffff
/* 80AD6DBC  40 82 00 28 */	bne lbl_80AD6DE4
/* 80AD6DC0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80AD6DC4  80 81 00 08 */	lwz r4, 8(r1)
/* 80AD6DC8  38 A0 00 00 */	li r5, 0
/* 80AD6DCC  38 C0 FF FF */	li r6, -1
/* 80AD6DD0  38 E0 FF FF */	li r7, -1
/* 80AD6DD4  39 00 00 00 */	li r8, 0
/* 80AD6DD8  39 20 00 00 */	li r9, 0
/* 80AD6DDC  4B 54 4E 0C */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80AD6DE0  90 7F 0D 90 */	stw r3, 0xd90(r31)
lbl_80AD6DE4:
/* 80AD6DE4  80 7F 0D 90 */	lwz r3, 0xd90(r31)
/* 80AD6DE8  4B 54 A5 B4 */	b fpcEx_IsExist__FUi
/* 80AD6DEC  2C 03 00 00 */	cmpwi r3, 0
/* 80AD6DF0  41 82 00 4C */	beq lbl_80AD6E3C
/* 80AD6DF4  38 00 00 01 */	li r0, 1
/* 80AD6DF8  98 1F 0E 80 */	stb r0, 0xe80(r31)
/* 80AD6DFC  38 00 00 02 */	li r0, 2
/* 80AD6E00  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AD6E04  7F E3 FB 78 */	mr r3, r31
/* 80AD6E08  4B 67 34 1C */	b evtChange__8daNpcT_cFv
/* 80AD6E0C  48 00 00 30 */	b lbl_80AD6E3C
lbl_80AD6E10:
/* 80AD6E10  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80AD6E14  28 00 00 01 */	cmplwi r0, 1
/* 80AD6E18  40 82 00 24 */	bne lbl_80AD6E3C
/* 80AD6E1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AD6E20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AD6E24  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AD6E28  4B 56 B6 40 */	b reset__14dEvt_control_cFv
/* 80AD6E2C  38 00 00 00 */	li r0, 0
/* 80AD6E30  98 1F 0E 80 */	stb r0, 0xe80(r31)
/* 80AD6E34  38 00 00 03 */	li r0, 3
/* 80AD6E38  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AD6E3C:
/* 80AD6E3C  38 00 00 00 */	li r0, 0
/* 80AD6E40  98 1F 0E 26 */	stb r0, 0xe26(r31)
lbl_80AD6E44:
/* 80AD6E44  38 60 00 00 */	li r3, 0
/* 80AD6E48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AD6E4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD6E50  7C 08 03 A6 */	mtlr r0
/* 80AD6E54  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD6E58  4E 80 00 20 */	blr 
