lbl_80AD17C4:
/* 80AD17C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD17C8  7C 08 02 A6 */	mflr r0
/* 80AD17CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD17D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD17D4  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80AD17D8  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 80AD17DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD17E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AD17E4  38 63 00 28 */	addi r3, r3, 0x28
/* 80AD17E8  38 80 00 00 */	li r4, 0
/* 80AD17EC  4B 56 13 C5 */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 80AD17F0  2C 03 00 00 */	cmpwi r3, 0
/* 80AD17F4  41 82 00 0C */	beq lbl_80AD1800
/* 80AD17F8  38 60 00 00 */	li r3, 0
/* 80AD17FC  48 00 00 1C */	b lbl_80AD1818
lbl_80AD1800:
/* 80AD1800  2C 1F 00 00 */	cmpwi r31, 0
/* 80AD1804  41 82 00 08 */	beq lbl_80AD180C
/* 80AD1808  48 00 00 0C */	b lbl_80AD1814
lbl_80AD180C:
/* 80AD180C  38 60 00 01 */	li r3, 1
/* 80AD1810  48 00 00 08 */	b lbl_80AD1818
lbl_80AD1814:
/* 80AD1814  38 60 00 00 */	li r3, 0
lbl_80AD1818:
/* 80AD1818  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD181C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD1820  7C 08 03 A6 */	mtlr r0
/* 80AD1824  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD1828  4E 80 00 20 */	blr 
