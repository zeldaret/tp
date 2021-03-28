lbl_80A3B448:
/* 80A3B448  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A3B44C  7C 08 02 A6 */	mflr r0
/* 80A3B450  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A3B454  39 61 00 30 */	addi r11, r1, 0x30
/* 80A3B458  4B 92 6D 78 */	b _savegpr_26
/* 80A3B45C  7C 7F 1B 78 */	mr r31, r3
/* 80A3B460  7C 9A 23 78 */	mr r26, r4
/* 80A3B464  7C BB 2B 78 */	mr r27, r5
/* 80A3B468  7C DE 33 78 */	mr r30, r6
/* 80A3B46C  7C FD 3B 78 */	mr r29, r7
/* 80A3B470  3B 80 00 00 */	li r28, 0
/* 80A3B474  4B 7F CE 80 */	b isMsgSendControl__12dMsgObject_cFv
/* 80A3B478  2C 03 00 00 */	cmpwi r3, 0
/* 80A3B47C  41 82 00 14 */	beq lbl_80A3B490
/* 80A3B480  2C 1B 00 00 */	cmpwi r27, 0
/* 80A3B484  41 82 01 4C */	beq lbl_80A3B5D0
/* 80A3B488  4B 7F CE 40 */	b offMsgSendControl__12dMsgObject_cFv
/* 80A3B48C  48 00 01 44 */	b lbl_80A3B5D0
lbl_80A3B490:
/* 80A3B490  38 7F 09 A8 */	addi r3, r31, 0x9a8
/* 80A3B494  7F E4 FB 78 */	mr r4, r31
/* 80A3B498  7F C5 F3 78 */	mr r5, r30
/* 80A3B49C  38 C0 00 00 */	li r6, 0
/* 80A3B4A0  4B 80 EE 38 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80A3B4A4  2C 03 00 00 */	cmpwi r3, 0
/* 80A3B4A8  41 82 00 0C */	beq lbl_80A3B4B4
/* 80A3B4AC  3B 80 00 01 */	li r28, 1
/* 80A3B4B0  48 00 01 20 */	b lbl_80A3B5D0
lbl_80A3B4B4:
/* 80A3B4B4  38 7F 09 A8 */	addi r3, r31, 0x9a8
/* 80A3B4B8  4B 80 F0 90 */	b getMsg__10dMsgFlow_cFv
/* 80A3B4BC  28 03 00 00 */	cmplwi r3, 0
/* 80A3B4C0  41 82 00 80 */	beq lbl_80A3B540
/* 80A3B4C4  38 7F 09 A8 */	addi r3, r31, 0x9a8
/* 80A3B4C8  4B 80 F0 80 */	b getMsg__10dMsgFlow_cFv
/* 80A3B4CC  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80A3B4D0  2C 00 00 06 */	cmpwi r0, 6
/* 80A3B4D4  41 82 00 20 */	beq lbl_80A3B4F4
/* 80A3B4D8  40 80 00 10 */	bge lbl_80A3B4E8
/* 80A3B4DC  2C 00 00 02 */	cmpwi r0, 2
/* 80A3B4E0  41 82 00 14 */	beq lbl_80A3B4F4
/* 80A3B4E4  48 00 00 5C */	b lbl_80A3B540
lbl_80A3B4E8:
/* 80A3B4E8  2C 00 00 11 */	cmpwi r0, 0x11
/* 80A3B4EC  41 82 00 48 */	beq lbl_80A3B534
/* 80A3B4F0  48 00 00 50 */	b lbl_80A3B540
lbl_80A3B4F4:
/* 80A3B4F4  28 1A 00 00 */	cmplwi r26, 0
/* 80A3B4F8  41 82 00 48 */	beq lbl_80A3B540
/* 80A3B4FC  3B C0 00 00 */	li r30, 0
/* 80A3B500  48 00 00 24 */	b lbl_80A3B524
lbl_80A3B504:
/* 80A3B504  38 7F 09 A8 */	addi r3, r31, 0x9a8
/* 80A3B508  4B 80 F0 30 */	b getMsgNo__10dMsgFlow_cFv
/* 80A3B50C  7C 1A F0 2E */	lwzx r0, r26, r30
/* 80A3B510  7C 00 18 40 */	cmplw r0, r3
/* 80A3B514  40 82 00 0C */	bne lbl_80A3B520
/* 80A3B518  3B 80 00 01 */	li r28, 1
/* 80A3B51C  48 00 00 24 */	b lbl_80A3B540
lbl_80A3B520:
/* 80A3B520  3B DE 00 04 */	addi r30, r30, 4
lbl_80A3B524:
/* 80A3B524  7C 1A F0 2E */	lwzx r0, r26, r30
/* 80A3B528  2C 00 00 00 */	cmpwi r0, 0
/* 80A3B52C  41 81 FF D8 */	bgt lbl_80A3B504
/* 80A3B530  48 00 00 10 */	b lbl_80A3B540
lbl_80A3B534:
/* 80A3B534  2C 1D 00 00 */	cmpwi r29, 0
/* 80A3B538  41 82 00 08 */	beq lbl_80A3B540
/* 80A3B53C  3B 80 00 01 */	li r28, 1
lbl_80A3B540:
/* 80A3B540  38 7F 09 A8 */	addi r3, r31, 0x9a8
/* 80A3B544  38 81 00 14 */	addi r4, r1, 0x14
/* 80A3B548  38 A1 00 0C */	addi r5, r1, 0xc
/* 80A3B54C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80A3B550  38 E1 00 08 */	addi r7, r1, 8
/* 80A3B554  4B 80 EE D0 */	b checkEventRender__10dMsgFlow_cFPiPiPiPi
/* 80A3B558  2C 03 00 00 */	cmpwi r3, 0
/* 80A3B55C  41 82 00 74 */	beq lbl_80A3B5D0
/* 80A3B560  83 A1 00 10 */	lwz r29, 0x10(r1)
/* 80A3B564  2C 1D 00 00 */	cmpwi r29, 0
/* 80A3B568  41 80 00 30 */	blt lbl_80A3B598
/* 80A3B56C  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A3B570  7C 1D 00 00 */	cmpw r29, r0
/* 80A3B574  41 82 00 24 */	beq lbl_80A3B598
/* 80A3B578  83 DF 0B 90 */	lwz r30, 0xb90(r31)
/* 80A3B57C  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A3B580  4B 70 A3 18 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3B584  93 DF 0B 90 */	stw r30, 0xb90(r31)
/* 80A3B588  93 BF 0B 8C */	stw r29, 0xb8c(r31)
/* 80A3B58C  3C 60 80 A4 */	lis r3, lit_4613@ha
/* 80A3B590  C0 03 09 14 */	lfs f0, lit_4613@l(r3)
/* 80A3B594  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A3B598:
/* 80A3B598  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80A3B59C  2C 1D 00 00 */	cmpwi r29, 0
/* 80A3B5A0  41 80 00 30 */	blt lbl_80A3B5D0
/* 80A3B5A4  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A3B5A8  7C 1D 00 00 */	cmpw r29, r0
/* 80A3B5AC  41 82 00 24 */	beq lbl_80A3B5D0
/* 80A3B5B0  83 DF 0B B4 */	lwz r30, 0xbb4(r31)
/* 80A3B5B4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A3B5B8  4B 70 A2 E0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3B5BC  93 DF 0B B4 */	stw r30, 0xbb4(r31)
/* 80A3B5C0  93 BF 0B B0 */	stw r29, 0xbb0(r31)
/* 80A3B5C4  3C 60 80 A4 */	lis r3, lit_4613@ha
/* 80A3B5C8  C0 03 09 14 */	lfs f0, lit_4613@l(r3)
/* 80A3B5CC  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
lbl_80A3B5D0:
/* 80A3B5D0  7F 83 E3 78 */	mr r3, r28
/* 80A3B5D4  39 61 00 30 */	addi r11, r1, 0x30
/* 80A3B5D8  4B 92 6C 44 */	b _restgpr_26
/* 80A3B5DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A3B5E0  7C 08 03 A6 */	mtlr r0
/* 80A3B5E4  38 21 00 30 */	addi r1, r1, 0x30
/* 80A3B5E8  4E 80 00 20 */	blr 
