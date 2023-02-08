lbl_80B5FD30:
/* 80B5FD30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B5FD34  7C 08 02 A6 */	mflr r0
/* 80B5FD38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B5FD3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B5FD40  4B 80 24 9D */	bl _savegpr_29
/* 80B5FD44  7C 7D 1B 78 */	mr r29, r3
/* 80B5FD48  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80B5FD4C  28 00 00 06 */	cmplwi r0, 6
/* 80B5FD50  41 81 01 00 */	bgt lbl_80B5FE50
/* 80B5FD54  3C 60 80 B7 */	lis r3, lit_4881@ha /* 0x80B68938@ha */
/* 80B5FD58  38 63 89 38 */	addi r3, r3, lit_4881@l /* 0x80B68938@l */
/* 80B5FD5C  54 00 10 3A */	slwi r0, r0, 2
/* 80B5FD60  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B5FD64  7C 09 03 A6 */	mtctr r0
/* 80B5FD68  4E 80 04 20 */	bctr 
lbl_80B5FD6C:
/* 80B5FD6C  38 60 00 00 */	li r3, 0
/* 80B5FD70  48 00 00 E4 */	b lbl_80B5FE54
lbl_80B5FD74:
/* 80B5FD74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B5FD78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B5FD7C  38 63 09 58 */	addi r3, r3, 0x958
/* 80B5FD80  38 80 00 02 */	li r4, 2
/* 80B5FD84  4B 4D 4B B1 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 80B5FD88  48 00 00 CC */	b lbl_80B5FE54
lbl_80B5FD8C:
/* 80B5FD8C  3B E0 00 01 */	li r31, 1
/* 80B5FD90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B5FD94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B5FD98  38 63 09 58 */	addi r3, r3, 0x958
/* 80B5FD9C  38 80 00 02 */	li r4, 2
/* 80B5FDA0  4B 4D 4B 95 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 80B5FDA4  2C 03 00 00 */	cmpwi r3, 0
/* 80B5FDA8  41 82 00 44 */	beq lbl_80B5FDEC
/* 80B5FDAC  3B C0 00 00 */	li r30, 0
/* 80B5FDB0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80B5FDB4  54 04 46 3E */	srwi r4, r0, 0x18
/* 80B5FDB8  28 04 00 FF */	cmplwi r4, 0xff
/* 80B5FDBC  41 82 00 24 */	beq lbl_80B5FDE0
/* 80B5FDC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B5FDC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B5FDC8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B5FDCC  7C 05 07 74 */	extsb r5, r0
/* 80B5FDD0  4B 4D 55 91 */	bl isSwitch__10dSv_info_cCFii
/* 80B5FDD4  2C 03 00 00 */	cmpwi r3, 0
/* 80B5FDD8  41 82 00 08 */	beq lbl_80B5FDE0
/* 80B5FDDC  3B C0 00 01 */	li r30, 1
lbl_80B5FDE0:
/* 80B5FDE0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80B5FDE4  40 82 00 08 */	bne lbl_80B5FDEC
/* 80B5FDE8  3B E0 00 00 */	li r31, 0
lbl_80B5FDEC:
/* 80B5FDEC  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80B5FDF0  48 00 00 64 */	b lbl_80B5FE54
lbl_80B5FDF4:
/* 80B5FDF4  38 60 00 00 */	li r3, 0
/* 80B5FDF8  48 00 00 5C */	b lbl_80B5FE54
lbl_80B5FDFC:
/* 80B5FDFC  3B C0 00 00 */	li r30, 0
/* 80B5FE00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B5FE04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B5FE08  3B E3 09 58 */	addi r31, r3, 0x958
/* 80B5FE0C  7F E3 FB 78 */	mr r3, r31
/* 80B5FE10  38 80 00 03 */	li r4, 3
/* 80B5FE14  4B 4D 4B 21 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 80B5FE18  2C 03 00 00 */	cmpwi r3, 0
/* 80B5FE1C  41 82 00 1C */	beq lbl_80B5FE38
/* 80B5FE20  7F E3 FB 78 */	mr r3, r31
/* 80B5FE24  38 80 00 04 */	li r4, 4
/* 80B5FE28  4B 4D 4B 0D */	bl isDungeonItem__12dSv_memBit_cCFi
/* 80B5FE2C  2C 03 00 00 */	cmpwi r3, 0
/* 80B5FE30  41 82 00 08 */	beq lbl_80B5FE38
/* 80B5FE34  3B C0 00 01 */	li r30, 1
lbl_80B5FE38:
/* 80B5FE38  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 80B5FE3C  48 00 00 18 */	b lbl_80B5FE54
lbl_80B5FE40:
/* 80B5FE40  38 60 00 00 */	li r3, 0
/* 80B5FE44  48 00 00 10 */	b lbl_80B5FE54
lbl_80B5FE48:
/* 80B5FE48  38 60 00 00 */	li r3, 0
/* 80B5FE4C  48 00 00 08 */	b lbl_80B5FE54
lbl_80B5FE50:
/* 80B5FE50  38 60 00 00 */	li r3, 0
lbl_80B5FE54:
/* 80B5FE54  39 61 00 20 */	addi r11, r1, 0x20
/* 80B5FE58  4B 80 23 D1 */	bl _restgpr_29
/* 80B5FE5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B5FE60  7C 08 03 A6 */	mtlr r0
/* 80B5FE64  38 21 00 20 */	addi r1, r1, 0x20
/* 80B5FE68  4E 80 00 20 */	blr 
