lbl_80782F10:
/* 80782F10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80782F14  7C 08 02 A6 */	mflr r0
/* 80782F18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80782F1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80782F20  4B BD F2 BD */	bl _savegpr_29
/* 80782F24  7C 7F 1B 78 */	mr r31, r3
/* 80782F28  80 03 05 B0 */	lwz r0, 0x5b0(r3)
/* 80782F2C  2C 00 00 00 */	cmpwi r0, 0
/* 80782F30  41 82 00 10 */	beq lbl_80782F40
/* 80782F34  88 1F 06 02 */	lbz r0, 0x602(r31)
/* 80782F38  28 00 00 01 */	cmplwi r0, 1
/* 80782F3C  40 82 00 B8 */	bne lbl_80782FF4
lbl_80782F40:
/* 80782F40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80782F44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80782F48  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80782F4C  8B C3 05 69 */	lbz r30, 0x569(r3)
/* 80782F50  8B A3 05 68 */	lbz r29, 0x568(r3)
/* 80782F54  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80782F58  3C 80 80 78 */	lis r4, data_80784FCC@ha /* 0x80784FCC@ha */
/* 80782F5C  38 84 4F CC */	addi r4, r4, data_80784FCC@l /* 0x80784FCC@l */
/* 80782F60  80 84 00 00 */	lwz r4, 0(r4)
/* 80782F64  4B AE DC A1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80782F68  7C 63 07 34 */	extsh r3, r3
/* 80782F6C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80782F70  7C 03 00 50 */	subf r0, r3, r0
/* 80782F74  7C 00 07 34 */	extsh r0, r0
/* 80782F78  2C 00 D0 00 */	cmpwi r0, -12288
/* 80782F7C  40 81 00 6C */	ble lbl_80782FE8
/* 80782F80  2C 00 30 00 */	cmpwi r0, 0x3000
/* 80782F84  40 80 00 64 */	bge lbl_80782FE8
/* 80782F88  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80782F8C  28 00 00 01 */	cmplwi r0, 1
/* 80782F90  40 81 00 10 */	ble lbl_80782FA0
/* 80782F94  7F E3 FB 78 */	mr r3, r31
/* 80782F98  4B FF FF 5D */	bl Hit__8daE_SB_cFv
/* 80782F9C  48 00 00 5C */	b lbl_80782FF8
lbl_80782FA0:
/* 80782FA0  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80782FA4  28 00 00 01 */	cmplwi r0, 1
/* 80782FA8  41 82 00 28 */	beq lbl_80782FD0
/* 80782FAC  28 00 00 0A */	cmplwi r0, 0xa
/* 80782FB0  41 82 00 20 */	beq lbl_80782FD0
/* 80782FB4  28 00 00 29 */	cmplwi r0, 0x29
/* 80782FB8  41 82 00 18 */	beq lbl_80782FD0
/* 80782FBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80782FC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80782FC4  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80782FC8  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80782FCC  41 82 00 10 */	beq lbl_80782FDC
lbl_80782FD0:
/* 80782FD0  7F E3 FB 78 */	mr r3, r31
/* 80782FD4  4B FF FF 01 */	bl Hanekaeri__8daE_SB_cFv
/* 80782FD8  48 00 00 20 */	b lbl_80782FF8
lbl_80782FDC:
/* 80782FDC  7F E3 FB 78 */	mr r3, r31
/* 80782FE0  4B FF FF 15 */	bl Hit__8daE_SB_cFv
/* 80782FE4  48 00 00 14 */	b lbl_80782FF8
lbl_80782FE8:
/* 80782FE8  7F E3 FB 78 */	mr r3, r31
/* 80782FEC  4B FF FE E9 */	bl Hanekaeri__8daE_SB_cFv
/* 80782FF0  48 00 00 08 */	b lbl_80782FF8
lbl_80782FF4:
/* 80782FF4  4B FF FE E1 */	bl Hanekaeri__8daE_SB_cFv
lbl_80782FF8:
/* 80782FF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80782FFC  4B BD F2 2D */	bl _restgpr_29
/* 80783000  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80783004  7C 08 03 A6 */	mtlr r0
/* 80783008  38 21 00 20 */	addi r1, r1, 0x20
/* 8078300C  4E 80 00 20 */	blr 
