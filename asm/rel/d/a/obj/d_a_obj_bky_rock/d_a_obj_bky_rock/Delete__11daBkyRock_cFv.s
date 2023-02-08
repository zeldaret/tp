lbl_80BB6EB8:
/* 80BB6EB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BB6EBC  7C 08 02 A6 */	mflr r0
/* 80BB6EC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB6EC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB6EC8  4B 7A B3 15 */	bl _savegpr_29
/* 80BB6ECC  7C 7D 1B 78 */	mr r29, r3
/* 80BB6ED0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB6ED4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB6ED8  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80BB6EDC  3B FE 4C 9C */	addi r31, r30, 0x4c9c
/* 80BB6EE0  7F E3 FB 78 */	mr r3, r31
/* 80BB6EE4  4B 4B 8F 79 */	bl CheckQuake__12dVibration_cFv
/* 80BB6EE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB6EEC  41 82 00 10 */	beq lbl_80BB6EFC
/* 80BB6EF0  7F E3 FB 78 */	mr r3, r31
/* 80BB6EF4  38 80 00 1F */	li r4, 0x1f
/* 80BB6EF8  4B 4B 8E 9D */	bl StopQuake__12dVibration_cFi
lbl_80BB6EFC:
/* 80BB6EFC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80BB6F00  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80BB6F04  2C 00 00 01 */	cmpwi r0, 1
/* 80BB6F08  40 82 00 28 */	bne lbl_80BB6F30
/* 80BB6F0C  80 7D 05 AC */	lwz r3, 0x5ac(r29)
/* 80BB6F10  28 03 00 00 */	cmplwi r3, 0
/* 80BB6F14  41 82 00 1C */	beq lbl_80BB6F30
/* 80BB6F18  4B 6B 12 BD */	bl ChkUsed__9cBgW_BgIdCFv
/* 80BB6F1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB6F20  41 82 00 10 */	beq lbl_80BB6F30
/* 80BB6F24  7F C3 F3 78 */	mr r3, r30
/* 80BB6F28  80 9D 05 AC */	lwz r4, 0x5ac(r29)
/* 80BB6F2C  4B 4B D3 25 */	bl Release__4cBgSFP9dBgW_Base
lbl_80BB6F30:
/* 80BB6F30  7F A3 EB 78 */	mr r3, r29
/* 80BB6F34  38 80 FF FF */	li r4, -1
/* 80BB6F38  81 9D 05 70 */	lwz r12, 0x570(r29)
/* 80BB6F3C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80BB6F40  7D 89 03 A6 */	mtctr r12
/* 80BB6F44  4E 80 04 21 */	bctrl 
/* 80BB6F48  38 60 00 01 */	li r3, 1
/* 80BB6F4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB6F50  4B 7A B2 D9 */	bl _restgpr_29
/* 80BB6F54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BB6F58  7C 08 03 A6 */	mtlr r0
/* 80BB6F5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80BB6F60  4E 80 00 20 */	blr 
