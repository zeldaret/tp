lbl_8067E374:
/* 8067E374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067E378  7C 08 02 A6 */	mflr r0
/* 8067E37C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067E380  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067E384  7C 7F 1B 78 */	mr r31, r3
/* 8067E388  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8067E38C  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8067E390  38 60 00 45 */	li r3, 0x45
/* 8067E394  41 82 00 08 */	beq lbl_8067E39C
/* 8067E398  38 60 00 52 */	li r3, 0x52
lbl_8067E39C:
/* 8067E39C  7C 64 1B 78 */	mr r4, r3
/* 8067E3A0  88 1F 05 B8 */	lbz r0, 0x5b8(r31)
/* 8067E3A4  28 00 00 02 */	cmplwi r0, 2
/* 8067E3A8  40 82 00 08 */	bne lbl_8067E3B0
/* 8067E3AC  38 83 00 01 */	addi r4, r3, 1
lbl_8067E3B0:
/* 8067E3B0  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8067E3B4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8067E3B8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8067E3BC  3C A5 00 02 */	addis r5, r5, 2
/* 8067E3C0  38 C0 00 80 */	li r6, 0x80
/* 8067E3C4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8067E3C8  4B 9B DF 24 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8067E3CC  3C 80 00 08 */	lis r4, 8
/* 8067E3D0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8067E3D4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8067E3D8  4B 99 68 7C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8067E3DC  90 7F 05 B4 */	stw r3, 0x5b4(r31)
/* 8067E3E0  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 8067E3E4  28 00 00 00 */	cmplwi r0, 0
/* 8067E3E8  40 82 00 0C */	bne lbl_8067E3F4
/* 8067E3EC  38 60 00 00 */	li r3, 0
/* 8067E3F0  48 00 00 24 */	b lbl_8067E414
lbl_8067E3F4:
/* 8067E3F4  38 7F 0A 18 */	addi r3, r31, 0xa18
/* 8067E3F8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8067E3FC  38 A0 00 01 */	li r5, 1
/* 8067E400  81 9F 0A 28 */	lwz r12, 0xa28(r31)
/* 8067E404  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8067E408  7D 89 03 A6 */	mtctr r12
/* 8067E40C  4E 80 04 21 */	bctrl 
/* 8067E410  38 60 00 01 */	li r3, 1
lbl_8067E414:
/* 8067E414  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067E418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067E41C  7C 08 03 A6 */	mtlr r0
/* 8067E420  38 21 00 10 */	addi r1, r1, 0x10
/* 8067E424  4E 80 00 20 */	blr 
