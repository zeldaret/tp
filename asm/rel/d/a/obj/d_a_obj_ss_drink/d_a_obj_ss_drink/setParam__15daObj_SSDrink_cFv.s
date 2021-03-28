lbl_80CE5EC8:
/* 80CE5EC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CE5ECC  7C 08 02 A6 */	mflr r0
/* 80CE5ED0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE5ED4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CE5ED8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CE5EDC  7C 7F 1B 78 */	mr r31, r3
/* 80CE5EE0  3C 60 80 CE */	lis r3, mCcDObjInfo__15daObj_SSDrink_c@ha
/* 80CE5EE4  3B C3 69 30 */	addi r30, r3, mCcDObjInfo__15daObj_SSDrink_c@l
/* 80CE5EE8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80CE5EEC  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80CE5EF0  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80CE5EF4  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80CE5EF8  88 1F 0B 0C */	lbz r0, 0xb0c(r31)
/* 80CE5EFC  28 00 00 60 */	cmplwi r0, 0x60
/* 80CE5F00  40 82 00 18 */	bne lbl_80CE5F18
/* 80CE5F04  38 7F 07 A4 */	addi r3, r31, 0x7a4
/* 80CE5F08  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80CE5F0C  4B 39 00 34 */	b SetWallR__12dBgS_AcchCirFf
/* 80CE5F10  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80CE5F14  D0 1F 07 D4 */	stfs f0, 0x7d4(r31)
lbl_80CE5F18:
/* 80CE5F18  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80CE5F1C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80CE5F20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE5F24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CE5F28  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CE5F2C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CE5F30  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80CE5F34  7D 89 03 A6 */	mtctr r12
/* 80CE5F38  4E 80 04 21 */	bctrl 
/* 80CE5F3C  3C 03 00 01 */	addis r0, r3, 1
/* 80CE5F40  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CE5F44  41 82 00 68 */	beq lbl_80CE5FAC
/* 80CE5F48  3C 60 80 CE */	lis r3, lit_4233@ha
/* 80CE5F4C  38 83 6A 54 */	addi r4, r3, lit_4233@l
/* 80CE5F50  80 64 00 00 */	lwz r3, 0(r4)
/* 80CE5F54  80 04 00 04 */	lwz r0, 4(r4)
/* 80CE5F58  90 61 00 08 */	stw r3, 8(r1)
/* 80CE5F5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE5F60  80 04 00 08 */	lwz r0, 8(r4)
/* 80CE5F64  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CE5F68  7F E3 FB 78 */	mr r3, r31
/* 80CE5F6C  38 81 00 08 */	addi r4, r1, 8
/* 80CE5F70  4B FF FE 41 */	bl checkProcess__15daObj_SSDrink_cFM15daObj_SSDrink_cFPCvPvPv_i
/* 80CE5F74  2C 03 00 00 */	cmpwi r3, 0
/* 80CE5F78  40 82 00 34 */	bne lbl_80CE5FAC
/* 80CE5F7C  88 1F 0B 0C */	lbz r0, 0xb0c(r31)
/* 80CE5F80  28 00 00 60 */	cmplwi r0, 0x60
/* 80CE5F84  41 82 00 28 */	beq lbl_80CE5FAC
/* 80CE5F88  7F E3 FB 78 */	mr r3, r31
/* 80CE5F8C  4B FF FB 81 */	bl getSwitchFromParam__15daObj_SSDrink_cFv
/* 80CE5F90  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80CE5F94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE5F98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CE5F9C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CE5FA0  7C 05 07 74 */	extsb r5, r0
/* 80CE5FA4  4B 34 F3 0C */	b offSwitch__10dSv_info_cFii
/* 80CE5FA8  48 00 00 24 */	b lbl_80CE5FCC
lbl_80CE5FAC:
/* 80CE5FAC  7F E3 FB 78 */	mr r3, r31
/* 80CE5FB0  4B FF FB 5D */	bl getSwitchFromParam__15daObj_SSDrink_cFv
/* 80CE5FB4  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80CE5FB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE5FBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CE5FC0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CE5FC4  7C 05 07 74 */	extsb r5, r0
/* 80CE5FC8  4B 34 F2 38 */	b onSwitch__10dSv_info_cFii
lbl_80CE5FCC:
/* 80CE5FCC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CE5FD0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CE5FD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CE5FD8  7C 08 03 A6 */	mtlr r0
/* 80CE5FDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CE5FE0  4E 80 00 20 */	blr 
