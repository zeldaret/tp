lbl_8024A618:
/* 8024A618  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024A61C  7C 08 02 A6 */	mflr r0
/* 8024A620  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024A624  39 61 00 20 */	addi r11, r1, 0x20
/* 8024A628  48 11 7B B5 */	bl _savegpr_29
/* 8024A62C  7C 7D 1B 78 */	mr r29, r3
/* 8024A630  7C 9E 23 78 */	mr r30, r4
/* 8024A634  7C BF 2B 78 */	mr r31, r5
/* 8024A638  7F C3 F3 78 */	mr r3, r30
/* 8024A63C  4B FE DA 01 */	bl changeFlowGroup__12dMsgObject_cFl
/* 8024A640  7F A3 EB 78 */	mr r3, r29
/* 8024A644  38 80 00 00 */	li r4, 0
/* 8024A648  4B FF FF 39 */	bl setInitValue__10dMsgFlow_cFi
/* 8024A64C  7F A3 EB 78 */	mr r3, r29
/* 8024A650  3C 80 80 3A */	lis r4, d_msg_d_msg_flow__stringBase0@ha
/* 8024A654  38 84 9C B0 */	addi r4, r4, d_msg_d_msg_flow__stringBase0@l
/* 8024A658  48 00 00 95 */	bl getMsgDataBlock__10dMsgFlow_cFPCc
/* 8024A65C  90 7D 00 04 */	stw r3, 4(r29)
/* 8024A660  7F A3 EB 78 */	mr r3, r29
/* 8024A664  3C 80 80 3A */	lis r4, d_msg_d_msg_flow__stringBase0@ha
/* 8024A668  38 84 9C B0 */	addi r4, r4, d_msg_d_msg_flow__stringBase0@l
/* 8024A66C  38 84 00 05 */	addi r4, r4, 5
/* 8024A670  48 00 00 7D */	bl getMsgDataBlock__10dMsgFlow_cFPCc
/* 8024A674  90 7D 00 08 */	stw r3, 8(r29)
/* 8024A678  80 7D 00 04 */	lwz r3, 4(r29)
/* 8024A67C  38 03 00 10 */	addi r0, r3, 0x10
/* 8024A680  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8024A684  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8024A688  80 7D 00 04 */	lwz r3, 4(r29)
/* 8024A68C  A0 03 00 08 */	lhz r0, 8(r3)
/* 8024A690  54 00 18 38 */	slwi r0, r0, 3
/* 8024A694  7C 04 02 14 */	add r0, r4, r0
/* 8024A698  90 1D 00 14 */	stw r0, 0x14(r29)
/* 8024A69C  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 8024A6A0  80 7D 00 04 */	lwz r3, 4(r29)
/* 8024A6A4  A0 03 00 08 */	lhz r0, 8(r3)
/* 8024A6A8  54 00 08 3C */	slwi r0, r0, 1
/* 8024A6AC  7C 04 02 14 */	add r0, r4, r0
/* 8024A6B0  90 1D 00 18 */	stw r0, 0x18(r29)
/* 8024A6B4  B3 DD 00 1C */	sth r30, 0x1c(r29)
/* 8024A6B8  7F A3 EB 78 */	mr r3, r29
/* 8024A6BC  A0 9D 00 1C */	lhz r4, 0x1c(r29)
/* 8024A6C0  48 00 00 C5 */	bl getInitNodeIndex__10dMsgFlow_cFUs
/* 8024A6C4  7C 64 1B 78 */	mr r4, r3
/* 8024A6C8  7F A3 EB 78 */	mr r3, r29
/* 8024A6CC  7F E5 FB 78 */	mr r5, r31
/* 8024A6D0  48 00 00 FD */	bl setNodeIndex__10dMsgFlow_cFUsPP10fopAc_ac_c
/* 8024A6D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8024A6D8  48 11 7B 51 */	bl _restgpr_29
/* 8024A6DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024A6E0  7C 08 03 A6 */	mtlr r0
/* 8024A6E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8024A6E8  4E 80 00 20 */	blr 
