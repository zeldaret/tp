lbl_8024C3FC:
/* 8024C3FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024C400  7C 08 02 A6 */	mflr r0
/* 8024C404  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024C408  7C 86 23 78 */	mr r6, r4
/* 8024C40C  38 81 00 08 */	addi r4, r1, 8
/* 8024C410  38 A1 00 0A */	addi r5, r1, 0xa
/* 8024C414  38 C6 00 04 */	addi r6, r6, 4
/* 8024C418  4B FF EC D9 */	bl getParam__10dMsgFlow_cFPUsPUsPUc
/* 8024C41C  A0 01 00 08 */	lhz r0, 8(r1)
/* 8024C420  28 00 00 00 */	cmplwi r0, 0
/* 8024C424  41 82 00 24 */	beq lbl_8024C448
/* 8024C428  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024C42C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024C430  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8024C434  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 8024C438  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 8024C43C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 8024C440  7C 84 02 2E */	lhzx r4, r4, r0
/* 8024C444  4B DE 85 49 */	bl onEventBit__11dSv_event_cFUs
lbl_8024C448:
/* 8024C448  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 8024C44C  28 00 00 00 */	cmplwi r0, 0
/* 8024C450  41 82 00 24 */	beq lbl_8024C474
/* 8024C454  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024C458  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024C45C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8024C460  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 8024C464  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 8024C468  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 8024C46C  7C 84 02 2E */	lhzx r4, r4, r0
/* 8024C470  4B DE 85 1D */	bl onEventBit__11dSv_event_cFUs
lbl_8024C474:
/* 8024C474  38 60 00 01 */	li r3, 1
/* 8024C478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024C47C  7C 08 03 A6 */	mtlr r0
/* 8024C480  38 21 00 10 */	addi r1, r1, 0x10
/* 8024C484  4E 80 00 20 */	blr 
