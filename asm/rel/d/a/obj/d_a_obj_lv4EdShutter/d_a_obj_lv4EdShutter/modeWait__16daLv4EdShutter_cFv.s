lbl_80C5E1C8:
/* 80C5E1C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5E1CC  7C 08 02 A6 */	mflr r0
/* 80C5E1D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5E1D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5E1D8  7C 7F 1B 78 */	mr r31, r3
/* 80C5E1DC  88 03 05 CA */	lbz r0, 0x5ca(r3)
/* 80C5E1E0  28 00 00 00 */	cmplwi r0, 0
/* 80C5E1E4  40 82 00 78 */	bne lbl_80C5E25C
/* 80C5E1E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5E1EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C5E1F0  88 9F 05 C9 */	lbz r4, 0x5c9(r31)
/* 80C5E1F4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C5E1F8  7C 05 07 74 */	extsb r5, r0
/* 80C5E1FC  4B 3D 71 64 */	b isSwitch__10dSv_info_cCFii
/* 80C5E200  2C 03 00 00 */	cmpwi r3, 0
/* 80C5E204  41 82 00 C8 */	beq lbl_80C5E2CC
/* 80C5E208  A0 7F 05 C6 */	lhz r3, 0x5c6(r31)
/* 80C5E20C  28 03 00 00 */	cmplwi r3, 0
/* 80C5E210  40 82 00 40 */	bne lbl_80C5E250
/* 80C5E214  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C5E218  54 04 46 3E */	srwi r4, r0, 0x18
/* 80C5E21C  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C5E220  41 82 00 18 */	beq lbl_80C5E238
/* 80C5E224  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 80C5E228  38 A0 00 FF */	li r5, 0xff
/* 80C5E22C  38 C0 00 01 */	li r6, 1
/* 80C5E230  4B 3E A7 10 */	b orderEvent__17dEvLib_callback_cFiii
/* 80C5E234  48 00 00 98 */	b lbl_80C5E2CC
lbl_80C5E238:
/* 80C5E238  7F E3 FB 78 */	mr r3, r31
/* 80C5E23C  81 9F 05 9C */	lwz r12, 0x59c(r31)
/* 80C5E240  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80C5E244  7D 89 03 A6 */	mtctr r12
/* 80C5E248  4E 80 04 21 */	bctrl 
/* 80C5E24C  48 00 00 80 */	b lbl_80C5E2CC
lbl_80C5E250:
/* 80C5E250  38 03 FF FF */	addi r0, r3, -1
/* 80C5E254  B0 1F 05 C6 */	sth r0, 0x5c6(r31)
/* 80C5E258  48 00 00 74 */	b lbl_80C5E2CC
lbl_80C5E25C:
/* 80C5E25C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5E260  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C5E264  88 9F 05 C8 */	lbz r4, 0x5c8(r31)
/* 80C5E268  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C5E26C  7C 05 07 74 */	extsb r5, r0
/* 80C5E270  4B 3D 70 F0 */	b isSwitch__10dSv_info_cCFii
/* 80C5E274  2C 03 00 00 */	cmpwi r3, 0
/* 80C5E278  41 82 00 54 */	beq lbl_80C5E2CC
/* 80C5E27C  A0 7F 05 C6 */	lhz r3, 0x5c6(r31)
/* 80C5E280  28 03 00 00 */	cmplwi r3, 0
/* 80C5E284  40 82 00 40 */	bne lbl_80C5E2C4
/* 80C5E288  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C5E28C  54 04 46 3E */	srwi r4, r0, 0x18
/* 80C5E290  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C5E294  41 82 00 18 */	beq lbl_80C5E2AC
/* 80C5E298  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 80C5E29C  38 A0 00 FF */	li r5, 0xff
/* 80C5E2A0  38 C0 00 01 */	li r6, 1
/* 80C5E2A4  4B 3E A6 9C */	b orderEvent__17dEvLib_callback_cFiii
/* 80C5E2A8  48 00 00 24 */	b lbl_80C5E2CC
lbl_80C5E2AC:
/* 80C5E2AC  7F E3 FB 78 */	mr r3, r31
/* 80C5E2B0  81 9F 05 9C */	lwz r12, 0x59c(r31)
/* 80C5E2B4  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80C5E2B8  7D 89 03 A6 */	mtctr r12
/* 80C5E2BC  4E 80 04 21 */	bctrl 
/* 80C5E2C0  48 00 00 0C */	b lbl_80C5E2CC
lbl_80C5E2C4:
/* 80C5E2C4  38 03 FF FF */	addi r0, r3, -1
/* 80C5E2C8  B0 1F 05 C6 */	sth r0, 0x5c6(r31)
lbl_80C5E2CC:
/* 80C5E2CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5E2D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5E2D4  7C 08 03 A6 */	mtlr r0
/* 80C5E2D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5E2DC  4E 80 00 20 */	blr 
