lbl_8045FE68:
/* 8045FE68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045FE6C  7C 08 02 A6 */	mflr r0
/* 8045FE70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045FE74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045FE78  93 C1 00 08 */	stw r30, 8(r1)
/* 8045FE7C  7C 7E 1B 78 */	mr r30, r3
/* 8045FE80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045FE84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045FE88  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 8045FE8C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8045FE90  3C 80 80 46 */	lis r4, struct_804606C4+0x0@ha
/* 8045FE94  38 84 06 C4 */	addi r4, r4, struct_804606C4+0x0@l
/* 8045FE98  38 84 01 9D */	addi r4, r4, 0x19d
/* 8045FE9C  38 A0 00 00 */	li r5, 0
/* 8045FEA0  38 C0 00 00 */	li r6, 0
/* 8045FEA4  4B BE 7C 78 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8045FEA8  90 7E 05 BC */	stw r3, 0x5bc(r30)
/* 8045FEAC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8045FEB0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8045FEB4  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 8045FEB8  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 8045FEBC  7C 03 00 50 */	subf r0, r3, r0
/* 8045FEC0  7C 00 07 35 */	extsh. r0, r0
/* 8045FEC4  40 80 00 0C */	bge lbl_8045FED0
/* 8045FEC8  7C 00 00 D0 */	neg r0, r0
/* 8045FECC  7C 00 07 34 */	extsh r0, r0
lbl_8045FED0:
/* 8045FED0  7C 00 07 34 */	extsh r0, r0
/* 8045FED4  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8045FED8  40 80 00 18 */	bge lbl_8045FEF0
/* 8045FEDC  2C 00 FC 18 */	cmpwi r0, -1000
/* 8045FEE0  40 81 00 10 */	ble lbl_8045FEF0
/* 8045FEE4  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8045FEE8  38 03 7F FF */	addi r0, r3, 0x7fff
/* 8045FEEC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_8045FEF0:
/* 8045FEF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045FEF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045FEF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045FEFC  7C 08 03 A6 */	mtlr r0
/* 8045FF00  38 21 00 10 */	addi r1, r1, 0x10
/* 8045FF04  4E 80 00 20 */	blr 
