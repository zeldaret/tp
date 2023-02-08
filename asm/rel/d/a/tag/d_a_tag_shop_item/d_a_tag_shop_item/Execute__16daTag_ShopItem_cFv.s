lbl_80D60E04:
/* 80D60E04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D60E08  7C 08 02 A6 */	mflr r0
/* 80D60E0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D60E10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D60E14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D60E18  7C 7F 1B 78 */	mr r31, r3
/* 80D60E1C  80 83 05 6C */	lwz r4, 0x56c(r3)
/* 80D60E20  3C 04 00 01 */	addis r0, r4, 1
/* 80D60E24  28 00 FF FF */	cmplwi r0, 0xffff
/* 80D60E28  40 82 00 FC */	bne lbl_80D60F24
/* 80D60E2C  A8 9F 05 70 */	lha r4, 0x570(r31)
/* 80D60E30  2C 04 00 00 */	cmpwi r4, 0
/* 80D60E34  40 82 00 44 */	bne lbl_80D60E78
/* 80D60E38  48 00 02 01 */	bl getGroupID__16daTag_ShopItem_cFv
/* 80D60E3C  54 7E E0 06 */	slwi r30, r3, 0x1c
/* 80D60E40  7F E3 FB 78 */	mr r3, r31
/* 80D60E44  48 00 01 E9 */	bl getType__16daTag_ShopItem_cFv
/* 80D60E48  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D60E4C  7C 04 F3 78 */	or r4, r0, r30
/* 80D60E50  38 60 02 1E */	li r3, 0x21e
/* 80D60E54  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D60E58  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D60E5C  7C 06 07 74 */	extsb r6, r0
/* 80D60E60  38 FF 04 DC */	addi r7, r31, 0x4dc
/* 80D60E64  39 00 00 00 */	li r8, 0
/* 80D60E68  39 20 FF FF */	li r9, -1
/* 80D60E6C  4B 2B 8F 2D */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80D60E70  90 7F 05 6C */	stw r3, 0x56c(r31)
/* 80D60E74  48 00 01 94 */	b lbl_80D61008
lbl_80D60E78:
/* 80D60E78  38 04 FF FF */	addi r0, r4, -1
/* 80D60E7C  B0 1F 05 70 */	sth r0, 0x570(r31)
/* 80D60E80  48 00 01 B9 */	bl getGroupID__16daTag_ShopItem_cFv
/* 80D60E84  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D60E88  28 00 00 0F */	cmplwi r0, 0xf
/* 80D60E8C  40 82 00 1C */	bne lbl_80D60EA8
/* 80D60E90  88 1F 05 72 */	lbz r0, 0x572(r31)
/* 80D60E94  28 00 00 00 */	cmplwi r0, 0
/* 80D60E98  41 82 01 70 */	beq lbl_80D61008
/* 80D60E9C  38 00 00 00 */	li r0, 0
/* 80D60EA0  B0 1F 05 70 */	sth r0, 0x570(r31)
/* 80D60EA4  48 00 01 64 */	b lbl_80D61008
lbl_80D60EA8:
/* 80D60EA8  7F E3 FB 78 */	mr r3, r31
/* 80D60EAC  48 00 01 99 */	bl getSwitchBit1__16daTag_ShopItem_cFv
/* 80D60EB0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D60EB4  28 00 00 FF */	cmplwi r0, 0xff
/* 80D60EB8  41 82 00 28 */	beq lbl_80D60EE0
/* 80D60EBC  7F E3 FB 78 */	mr r3, r31
/* 80D60EC0  48 00 01 85 */	bl getSwitchBit1__16daTag_ShopItem_cFv
/* 80D60EC4  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80D60EC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D60ECC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D60ED0  38 63 09 58 */	addi r3, r3, 0x958
/* 80D60ED4  4B 2D 39 8D */	bl isSwitch__12dSv_memBit_cCFi
/* 80D60ED8  2C 03 00 00 */	cmpwi r3, 0
/* 80D60EDC  40 82 01 2C */	bne lbl_80D61008
lbl_80D60EE0:
/* 80D60EE0  7F E3 FB 78 */	mr r3, r31
/* 80D60EE4  48 00 01 6D */	bl getSwitchBit2__16daTag_ShopItem_cFv
/* 80D60EE8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D60EEC  28 00 00 FF */	cmplwi r0, 0xff
/* 80D60EF0  41 82 00 28 */	beq lbl_80D60F18
/* 80D60EF4  7F E3 FB 78 */	mr r3, r31
/* 80D60EF8  48 00 01 59 */	bl getSwitchBit2__16daTag_ShopItem_cFv
/* 80D60EFC  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80D60F00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D60F04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D60F08  38 63 09 58 */	addi r3, r3, 0x958
/* 80D60F0C  4B 2D 39 55 */	bl isSwitch__12dSv_memBit_cCFi
/* 80D60F10  2C 03 00 00 */	cmpwi r3, 0
/* 80D60F14  41 82 00 F4 */	beq lbl_80D61008
lbl_80D60F18:
/* 80D60F18  38 00 00 00 */	li r0, 0
/* 80D60F1C  B0 1F 05 70 */	sth r0, 0x570(r31)
/* 80D60F20  48 00 00 E8 */	b lbl_80D61008
lbl_80D60F24:
/* 80D60F24  90 81 00 08 */	stw r4, 8(r1)
/* 80D60F28  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80D60F2C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80D60F30  38 81 00 08 */	addi r4, r1, 8
/* 80D60F34  4B 2B 88 C5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80D60F38  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D60F3C  41 82 00 CC */	beq lbl_80D61008
/* 80D60F40  7F E3 FB 78 */	mr r3, r31
/* 80D60F44  48 00 00 F5 */	bl getGroupID__16daTag_ShopItem_cFv
/* 80D60F48  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D60F4C  28 00 00 0F */	cmplwi r0, 0xf
/* 80D60F50  40 82 00 28 */	bne lbl_80D60F78
/* 80D60F54  88 1F 05 72 */	lbz r0, 0x572(r31)
/* 80D60F58  28 00 00 00 */	cmplwi r0, 0
/* 80D60F5C  40 82 00 10 */	bne lbl_80D60F6C
/* 80D60F60  7F C3 F3 78 */	mr r3, r30
/* 80D60F64  4B 2D 6B 01 */	bl hide__12daItemBase_cFv
/* 80D60F68  48 00 00 A0 */	b lbl_80D61008
lbl_80D60F6C:
/* 80D60F6C  7F C3 F3 78 */	mr r3, r30
/* 80D60F70  4B 2D 6B 05 */	bl show__12daItemBase_cFv
/* 80D60F74  48 00 00 94 */	b lbl_80D61008
lbl_80D60F78:
/* 80D60F78  7F E3 FB 78 */	mr r3, r31
/* 80D60F7C  48 00 00 C9 */	bl getSwitchBit1__16daTag_ShopItem_cFv
/* 80D60F80  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D60F84  28 00 00 FF */	cmplwi r0, 0xff
/* 80D60F88  41 82 00 34 */	beq lbl_80D60FBC
/* 80D60F8C  7F E3 FB 78 */	mr r3, r31
/* 80D60F90  48 00 00 B5 */	bl getSwitchBit1__16daTag_ShopItem_cFv
/* 80D60F94  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80D60F98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D60F9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D60FA0  38 63 09 58 */	addi r3, r3, 0x958
/* 80D60FA4  4B 2D 38 BD */	bl isSwitch__12dSv_memBit_cCFi
/* 80D60FA8  2C 03 00 00 */	cmpwi r3, 0
/* 80D60FAC  41 82 00 10 */	beq lbl_80D60FBC
/* 80D60FB0  7F C3 F3 78 */	mr r3, r30
/* 80D60FB4  4B 2D 6A B1 */	bl hide__12daItemBase_cFv
/* 80D60FB8  48 00 00 50 */	b lbl_80D61008
lbl_80D60FBC:
/* 80D60FBC  7F E3 FB 78 */	mr r3, r31
/* 80D60FC0  48 00 00 91 */	bl getSwitchBit2__16daTag_ShopItem_cFv
/* 80D60FC4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D60FC8  28 00 00 FF */	cmplwi r0, 0xff
/* 80D60FCC  41 82 00 34 */	beq lbl_80D61000
/* 80D60FD0  7F E3 FB 78 */	mr r3, r31
/* 80D60FD4  48 00 00 7D */	bl getSwitchBit2__16daTag_ShopItem_cFv
/* 80D60FD8  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80D60FDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D60FE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D60FE4  38 63 09 58 */	addi r3, r3, 0x958
/* 80D60FE8  4B 2D 38 79 */	bl isSwitch__12dSv_memBit_cCFi
/* 80D60FEC  2C 03 00 00 */	cmpwi r3, 0
/* 80D60FF0  40 82 00 10 */	bne lbl_80D61000
/* 80D60FF4  7F C3 F3 78 */	mr r3, r30
/* 80D60FF8  4B 2D 6A 6D */	bl hide__12daItemBase_cFv
/* 80D60FFC  48 00 00 0C */	b lbl_80D61008
lbl_80D61000:
/* 80D61000  7F C3 F3 78 */	mr r3, r30
/* 80D61004  4B 2D 6A 71 */	bl show__12daItemBase_cFv
lbl_80D61008:
/* 80D61008  38 60 00 01 */	li r3, 1
/* 80D6100C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D61010  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D61014  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D61018  7C 08 03 A6 */	mtlr r0
/* 80D6101C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D61020  4E 80 00 20 */	blr 
