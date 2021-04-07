lbl_80D28A50:
/* 80D28A50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D28A54  7C 08 02 A6 */	mflr r0
/* 80D28A58  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D28A5C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D28A60  7C 7F 1B 78 */	mr r31, r3
/* 80D28A64  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D28A68  54 00 1F 7A */	rlwinm r0, r0, 3, 0x1d, 0x1d
/* 80D28A6C  3C 60 80 D3 */	lis r3, l_arcName@ha /* 0x80D29730@ha */
/* 80D28A70  38 63 97 30 */	addi r3, r3, l_arcName@l /* 0x80D29730@l */
/* 80D28A74  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D28A78  3C 80 80 D3 */	lis r4, l_bck_idx@ha /* 0x80D295CC@ha */
/* 80D28A7C  38 84 95 CC */	addi r4, r4, l_bck_idx@l /* 0x80D295CC@l */
/* 80D28A80  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D28A84  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D28A88  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D28A8C  3C A5 00 02 */	addis r5, r5, 2
/* 80D28A90  38 C0 00 80 */	li r6, 0x80
/* 80D28A94  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D28A98  4B 31 38 55 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D28A9C  38 80 00 00 */	li r4, 0
/* 80D28AA0  38 A1 00 08 */	addi r5, r1, 8
/* 80D28AA4  81 83 00 00 */	lwz r12, 0(r3)
/* 80D28AA8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80D28AAC  7D 89 03 A6 */	mtctr r12
/* 80D28AB0  4E 80 04 21 */	bctrl 
/* 80D28AB4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D28AB8  D0 1F 06 34 */	stfs f0, 0x634(r31)
/* 80D28ABC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80D28AC0  D0 1F 06 38 */	stfs f0, 0x638(r31)
/* 80D28AC4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80D28AC8  D0 1F 06 3C */	stfs f0, 0x63c(r31)
/* 80D28ACC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D28AD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D28AD4  7C 08 03 A6 */	mtlr r0
/* 80D28AD8  38 21 00 30 */	addi r1, r1, 0x30
/* 80D28ADC  4E 80 00 20 */	blr 
