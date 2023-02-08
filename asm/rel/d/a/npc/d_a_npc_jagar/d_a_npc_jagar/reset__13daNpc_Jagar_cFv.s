lbl_80A15198:
/* 80A15198  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A1519C  7C 08 02 A6 */	mflr r0
/* 80A151A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A151A4  39 61 00 30 */	addi r11, r1, 0x30
/* 80A151A8  4B 94 D0 31 */	bl _savegpr_28
/* 80A151AC  7C 7F 1B 78 */	mr r31, r3
/* 80A151B0  3C 60 80 A2 */	lis r3, m__19daNpc_Jagar_Param_c@ha /* 0x80A1A330@ha */
/* 80A151B4  3B C3 A3 30 */	addi r30, r3, m__19daNpc_Jagar_Param_c@l /* 0x80A1A330@l */
/* 80A151B8  38 7F 0F D4 */	addi r3, r31, 0xfd4
/* 80A151BC  38 1F 10 08 */	addi r0, r31, 0x1008
/* 80A151C0  7F A3 00 50 */	subf r29, r3, r0
/* 80A151C4  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A151C8  28 03 00 00 */	cmplwi r3, 0
/* 80A151CC  41 82 00 08 */	beq lbl_80A151D4
/* 80A151D0  4B 73 05 95 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80A151D4:
/* 80A151D4  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80A151D8  38 80 00 00 */	li r4, 0
/* 80A151DC  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80A151E0  7C A3 00 50 */	subf r5, r3, r0
/* 80A151E4  4B 5E E2 75 */	bl memset
/* 80A151E8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A151EC  4B 73 06 AD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A151F0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A151F4  4B 73 06 A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A151F8  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A151FC  4B 73 04 D9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A15200  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A15204  4B 73 04 D1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A15208  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A1520C  4B 73 1A 8D */	bl initialize__15daNpcT_JntAnm_cFv
/* 80A15210  38 A0 00 00 */	li r5, 0
/* 80A15214  38 60 00 00 */	li r3, 0
/* 80A15218  7C A4 2B 78 */	mr r4, r5
/* 80A1521C  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80A15220  38 00 00 02 */	li r0, 2
/* 80A15224  7C 09 03 A6 */	mtctr r0
lbl_80A15228:
/* 80A15228  7C DF 22 14 */	add r6, r31, r4
/* 80A1522C  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80A15230  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80A15234  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80A15238  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A1523C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A15240  38 63 00 04 */	addi r3, r3, 4
/* 80A15244  38 84 00 06 */	addi r4, r4, 6
/* 80A15248  42 00 FF E0 */	bdnz lbl_80A15228
/* 80A1524C  38 00 00 00 */	li r0, 0
/* 80A15250  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A15254  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A15258  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A1525C  38 00 FF FF */	li r0, -1
/* 80A15260  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80A15264  38 00 00 01 */	li r0, 1
/* 80A15268  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80A1526C  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 80A15270  4B 85 26 E5 */	bl cM_rndF__Ff
/* 80A15274  FC 00 08 1E */	fctiwz f0, f1
/* 80A15278  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A1527C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A15280  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80A15284  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80A15288  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80A1528C  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80A15290  3B 80 00 00 */	li r28, 0
/* 80A15294  3B C0 00 00 */	li r30, 0
lbl_80A15298:
/* 80A15298  38 7E 0F 84 */	addi r3, r30, 0xf84
/* 80A1529C  7C 7F 1A 14 */	add r3, r31, r3
/* 80A152A0  4B 73 04 35 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A152A4  3B 9C 00 01 */	addi r28, r28, 1
/* 80A152A8  2C 1C 00 05 */	cmpwi r28, 5
/* 80A152AC  3B DE 00 08 */	addi r30, r30, 8
/* 80A152B0  41 80 FF E8 */	blt lbl_80A15298
/* 80A152B4  38 7F 0F D4 */	addi r3, r31, 0xfd4
/* 80A152B8  38 80 00 00 */	li r4, 0
/* 80A152BC  7F A5 EB 78 */	mr r5, r29
/* 80A152C0  4B 5E E1 99 */	bl memset
/* 80A152C4  38 00 00 00 */	li r0, 0
/* 80A152C8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80A152CC  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80A152D0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80A152D4  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80A152D8  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80A152DC  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80A152E0  2C 00 00 00 */	cmpwi r0, 0
/* 80A152E4  41 82 00 0C */	beq lbl_80A152F0
/* 80A152E8  41 80 00 38 */	blt lbl_80A15320
/* 80A152EC  48 00 00 34 */	b lbl_80A15320
lbl_80A152F0:
/* 80A152F0  38 60 00 1C */	li r3, 0x1c
/* 80A152F4  4B 73 77 B9 */	bl daNpcT_chkEvtBit__FUl
/* 80A152F8  2C 03 00 00 */	cmpwi r3, 0
/* 80A152FC  41 82 00 24 */	beq lbl_80A15320
/* 80A15300  38 60 00 86 */	li r3, 0x86
/* 80A15304  4B 73 77 A9 */	bl daNpcT_chkEvtBit__FUl
/* 80A15308  2C 03 00 00 */	cmpwi r3, 0
/* 80A1530C  40 82 00 0C */	bne lbl_80A15318
/* 80A15310  38 60 00 86 */	li r3, 0x86
/* 80A15314  4B 73 77 19 */	bl daNpcT_onEvtBit__FUl
lbl_80A15318:
/* 80A15318  38 00 00 01 */	li r0, 1
/* 80A1531C  98 1F 10 01 */	stb r0, 0x1001(r31)
lbl_80A15320:
/* 80A15320  38 60 00 1B */	li r3, 0x1b
/* 80A15324  4B 73 78 09 */	bl daNpcT_offTmpBit__FUl
/* 80A15328  38 60 00 10 */	li r3, 0x10
/* 80A1532C  4B 73 78 01 */	bl daNpcT_offTmpBit__FUl
/* 80A15330  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80A15334  90 01 00 08 */	stw r0, 8(r1)
/* 80A15338  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80A1533C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80A15340  7F E3 FB 78 */	mr r3, r31
/* 80A15344  38 81 00 08 */	addi r4, r1, 8
/* 80A15348  4B 73 56 55 */	bl setAngle__8daNpcT_cF5csXyz
/* 80A1534C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A15350  4B 94 CE D5 */	bl _restgpr_28
/* 80A15354  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A15358  7C 08 03 A6 */	mtlr r0
/* 80A1535C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A15360  4E 80 00 20 */	blr 
