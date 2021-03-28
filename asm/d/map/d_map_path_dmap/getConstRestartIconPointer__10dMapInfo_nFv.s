lbl_8003EF70:
/* 8003EF70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003EF74  7C 08 02 A6 */	mflr r0
/* 8003EF78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003EF7C  39 61 00 20 */	addi r11, r1, 0x20
/* 8003EF80  48 32 32 59 */	bl _savegpr_28
/* 8003EF84  3C 60 80 42 */	lis r3, mTypeGroupListAll__7dTres_c@ha
/* 8003EF88  38 63 54 38 */	addi r3, r3, mTypeGroupListAll__7dTres_c@l
/* 8003EF8C  8B C3 00 5C */	lbz r30, 0x5c(r3)
/* 8003EF90  38 60 00 07 */	li r3, 7
/* 8003EF94  48 05 D3 CD */	bl getFirstData__7dTres_cFUc
/* 8003EF98  7C 7D 1B 78 */	mr r29, r3
/* 8003EF9C  3B 80 00 00 */	li r28, 0
/* 8003EFA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8003EFA4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8003EFA8  48 00 00 58 */	b lbl_8003F000
lbl_8003EFAC:
/* 8003EFAC  88 1D 00 01 */	lbz r0, 1(r29)
/* 8003EFB0  7C 05 07 74 */	extsb r5, r0
/* 8003EFB4  88 1F 0D B4 */	lbz r0, 0xdb4(r31)
/* 8003EFB8  7C 00 07 74 */	extsb r0, r0
/* 8003EFBC  7C 05 00 00 */	cmpw r5, r0
/* 8003EFC0  40 82 00 30 */	bne lbl_8003EFF0
/* 8003EFC4  88 1D 00 10 */	lbz r0, 0x10(r29)
/* 8003EFC8  28 00 00 FF */	cmplwi r0, 0xff
/* 8003EFCC  41 82 00 44 */	beq lbl_8003F010
/* 8003EFD0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8003EFD4  28 04 00 FF */	cmplwi r4, 0xff
/* 8003EFD8  41 82 00 18 */	beq lbl_8003EFF0
/* 8003EFDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8003EFE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8003EFE4  4B FF 63 7D */	bl isSwitch__10dSv_info_cCFii
/* 8003EFE8  2C 03 00 00 */	cmpwi r3, 0
/* 8003EFEC  40 82 00 24 */	bne lbl_8003F010
lbl_8003EFF0:
/* 8003EFF0  7F A3 EB 78 */	mr r3, r29
/* 8003EFF4  48 05 D3 C1 */	bl getNextData__7dTres_cFPCQ27dTres_c15typeGroupData_c
/* 8003EFF8  7C 7D 1B 78 */	mr r29, r3
/* 8003EFFC  3B 9C 00 01 */	addi r28, r28, 1
lbl_8003F000:
/* 8003F000  7C 1C F0 00 */	cmpw r28, r30
/* 8003F004  40 80 00 0C */	bge lbl_8003F010
/* 8003F008  28 1D 00 00 */	cmplwi r29, 0
/* 8003F00C  40 82 FF A0 */	bne lbl_8003EFAC
lbl_8003F010:
/* 8003F010  7F A3 EB 78 */	mr r3, r29
/* 8003F014  39 61 00 20 */	addi r11, r1, 0x20
/* 8003F018  48 32 32 0D */	bl _restgpr_28
/* 8003F01C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003F020  7C 08 03 A6 */	mtlr r0
/* 8003F024  38 21 00 20 */	addi r1, r1, 0x20
/* 8003F028  4E 80 00 20 */	blr 
