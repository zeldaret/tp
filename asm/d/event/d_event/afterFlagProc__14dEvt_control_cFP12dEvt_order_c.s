lbl_80041964:
/* 80041964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80041968  7C 08 02 A6 */	mflr r0
/* 8004196C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80041970  A0 04 00 02 */	lhz r0, 2(r4)
/* 80041974  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80041978  41 82 00 20 */	beq lbl_80041998
/* 8004197C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80041980  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80041984  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80041988  3C 80 80 38 */	lis r4, d_event_d_event__stringBase0@ha /* 0x80379D80@ha */
/* 8004198C  38 84 9D 80 */	addi r4, r4, d_event_d_event__stringBase0@l /* 0x80379D80@l */
/* 80041990  38 84 00 07 */	addi r4, r4, 7
/* 80041994  48 00 69 39 */	bl issueStaff__16dEvent_manager_cFPCc
lbl_80041998:
/* 80041998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004199C  7C 08 03 A6 */	mtlr r0
/* 800419A0  38 21 00 10 */	addi r1, r1, 0x10
/* 800419A4  4E 80 00 20 */	blr 
