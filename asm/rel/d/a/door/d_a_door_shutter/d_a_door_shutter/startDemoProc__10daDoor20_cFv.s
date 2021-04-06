lbl_80464EC4:
/* 80464EC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80464EC8  7C 08 02 A6 */	mflr r0
/* 80464ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80464ED0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80464ED4  93 C1 00 08 */	stw r30, 8(r1)
/* 80464ED8  7C 7E 1B 78 */	mr r30, r3
/* 80464EDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80464EE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80464EE4  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 80464EE8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80464EEC  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80464EF0  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80464EF4  38 84 01 59 */	addi r4, r4, 0x159
/* 80464EF8  38 A0 00 00 */	li r5, 0
/* 80464EFC  38 C0 00 00 */	li r6, 0
/* 80464F00  4B BE 2C 1D */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80464F04  90 7E 06 CC */	stw r3, 0x6cc(r30)
/* 80464F08  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80464F0C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80464F10  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80464F14  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80464F18  7C 03 00 50 */	subf r0, r3, r0
/* 80464F1C  7C 00 07 35 */	extsh. r0, r0
/* 80464F20  40 80 00 0C */	bge lbl_80464F2C
/* 80464F24  7C 00 00 D0 */	neg r0, r0
/* 80464F28  7C 00 07 34 */	extsh r0, r0
lbl_80464F2C:
/* 80464F2C  7C 00 07 34 */	extsh r0, r0
/* 80464F30  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80464F34  40 80 00 18 */	bge lbl_80464F4C
/* 80464F38  2C 00 FC 18 */	cmpwi r0, -1000
/* 80464F3C  40 81 00 10 */	ble lbl_80464F4C
/* 80464F40  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80464F44  38 03 7F FF */	addi r0, r3, 0x7fff
/* 80464F48  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_80464F4C:
/* 80464F4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80464F50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80464F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80464F58  7C 08 03 A6 */	mtlr r0
/* 80464F5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80464F60  4E 80 00 20 */	blr 
