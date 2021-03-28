lbl_8014A0B0:
/* 8014A0B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014A0B4  7C 08 02 A6 */	mflr r0
/* 8014A0B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014A0BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014A0C0  7C 7F 1B 78 */	mr r31, r3
/* 8014A0C4  80 63 05 70 */	lwz r3, 0x570(r3)
/* 8014A0C8  A0 1F 0E 30 */	lhz r0, 0xe30(r31)
/* 8014A0CC  54 00 18 38 */	slwi r0, r0, 3
/* 8014A0D0  7C 63 00 2E */	lwzx r3, r3, r0
/* 8014A0D4  48 21 EB 11 */	bl strlen
/* 8014A0D8  28 03 00 00 */	cmplwi r3, 0
/* 8014A0DC  41 82 00 B8 */	beq lbl_8014A194
/* 8014A0E0  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 8014A0E4  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8014A0E8  A0 1F 0E 30 */	lhz r0, 0xe30(r31)
/* 8014A0EC  54 00 18 38 */	slwi r0, r0, 3
/* 8014A0F0  7C 63 02 14 */	add r3, r3, r0
/* 8014A0F4  80 03 00 04 */	lwz r0, 4(r3)
/* 8014A0F8  54 00 10 3A */	slwi r0, r0, 2
/* 8014A0FC  7C 64 00 2E */	lwzx r3, r4, r0
/* 8014A100  48 21 EA E5 */	bl strlen
/* 8014A104  28 03 00 00 */	cmplwi r3, 0
/* 8014A108  41 82 00 3C */	beq lbl_8014A144
/* 8014A10C  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 8014A110  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8014A114  A0 1F 0E 30 */	lhz r0, 0xe30(r31)
/* 8014A118  54 00 18 38 */	slwi r0, r0, 3
/* 8014A11C  7C 63 02 14 */	add r3, r3, r0
/* 8014A120  80 03 00 04 */	lwz r0, 4(r3)
/* 8014A124  54 00 10 3A */	slwi r0, r0, 2
/* 8014A128  7C 04 00 2E */	lwzx r0, r4, r0
/* 8014A12C  90 1F 01 00 */	stw r0, 0x100(r31)
/* 8014A130  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8014A134  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8014A138  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8014A13C  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 8014A140  4B EF C6 C1 */	bl setObjectArchive__16dEvent_manager_cFPc
lbl_8014A144:
/* 8014A144  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8014A148  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8014A14C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8014A150  7F E4 FB 78 */	mr r4, r31
/* 8014A154  80 BF 05 70 */	lwz r5, 0x570(r31)
/* 8014A158  A0 1F 0E 30 */	lhz r0, 0xe30(r31)
/* 8014A15C  54 00 18 38 */	slwi r0, r0, 3
/* 8014A160  7C A5 00 2E */	lwzx r5, r5, r0
/* 8014A164  38 C0 00 FF */	li r6, 0xff
/* 8014A168  4B EF D5 F1 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 8014A16C  B0 7F 0E 1C */	sth r3, 0xe1c(r31)
/* 8014A170  7F E3 FB 78 */	mr r3, r31
/* 8014A174  A8 9F 0E 1C */	lha r4, 0xe1c(r31)
/* 8014A178  38 A0 00 FF */	li r5, 0xff
/* 8014A17C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8014A180  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8014A184  38 E0 00 28 */	li r7, 0x28
/* 8014A188  39 00 00 01 */	li r8, 1
/* 8014A18C  4B ED 14 F1 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8014A190  48 00 00 80 */	b lbl_8014A210
lbl_8014A194:
/* 8014A194  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 8014A198  28 00 00 00 */	cmplwi r0, 0
/* 8014A19C  41 82 00 10 */	beq lbl_8014A1AC
/* 8014A1A0  48 01 52 85 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 8014A1A4  2C 03 00 00 */	cmpwi r3, 0
/* 8014A1A8  41 82 00 68 */	beq lbl_8014A210
lbl_8014A1AC:
/* 8014A1AC  80 7F 05 5C */	lwz r3, 0x55c(r31)
/* 8014A1B0  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8014A1B4  40 82 00 0C */	bne lbl_8014A1C0
/* 8014A1B8  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8014A1BC  41 82 00 54 */	beq lbl_8014A210
lbl_8014A1C0:
/* 8014A1C0  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8014A1C4  60 00 00 01 */	ori r0, r0, 1
/* 8014A1C8  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 8014A1CC  7F E3 FB 78 */	mr r3, r31
/* 8014A1D0  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 8014A1D4  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 8014A1D8  7D 89 03 A6 */	mtctr r12
/* 8014A1DC  4E 80 04 21 */	bctrl 
/* 8014A1E0  2C 03 00 00 */	cmpwi r3, 0
/* 8014A1E4  41 82 00 10 */	beq lbl_8014A1F4
/* 8014A1E8  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8014A1EC  60 00 00 20 */	ori r0, r0, 0x20
/* 8014A1F0  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_8014A1F4:
/* 8014A1F4  88 1F 0E 32 */	lbz r0, 0xe32(r31)
/* 8014A1F8  28 00 00 00 */	cmplwi r0, 0
/* 8014A1FC  41 82 00 14 */	beq lbl_8014A210
/* 8014A200  7F E3 FB 78 */	mr r3, r31
/* 8014A204  38 80 00 00 */	li r4, 0
/* 8014A208  38 A0 00 00 */	li r5, 0
/* 8014A20C  4B ED 0F 91 */	bl fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
lbl_8014A210:
/* 8014A210  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014A214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014A218  7C 08 03 A6 */	mtlr r0
/* 8014A21C  38 21 00 10 */	addi r1, r1, 0x10
/* 8014A220  4E 80 00 20 */	blr 
