lbl_80236D0C:
/* 80236D0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80236D10  7C 08 02 A6 */	mflr r0
/* 80236D14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80236D18  39 61 00 20 */	addi r11, r1, 0x20
/* 80236D1C  48 12 B4 C1 */	bl _savegpr_29
/* 80236D20  7C 7E 1B 78 */	mr r30, r3
/* 80236D24  7C 9F 23 78 */	mr r31, r4
/* 80236D28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80236D2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80236D30  80 63 5E C8 */	lwz r3, 0x5ec8(r3)
/* 80236D34  4B DD 84 99 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 80236D38  7C 7D 1B 78 */	mr r29, r3
/* 80236D3C  A8 7E 01 6C */	lha r3, 0x16c(r30)
/* 80236D40  7F E0 07 34 */	extsh r0, r31
/* 80236D44  7C 03 00 00 */	cmpw r3, r0
/* 80236D48  41 82 00 7C */	beq lbl_80236DC4
/* 80236D4C  88 1E 01 9C */	lbz r0, 0x19c(r30)
/* 80236D50  28 00 00 00 */	cmplwi r0, 0
/* 80236D54  41 82 00 0C */	beq lbl_80236D60
/* 80236D58  38 00 00 02 */	li r0, 2
/* 80236D5C  98 1E 01 9C */	stb r0, 0x19c(r30)
lbl_80236D60:
/* 80236D60  7F E0 07 34 */	extsh r0, r31
/* 80236D64  2C 00 00 01 */	cmpwi r0, 1
/* 80236D68  41 80 00 2C */	blt lbl_80236D94
/* 80236D6C  A8 1E 01 6C */	lha r0, 0x16c(r30)
/* 80236D70  2C 00 00 00 */	cmpwi r0, 0
/* 80236D74  40 82 00 0C */	bne lbl_80236D80
/* 80236D78  38 00 00 01 */	li r0, 1
/* 80236D7C  98 1E 01 9D */	stb r0, 0x19d(r30)
lbl_80236D80:
/* 80236D80  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80236D84  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80236D88  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80236D8C  90 1E 01 30 */	stw r0, 0x130(r30)
/* 80236D90  48 00 00 0C */	b lbl_80236D9C
lbl_80236D94:
/* 80236D94  80 1E 01 28 */	lwz r0, 0x128(r30)
/* 80236D98  90 1E 01 30 */	stw r0, 0x130(r30)
lbl_80236D9C:
/* 80236D9C  A8 1E 01 6C */	lha r0, 0x16c(r30)
/* 80236DA0  2C 00 00 00 */	cmpwi r0, 0
/* 80236DA4  41 80 00 1C */	blt lbl_80236DC0
/* 80236DA8  80 1E 01 30 */	lwz r0, 0x130(r30)
/* 80236DAC  90 01 00 08 */	stw r0, 8(r1)
/* 80236DB0  80 7E 01 24 */	lwz r3, 0x124(r30)
/* 80236DB4  38 81 00 08 */	addi r4, r1, 8
/* 80236DB8  38 A0 00 80 */	li r5, 0x80
/* 80236DBC  48 0A 5B 55 */	bl parse_next__Q37JGadget6binary19TParse_header_blockFPPCvUl
lbl_80236DC0:
/* 80236DC0  B3 FE 01 6C */	sth r31, 0x16c(r30)
lbl_80236DC4:
/* 80236DC4  7F A3 EB 78 */	mr r3, r29
/* 80236DC8  4B DD 84 05 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 80236DCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80236DD0  48 12 B4 59 */	bl _restgpr_29
/* 80236DD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80236DD8  7C 08 03 A6 */	mtlr r0
/* 80236DDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80236DE0  4E 80 00 20 */	blr 
