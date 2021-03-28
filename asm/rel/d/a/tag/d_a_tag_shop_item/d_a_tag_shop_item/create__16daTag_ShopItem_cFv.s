lbl_80D60B78:
/* 80D60B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D60B7C  7C 08 02 A6 */	mflr r0
/* 80D60B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D60B84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D60B88  93 C1 00 08 */	stw r30, 8(r1)
/* 80D60B8C  7C 7F 1B 78 */	mr r31, r3
/* 80D60B90  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D60B94  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D60B98  40 82 00 28 */	bne lbl_80D60BC0
/* 80D60B9C  28 1F 00 00 */	cmplwi r31, 0
/* 80D60BA0  41 82 00 14 */	beq lbl_80D60BB4
/* 80D60BA4  4B 2B 7F C0 */	b __ct__10fopAc_ac_cFv
/* 80D60BA8  3C 60 80 D6 */	lis r3, __vt__16daTag_ShopItem_c@ha
/* 80D60BAC  38 03 12 40 */	addi r0, r3, __vt__16daTag_ShopItem_c@l
/* 80D60BB0  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80D60BB4:
/* 80D60BB4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D60BB8  60 00 00 08 */	ori r0, r0, 8
/* 80D60BBC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D60BC0:
/* 80D60BC0  7F E3 FB 78 */	mr r3, r31
/* 80D60BC4  48 00 04 99 */	bl initialize__16daTag_ShopItem_cFv
/* 80D60BC8  38 00 00 00 */	li r0, 0
/* 80D60BCC  98 1F 05 72 */	stb r0, 0x572(r31)
/* 80D60BD0  3C 60 80 D6 */	lis r3, stringBase0@ha
/* 80D60BD4  38 63 11 E8 */	addi r3, r3, stringBase0@l
/* 80D60BD8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D60BDC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D60BE0  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80D60BE4  4B 60 7D B0 */	b strcmp
/* 80D60BE8  2C 03 00 00 */	cmpwi r3, 0
/* 80D60BEC  40 82 00 68 */	bne lbl_80D60C54
/* 80D60BF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D60BF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D60BF8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D60BFC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80D60C00  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80D60C04  A0 84 00 80 */	lhz r4, 0x80(r4)
/* 80D60C08  4B 2D 3D B4 */	b isEventBit__11dSv_event_cCFUs
/* 80D60C0C  2C 03 00 00 */	cmpwi r3, 0
/* 80D60C10  40 82 00 0C */	bne lbl_80D60C1C
/* 80D60C14  38 60 00 05 */	li r3, 5
/* 80D60C18  48 00 01 48 */	b lbl_80D60D60
lbl_80D60C1C:
/* 80D60C1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D60C20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D60C24  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 80D60C28  3C 60 80 D6 */	lis r3, lit_3684@ha
/* 80D60C2C  C0 03 11 D0 */	lfs f0, lit_3684@l(r3)
/* 80D60C30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D60C34  4C 41 13 82 */	cror 2, 1, 2
/* 80D60C38  40 82 00 1C */	bne lbl_80D60C54
/* 80D60C3C  3C 60 80 D6 */	lis r3, lit_3685@ha
/* 80D60C40  C0 03 11 D4 */	lfs f0, lit_3685@l(r3)
/* 80D60C44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D60C48  40 80 00 0C */	bge lbl_80D60C54
/* 80D60C4C  38 60 00 05 */	li r3, 5
/* 80D60C50  48 00 01 10 */	b lbl_80D60D60
lbl_80D60C54:
/* 80D60C54  7F E3 FB 78 */	mr r3, r31
/* 80D60C58  48 00 03 E1 */	bl getGroupID__16daTag_ShopItem_cFv
/* 80D60C5C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D60C60  28 00 00 0F */	cmplwi r0, 0xf
/* 80D60C64  40 82 00 70 */	bne lbl_80D60CD4
/* 80D60C68  38 00 00 96 */	li r0, 0x96
/* 80D60C6C  B0 1F 05 70 */	sth r0, 0x570(r31)
/* 80D60C70  7F E3 FB 78 */	mr r3, r31
/* 80D60C74  48 00 03 D1 */	bl getSwitchBit1__16daTag_ShopItem_cFv
/* 80D60C78  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D60C7C  28 00 00 FF */	cmplwi r0, 0xff
/* 80D60C80  41 82 00 DC */	beq lbl_80D60D5C
/* 80D60C84  7F E3 FB 78 */	mr r3, r31
/* 80D60C88  48 00 03 BD */	bl getSwitchBit1__16daTag_ShopItem_cFv
/* 80D60C8C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80D60C90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D60C94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D60C98  3B C3 09 58 */	addi r30, r3, 0x958
/* 80D60C9C  7F C3 F3 78 */	mr r3, r30
/* 80D60CA0  4B 2D 3B C0 */	b isSwitch__12dSv_memBit_cCFi
/* 80D60CA4  2C 03 00 00 */	cmpwi r3, 0
/* 80D60CA8  40 82 00 B4 */	bne lbl_80D60D5C
/* 80D60CAC  7F E3 FB 78 */	mr r3, r31
/* 80D60CB0  48 00 03 A1 */	bl getSwitchBit2__16daTag_ShopItem_cFv
/* 80D60CB4  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80D60CB8  7F C3 F3 78 */	mr r3, r30
/* 80D60CBC  4B 2D 3B 54 */	b onSwitch__12dSv_memBit_cFi
/* 80D60CC0  38 00 00 01 */	li r0, 1
/* 80D60CC4  98 1F 05 72 */	stb r0, 0x572(r31)
/* 80D60CC8  38 00 00 00 */	li r0, 0
/* 80D60CCC  B0 1F 05 70 */	sth r0, 0x570(r31)
/* 80D60CD0  48 00 00 8C */	b lbl_80D60D5C
lbl_80D60CD4:
/* 80D60CD4  38 00 00 00 */	li r0, 0
/* 80D60CD8  B0 1F 05 70 */	sth r0, 0x570(r31)
/* 80D60CDC  7F E3 FB 78 */	mr r3, r31
/* 80D60CE0  48 00 03 65 */	bl getSwitchBit1__16daTag_ShopItem_cFv
/* 80D60CE4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D60CE8  28 00 00 FF */	cmplwi r0, 0xff
/* 80D60CEC  41 82 00 30 */	beq lbl_80D60D1C
/* 80D60CF0  7F E3 FB 78 */	mr r3, r31
/* 80D60CF4  48 00 03 51 */	bl getSwitchBit1__16daTag_ShopItem_cFv
/* 80D60CF8  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80D60CFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D60D00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D60D04  38 63 09 58 */	addi r3, r3, 0x958
/* 80D60D08  4B 2D 3B 58 */	b isSwitch__12dSv_memBit_cCFi
/* 80D60D0C  2C 03 00 00 */	cmpwi r3, 0
/* 80D60D10  41 82 00 0C */	beq lbl_80D60D1C
/* 80D60D14  38 00 00 96 */	li r0, 0x96
/* 80D60D18  B0 1F 05 70 */	sth r0, 0x570(r31)
lbl_80D60D1C:
/* 80D60D1C  7F E3 FB 78 */	mr r3, r31
/* 80D60D20  48 00 03 31 */	bl getSwitchBit2__16daTag_ShopItem_cFv
/* 80D60D24  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D60D28  28 00 00 FF */	cmplwi r0, 0xff
/* 80D60D2C  41 82 00 30 */	beq lbl_80D60D5C
/* 80D60D30  7F E3 FB 78 */	mr r3, r31
/* 80D60D34  48 00 03 1D */	bl getSwitchBit2__16daTag_ShopItem_cFv
/* 80D60D38  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80D60D3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D60D40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D60D44  38 63 09 58 */	addi r3, r3, 0x958
/* 80D60D48  4B 2D 3B 18 */	b isSwitch__12dSv_memBit_cCFi
/* 80D60D4C  2C 03 00 00 */	cmpwi r3, 0
/* 80D60D50  40 82 00 0C */	bne lbl_80D60D5C
/* 80D60D54  38 00 00 96 */	li r0, 0x96
/* 80D60D58  B0 1F 05 70 */	sth r0, 0x570(r31)
lbl_80D60D5C:
/* 80D60D5C  38 60 00 04 */	li r3, 4
lbl_80D60D60:
/* 80D60D60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D60D64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D60D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D60D6C  7C 08 03 A6 */	mtlr r0
/* 80D60D70  38 21 00 10 */	addi r1, r1, 0x10
/* 80D60D74  4E 80 00 20 */	blr 
