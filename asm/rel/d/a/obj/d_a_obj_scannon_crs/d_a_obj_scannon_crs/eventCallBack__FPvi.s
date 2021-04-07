lbl_80CC9698:
/* 80CC9698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC969C  7C 08 02 A6 */	mflr r0
/* 80CC96A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC96A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC96A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CC96AC  40 82 00 0C */	bne lbl_80CC96B8
/* 80CC96B0  38 60 00 01 */	li r3, 1
/* 80CC96B4  48 00 00 74 */	b lbl_80CC9728
lbl_80CC96B8:
/* 80CC96B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC96BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC96C0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CC96C4  28 03 00 00 */	cmplwi r3, 0
/* 80CC96C8  41 82 00 5C */	beq lbl_80CC9724
/* 80CC96CC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CC96D0  81 8C 02 10 */	lwz r12, 0x210(r12)
/* 80CC96D4  7D 89 03 A6 */	mtctr r12
/* 80CC96D8  4E 80 04 21 */	bctrl 
/* 80CC96DC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CC96E0  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 80CC96E4  4B 36 63 B5 */	bl dComIfGp_TargetWarpPt_set__FUc
/* 80CC96E8  4B 36 64 01 */	bl dComIfGp_TransportWarp_check__Fv
/* 80CC96EC  2C 03 00 00 */	cmpwi r3, 0
/* 80CC96F0  41 82 00 34 */	beq lbl_80CC9724
/* 80CC96F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC96F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC96FC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80CC9700  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80CC9704  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80CC9708  A0 84 03 20 */	lhz r4, 0x320(r4)
/* 80CC970C  4B 36 B2 81 */	bl onEventBit__11dSv_event_cFUs
/* 80CC9710  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC9714  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC9718  38 63 02 B0 */	addi r3, r3, 0x2b0
/* 80CC971C  38 80 00 35 */	li r4, 0x35
/* 80CC9720  4B 36 B0 F1 */	bl onSwitch__12dSv_memBit_cFi
lbl_80CC9724:
/* 80CC9724  38 60 00 01 */	li r3, 1
lbl_80CC9728:
/* 80CC9728  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC972C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC9730  7C 08 03 A6 */	mtlr r0
/* 80CC9734  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC9738  4E 80 00 20 */	blr 
