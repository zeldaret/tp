lbl_80540CC0:
/* 80540CC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80540CC4  7C 08 02 A6 */	mflr r0
/* 80540CC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80540CCC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80540CD0  7C 7F 1B 78 */	mr r31, r3
/* 80540CD4  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80540CD8  2C 00 00 02 */	cmpwi r0, 2
/* 80540CDC  41 82 00 38 */	beq lbl_80540D14
/* 80540CE0  40 80 01 18 */	bge lbl_80540DF8
/* 80540CE4  2C 00 00 00 */	cmpwi r0, 0
/* 80540CE8  40 80 00 0C */	bge lbl_80540CF4
/* 80540CEC  48 00 01 0C */	b lbl_80540DF8
/* 80540CF0  48 00 01 08 */	b lbl_80540DF8
lbl_80540CF4:
/* 80540CF4  38 60 00 0B */	li r3, 0xb
/* 80540CF8  4B C1 4A 3D */	bl daNpcF_offTmpBit__FUl
/* 80540CFC  7F E3 FB 78 */	mr r3, r31
/* 80540D00  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80540D04  38 A0 00 00 */	li r5, 0
/* 80540D08  4B C0 AE E9 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80540D0C  38 00 00 02 */	li r0, 2
/* 80540D10  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80540D14:
/* 80540D14  7F E3 FB 78 */	mr r3, r31
/* 80540D18  38 80 00 00 */	li r4, 0
/* 80540D1C  38 A0 00 00 */	li r5, 0
/* 80540D20  38 C0 00 00 */	li r6, 0
/* 80540D24  38 E0 00 00 */	li r7, 0
/* 80540D28  4B C0 AF 51 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80540D2C  2C 03 00 00 */	cmpwi r3, 0
/* 80540D30  41 82 00 C0 */	beq lbl_80540DF0
/* 80540D34  38 60 00 0B */	li r3, 0xb
/* 80540D38  4B C0 BE 35 */	bl daNpcT_chkTmpBit__FUl
/* 80540D3C  2C 03 00 00 */	cmpwi r3, 0
/* 80540D40  41 82 00 14 */	beq lbl_80540D54
/* 80540D44  7F E3 FB 78 */	mr r3, r31
/* 80540D48  48 00 00 C9 */	bl _to_FairyCave__19daNpc_FairySeirei_cFv
/* 80540D4C  38 60 00 00 */	li r3, 0
/* 80540D50  48 00 00 AC */	b lbl_80540DFC
lbl_80540D54:
/* 80540D54  38 7F 09 74 */	addi r3, r31, 0x974
/* 80540D58  38 81 00 08 */	addi r4, r1, 8
/* 80540D5C  4B D0 97 CD */	bl getEventId__10dMsgFlow_cFPi
/* 80540D60  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80540D64  2C 00 00 01 */	cmpwi r0, 1
/* 80540D68  40 82 00 5C */	bne lbl_80540DC4
/* 80540D6C  80 7F 0D 90 */	lwz r3, 0xd90(r31)
/* 80540D70  3C 03 00 01 */	addis r0, r3, 1
/* 80540D74  28 00 FF FF */	cmplwi r0, 0xffff
/* 80540D78  40 82 00 28 */	bne lbl_80540DA0
/* 80540D7C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80540D80  80 81 00 08 */	lwz r4, 8(r1)
/* 80540D84  38 A0 00 00 */	li r5, 0
/* 80540D88  38 C0 FF FF */	li r6, -1
/* 80540D8C  38 E0 FF FF */	li r7, -1
/* 80540D90  39 00 00 00 */	li r8, 0
/* 80540D94  39 20 00 00 */	li r9, 0
/* 80540D98  4B AD AE 51 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80540D9C  90 7F 0D 90 */	stw r3, 0xd90(r31)
lbl_80540DA0:
/* 80540DA0  80 7F 0D 90 */	lwz r3, 0xd90(r31)
/* 80540DA4  4B AE 05 F9 */	bl fpcEx_IsExist__FUi
/* 80540DA8  2C 03 00 00 */	cmpwi r3, 0
/* 80540DAC  41 82 00 44 */	beq lbl_80540DF0
/* 80540DB0  38 00 00 01 */	li r0, 1
/* 80540DB4  98 1F 0F A8 */	stb r0, 0xfa8(r31)
/* 80540DB8  7F E3 FB 78 */	mr r3, r31
/* 80540DBC  4B C0 94 69 */	bl evtChange__8daNpcT_cFv
/* 80540DC0  48 00 00 30 */	b lbl_80540DF0
lbl_80540DC4:
/* 80540DC4  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80540DC8  28 00 00 01 */	cmplwi r0, 1
/* 80540DCC  40 82 00 24 */	bne lbl_80540DF0
/* 80540DD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80540DD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80540DD8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80540DDC  4B B0 16 8D */	bl reset__14dEvt_control_cFv
/* 80540DE0  38 00 00 00 */	li r0, 0
/* 80540DE4  98 1F 0F A8 */	stb r0, 0xfa8(r31)
/* 80540DE8  38 00 00 03 */	li r0, 3
/* 80540DEC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80540DF0:
/* 80540DF0  38 00 00 00 */	li r0, 0
/* 80540DF4  98 1F 0E 26 */	stb r0, 0xe26(r31)
lbl_80540DF8:
/* 80540DF8  38 60 00 00 */	li r3, 0
lbl_80540DFC:
/* 80540DFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80540E00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80540E04  7C 08 03 A6 */	mtlr r0
/* 80540E08  38 21 00 20 */	addi r1, r1, 0x20
/* 80540E0C  4E 80 00 20 */	blr 
