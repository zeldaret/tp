lbl_800422C0:
/* 800422C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800422C4  7C 08 02 A6 */	mflr r0
/* 800422C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800422CC  39 61 00 20 */	addi r11, r1, 0x20
/* 800422D0  48 31 FF 0D */	bl _savegpr_29
/* 800422D4  7C 7D 1B 78 */	mr r29, r3
/* 800422D8  88 03 00 E2 */	lbz r0, 0xe2(r3)
/* 800422DC  7C 00 07 75 */	extsb. r0, r0
/* 800422E0  41 82 01 6C */	beq lbl_8004244C
/* 800422E4  8B DD 00 E3 */	lbz r30, 0xe3(r29)
/* 800422E8  38 00 00 00 */	li r0, 0
/* 800422EC  98 1D 00 E2 */	stb r0, 0xe2(r29)
/* 800422F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800422F4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
lbl_800422F8:
/* 800422F8  7F C0 07 74 */	extsb r0, r30
/* 800422FC  1C 60 00 18 */	mulli r3, r0, 0x18
/* 80042300  38 83 00 04 */	addi r4, r3, 4
/* 80042304  7C 9D 22 14 */	add r4, r29, r4
/* 80042308  8B C4 00 14 */	lbz r30, 0x14(r4)
/* 8004230C  A0 04 00 00 */	lhz r0, 0(r4)
/* 80042310  28 00 00 0D */	cmplwi r0, 0xd
/* 80042314  41 81 01 30 */	bgt lbl_80042444
/* 80042318  3C 60 80 3A */	lis r3, lit_4719@ha
/* 8004231C  38 63 7F 78 */	addi r3, r3, lit_4719@l
/* 80042320  54 00 10 3A */	slwi r0, r0, 2
/* 80042324  7C 03 00 2E */	lwzx r0, r3, r0
/* 80042328  7C 09 03 A6 */	mtctr r0
/* 8004232C  4E 80 04 20 */	bctr 
/* 80042330  A0 1F 00 02 */	lhz r0, 2(r31)
/* 80042334  28 00 00 00 */	cmplwi r0, 0
/* 80042338  41 82 01 0C */	beq lbl_80042444
/* 8004233C  7F A3 EB 78 */	mr r3, r29
/* 80042340  4B FF F6 E1 */	bl talkCheck__14dEvt_control_cFP12dEvt_order_c
/* 80042344  2C 03 00 00 */	cmpwi r3, 0
/* 80042348  41 82 00 FC */	beq lbl_80042444
/* 8004234C  38 60 00 01 */	li r3, 1
/* 80042350  48 00 01 00 */	b lbl_80042450
/* 80042354  A0 1F 00 02 */	lhz r0, 2(r31)
/* 80042358  28 00 00 00 */	cmplwi r0, 0
/* 8004235C  41 82 00 E8 */	beq lbl_80042444
/* 80042360  7F A3 EB 78 */	mr r3, r29
/* 80042364  4B FF FA 79 */	bl demoCheck__14dEvt_control_cFP12dEvt_order_c
/* 80042368  2C 03 00 00 */	cmpwi r3, 0
/* 8004236C  41 82 00 D8 */	beq lbl_80042444
/* 80042370  38 60 00 01 */	li r3, 1
/* 80042374  48 00 00 DC */	b lbl_80042450
/* 80042378  A0 1F 00 02 */	lhz r0, 2(r31)
/* 8004237C  28 00 00 00 */	cmplwi r0, 0
/* 80042380  41 82 00 C4 */	beq lbl_80042444
/* 80042384  7F A3 EB 78 */	mr r3, r29
/* 80042388  4B FF FC 8D */	bl doorCheck__14dEvt_control_cFP12dEvt_order_c
/* 8004238C  2C 03 00 00 */	cmpwi r3, 0
/* 80042390  41 82 00 B4 */	beq lbl_80042444
/* 80042394  38 60 00 01 */	li r3, 1
/* 80042398  48 00 00 B8 */	b lbl_80042450
/* 8004239C  38 00 00 03 */	li r0, 3
/* 800423A0  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 800423A4  7F A3 EB 78 */	mr r3, r29
/* 800423A8  4B FF F4 5D */	bl setParam__14dEvt_control_cFP12dEvt_order_c
/* 800423AC  38 60 00 01 */	li r3, 1
/* 800423B0  48 00 00 A0 */	b lbl_80042450
/* 800423B4  A0 1F 00 02 */	lhz r0, 2(r31)
/* 800423B8  28 00 00 00 */	cmplwi r0, 0
/* 800423BC  41 82 00 88 */	beq lbl_80042444
/* 800423C0  7F A3 EB 78 */	mr r3, r29
/* 800423C4  4B FF FB DD */	bl potentialCheck__14dEvt_control_cFP12dEvt_order_c
/* 800423C8  2C 03 00 00 */	cmpwi r3, 0
/* 800423CC  41 82 00 78 */	beq lbl_80042444
/* 800423D0  38 60 00 01 */	li r3, 1
/* 800423D4  48 00 00 7C */	b lbl_80042450
/* 800423D8  A0 1F 00 02 */	lhz r0, 2(r31)
/* 800423DC  28 00 00 00 */	cmplwi r0, 0
/* 800423E0  41 82 00 64 */	beq lbl_80042444
/* 800423E4  7F A3 EB 78 */	mr r3, r29
/* 800423E8  4B FF FD 45 */	bl itemCheck__14dEvt_control_cFP12dEvt_order_c
/* 800423EC  2C 03 00 00 */	cmpwi r3, 0
/* 800423F0  41 82 00 54 */	beq lbl_80042444
/* 800423F4  38 60 00 01 */	li r3, 1
/* 800423F8  48 00 00 58 */	b lbl_80042450
/* 800423FC  A0 1F 00 02 */	lhz r0, 2(r31)
/* 80042400  28 00 00 00 */	cmplwi r0, 0
/* 80042404  41 82 00 40 */	beq lbl_80042444
/* 80042408  7F A3 EB 78 */	mr r3, r29
/* 8004240C  4B FF F7 4D */	bl talkXyCheck__14dEvt_control_cFP12dEvt_order_c
/* 80042410  2C 03 00 00 */	cmpwi r3, 0
/* 80042414  41 82 00 30 */	beq lbl_80042444
/* 80042418  38 60 00 01 */	li r3, 1
/* 8004241C  48 00 00 34 */	b lbl_80042450
/* 80042420  A0 1F 00 02 */	lhz r0, 2(r31)
/* 80042424  28 00 00 00 */	cmplwi r0, 0
/* 80042428  41 82 00 1C */	beq lbl_80042444
/* 8004242C  7F A3 EB 78 */	mr r3, r29
/* 80042430  4B FF F8 61 */	bl catchCheck__14dEvt_control_cFP12dEvt_order_c
/* 80042434  2C 03 00 00 */	cmpwi r3, 0
/* 80042438  41 82 00 0C */	beq lbl_80042444
/* 8004243C  38 60 00 01 */	li r3, 1
/* 80042440  48 00 00 10 */	b lbl_80042450
lbl_80042444:
/* 80042444  7F C0 07 75 */	extsb. r0, r30
/* 80042448  40 80 FE B0 */	bge lbl_800422F8
lbl_8004244C:
/* 8004244C  38 60 00 00 */	li r3, 0
lbl_80042450:
/* 80042450  39 61 00 20 */	addi r11, r1, 0x20
/* 80042454  48 31 FD D5 */	bl _restgpr_29
/* 80042458  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004245C  7C 08 03 A6 */	mtlr r0
/* 80042460  38 21 00 20 */	addi r1, r1, 0x20
/* 80042464  4E 80 00 20 */	blr 
