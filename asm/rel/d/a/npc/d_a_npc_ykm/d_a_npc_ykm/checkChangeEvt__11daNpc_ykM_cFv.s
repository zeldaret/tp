lbl_80B54E5C:
/* 80B54E5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B54E60  7C 08 02 A6 */	mflr r0
/* 80B54E64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B54E68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B54E6C  7C 7F 1B 78 */	mr r31, r3
/* 80B54E70  3C 80 80 B6 */	lis r4, lit_5032@ha /* 0x80B5E85C@ha */
/* 80B54E74  38 A4 E8 5C */	addi r5, r4, lit_5032@l /* 0x80B5E85C@l */
/* 80B54E78  80 85 00 00 */	lwz r4, 0(r5)
/* 80B54E7C  80 05 00 04 */	lwz r0, 4(r5)
/* 80B54E80  90 81 00 08 */	stw r4, 8(r1)
/* 80B54E84  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B54E88  80 05 00 08 */	lwz r0, 8(r5)
/* 80B54E8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B54E90  38 81 00 08 */	addi r4, r1, 8
/* 80B54E94  48 00 1A C1 */	bl chkAction__11daNpc_ykM_cFM11daNpc_ykM_cFPCvPvPv_i
/* 80B54E98  2C 03 00 00 */	cmpwi r3, 0
/* 80B54E9C  40 82 01 50 */	bne lbl_80B54FEC
/* 80B54EA0  38 00 00 00 */	li r0, 0
/* 80B54EA4  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80B54EA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B54EAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B54EB0  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80B54EB4  28 04 00 01 */	cmplwi r4, 1
/* 80B54EB8  41 82 00 0C */	beq lbl_80B54EC4
/* 80B54EBC  28 04 00 02 */	cmplwi r4, 2
/* 80B54EC0  40 82 00 08 */	bne lbl_80B54EC8
lbl_80B54EC4:
/* 80B54EC4  38 00 00 01 */	li r0, 1
lbl_80B54EC8:
/* 80B54EC8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B54ECC  41 82 00 2C */	beq lbl_80B54EF8
/* 80B54ED0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80B54ED4  4B 4F 39 1D */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80B54ED8  2C 03 00 00 */	cmpwi r3, 0
/* 80B54EDC  41 82 00 14 */	beq lbl_80B54EF0
/* 80B54EE0  38 00 00 01 */	li r0, 1
/* 80B54EE4  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B54EE8  7F E3 FB 78 */	mr r3, r31
/* 80B54EEC  4B 5F 53 39 */	bl evtChange__8daNpcT_cFv
lbl_80B54EF0:
/* 80B54EF0  38 60 00 01 */	li r3, 1
/* 80B54EF4  48 00 00 FC */	b lbl_80B54FF0
lbl_80B54EF8:
/* 80B54EF8  88 1F 14 74 */	lbz r0, 0x1474(r31)
/* 80B54EFC  2C 00 00 03 */	cmpwi r0, 3
/* 80B54F00  41 82 00 A4 */	beq lbl_80B54FA4
/* 80B54F04  40 80 00 14 */	bge lbl_80B54F18
/* 80B54F08  2C 00 00 01 */	cmpwi r0, 1
/* 80B54F0C  41 82 00 20 */	beq lbl_80B54F2C
/* 80B54F10  40 80 00 DC */	bge lbl_80B54FEC
/* 80B54F14  48 00 00 D8 */	b lbl_80B54FEC
lbl_80B54F18:
/* 80B54F18  2C 00 00 07 */	cmpwi r0, 7
/* 80B54F1C  40 80 00 D0 */	bge lbl_80B54FEC
/* 80B54F20  2C 00 00 05 */	cmpwi r0, 5
/* 80B54F24  40 80 00 C8 */	bge lbl_80B54FEC
/* 80B54F28  48 00 00 94 */	b lbl_80B54FBC
lbl_80B54F2C:
/* 80B54F2C  38 60 00 04 */	li r3, 4
/* 80B54F30  4B 5F 7B 7D */	bl daNpcT_chkEvtBit__FUl
/* 80B54F34  2C 03 00 00 */	cmpwi r3, 0
/* 80B54F38  40 82 00 30 */	bne lbl_80B54F68
/* 80B54F3C  38 60 00 F5 */	li r3, 0xf5
/* 80B54F40  38 80 00 01 */	li r4, 1
/* 80B54F44  4B 54 2F 9D */	bl checkItemGet__FUci
/* 80B54F48  2C 03 00 00 */	cmpwi r3, 0
/* 80B54F4C  41 82 00 1C */	beq lbl_80B54F68
/* 80B54F50  38 00 00 05 */	li r0, 5
/* 80B54F54  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B54F58  7F E3 FB 78 */	mr r3, r31
/* 80B54F5C  4B 5F 52 C9 */	bl evtChange__8daNpcT_cFv
/* 80B54F60  38 60 00 01 */	li r3, 1
/* 80B54F64  48 00 00 8C */	b lbl_80B54FF0
lbl_80B54F68:
/* 80B54F68  38 60 00 03 */	li r3, 3
/* 80B54F6C  4B 5F 7B 41 */	bl daNpcT_chkEvtBit__FUl
/* 80B54F70  2C 03 00 00 */	cmpwi r3, 0
/* 80B54F74  40 82 00 78 */	bne lbl_80B54FEC
/* 80B54F78  38 60 00 F4 */	li r3, 0xf4
/* 80B54F7C  38 80 00 01 */	li r4, 1
/* 80B54F80  4B 54 2F 61 */	bl checkItemGet__FUci
/* 80B54F84  2C 03 00 00 */	cmpwi r3, 0
/* 80B54F88  41 82 00 64 */	beq lbl_80B54FEC
/* 80B54F8C  38 00 00 04 */	li r0, 4
/* 80B54F90  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B54F94  7F E3 FB 78 */	mr r3, r31
/* 80B54F98  4B 5F 52 8D */	bl evtChange__8daNpcT_cFv
/* 80B54F9C  38 60 00 01 */	li r3, 1
/* 80B54FA0  48 00 00 50 */	b lbl_80B54FF0
lbl_80B54FA4:
/* 80B54FA4  38 00 00 09 */	li r0, 9
/* 80B54FA8  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B54FAC  7F E3 FB 78 */	mr r3, r31
/* 80B54FB0  4B 5F 52 75 */	bl evtChange__8daNpcT_cFv
/* 80B54FB4  38 60 00 01 */	li r3, 1
/* 80B54FB8  48 00 00 38 */	b lbl_80B54FF0
lbl_80B54FBC:
/* 80B54FBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B54FC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B54FC4  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80B54FC8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80B54FCC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B54FD0  41 82 00 1C */	beq lbl_80B54FEC
/* 80B54FD4  38 00 00 06 */	li r0, 6
/* 80B54FD8  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B54FDC  7F E3 FB 78 */	mr r3, r31
/* 80B54FE0  4B 5F 52 45 */	bl evtChange__8daNpcT_cFv
/* 80B54FE4  38 60 00 01 */	li r3, 1
/* 80B54FE8  48 00 00 08 */	b lbl_80B54FF0
lbl_80B54FEC:
/* 80B54FEC  38 60 00 00 */	li r3, 0
lbl_80B54FF0:
/* 80B54FF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B54FF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B54FF8  7C 08 03 A6 */	mtlr r0
/* 80B54FFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80B55000  4E 80 00 20 */	blr 
