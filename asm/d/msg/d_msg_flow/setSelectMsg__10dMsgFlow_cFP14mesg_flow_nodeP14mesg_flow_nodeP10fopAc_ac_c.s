lbl_8024A95C:
/* 8024A95C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024A960  7C 08 02 A6 */	mflr r0
/* 8024A964  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024A968  39 61 00 20 */	addi r11, r1, 0x20
/* 8024A96C  48 11 78 69 */	bl _savegpr_27
/* 8024A970  7C 7F 1B 78 */	mr r31, r3
/* 8024A974  7C 9B 23 78 */	mr r27, r4
/* 8024A978  7C BD 2B 78 */	mr r29, r5
/* 8024A97C  7C DC 33 78 */	mr r28, r6
/* 8024A980  3C 80 80 3A */	lis r4, d_msg_d_msg_flow__stringBase0@ha
/* 8024A984  38 84 9C B0 */	addi r4, r4, d_msg_d_msg_flow__stringBase0@l
/* 8024A988  38 84 00 0B */	addi r4, r4, 0xb
/* 8024A98C  4B FF FD 61 */	bl getMsgDataBlock__10dMsgFlow_cFPCc
/* 8024A990  A0 1D 00 02 */	lhz r0, 2(r29)
/* 8024A994  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8024A998  7C 83 02 14 */	add r4, r3, r0
/* 8024A99C  A3 C4 00 14 */	lhz r30, 0x14(r4)
/* 8024A9A0  A0 1B 00 02 */	lhz r0, 2(r27)
/* 8024A9A4  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8024A9A8  7C 63 02 14 */	add r3, r3, r0
/* 8024A9AC  A3 A3 00 14 */	lhz r29, 0x14(r3)
/* 8024A9B0  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8024A9B4  3C 03 00 01 */	addis r0, r3, 1
/* 8024A9B8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8024A9BC  41 82 00 20 */	beq lbl_8024A9DC
/* 8024A9C0  4B DD 50 65 */	bl fopMsgM_SearchByID__FUi
/* 8024A9C4  38 00 00 0F */	li r0, 0xf
/* 8024A9C8  B0 03 00 F8 */	sth r0, 0xf8(r3)
/* 8024A9CC  7F A3 EB 78 */	mr r3, r29
/* 8024A9D0  7F C4 F3 78 */	mr r4, r30
/* 8024A9D4  4B DD 54 B1 */	bl fopMsgM_messageSet__FUlUl
/* 8024A9D8  48 00 00 50 */	b lbl_8024AA28
lbl_8024A9DC:
/* 8024A9DC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8024A9E0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8024A9E4  A0 03 00 A4 */	lhz r0, 0xa4(r3)
/* 8024A9E8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8024A9EC  40 82 00 3C */	bne lbl_8024AA28
/* 8024A9F0  7F A3 EB 78 */	mr r3, r29
/* 8024A9F4  7F 84 E3 78 */	mr r4, r28
/* 8024A9F8  7F C5 F3 78 */	mr r5, r30
/* 8024A9FC  4B DD 53 39 */	bl fopMsgM_messageSet__FUlP10fopAc_ac_cUl
/* 8024AA00  90 7F 00 20 */	stw r3, 0x20(r31)
/* 8024AA04  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8024AA08  3C 03 00 01 */	addis r0, r3, 1
/* 8024AA0C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8024AA10  40 82 00 0C */	bne lbl_8024AA1C
/* 8024AA14  38 60 00 00 */	li r3, 0
/* 8024AA18  48 00 00 20 */	b lbl_8024AA38
lbl_8024AA1C:
/* 8024AA1C  A0 1F 00 1C */	lhz r0, 0x1c(r31)
/* 8024AA20  7C 03 07 34 */	extsh r3, r0
/* 8024AA24  4B FE D0 65 */	bl setNowTalkFlowNo__12dMsgObject_cFs
lbl_8024AA28:
/* 8024AA28  93 BF 00 28 */	stw r29, 0x28(r31)
/* 8024AA2C  38 00 00 01 */	li r0, 1
/* 8024AA30  98 1F 00 41 */	stb r0, 0x41(r31)
/* 8024AA34  38 60 00 01 */	li r3, 1
lbl_8024AA38:
/* 8024AA38  39 61 00 20 */	addi r11, r1, 0x20
/* 8024AA3C  48 11 77 E5 */	bl _restgpr_27
/* 8024AA40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024AA44  7C 08 03 A6 */	mtlr r0
/* 8024AA48  38 21 00 20 */	addi r1, r1, 0x20
/* 8024AA4C  4E 80 00 20 */	blr 
