lbl_8045FDF8:
/* 8045FDF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045FDFC  7C 08 02 A6 */	mflr r0
/* 8045FE00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045FE04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045FE08  7C 7F 1B 78 */	mr r31, r3
/* 8045FE0C  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 8045FE10  B0 03 04 E6 */	sth r0, 0x4e6(r3)
/* 8045FE14  88 03 06 0F */	lbz r0, 0x60f(r3)
/* 8045FE18  28 00 00 01 */	cmplwi r0, 1
/* 8045FE1C  40 82 00 10 */	bne lbl_8045FE2C
/* 8045FE20  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8045FE24  38 03 7F FF */	addi r0, r3, 0x7fff
/* 8045FE28  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_8045FE2C:
/* 8045FE2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045FE30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045FE34  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8045FE38  3C 80 80 46 */	lis r4, d_a_door_knob00__stringBase0@ha /* 0x804606C4@ha */
/* 8045FE3C  38 84 06 C4 */	addi r4, r4, d_a_door_knob00__stringBase0@l /* 0x804606C4@l */
/* 8045FE40  38 84 01 9D */	addi r4, r4, 0x19d
/* 8045FE44  38 A0 00 00 */	li r5, 0
/* 8045FE48  38 C0 00 00 */	li r6, 0
/* 8045FE4C  4B BE 7C D1 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8045FE50  90 7F 05 BC */	stw r3, 0x5bc(r31)
/* 8045FE54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045FE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045FE5C  7C 08 03 A6 */	mtlr r0
/* 8045FE60  38 21 00 10 */	addi r1, r1, 0x10
/* 8045FE64  4E 80 00 20 */	blr 
