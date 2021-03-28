lbl_80249F90:
/* 80249F90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80249F94  7C 08 02 A6 */	mflr r0
/* 80249F98  90 01 00 24 */	stw r0, 0x24(r1)
/* 80249F9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80249FA0  48 11 82 31 */	bl _savegpr_26
/* 80249FA4  7C 7C 1B 78 */	mr r28, r3
/* 80249FA8  7C 9D 23 78 */	mr r29, r4
/* 80249FAC  7C BA 2B 78 */	mr r26, r5
/* 80249FB0  7C DB 33 78 */	mr r27, r6
/* 80249FB4  7C FE 3B 78 */	mr r30, r7
/* 80249FB8  4B FE E2 75 */	bl getStatus__12dMsgObject_cFv
/* 80249FBC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80249FC0  20 60 00 01 */	subfic r3, r0, 1
/* 80249FC4  30 03 FF FF */	addic r0, r3, -1
/* 80249FC8  7C 00 19 10 */	subfe r0, r0, r3
/* 80249FCC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80249FD0  40 82 01 54 */	bne lbl_8024A124
/* 80249FD4  28 1E 00 00 */	cmplwi r30, 0
/* 80249FD8  40 82 00 38 */	bne lbl_8024A010
/* 80249FDC  38 00 00 00 */	li r0, 0
/* 80249FE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80249FE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80249FE8  90 03 5E F0 */	stw r0, 0x5ef0(r3)
/* 80249FEC  90 03 5E F4 */	stw r0, 0x5ef4(r3)
/* 80249FF0  90 03 5E F8 */	stw r0, 0x5ef8(r3)
/* 80249FF4  90 03 5E FC */	stw r0, 0x5efc(r3)
/* 80249FF8  90 03 5F 00 */	stw r0, 0x5f00(r3)
/* 80249FFC  90 03 5F 04 */	stw r0, 0x5f04(r3)
/* 8024A000  90 03 5F 08 */	stw r0, 0x5f08(r3)
/* 8024A004  90 03 5F 0C */	stw r0, 0x5f0c(r3)
/* 8024A008  90 03 5F 10 */	stw r0, 0x5f10(r3)
/* 8024A00C  90 03 5F 14 */	stw r0, 0x5f14(r3)
lbl_8024A010:
/* 8024A010  2C 1B 00 00 */	cmpwi r27, 0
/* 8024A014  40 82 00 1C */	bne lbl_8024A030
/* 8024A018  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 8024A01C  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l
/* 8024A020  88 03 03 1F */	lbz r0, 0x31f(r3)
/* 8024A024  28 00 00 02 */	cmplwi r0, 2
/* 8024A028  40 82 00 08 */	bne lbl_8024A030
/* 8024A02C  AB 43 02 F6 */	lha r26, 0x2f6(r3)
lbl_8024A030:
/* 8024A030  57 5F 04 3E */	clrlwi r31, r26, 0x10
/* 8024A034  7F 43 D3 78 */	mr r3, r26
/* 8024A038  4B FE E0 05 */	bl changeFlowGroup__12dMsgObject_cFl
/* 8024A03C  2C 1B 00 00 */	cmpwi r27, 0
/* 8024A040  40 82 00 AC */	bne lbl_8024A0EC
/* 8024A044  7F 83 E3 78 */	mr r3, r28
/* 8024A048  38 80 00 01 */	li r4, 1
/* 8024A04C  48 00 05 35 */	bl setInitValue__10dMsgFlow_cFi
/* 8024A050  7F 83 E3 78 */	mr r3, r28
/* 8024A054  3C 80 80 3A */	lis r4, d_msg_d_msg_flow__stringBase0@ha
/* 8024A058  38 84 9C B0 */	addi r4, r4, d_msg_d_msg_flow__stringBase0@l
/* 8024A05C  48 00 06 91 */	bl getMsgDataBlock__10dMsgFlow_cFPCc
/* 8024A060  90 7C 00 04 */	stw r3, 4(r28)
/* 8024A064  7F 83 E3 78 */	mr r3, r28
/* 8024A068  3C 80 80 3A */	lis r4, d_msg_d_msg_flow__stringBase0@ha
/* 8024A06C  38 84 9C B0 */	addi r4, r4, d_msg_d_msg_flow__stringBase0@l
/* 8024A070  38 84 00 05 */	addi r4, r4, 5
/* 8024A074  48 00 06 79 */	bl getMsgDataBlock__10dMsgFlow_cFPCc
/* 8024A078  90 7C 00 08 */	stw r3, 8(r28)
/* 8024A07C  80 7C 00 04 */	lwz r3, 4(r28)
/* 8024A080  38 03 00 10 */	addi r0, r3, 0x10
/* 8024A084  90 1C 00 0C */	stw r0, 0xc(r28)
/* 8024A088  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 8024A08C  80 7C 00 04 */	lwz r3, 4(r28)
/* 8024A090  A0 03 00 08 */	lhz r0, 8(r3)
/* 8024A094  54 00 18 38 */	slwi r0, r0, 3
/* 8024A098  7C 04 02 14 */	add r0, r4, r0
/* 8024A09C  90 1C 00 14 */	stw r0, 0x14(r28)
/* 8024A0A0  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 8024A0A4  80 7C 00 04 */	lwz r3, 4(r28)
/* 8024A0A8  A0 03 00 08 */	lhz r0, 8(r3)
/* 8024A0AC  54 00 08 3C */	slwi r0, r0, 1
/* 8024A0B0  7C 04 02 14 */	add r0, r4, r0
/* 8024A0B4  90 1C 00 18 */	stw r0, 0x18(r28)
/* 8024A0B8  B3 FC 00 1C */	sth r31, 0x1c(r28)
/* 8024A0BC  28 1D 00 00 */	cmplwi r29, 0
/* 8024A0C0  41 82 00 0C */	beq lbl_8024A0CC
/* 8024A0C4  7F A3 EB 78 */	mr r3, r29
/* 8024A0C8  4B FE D9 AD */	bl setTalkPartner__12dMsgObject_cFP10fopAc_ac_c
lbl_8024A0CC:
/* 8024A0CC  7F 83 E3 78 */	mr r3, r28
/* 8024A0D0  A0 9C 00 1C */	lhz r4, 0x1c(r28)
/* 8024A0D4  48 00 06 B1 */	bl getInitNodeIndex__10dMsgFlow_cFUs
/* 8024A0D8  7C 64 1B 78 */	mr r4, r3
/* 8024A0DC  7F 83 E3 78 */	mr r3, r28
/* 8024A0E0  7F C5 F3 78 */	mr r5, r30
/* 8024A0E4  48 00 06 E9 */	bl setNodeIndex__10dMsgFlow_cFUsPP10fopAc_ac_c
/* 8024A0E8  48 00 00 34 */	b lbl_8024A11C
lbl_8024A0EC:
/* 8024A0EC  A3 FC 00 10 */	lhz r31, 0x10(r28)
/* 8024A0F0  7F 83 E3 78 */	mr r3, r28
/* 8024A0F4  38 80 00 00 */	li r4, 0
/* 8024A0F8  48 00 04 89 */	bl setInitValue__10dMsgFlow_cFi
/* 8024A0FC  28 1D 00 00 */	cmplwi r29, 0
/* 8024A100  41 82 00 0C */	beq lbl_8024A10C
/* 8024A104  7F A3 EB 78 */	mr r3, r29
/* 8024A108  4B FE D9 6D */	bl setTalkPartner__12dMsgObject_cFP10fopAc_ac_c
lbl_8024A10C:
/* 8024A10C  7F 83 E3 78 */	mr r3, r28
/* 8024A110  7F E4 FB 78 */	mr r4, r31
/* 8024A114  7F C5 F3 78 */	mr r5, r30
/* 8024A118  48 00 06 B5 */	bl setNodeIndex__10dMsgFlow_cFUsPP10fopAc_ac_c
lbl_8024A11C:
/* 8024A11C  38 60 00 00 */	li r3, 0
/* 8024A120  4B FE E4 25 */	bl setSelectWordFlag__12dMsgObject_cFUc
lbl_8024A124:
/* 8024A124  39 61 00 20 */	addi r11, r1, 0x20
/* 8024A128  48 11 80 F5 */	bl _restgpr_26
/* 8024A12C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024A130  7C 08 03 A6 */	mtlr r0
/* 8024A134  38 21 00 20 */	addi r1, r1, 0x20
/* 8024A138  4E 80 00 20 */	blr 
