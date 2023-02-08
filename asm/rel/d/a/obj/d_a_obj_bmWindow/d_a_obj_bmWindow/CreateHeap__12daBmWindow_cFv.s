lbl_80BB8400:
/* 80BB8400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB8404  7C 08 02 A6 */	mflr r0
/* 80BB8408  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB840C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB8410  7C 7F 1B 78 */	mr r31, r3
/* 80BB8414  3C 60 80 BC */	lis r3, d_a_obj_bmWindow__stringBase0@ha /* 0x80BB9800@ha */
/* 80BB8418  38 63 98 00 */	addi r3, r3, d_a_obj_bmWindow__stringBase0@l /* 0x80BB9800@l */
/* 80BB841C  38 80 00 04 */	li r4, 4
/* 80BB8420  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB8424  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB8428  3C A5 00 02 */	addis r5, r5, 2
/* 80BB842C  38 C0 00 80 */	li r6, 0x80
/* 80BB8430  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BB8434  4B 48 3E B9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BB8438  38 80 00 00 */	li r4, 0
/* 80BB843C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BB8440  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BB8444  4B 45 C8 11 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BB8448  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80BB844C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BB8450  30 03 FF FF */	addic r0, r3, -1
/* 80BB8454  7C 60 19 10 */	subfe r3, r0, r3
/* 80BB8458  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB845C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB8460  7C 08 03 A6 */	mtlr r0
/* 80BB8464  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB8468  4E 80 00 20 */	blr 
