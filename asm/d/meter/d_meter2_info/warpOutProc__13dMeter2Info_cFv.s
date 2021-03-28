lbl_8021CA70:
/* 8021CA70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8021CA74  7C 08 02 A6 */	mflr r0
/* 8021CA78  90 01 00 34 */	stw r0, 0x34(r1)
/* 8021CA7C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8021CA80  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8021CA84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021CA88  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 8021CA8C  38 7E 4E 20 */	addi r3, r30, 0x4e20
/* 8021CA90  81 9E 4E 20 */	lwz r12, 0x4e20(r30)
/* 8021CA94  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8021CA98  7D 89 03 A6 */	mtctr r12
/* 8021CA9C  4E 80 04 21 */	bctrl 
/* 8021CAA0  88 03 00 09 */	lbz r0, 9(r3)
/* 8021CAA4  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 8021CAA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021CAAC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8021CAB0  98 1F 00 98 */	stb r0, 0x98(r31)
/* 8021CAB4  C0 1F 0D BC */	lfs f0, 0xdbc(r31)
/* 8021CAB8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8021CABC  C0 1F 0D C0 */	lfs f0, 0xdc0(r31)
/* 8021CAC0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8021CAC4  C0 1F 0D C4 */	lfs f0, 0xdc4(r31)
/* 8021CAC8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8021CACC  38 61 00 08 */	addi r3, r1, 8
/* 8021CAD0  38 80 00 00 */	li r4, 0
/* 8021CAD4  A8 BF 0D BA */	lha r5, 0xdba(r31)
/* 8021CAD8  38 C0 00 00 */	li r6, 0
/* 8021CADC  48 04 A9 19 */	bl __ct__5csXyzFsss
/* 8021CAE0  88 1F 0D B4 */	lbz r0, 0xdb4(r31)
/* 8021CAE4  7C 1F 07 74 */	extsb r31, r0
/* 8021CAE8  3B DE 4E 00 */	addi r30, r30, 0x4e00
/* 8021CAEC  7F C3 F3 78 */	mr r3, r30
/* 8021CAF0  3C 80 80 3A */	lis r4, d_meter_d_meter2_info__stringBase0@ha
/* 8021CAF4  38 84 91 68 */	addi r4, r4, d_meter_d_meter2_info__stringBase0@l
/* 8021CAF8  38 84 00 0C */	addi r4, r4, 0xc
/* 8021CAFC  48 14 BE 99 */	bl strcmp
/* 8021CB00  2C 03 00 00 */	cmpwi r3, 0
/* 8021CB04  40 82 00 60 */	bne lbl_8021CB64
/* 8021CB08  38 60 FF FF */	li r3, -1
/* 8021CB0C  7F E0 07 75 */	extsb. r0, r31
/* 8021CB10  40 82 00 0C */	bne lbl_8021CB1C
/* 8021CB14  38 60 00 01 */	li r3, 1
/* 8021CB18  48 00 00 30 */	b lbl_8021CB48
lbl_8021CB1C:
/* 8021CB1C  2C 1F 00 05 */	cmpwi r31, 5
/* 8021CB20  40 82 00 0C */	bne lbl_8021CB2C
/* 8021CB24  38 60 00 02 */	li r3, 2
/* 8021CB28  48 00 00 20 */	b lbl_8021CB48
lbl_8021CB2C:
/* 8021CB2C  2C 1F 00 06 */	cmpwi r31, 6
/* 8021CB30  40 82 00 0C */	bne lbl_8021CB3C
/* 8021CB34  38 60 00 02 */	li r3, 2
/* 8021CB38  48 00 00 10 */	b lbl_8021CB48
lbl_8021CB3C:
/* 8021CB3C  2C 1F 00 09 */	cmpwi r31, 9
/* 8021CB40  40 82 00 08 */	bne lbl_8021CB48
/* 8021CB44  38 60 00 04 */	li r3, 4
lbl_8021CB48:
/* 8021CB48  2C 03 FF FF */	cmpwi r3, -1
/* 8021CB4C  41 82 00 50 */	beq lbl_8021CB9C
/* 8021CB50  7F E4 FB 78 */	mr r4, r31
/* 8021CB54  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8021CB58  38 C1 00 08 */	addi r6, r1, 8
/* 8021CB5C  4B F3 8C 19 */	bl daNpcF_getPlayerInfoFromPlayerList__FiiR4cXyzR5csXyz
/* 8021CB60  48 00 00 3C */	b lbl_8021CB9C
lbl_8021CB64:
/* 8021CB64  7F C3 F3 78 */	mr r3, r30
/* 8021CB68  3C 80 80 3A */	lis r4, d_meter_d_meter2_info__stringBase0@ha
/* 8021CB6C  38 84 91 68 */	addi r4, r4, d_meter_d_meter2_info__stringBase0@l
/* 8021CB70  38 84 00 13 */	addi r4, r4, 0x13
/* 8021CB74  48 14 BE 21 */	bl strcmp
/* 8021CB78  2C 03 00 00 */	cmpwi r3, 0
/* 8021CB7C  40 82 00 20 */	bne lbl_8021CB9C
/* 8021CB80  7F E0 07 75 */	extsb. r0, r31
/* 8021CB84  40 82 00 18 */	bne lbl_8021CB9C
/* 8021CB88  38 60 00 05 */	li r3, 5
/* 8021CB8C  7F E4 FB 78 */	mr r4, r31
/* 8021CB90  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8021CB94  38 C1 00 08 */	addi r6, r1, 8
/* 8021CB98  4B F3 8B DD */	bl daNpcF_getPlayerInfoFromPlayerList__FiiR4cXyzR5csXyz
lbl_8021CB9C:
/* 8021CB9C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8021CBA0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8021CBA4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8021CBA8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8021CBAC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8021CBB0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8021CBB4  7F C3 F3 78 */	mr r3, r30
/* 8021CBB8  38 81 00 10 */	addi r4, r1, 0x10
/* 8021CBBC  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 8021CBC0  7F E6 FB 78 */	mr r6, r31
/* 8021CBC4  38 E0 00 00 */	li r7, 0
/* 8021CBC8  39 00 00 01 */	li r8, 1
/* 8021CBCC  4B E1 25 D1 */	bl dComIfGs_setWarpItemData__FPCc4cXyzsScUcUc
/* 8021CBD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021CBD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021CBD8  38 63 00 9C */	addi r3, r3, 0x9c
/* 8021CBDC  38 80 00 12 */	li r4, 0x12
/* 8021CBE0  38 A0 00 27 */	li r5, 0x27
/* 8021CBE4  4B E1 63 D5 */	bl setItem__17dSv_player_item_cFiUc
/* 8021CBE8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8021CBEC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8021CBF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8021CBF4  7C 08 03 A6 */	mtlr r0
/* 8021CBF8  38 21 00 30 */	addi r1, r1, 0x30
/* 8021CBFC  4E 80 00 20 */	blr 
