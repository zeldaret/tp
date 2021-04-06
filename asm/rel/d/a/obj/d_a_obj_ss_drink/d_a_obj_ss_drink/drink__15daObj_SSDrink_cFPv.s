lbl_80CE6514:
/* 80CE6514  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CE6518  7C 08 02 A6 */	mflr r0
/* 80CE651C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CE6520  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80CE6524  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80CE6528  7C 7E 1B 78 */	mr r30, r3
/* 80CE652C  A0 03 0B 08 */	lhz r0, 0xb08(r3)
/* 80CE6530  2C 00 00 01 */	cmpwi r0, 1
/* 80CE6534  41 82 00 2C */	beq lbl_80CE6560
/* 80CE6538  40 80 00 D0 */	bge lbl_80CE6608
/* 80CE653C  2C 00 00 00 */	cmpwi r0, 0
/* 80CE6540  40 80 00 0C */	bge lbl_80CE654C
/* 80CE6544  48 00 00 C4 */	b lbl_80CE6608
/* 80CE6548  48 00 00 C0 */	b lbl_80CE6608
lbl_80CE654C:
/* 80CE654C  38 00 00 02 */	li r0, 2
/* 80CE6550  98 1E 0B 0A */	stb r0, 0xb0a(r30)
/* 80CE6554  38 00 00 60 */	li r0, 0x60
/* 80CE6558  98 1E 0B 0C */	stb r0, 0xb0c(r30)
/* 80CE655C  48 00 00 AC */	b lbl_80CE6608
lbl_80CE6560:
/* 80CE6560  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE6564  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE6568  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 80CE656C  7F E3 FB 78 */	mr r3, r31
/* 80CE6570  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80CE6574  81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 80CE6578  7D 89 03 A6 */	mtctr r12
/* 80CE657C  4E 80 04 21 */	bctrl 
/* 80CE6580  2C 03 00 00 */	cmpwi r3, 0
/* 80CE6584  41 82 00 44 */	beq lbl_80CE65C8
/* 80CE6588  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE658C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE6590  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80CE6594  4B 35 BE D5 */	bl reset__14dEvt_control_cFv
/* 80CE6598  3C 60 80 CE */	lis r3, lit_4432@ha /* 0x80CE6A9C@ha */
/* 80CE659C  38 83 6A 9C */	addi r4, r3, lit_4432@l /* 0x80CE6A9C@l */
/* 80CE65A0  80 64 00 00 */	lwz r3, 0(r4)
/* 80CE65A4  80 04 00 04 */	lwz r0, 4(r4)
/* 80CE65A8  90 61 00 14 */	stw r3, 0x14(r1)
/* 80CE65AC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CE65B0  80 04 00 08 */	lwz r0, 8(r4)
/* 80CE65B4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CE65B8  7F C3 F3 78 */	mr r3, r30
/* 80CE65BC  38 81 00 14 */	addi r4, r1, 0x14
/* 80CE65C0  4B FF F8 1D */	bl setProcess__15daObj_SSDrink_cFM15daObj_SSDrink_cFPCvPvPv_i
/* 80CE65C4  48 00 00 44 */	b lbl_80CE6608
lbl_80CE65C8:
/* 80CE65C8  38 61 00 08 */	addi r3, r1, 8
/* 80CE65CC  7F E4 FB 78 */	mr r4, r31
/* 80CE65D0  48 00 01 6D */	bl getLeftHandPos__9daPy_py_cCFv
/* 80CE65D4  C0 61 00 08 */	lfs f3, 8(r1)
/* 80CE65D8  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 80CE65DC  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80CE65E0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80CE65E4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80CE65E8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80CE65EC  C0 1E 0B 00 */	lfs f0, 0xb00(r30)
/* 80CE65F0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80CE65F4  40 80 00 14 */	bge lbl_80CE6608
/* 80CE65F8  D0 5E 0B 00 */	stfs f2, 0xb00(r30)
/* 80CE65FC  D0 7E 04 D0 */	stfs f3, 0x4d0(r30)
/* 80CE6600  D0 5E 04 D4 */	stfs f2, 0x4d4(r30)
/* 80CE6604  D0 3E 04 D8 */	stfs f1, 0x4d8(r30)
lbl_80CE6608:
/* 80CE6608  38 60 00 00 */	li r3, 0
/* 80CE660C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80CE6610  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80CE6614  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CE6618  7C 08 03 A6 */	mtlr r0
/* 80CE661C  38 21 00 40 */	addi r1, r1, 0x40
/* 80CE6620  4E 80 00 20 */	blr 
