lbl_80486CE4:
/* 80486CE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80486CE8  7C 08 02 A6 */	mflr r0
/* 80486CEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80486CF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80486CF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80486CF8  7C 7E 1B 78 */	mr r30, r3
/* 80486CFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80486D00  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80486D04  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80486D08  A8 9E 07 56 */	lha r4, 0x756(r30)
/* 80486D0C  4B BC 0D 6D */	bl endCheck__16dEvent_manager_cFs
/* 80486D10  2C 03 00 00 */	cmpwi r3, 0
/* 80486D14  41 82 00 50 */	beq lbl_80486D64
/* 80486D18  7F C3 F3 78 */	mr r3, r30
/* 80486D1C  4B FF F2 DD */	bl getSwNo__10daSwhit0_cFv
/* 80486D20  7C 64 1B 78 */	mr r4, r3
/* 80486D24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80486D28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80486D2C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80486D30  7C 05 07 74 */	extsb r5, r0
/* 80486D34  4B BA E6 2D */	bl isSwitch__10dSv_info_cCFii
/* 80486D38  2C 03 00 00 */	cmpwi r3, 0
/* 80486D3C  41 82 00 10 */	beq lbl_80486D4C
/* 80486D40  38 00 00 06 */	li r0, 6
/* 80486D44  98 1E 07 4D */	stb r0, 0x74d(r30)
/* 80486D48  48 00 00 0C */	b lbl_80486D54
lbl_80486D4C:
/* 80486D4C  38 00 00 01 */	li r0, 1
/* 80486D50  98 1E 07 4D */	stb r0, 0x74d(r30)
lbl_80486D54:
/* 80486D54  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80486D58  4B BB B7 11 */	bl reset__14dEvt_control_cFv
/* 80486D5C  38 60 00 01 */	li r3, 1
/* 80486D60  48 00 00 10 */	b lbl_80486D70
lbl_80486D64:
/* 80486D64  7F C3 F3 78 */	mr r3, r30
/* 80486D68  4B FF FB 41 */	bl DemoProc__10daSwhit0_cFv
/* 80486D6C  38 60 00 01 */	li r3, 1
lbl_80486D70:
/* 80486D70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80486D74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80486D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80486D7C  7C 08 03 A6 */	mtlr r0
/* 80486D80  38 21 00 10 */	addi r1, r1, 0x10
/* 80486D84  4E 80 00 20 */	blr 
