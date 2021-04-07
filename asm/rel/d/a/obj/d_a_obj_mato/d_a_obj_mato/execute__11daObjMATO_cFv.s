lbl_80C922AC:
/* 80C922AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C922B0  7C 08 02 A6 */	mflr r0
/* 80C922B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C922B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C922BC  7C 7F 1B 78 */	mr r31, r3
/* 80C922C0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C922C4  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C922C8  28 04 00 FF */	cmplwi r4, 0xff
/* 80C922CC  41 82 00 84 */	beq lbl_80C92350
/* 80C922D0  88 1F 39 F6 */	lbz r0, 0x39f6(r31)
/* 80C922D4  28 00 00 00 */	cmplwi r0, 0
/* 80C922D8  41 82 00 4C */	beq lbl_80C92324
/* 80C922DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C922E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C922E4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C922E8  7C 05 07 74 */	extsb r5, r0
/* 80C922EC  4B 3A 30 75 */	bl isSwitch__10dSv_info_cCFii
/* 80C922F0  2C 03 00 00 */	cmpwi r3, 0
/* 80C922F4  40 82 00 5C */	bne lbl_80C92350
/* 80C922F8  A0 7F 39 F4 */	lhz r3, 0x39f4(r31)
/* 80C922FC  28 03 00 00 */	cmplwi r3, 0
/* 80C92300  41 82 00 50 */	beq lbl_80C92350
/* 80C92304  38 03 FF FF */	addi r0, r3, -1
/* 80C92308  B0 1F 39 F4 */	sth r0, 0x39f4(r31)
/* 80C9230C  A0 1F 39 F4 */	lhz r0, 0x39f4(r31)
/* 80C92310  28 00 00 00 */	cmplwi r0, 0
/* 80C92314  40 82 00 3C */	bne lbl_80C92350
/* 80C92318  38 00 00 00 */	li r0, 0
/* 80C9231C  98 1F 39 F6 */	stb r0, 0x39f6(r31)
/* 80C92320  48 00 00 30 */	b lbl_80C92350
lbl_80C92324:
/* 80C92324  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C92328  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9232C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C92330  7C 05 07 74 */	extsb r5, r0
/* 80C92334  4B 3A 30 2D */	bl isSwitch__10dSv_info_cCFii
/* 80C92338  2C 03 00 00 */	cmpwi r3, 0
/* 80C9233C  41 82 00 14 */	beq lbl_80C92350
/* 80C92340  38 00 00 01 */	li r0, 1
/* 80C92344  98 1F 39 F6 */	stb r0, 0x39f6(r31)
/* 80C92348  38 00 05 DC */	li r0, 0x5dc
/* 80C9234C  B0 1F 39 F4 */	sth r0, 0x39f4(r31)
lbl_80C92350:
/* 80C92350  7F E3 FB 78 */	mr r3, r31
/* 80C92354  4B FF FA 91 */	bl hit_check__11daObjMATO_cFv
/* 80C92358  7F E3 FB 78 */	mr r3, r31
/* 80C9235C  4B FF F9 ED */	bl action__11daObjMATO_cFv
/* 80C92360  7F E3 FB 78 */	mr r3, r31
/* 80C92364  48 00 00 D9 */	bl setBaseMtx__11daObjMATO_cFv
/* 80C92368  38 60 00 01 */	li r3, 1
/* 80C9236C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C92370  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C92374  7C 08 03 A6 */	mtlr r0
/* 80C92378  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9237C  4E 80 00 20 */	blr 
