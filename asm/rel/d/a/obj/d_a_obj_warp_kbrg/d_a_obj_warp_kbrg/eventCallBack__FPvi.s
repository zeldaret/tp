lbl_80D26F38:
/* 80D26F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D26F3C  7C 08 02 A6 */	mflr r0
/* 80D26F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D26F44  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D26F48  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D26F4C  80 04 5D AC */	lwz r0, 0x5dac(r4)
/* 80D26F50  28 03 00 00 */	cmplwi r3, 0
/* 80D26F54  41 82 00 40 */	beq lbl_80D26F94
/* 80D26F58  7C 03 03 78 */	mr r3, r0
/* 80D26F5C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80D26F60  81 8C 02 10 */	lwz r12, 0x210(r12)
/* 80D26F64  7D 89 03 A6 */	mtctr r12
/* 80D26F68  4E 80 04 21 */	bctrl 
/* 80D26F6C  4B 30 8B 7D */	bl dComIfGp_TransportWarp_check__Fv
/* 80D26F70  2C 03 00 00 */	cmpwi r3, 0
/* 80D26F74  41 82 00 20 */	beq lbl_80D26F94
/* 80D26F78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D26F7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D26F80  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D26F84  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D26F88  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D26F8C  A0 84 00 66 */	lhz r4, 0x66(r4)
/* 80D26F90  4B 30 D9 FD */	bl onEventBit__11dSv_event_cFUs
lbl_80D26F94:
/* 80D26F94  38 60 00 01 */	li r3, 1
/* 80D26F98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D26F9C  7C 08 03 A6 */	mtlr r0
/* 80D26FA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D26FA4  4E 80 00 20 */	blr 
