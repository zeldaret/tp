lbl_8096DBBC:
/* 8096DBBC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8096DBC0  7C 08 02 A6 */	mflr r0
/* 8096DBC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8096DBC8  39 61 00 30 */	addi r11, r1, 0x30
/* 8096DBCC  4B 9F 46 0D */	bl _savegpr_28
/* 8096DBD0  7C 7F 1B 78 */	mr r31, r3
/* 8096DBD4  3C 60 80 97 */	lis r3, m__17daNpc_Bou_Param_c@ha /* 0x80972860@ha */
/* 8096DBD8  3B C3 28 60 */	addi r30, r3, m__17daNpc_Bou_Param_c@l /* 0x80972860@l */
/* 8096DBDC  38 7F 0F C4 */	addi r3, r31, 0xfc4
/* 8096DBE0  38 1F 0F F8 */	addi r0, r31, 0xff8
/* 8096DBE4  7F A3 00 50 */	subf r29, r3, r0
/* 8096DBE8  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 8096DBEC  28 03 00 00 */	cmplwi r3, 0
/* 8096DBF0  41 82 00 08 */	beq lbl_8096DBF8
/* 8096DBF4  4B 7D 7B 71 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_8096DBF8:
/* 8096DBF8  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 8096DBFC  38 80 00 00 */	li r4, 0
/* 8096DC00  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 8096DC04  7C A3 00 50 */	subf r5, r3, r0
/* 8096DC08  4B 69 58 51 */	bl memset
/* 8096DC0C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8096DC10  4B 7D 7C 89 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096DC14  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8096DC18  4B 7D 7C 81 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096DC1C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 8096DC20  4B 7D 7A B5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 8096DC24  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 8096DC28  4B 7D 7A AD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 8096DC2C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8096DC30  4B 7D 90 69 */	bl initialize__15daNpcT_JntAnm_cFv
/* 8096DC34  38 A0 00 00 */	li r5, 0
/* 8096DC38  38 60 00 00 */	li r3, 0
/* 8096DC3C  7C A4 2B 78 */	mr r4, r5
/* 8096DC40  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 8096DC44  38 00 00 02 */	li r0, 2
/* 8096DC48  7C 09 03 A6 */	mtctr r0
lbl_8096DC4C:
/* 8096DC4C  7C DF 22 14 */	add r6, r31, r4
/* 8096DC50  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 8096DC54  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 8096DC58  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 8096DC5C  38 03 0D 14 */	addi r0, r3, 0xd14
/* 8096DC60  7C 1F 05 2E */	stfsx f0, r31, r0
/* 8096DC64  38 63 00 04 */	addi r3, r3, 4
/* 8096DC68  38 84 00 06 */	addi r4, r4, 6
/* 8096DC6C  42 00 FF E0 */	bdnz lbl_8096DC4C
/* 8096DC70  38 00 00 00 */	li r0, 0
/* 8096DC74  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 8096DC78  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 8096DC7C  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 8096DC80  38 00 FF FF */	li r0, -1
/* 8096DC84  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 8096DC88  38 00 00 01 */	li r0, 1
/* 8096DC8C  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 8096DC90  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 8096DC94  4B 8F 9C C1 */	bl cM_rndF__Ff
/* 8096DC98  FC 00 08 1E */	fctiwz f0, f1
/* 8096DC9C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8096DCA0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8096DCA4  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 8096DCA8  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 8096DCAC  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 8096DCB0  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 8096DCB4  3B 80 00 00 */	li r28, 0
/* 8096DCB8  3B C0 00 00 */	li r30, 0
lbl_8096DCBC:
/* 8096DCBC  38 7E 0F 84 */	addi r3, r30, 0xf84
/* 8096DCC0  7C 7F 1A 14 */	add r3, r31, r3
/* 8096DCC4  4B 7D 7A 11 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 8096DCC8  3B 9C 00 01 */	addi r28, r28, 1
/* 8096DCCC  2C 1C 00 03 */	cmpwi r28, 3
/* 8096DCD0  3B DE 00 08 */	addi r30, r30, 8
/* 8096DCD4  41 80 FF E8 */	blt lbl_8096DCBC
/* 8096DCD8  38 7F 0F C4 */	addi r3, r31, 0xfc4
/* 8096DCDC  38 80 00 00 */	li r4, 0
/* 8096DCE0  7F A5 EB 78 */	mr r5, r29
/* 8096DCE4  4B 69 57 75 */	bl memset
/* 8096DCE8  38 00 00 00 */	li r0, 0
/* 8096DCEC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8096DCF0  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8096DCF4  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8096DCF8  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 8096DCFC  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8096DD00  38 60 00 1C */	li r3, 0x1c
/* 8096DD04  4B 7D EE 29 */	bl daNpcT_offTmpBit__FUl
/* 8096DD08  38 60 00 59 */	li r3, 0x59
/* 8096DD0C  4B 7D EE 21 */	bl daNpcT_offTmpBit__FUl
/* 8096DD10  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8096DD14  90 01 00 08 */	stw r0, 8(r1)
/* 8096DD18  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 8096DD1C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8096DD20  7F E3 FB 78 */	mr r3, r31
/* 8096DD24  38 81 00 08 */	addi r4, r1, 8
/* 8096DD28  4B 7D CC 75 */	bl setAngle__8daNpcT_cF5csXyz
/* 8096DD2C  39 61 00 30 */	addi r11, r1, 0x30
/* 8096DD30  4B 9F 44 F5 */	bl _restgpr_28
/* 8096DD34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8096DD38  7C 08 03 A6 */	mtlr r0
/* 8096DD3C  38 21 00 30 */	addi r1, r1, 0x30
/* 8096DD40  4E 80 00 20 */	blr 
