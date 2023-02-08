lbl_80816A20:
/* 80816A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80816A24  7C 08 02 A6 */	mflr r0
/* 80816A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80816A2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80816A30  7C 7F 1B 78 */	mr r31, r3
/* 80816A34  3C 60 80 82 */	lis r3, d_a_e_ymb__stringBase0@ha /* 0x80821B04@ha */
/* 80816A38  38 63 1B 04 */	addi r3, r3, d_a_e_ymb__stringBase0@l /* 0x80821B04@l */
/* 80816A3C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80816A40  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80816A44  3C A5 00 02 */	addis r5, r5, 2
/* 80816A48  38 C0 00 80 */	li r6, 0x80
/* 80816A4C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80816A50  4B 82 58 9D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80816A54  80 9F 05 BC */	lwz r4, 0x5bc(r31)
/* 80816A58  80 04 00 08 */	lwz r0, 8(r4)
/* 80816A5C  7C 00 18 50 */	subf r0, r0, r3
/* 80816A60  7C 00 00 34 */	cntlzw r0, r0
/* 80816A64  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80816A68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80816A6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80816A70  7C 08 03 A6 */	mtlr r0
/* 80816A74  38 21 00 10 */	addi r1, r1, 0x10
/* 80816A78  4E 80 00 20 */	blr 
