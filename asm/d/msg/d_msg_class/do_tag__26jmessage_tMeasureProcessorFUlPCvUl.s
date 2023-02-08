lbl_8022A268:
/* 8022A268  94 21 FE 20 */	stwu r1, -0x1e0(r1)
/* 8022A26C  7C 08 02 A6 */	mflr r0
/* 8022A270  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 8022A274  39 61 01 E0 */	addi r11, r1, 0x1e0
/* 8022A278  48 13 7F 65 */	bl _savegpr_29
/* 8022A27C  7C 7F 1B 78 */	mr r31, r3
/* 8022A280  7C BD 2B 78 */	mr r29, r5
/* 8022A284  83 C3 00 04 */	lwz r30, 4(r3)
/* 8022A288  54 87 02 1E */	rlwinm r7, r4, 0, 8, 0xf
/* 8022A28C  3C 00 00 04 */	lis r0, 4
/* 8022A290  7C 07 00 00 */	cmpw r7, r0
/* 8022A294  41 82 07 AC */	beq lbl_8022AA40
/* 8022A298  40 80 00 40 */	bge lbl_8022A2D8
/* 8022A29C  3C 00 00 02 */	lis r0, 2
/* 8022A2A0  7C 07 00 00 */	cmpw r7, r0
/* 8022A2A4  41 82 00 64 */	beq lbl_8022A308
/* 8022A2A8  40 80 00 20 */	bge lbl_8022A2C8
/* 8022A2AC  3C 00 00 01 */	lis r0, 1
/* 8022A2B0  7C 07 00 00 */	cmpw r7, r0
/* 8022A2B4  41 82 00 54 */	beq lbl_8022A308
/* 8022A2B8  40 80 0D DC */	bge lbl_8022B094
/* 8022A2BC  2C 07 00 00 */	cmpwi r7, 0
/* 8022A2C0  41 82 01 60 */	beq lbl_8022A420
/* 8022A2C4  48 00 0D D0 */	b lbl_8022B094
lbl_8022A2C8:
/* 8022A2C8  3C 00 00 03 */	lis r0, 3
/* 8022A2CC  7C 07 00 00 */	cmpw r7, r0
/* 8022A2D0  41 82 0D 90 */	beq lbl_8022B060
/* 8022A2D4  48 00 0D C0 */	b lbl_8022B094
lbl_8022A2D8:
/* 8022A2D8  3C 00 00 06 */	lis r0, 6
/* 8022A2DC  7C 07 00 00 */	cmpw r7, r0
/* 8022A2E0  41 82 0C 4C */	beq lbl_8022AF2C
/* 8022A2E4  40 80 00 14 */	bge lbl_8022A2F8
/* 8022A2E8  3C 00 00 05 */	lis r0, 5
/* 8022A2EC  7C 07 00 00 */	cmpw r7, r0
/* 8022A2F0  41 82 09 30 */	beq lbl_8022AC20
/* 8022A2F4  48 00 0D A0 */	b lbl_8022B094
lbl_8022A2F8:
/* 8022A2F8  3C A0 00 FF */	lis r5, 0xff
/* 8022A2FC  7C 07 28 00 */	cmpw r7, r5
/* 8022A300  41 82 00 10 */	beq lbl_8022A310
/* 8022A304  48 00 0D 90 */	b lbl_8022B094
lbl_8022A308:
/* 8022A308  38 60 00 01 */	li r3, 1
/* 8022A30C  48 00 0D 8C */	b lbl_8022B098
lbl_8022A310:
/* 8022A310  38 05 00 02 */	addi r0, r5, 2
/* 8022A314  7C 04 00 00 */	cmpw r4, r0
/* 8022A318  41 82 00 74 */	beq lbl_8022A38C
/* 8022A31C  40 80 00 14 */	bge lbl_8022A330
/* 8022A320  7C 04 28 00 */	cmpw r4, r5
/* 8022A324  41 82 00 20 */	beq lbl_8022A344
/* 8022A328  40 80 00 24 */	bge lbl_8022A34C
/* 8022A32C  48 00 00 F4 */	b lbl_8022A420
lbl_8022A330:
/* 8022A330  3C 60 01 00 */	lis r3, 0x0100 /* 0x00FFFF02@ha */
/* 8022A334  38 03 FF 02 */	addi r0, r3, 0xFF02 /* 0x00FFFF02@l */
/* 8022A338  7C 04 00 00 */	cmpw r4, r0
/* 8022A33C  41 82 00 50 */	beq lbl_8022A38C
/* 8022A340  48 00 00 E0 */	b lbl_8022A420
lbl_8022A344:
/* 8022A344  38 60 00 01 */	li r3, 1
/* 8022A348  48 00 0D 50 */	b lbl_8022B098
lbl_8022A34C:
/* 8022A34C  A0 BD 00 00 */	lhz r5, 0(r29)
/* 8022A350  A8 1F 00 3C */	lha r0, 0x3c(r31)
/* 8022A354  54 00 08 3C */	slwi r0, r0, 1
/* 8022A358  7C 9E 02 14 */	add r4, r30, r0
/* 8022A35C  B0 A4 05 E0 */	sth r5, 0x5e0(r4)
/* 8022A360  C8 22 B0 80 */	lfd f1, lit_5154(r2)
/* 8022A364  90 A1 01 CC */	stw r5, 0x1cc(r1)
/* 8022A368  3C 00 43 30 */	lis r0, 0x4330
/* 8022A36C  90 01 01 C8 */	stw r0, 0x1c8(r1)
/* 8022A370  C8 01 01 C8 */	lfd f0, 0x1c8(r1)
/* 8022A374  EC 20 08 28 */	fsubs f1, f0, f1
/* 8022A378  C0 02 B0 7C */	lfs f0, lit_5151(r2)
/* 8022A37C  EC 21 00 24 */	fdivs f1, f1, f0
/* 8022A380  48 00 0D 31 */	bl do_scale__26jmessage_tMeasureProcessorFf
/* 8022A384  38 60 00 01 */	li r3, 1
/* 8022A388  48 00 0D 10 */	b lbl_8022B098
lbl_8022A38C:
/* 8022A38C  7F E3 FB 78 */	mr r3, r31
/* 8022A390  7F A4 EB 78 */	mr r4, r29
/* 8022A394  7C C5 33 78 */	mr r5, r6
/* 8022A398  48 00 10 C1 */	bl do_rubyset__26jmessage_tMeasureProcessorFPCvUl
/* 8022A39C  88 9F 00 46 */	lbz r4, 0x46(r31)
/* 8022A3A0  28 04 00 00 */	cmplwi r4, 0
/* 8022A3A4  41 82 00 74 */	beq lbl_8022A418
/* 8022A3A8  88 1F 00 45 */	lbz r0, 0x45(r31)
/* 8022A3AC  28 00 00 02 */	cmplwi r0, 2
/* 8022A3B0  40 82 00 34 */	bne lbl_8022A3E4
/* 8022A3B4  88 BE 12 4E */	lbz r5, 0x124e(r30)
/* 8022A3B8  38 60 00 01 */	li r3, 1
/* 8022A3BC  38 04 FF FF */	addi r0, r4, -1
/* 8022A3C0  7C 60 00 30 */	slw r0, r3, r0
/* 8022A3C4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8022A3C8  7C A3 20 38 */	and r3, r5, r4
/* 8022A3CC  30 03 FF FF */	addic r0, r3, -1
/* 8022A3D0  7C 00 19 11 */	subfe. r0, r0, r3
/* 8022A3D4  40 82 00 44 */	bne lbl_8022A418
/* 8022A3D8  7C A0 23 78 */	or r0, r5, r4
/* 8022A3DC  98 1E 12 4E */	stb r0, 0x124e(r30)
/* 8022A3E0  48 00 00 38 */	b lbl_8022A418
lbl_8022A3E4:
/* 8022A3E4  28 00 00 03 */	cmplwi r0, 3
/* 8022A3E8  40 82 00 30 */	bne lbl_8022A418
/* 8022A3EC  88 BE 12 4E */	lbz r5, 0x124e(r30)
/* 8022A3F0  38 60 00 01 */	li r3, 1
/* 8022A3F4  38 04 FF FF */	addi r0, r4, -1
/* 8022A3F8  7C 60 00 30 */	slw r0, r3, r0
/* 8022A3FC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8022A400  7C A3 20 38 */	and r3, r5, r4
/* 8022A404  30 03 FF FF */	addic r0, r3, -1
/* 8022A408  7C 00 19 11 */	subfe. r0, r0, r3
/* 8022A40C  40 82 00 0C */	bne lbl_8022A418
/* 8022A410  7C A0 23 78 */	or r0, r5, r4
/* 8022A414  98 1E 12 4E */	stb r0, 0x124e(r30)
lbl_8022A418:
/* 8022A418  38 60 00 01 */	li r3, 1
/* 8022A41C  48 00 0C 7C */	b lbl_8022B098
lbl_8022A420:
/* 8022A420  28 04 00 3F */	cmplwi r4, 0x3f
/* 8022A424  41 81 06 14 */	bgt lbl_8022AA38
/* 8022A428  3C 60 80 3C */	lis r3, lit_5155@ha /* 0x803C0044@ha */
/* 8022A42C  38 63 00 44 */	addi r3, r3, lit_5155@l /* 0x803C0044@l */
/* 8022A430  54 80 10 3A */	slwi r0, r4, 2
/* 8022A434  7C 03 00 2E */	lwzx r0, r3, r0
/* 8022A438  7C 09 03 A6 */	mtctr r0
/* 8022A43C  4E 80 04 20 */	bctr 
/* 8022A440  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 8022A444  D0 1E 04 5C */	stfs f0, 0x45c(r30)
/* 8022A448  38 60 00 01 */	li r3, 1
/* 8022A44C  48 00 0C 4C */	b lbl_8022B098
/* 8022A450  38 60 00 01 */	li r3, 1
/* 8022A454  48 00 0C 44 */	b lbl_8022B098
/* 8022A458  38 61 00 0C */	addi r3, r1, 0xc
/* 8022A45C  3C 80 80 3A */	lis r4, d_msg_d_msg_class__stringBase0@ha /* 0x80399610@ha */
/* 8022A460  38 84 96 10 */	addi r4, r4, d_msg_d_msg_class__stringBase0@l /* 0x80399610@l */
/* 8022A464  38 84 00 04 */	addi r4, r4, 4
/* 8022A468  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022A46C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022A470  80 A5 5E 0C */	lwz r5, 0x5e0c(r5)
/* 8022A474  38 00 00 64 */	li r0, 0x64
/* 8022A478  7C A5 03 D6 */	divw r5, r5, r0
/* 8022A47C  4C C6 31 82 */	crclr 6
/* 8022A480  48 13 C0 5D */	bl sprintf
/* 8022A484  7F E3 FB 78 */	mr r3, r31
/* 8022A488  38 81 00 0C */	addi r4, r1, 0xc
/* 8022A48C  48 00 10 55 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022A490  38 60 00 01 */	li r3, 1
/* 8022A494  48 00 0C 04 */	b lbl_8022B098
/* 8022A498  38 61 00 08 */	addi r3, r1, 8
/* 8022A49C  3C 80 80 3A */	lis r4, d_msg_d_msg_class__stringBase0@ha /* 0x80399610@ha */
/* 8022A4A0  38 84 96 10 */	addi r4, r4, d_msg_d_msg_class__stringBase0@l /* 0x80399610@l */
/* 8022A4A4  38 84 00 04 */	addi r4, r4, 4
/* 8022A4A8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022A4AC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022A4B0  80 C5 5E 0C */	lwz r6, 0x5e0c(r5)
/* 8022A4B4  38 A0 00 64 */	li r5, 0x64
/* 8022A4B8  7C 06 2B D6 */	divw r0, r6, r5
/* 8022A4BC  7C 00 29 D6 */	mullw r0, r0, r5
/* 8022A4C0  7C A0 30 50 */	subf r5, r0, r6
/* 8022A4C4  4C C6 31 82 */	crclr 6
/* 8022A4C8  48 13 C0 15 */	bl sprintf
/* 8022A4CC  7F E3 FB 78 */	mr r3, r31
/* 8022A4D0  38 81 00 08 */	addi r4, r1, 8
/* 8022A4D4  48 00 10 0D */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022A4D8  38 60 00 01 */	li r3, 1
/* 8022A4DC  48 00 0B BC */	b lbl_8022B098
/* 8022A4E0  A0 1D 00 00 */	lhz r0, 0(r29)
/* 8022A4E4  28 00 00 00 */	cmplwi r0, 0
/* 8022A4E8  41 82 00 10 */	beq lbl_8022A4F8
/* 8022A4EC  38 00 00 01 */	li r0, 1
/* 8022A4F0  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8022A4F4  98 03 04 CF */	stb r0, 0x4cf(r3)
lbl_8022A4F8:
/* 8022A4F8  38 60 00 01 */	li r3, 1
/* 8022A4FC  48 00 0B 9C */	b lbl_8022B098
/* 8022A500  80 1D 00 00 */	lwz r0, 0(r29)
/* 8022A504  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 8022A508  38 60 00 01 */	li r3, 1
/* 8022A50C  48 00 0B 8C */	b lbl_8022B098
/* 8022A510  88 1F 00 49 */	lbz r0, 0x49(r31)
/* 8022A514  7C 00 07 75 */	extsb. r0, r0
/* 8022A518  41 82 00 0C */	beq lbl_8022A524
/* 8022A51C  38 00 00 00 */	li r0, 0
/* 8022A520  98 1F 00 49 */	stb r0, 0x49(r31)
lbl_8022A524:
/* 8022A524  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022A528  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022A52C  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 8022A530  38 61 01 64 */	addi r3, r1, 0x164
/* 8022A534  48 13 E5 F9 */	bl strcpy
/* 8022A538  7F E3 FB 78 */	mr r3, r31
/* 8022A53C  38 81 01 64 */	addi r4, r1, 0x164
/* 8022A540  48 00 0F A1 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022A544  38 60 00 01 */	li r3, 1
/* 8022A548  48 00 0B 50 */	b lbl_8022B098
/* 8022A54C  88 1F 00 49 */	lbz r0, 0x49(r31)
/* 8022A550  7C 00 07 75 */	extsb. r0, r0
/* 8022A554  41 82 00 0C */	beq lbl_8022A560
/* 8022A558  38 00 00 00 */	li r0, 0
/* 8022A55C  98 1F 00 49 */	stb r0, 0x49(r31)
lbl_8022A560:
/* 8022A560  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022A564  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022A568  38 83 01 C5 */	addi r4, r3, 0x1c5
/* 8022A56C  38 61 01 00 */	addi r3, r1, 0x100
/* 8022A570  48 13 E5 BD */	bl strcpy
/* 8022A574  7F E3 FB 78 */	mr r3, r31
/* 8022A578  38 81 01 00 */	addi r4, r1, 0x100
/* 8022A57C  48 00 0F 65 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022A580  38 60 00 01 */	li r3, 1
/* 8022A584  48 00 0B 14 */	b lbl_8022B098
/* 8022A588  88 1F 00 49 */	lbz r0, 0x49(r31)
/* 8022A58C  7C 00 07 75 */	extsb. r0, r0
/* 8022A590  41 82 00 0C */	beq lbl_8022A59C
/* 8022A594  38 00 00 00 */	li r0, 0
/* 8022A598  98 1F 00 49 */	stb r0, 0x49(r31)
lbl_8022A59C:
/* 8022A59C  48 00 DF 79 */	bl getWord__12dMsgObject_cFv
/* 8022A5A0  7C 64 1B 78 */	mr r4, r3
/* 8022A5A4  7F E3 FB 78 */	mr r3, r31
/* 8022A5A8  48 07 D6 51 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022A5AC  38 60 00 01 */	li r3, 1
/* 8022A5B0  48 00 0A E8 */	b lbl_8022B098
/* 8022A5B4  88 1F 00 49 */	lbz r0, 0x49(r31)
/* 8022A5B8  7C 00 07 75 */	extsb. r0, r0
/* 8022A5BC  41 82 00 0C */	beq lbl_8022A5C8
/* 8022A5C0  38 00 00 00 */	li r0, 0
/* 8022A5C4  98 1F 00 49 */	stb r0, 0x49(r31)
lbl_8022A5C8:
/* 8022A5C8  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8022A5CC  48 00 CD 01 */	bl getSmellName__12dMsgObject_cFv
/* 8022A5D0  7C 64 1B 78 */	mr r4, r3
/* 8022A5D4  7F E3 FB 78 */	mr r3, r31
/* 8022A5D8  48 07 D6 21 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022A5DC  38 60 00 01 */	li r3, 1
/* 8022A5E0  48 00 0A B8 */	b lbl_8022B098
/* 8022A5E4  88 1F 00 49 */	lbz r0, 0x49(r31)
/* 8022A5E8  7C 00 07 75 */	extsb. r0, r0
/* 8022A5EC  41 82 00 0C */	beq lbl_8022A5F8
/* 8022A5F0  38 00 00 00 */	li r0, 0
/* 8022A5F4  98 1F 00 49 */	stb r0, 0x49(r31)
lbl_8022A5F8:
/* 8022A5F8  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8022A5FC  48 00 CD 39 */	bl getPortalName__12dMsgObject_cFv
/* 8022A600  7C 64 1B 78 */	mr r4, r3
/* 8022A604  7F E3 FB 78 */	mr r3, r31
/* 8022A608  48 07 D5 F1 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022A60C  38 60 00 01 */	li r3, 1
/* 8022A610  48 00 0A 88 */	b lbl_8022B098
/* 8022A614  88 1F 00 49 */	lbz r0, 0x49(r31)
/* 8022A618  7C 00 07 75 */	extsb. r0, r0
/* 8022A61C  41 82 00 0C */	beq lbl_8022A628
/* 8022A620  38 00 00 00 */	li r0, 0
/* 8022A624  98 1F 00 49 */	stb r0, 0x49(r31)
lbl_8022A628:
/* 8022A628  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8022A62C  88 1E 12 74 */	lbz r0, 0x1274(r30)
/* 8022A630  28 00 00 00 */	cmplwi r0, 0
/* 8022A634  40 82 00 0C */	bne lbl_8022A640
/* 8022A638  38 00 00 01 */	li r0, 1
/* 8022A63C  98 1E 12 75 */	stb r0, 0x1275(r30)
lbl_8022A640:
/* 8022A640  48 00 CD 4D */	bl getBombName__12dMsgObject_cFv
/* 8022A644  7C 64 1B 78 */	mr r4, r3
/* 8022A648  7F E3 FB 78 */	mr r3, r31
/* 8022A64C  48 07 D5 AD */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022A650  38 60 00 01 */	li r3, 1
/* 8022A654  48 00 0A 44 */	b lbl_8022B098
/* 8022A658  88 1F 00 49 */	lbz r0, 0x49(r31)
/* 8022A65C  7C 00 07 75 */	extsb. r0, r0
/* 8022A660  41 82 00 0C */	beq lbl_8022A66C
/* 8022A664  38 00 00 00 */	li r0, 0
/* 8022A668  98 1F 00 49 */	stb r0, 0x49(r31)
lbl_8022A66C:
/* 8022A66C  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8022A670  48 00 CD AD */	bl getInsectName__12dMsgObject_cFv
/* 8022A674  7C 64 1B 78 */	mr r4, r3
/* 8022A678  7F E3 FB 78 */	mr r3, r31
/* 8022A67C  48 07 D5 7D */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022A680  38 60 00 01 */	li r3, 1
/* 8022A684  48 00 0A 14 */	b lbl_8022B098
/* 8022A688  88 1F 00 49 */	lbz r0, 0x49(r31)
/* 8022A68C  7C 00 07 75 */	extsb. r0, r0
/* 8022A690  41 82 00 0C */	beq lbl_8022A69C
/* 8022A694  38 00 00 00 */	li r0, 0
/* 8022A698  98 1F 00 49 */	stb r0, 0x49(r31)
lbl_8022A69C:
/* 8022A69C  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8022A6A0  48 00 CD D9 */	bl getLetterName__12dMsgObject_cFv
/* 8022A6A4  7C 64 1B 78 */	mr r4, r3
/* 8022A6A8  7F E3 FB 78 */	mr r3, r31
/* 8022A6AC  48 07 D5 4D */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022A6B0  38 60 00 01 */	li r3, 1
/* 8022A6B4  48 00 09 E4 */	b lbl_8022B098
/* 8022A6B8  88 1F 00 46 */	lbz r0, 0x46(r31)
/* 8022A6BC  28 00 00 00 */	cmplwi r0, 0
/* 8022A6C0  40 82 00 68 */	bne lbl_8022A728
/* 8022A6C4  A8 9F 00 3E */	lha r4, 0x3e(r31)
/* 8022A6C8  7C 80 07 35 */	extsh. r0, r4
/* 8022A6CC  40 81 00 48 */	ble lbl_8022A714
/* 8022A6D0  A8 1F 00 40 */	lha r0, 0x40(r31)
/* 8022A6D4  7C 7E 02 14 */	add r3, r30, r0
/* 8022A6D8  98 83 11 A2 */	stb r4, 0x11a2(r3)
/* 8022A6DC  A8 9F 00 3E */	lha r4, 0x3e(r31)
/* 8022A6E0  A8 1F 00 40 */	lha r0, 0x40(r31)
/* 8022A6E4  7C 7E 02 14 */	add r3, r30, r0
/* 8022A6E8  98 83 11 CA */	stb r4, 0x11ca(r3)
/* 8022A6EC  7F E3 FB 78 */	mr r3, r31
/* 8022A6F0  A8 9F 00 3E */	lha r4, 0x3e(r31)
/* 8022A6F4  48 00 0C F9 */	bl do_pageType__26jmessage_tMeasureProcessorFi
/* 8022A6F8  38 00 00 00 */	li r0, 0
/* 8022A6FC  B0 1F 00 3E */	sth r0, 0x3e(r31)
/* 8022A700  7F C3 F3 78 */	mr r3, r30
/* 8022A704  4B FF E6 DD */	bl getLineMax__19jmessage_tReferenceFv
/* 8022A708  98 7F 00 4A */	stb r3, 0x4a(r31)
/* 8022A70C  38 00 00 00 */	li r0, 0
/* 8022A710  98 1F 00 49 */	stb r0, 0x49(r31)
lbl_8022A714:
/* 8022A714  38 00 00 02 */	li r0, 2
/* 8022A718  98 1F 00 45 */	stb r0, 0x45(r31)
/* 8022A71C  38 00 00 01 */	li r0, 1
/* 8022A720  98 1F 00 44 */	stb r0, 0x44(r31)
/* 8022A724  98 1F 00 46 */	stb r0, 0x46(r31)
lbl_8022A728:
/* 8022A728  88 1D 00 00 */	lbz r0, 0(r29)
/* 8022A72C  28 00 00 01 */	cmplwi r0, 1
/* 8022A730  40 82 00 18 */	bne lbl_8022A748
/* 8022A734  88 7F 00 47 */	lbz r3, 0x47(r31)
/* 8022A738  88 1E 12 74 */	lbz r0, 0x1274(r30)
/* 8022A73C  28 00 00 00 */	cmplwi r0, 0
/* 8022A740  40 82 00 08 */	bne lbl_8022A748
/* 8022A744  98 7E 12 44 */	stb r3, 0x1244(r30)
lbl_8022A748:
/* 8022A748  88 7F 00 47 */	lbz r3, 0x47(r31)
/* 8022A74C  38 03 00 01 */	addi r0, r3, 1
/* 8022A750  98 1F 00 47 */	stb r0, 0x47(r31)
/* 8022A754  88 7F 00 46 */	lbz r3, 0x46(r31)
/* 8022A758  38 03 00 01 */	addi r0, r3, 1
/* 8022A75C  98 1F 00 46 */	stb r0, 0x46(r31)
/* 8022A760  38 80 00 01 */	li r4, 1
/* 8022A764  A8 1F 00 3C */	lha r0, 0x3c(r31)
/* 8022A768  7C 7E 02 14 */	add r3, r30, r0
/* 8022A76C  98 83 12 1A */	stb r4, 0x121a(r3)
/* 8022A770  38 60 00 01 */	li r3, 1
/* 8022A774  48 00 09 24 */	b lbl_8022B098
/* 8022A778  88 1F 00 46 */	lbz r0, 0x46(r31)
/* 8022A77C  28 00 00 00 */	cmplwi r0, 0
/* 8022A780  40 82 00 64 */	bne lbl_8022A7E4
/* 8022A784  A8 9F 00 3E */	lha r4, 0x3e(r31)
/* 8022A788  7C 80 07 35 */	extsh. r0, r4
/* 8022A78C  40 81 00 48 */	ble lbl_8022A7D4
/* 8022A790  A8 1F 00 40 */	lha r0, 0x40(r31)
/* 8022A794  7C 7E 02 14 */	add r3, r30, r0
/* 8022A798  98 83 11 A2 */	stb r4, 0x11a2(r3)
/* 8022A79C  A8 9F 00 3E */	lha r4, 0x3e(r31)
/* 8022A7A0  A8 1F 00 40 */	lha r0, 0x40(r31)
/* 8022A7A4  7C 7E 02 14 */	add r3, r30, r0
/* 8022A7A8  98 83 11 CA */	stb r4, 0x11ca(r3)
/* 8022A7AC  7F E3 FB 78 */	mr r3, r31
/* 8022A7B0  A8 9F 00 3E */	lha r4, 0x3e(r31)
/* 8022A7B4  48 00 0C 39 */	bl do_pageType__26jmessage_tMeasureProcessorFi
/* 8022A7B8  38 00 00 00 */	li r0, 0
/* 8022A7BC  B0 1F 00 3E */	sth r0, 0x3e(r31)
/* 8022A7C0  7F C3 F3 78 */	mr r3, r30
/* 8022A7C4  4B FF E6 1D */	bl getLineMax__19jmessage_tReferenceFv
/* 8022A7C8  98 7F 00 4A */	stb r3, 0x4a(r31)
/* 8022A7CC  38 00 00 00 */	li r0, 0
/* 8022A7D0  98 1F 00 49 */	stb r0, 0x49(r31)
lbl_8022A7D4:
/* 8022A7D4  38 00 00 03 */	li r0, 3
/* 8022A7D8  98 1F 00 45 */	stb r0, 0x45(r31)
/* 8022A7DC  38 00 00 02 */	li r0, 2
/* 8022A7E0  98 1F 00 44 */	stb r0, 0x44(r31)
lbl_8022A7E4:
/* 8022A7E4  88 1D 00 00 */	lbz r0, 0(r29)
/* 8022A7E8  28 00 00 01 */	cmplwi r0, 1
/* 8022A7EC  40 82 00 18 */	bne lbl_8022A804
/* 8022A7F0  88 7F 00 47 */	lbz r3, 0x47(r31)
/* 8022A7F4  88 1E 12 74 */	lbz r0, 0x1274(r30)
/* 8022A7F8  28 00 00 00 */	cmplwi r0, 0
/* 8022A7FC  40 82 00 08 */	bne lbl_8022A804
/* 8022A800  98 7E 12 44 */	stb r3, 0x1244(r30)
lbl_8022A804:
/* 8022A804  88 7F 00 47 */	lbz r3, 0x47(r31)
/* 8022A808  38 03 00 01 */	addi r0, r3, 1
/* 8022A80C  98 1F 00 47 */	stb r0, 0x47(r31)
/* 8022A810  88 7F 00 46 */	lbz r3, 0x46(r31)
/* 8022A814  38 03 00 01 */	addi r0, r3, 1
/* 8022A818  98 1F 00 46 */	stb r0, 0x46(r31)
/* 8022A81C  38 80 00 01 */	li r4, 1
/* 8022A820  A8 1F 00 3C */	lha r0, 0x3c(r31)
/* 8022A824  7C 7E 02 14 */	add r3, r30, r0
/* 8022A828  98 83 12 1A */	stb r4, 0x121a(r3)
/* 8022A82C  38 60 00 01 */	li r3, 1
/* 8022A830  48 00 08 68 */	b lbl_8022B098
/* 8022A834  88 7F 00 47 */	lbz r3, 0x47(r31)
/* 8022A838  88 1E 12 74 */	lbz r0, 0x1274(r30)
/* 8022A83C  28 00 00 00 */	cmplwi r0, 0
/* 8022A840  40 82 00 08 */	bne lbl_8022A848
/* 8022A844  98 7E 12 44 */	stb r3, 0x1244(r30)
lbl_8022A848:
/* 8022A848  88 7F 00 47 */	lbz r3, 0x47(r31)
/* 8022A84C  38 03 00 01 */	addi r0, r3, 1
/* 8022A850  98 1F 00 47 */	stb r0, 0x47(r31)
/* 8022A854  38 80 00 00 */	li r4, 0
/* 8022A858  A8 1F 00 3C */	lha r0, 0x3c(r31)
/* 8022A85C  7C 7E 02 14 */	add r3, r30, r0
/* 8022A860  98 83 12 1A */	stb r4, 0x121a(r3)
/* 8022A864  7F E3 FB 78 */	mr r3, r31
/* 8022A868  38 80 00 00 */	li r4, 0
/* 8022A86C  48 00 09 21 */	bl do_space__26jmessage_tMeasureProcessorFUl
/* 8022A870  38 60 00 01 */	li r3, 1
/* 8022A874  48 00 08 24 */	b lbl_8022B098
/* 8022A878  38 00 00 01 */	li r0, 1
/* 8022A87C  98 1F 00 45 */	stb r0, 0x45(r31)
/* 8022A880  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 8022A884  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8022A888  7F E3 FB 78 */	mr r3, r31
/* 8022A88C  38 80 00 0A */	li r4, 0xa
/* 8022A890  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022A894  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8022A898  7D 89 03 A6 */	mtctr r12
/* 8022A89C  4E 80 04 21 */	bctrl 
/* 8022A8A0  7F E3 FB 78 */	mr r3, r31
/* 8022A8A4  80 9E 05 C4 */	lwz r4, 0x5c4(r30)
/* 8022A8A8  48 07 D3 51 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022A8AC  38 60 00 01 */	li r3, 1
/* 8022A8B0  48 00 07 E8 */	b lbl_8022B098
/* 8022A8B4  7F E3 FB 78 */	mr r3, r31
/* 8022A8B8  48 00 0B 9D */	bl do_name1__26jmessage_tMeasureProcessorFv
/* 8022A8BC  38 60 00 01 */	li r3, 1
/* 8022A8C0  48 00 07 D8 */	b lbl_8022B098
/* 8022A8C4  7F E3 FB 78 */	mr r3, r31
/* 8022A8C8  48 00 08 C5 */	bl do_space__26jmessage_tMeasureProcessorFUl
/* 8022A8CC  38 60 00 01 */	li r3, 1
/* 8022A8D0  48 00 07 C8 */	b lbl_8022B098
/* 8022A8D4  7F E3 FB 78 */	mr r3, r31
/* 8022A8D8  48 00 08 B5 */	bl do_space__26jmessage_tMeasureProcessorFUl
/* 8022A8DC  88 1E 12 74 */	lbz r0, 0x1274(r30)
/* 8022A8E0  28 00 00 00 */	cmplwi r0, 0
/* 8022A8E4  40 82 00 18 */	bne lbl_8022A8FC
/* 8022A8E8  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8022A8EC  88 9D 00 00 */	lbz r4, 0(r29)
/* 8022A8F0  38 04 FF FF */	addi r0, r4, -1
/* 8022A8F4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8022A8F8  48 00 CC ED */	bl addSelectBomBag__12dMsgObject_cFUc
lbl_8022A8FC:
/* 8022A8FC  38 60 00 01 */	li r3, 1
/* 8022A900  48 00 07 98 */	b lbl_8022B098
/* 8022A904  3B A0 00 00 */	li r29, 0
lbl_8022A908:
/* 8022A908  7F E3 FB 78 */	mr r3, r31
/* 8022A90C  38 80 00 00 */	li r4, 0
/* 8022A910  48 00 08 7D */	bl do_space__26jmessage_tMeasureProcessorFUl
/* 8022A914  3B BD 00 01 */	addi r29, r29, 1
/* 8022A918  2C 1D 00 04 */	cmpwi r29, 4
/* 8022A91C  41 80 FF EC */	blt lbl_8022A908
/* 8022A920  38 60 00 01 */	li r3, 1
/* 8022A924  48 00 07 74 */	b lbl_8022B098
/* 8022A928  38 60 00 01 */	li r3, 1
/* 8022A92C  48 00 07 6C */	b lbl_8022B098
/* 8022A930  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8022A934  48 00 CB 9D */	bl getSelectBombNum__12dMsgObject_cFv
/* 8022A938  7C 60 1B 78 */	mr r0, r3
/* 8022A93C  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022A940  38 80 00 07 */	li r4, 7
/* 8022A944  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8022A948  38 C1 00 D8 */	addi r6, r1, 0xd8
/* 8022A94C  38 E0 00 01 */	li r7, 1
/* 8022A950  48 00 E3 9D */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022A954  7F E3 FB 78 */	mr r3, r31
/* 8022A958  38 81 00 D8 */	addi r4, r1, 0xd8
/* 8022A95C  48 00 0B 85 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022A960  38 60 00 01 */	li r3, 1
/* 8022A964  48 00 07 34 */	b lbl_8022B098
/* 8022A968  48 00 DC 79 */	bl getSelectBombPrice__12dMsgObject_cFv
/* 8022A96C  7C 60 1B 78 */	mr r0, r3
/* 8022A970  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022A974  38 80 00 01 */	li r4, 1
/* 8022A978  7C 05 07 34 */	extsh r5, r0
/* 8022A97C  38 C1 00 B0 */	addi r6, r1, 0xb0
/* 8022A980  38 E0 00 01 */	li r7, 1
/* 8022A984  48 00 E3 69 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022A988  7F E3 FB 78 */	mr r3, r31
/* 8022A98C  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8022A990  48 00 0B 51 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022A994  38 60 00 01 */	li r3, 1
/* 8022A998  48 00 07 00 */	b lbl_8022B098
/* 8022A99C  38 80 00 70 */	li r4, 0x70
/* 8022A9A0  88 1D 00 00 */	lbz r0, 0(r29)
/* 8022A9A4  28 00 00 01 */	cmplwi r0, 1
/* 8022A9A8  40 82 00 0C */	bne lbl_8022A9B4
/* 8022A9AC  38 80 00 71 */	li r4, 0x71
/* 8022A9B0  48 00 00 14 */	b lbl_8022A9C4
lbl_8022A9B4:
/* 8022A9B4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8022A9B8  28 00 00 02 */	cmplwi r0, 2
/* 8022A9BC  40 82 00 08 */	bne lbl_8022A9C4
/* 8022A9C0  38 80 00 72 */	li r4, 0x72
lbl_8022A9C4:
/* 8022A9C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022A9C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022A9CC  38 63 00 F8 */	addi r3, r3, 0xf8
/* 8022A9D0  4B E0 97 29 */	bl getBombNum__21dSv_player_item_max_cCFUc
/* 8022A9D4  7C 60 1B 78 */	mr r0, r3
/* 8022A9D8  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022A9DC  38 80 00 07 */	li r4, 7
/* 8022A9E0  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8022A9E4  38 C1 00 88 */	addi r6, r1, 0x88
/* 8022A9E8  38 E0 00 01 */	li r7, 1
/* 8022A9EC  48 00 E3 01 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022A9F0  7F E3 FB 78 */	mr r3, r31
/* 8022A9F4  38 81 00 88 */	addi r4, r1, 0x88
/* 8022A9F8  48 00 0A E9 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022A9FC  38 60 00 01 */	li r3, 1
/* 8022AA00  48 00 06 98 */	b lbl_8022B098
/* 8022AA04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022AA08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022AA0C  88 A3 00 F8 */	lbz r5, 0xf8(r3)
/* 8022AA10  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022AA14  38 80 00 00 */	li r4, 0
/* 8022AA18  38 C1 00 60 */	addi r6, r1, 0x60
/* 8022AA1C  38 E0 00 01 */	li r7, 1
/* 8022AA20  48 00 E2 CD */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022AA24  7F E3 FB 78 */	mr r3, r31
/* 8022AA28  38 81 00 60 */	addi r4, r1, 0x60
/* 8022AA2C  48 00 0A B5 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022AA30  38 60 00 01 */	li r3, 1
/* 8022AA34  48 00 06 64 */	b lbl_8022B098
lbl_8022AA38:
/* 8022AA38  38 60 00 01 */	li r3, 1
/* 8022AA3C  48 00 06 5C */	b lbl_8022B098
lbl_8022AA40:
/* 8022AA40  54 80 04 0E */	rlwinm r0, r4, 0, 0x10, 7
/* 8022AA44  28 00 00 0D */	cmplwi r0, 0xd
/* 8022AA48  41 81 01 D0 */	bgt lbl_8022AC18
/* 8022AA4C  3C 60 80 3C */	lis r3, lit_5156@ha /* 0x803C000C@ha */
/* 8022AA50  38 63 00 0C */	addi r3, r3, lit_5156@l /* 0x803C000C@l */
/* 8022AA54  54 00 10 3A */	slwi r0, r0, 2
/* 8022AA58  7C 03 00 2E */	lwzx r0, r3, r0
/* 8022AA5C  7C 09 03 A6 */	mtctr r0
/* 8022AA60  4E 80 04 20 */	bctr 
/* 8022AA64  38 60 00 24 */	li r3, 0x24
/* 8022AA68  4B FF DB 65 */	bl changeCodeToChar__FUs
/* 8022AA6C  7C 64 1B 78 */	mr r4, r3
/* 8022AA70  7F E3 FB 78 */	mr r3, r31
/* 8022AA74  48 00 0A 6D */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022AA78  38 60 00 01 */	li r3, 1
/* 8022AA7C  48 00 06 1C */	b lbl_8022B098
/* 8022AA80  38 60 00 5C */	li r3, 0x5c
/* 8022AA84  4B FF DB 49 */	bl changeCodeToChar__FUs
/* 8022AA88  7C 64 1B 78 */	mr r4, r3
/* 8022AA8C  7F E3 FB 78 */	mr r3, r31
/* 8022AA90  48 00 0A 51 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022AA94  38 60 00 01 */	li r3, 1
/* 8022AA98  48 00 06 00 */	b lbl_8022B098
/* 8022AA9C  38 60 00 40 */	li r3, 0x40
/* 8022AAA0  4B FF DB 2D */	bl changeCodeToChar__FUs
/* 8022AAA4  7C 64 1B 78 */	mr r4, r3
/* 8022AAA8  7F E3 FB 78 */	mr r3, r31
/* 8022AAAC  48 00 0A 35 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022AAB0  38 60 00 01 */	li r3, 1
/* 8022AAB4  48 00 05 E4 */	b lbl_8022B098
/* 8022AAB8  3C 60 00 01 */	lis r3, 0x0001 /* 0x000081F2@ha */
/* 8022AABC  38 63 81 F2 */	addi r3, r3, 0x81F2 /* 0x000081F2@l */
/* 8022AAC0  4B FF DB 0D */	bl changeCodeToChar__FUs
/* 8022AAC4  7C 64 1B 78 */	mr r4, r3
/* 8022AAC8  7F E3 FB 78 */	mr r3, r31
/* 8022AACC  48 00 0A 15 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022AAD0  38 60 00 01 */	li r3, 1
/* 8022AAD4  48 00 05 C4 */	b lbl_8022B098
/* 8022AAD8  3C 60 00 01 */	lis r3, 0x0001 /* 0x000081F3@ha */
/* 8022AADC  38 63 81 F3 */	addi r3, r3, 0x81F3 /* 0x000081F3@l */
/* 8022AAE0  4B FF DA ED */	bl changeCodeToChar__FUs
/* 8022AAE4  7C 64 1B 78 */	mr r4, r3
/* 8022AAE8  7F E3 FB 78 */	mr r3, r31
/* 8022AAEC  48 00 09 F5 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022AAF0  38 60 00 01 */	li r3, 1
/* 8022AAF4  48 00 05 A4 */	b lbl_8022B098
/* 8022AAF8  3C 60 00 01 */	lis r3, 0x0001 /* 0x000081E3@ha */
/* 8022AAFC  38 63 81 E3 */	addi r3, r3, 0x81E3 /* 0x000081E3@l */
/* 8022AB00  4B FF DA CD */	bl changeCodeToChar__FUs
/* 8022AB04  7C 64 1B 78 */	mr r4, r3
/* 8022AB08  7F E3 FB 78 */	mr r3, r31
/* 8022AB0C  48 00 09 D5 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022AB10  38 60 00 01 */	li r3, 1
/* 8022AB14  48 00 05 84 */	b lbl_8022B098
/* 8022AB18  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000876C@ha */
/* 8022AB1C  38 63 87 6C */	addi r3, r3, 0x876C /* 0x0000876C@l */
/* 8022AB20  4B FF DA AD */	bl changeCodeToChar__FUs
/* 8022AB24  7C 64 1B 78 */	mr r4, r3
/* 8022AB28  7F E3 FB 78 */	mr r3, r31
/* 8022AB2C  48 00 09 B5 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022AB30  38 60 00 01 */	li r3, 1
/* 8022AB34  48 00 05 64 */	b lbl_8022B098
/* 8022AB38  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008766@ha */
/* 8022AB3C  38 63 87 66 */	addi r3, r3, 0x8766 /* 0x00008766@l */
/* 8022AB40  4B FF DA 8D */	bl changeCodeToChar__FUs
/* 8022AB44  7C 64 1B 78 */	mr r4, r3
/* 8022AB48  7F E3 FB 78 */	mr r3, r31
/* 8022AB4C  48 00 09 95 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022AB50  38 60 00 01 */	li r3, 1
/* 8022AB54  48 00 05 44 */	b lbl_8022B098
/* 8022AB58  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008765@ha */
/* 8022AB5C  38 63 87 65 */	addi r3, r3, 0x8765 /* 0x00008765@l */
/* 8022AB60  4B FF DA 6D */	bl changeCodeToChar__FUs
/* 8022AB64  7C 64 1B 78 */	mr r4, r3
/* 8022AB68  7F E3 FB 78 */	mr r3, r31
/* 8022AB6C  48 00 09 75 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022AB70  38 60 00 01 */	li r3, 1
/* 8022AB74  48 00 05 24 */	b lbl_8022B098
/* 8022AB78  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008767@ha */
/* 8022AB7C  38 63 87 67 */	addi r3, r3, 0x8767 /* 0x00008767@l */
/* 8022AB80  4B FF DA 4D */	bl changeCodeToChar__FUs
/* 8022AB84  7C 64 1B 78 */	mr r4, r3
/* 8022AB88  7F E3 FB 78 */	mr r3, r31
/* 8022AB8C  48 00 09 55 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022AB90  38 60 00 01 */	li r3, 1
/* 8022AB94  48 00 05 04 */	b lbl_8022B098
/* 8022AB98  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008768@ha */
/* 8022AB9C  38 63 87 68 */	addi r3, r3, 0x8768 /* 0x00008768@l */
/* 8022ABA0  4B FF DA 2D */	bl changeCodeToChar__FUs
/* 8022ABA4  7C 64 1B 78 */	mr r4, r3
/* 8022ABA8  7F E3 FB 78 */	mr r3, r31
/* 8022ABAC  48 00 09 35 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022ABB0  38 60 00 01 */	li r3, 1
/* 8022ABB4  48 00 04 E4 */	b lbl_8022B098
/* 8022ABB8  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008769@ha */
/* 8022ABBC  38 63 87 69 */	addi r3, r3, 0x8769 /* 0x00008769@l */
/* 8022ABC0  4B FF DA 0D */	bl changeCodeToChar__FUs
/* 8022ABC4  7C 64 1B 78 */	mr r4, r3
/* 8022ABC8  7F E3 FB 78 */	mr r3, r31
/* 8022ABCC  48 00 09 15 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022ABD0  38 60 00 01 */	li r3, 1
/* 8022ABD4  48 00 04 C4 */	b lbl_8022B098
/* 8022ABD8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000876A@ha */
/* 8022ABDC  38 63 87 6A */	addi r3, r3, 0x876A /* 0x0000876A@l */
/* 8022ABE0  4B FF D9 ED */	bl changeCodeToChar__FUs
/* 8022ABE4  7C 64 1B 78 */	mr r4, r3
/* 8022ABE8  7F E3 FB 78 */	mr r3, r31
/* 8022ABEC  48 00 08 F5 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022ABF0  38 60 00 01 */	li r3, 1
/* 8022ABF4  48 00 04 A4 */	b lbl_8022B098
/* 8022ABF8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000876B@ha */
/* 8022ABFC  38 63 87 6B */	addi r3, r3, 0x876B /* 0x0000876B@l */
/* 8022AC00  4B FF D9 CD */	bl changeCodeToChar__FUs
/* 8022AC04  7C 64 1B 78 */	mr r4, r3
/* 8022AC08  7F E3 FB 78 */	mr r3, r31
/* 8022AC0C  48 00 08 D5 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022AC10  38 60 00 01 */	li r3, 1
/* 8022AC14  48 00 04 84 */	b lbl_8022B098
lbl_8022AC18:
/* 8022AC18  38 60 00 00 */	li r3, 0
/* 8022AC1C  48 00 04 7C */	b lbl_8022B098
lbl_8022AC20:
/* 8022AC20  54 80 04 0E */	rlwinm r0, r4, 0, 0x10, 7
/* 8022AC24  28 00 00 0E */	cmplwi r0, 0xe
/* 8022AC28  41 81 02 E8 */	bgt lbl_8022AF10
/* 8022AC2C  3C 60 80 3C */	lis r3, lit_5157@ha /* 0x803BFFD0@ha */
/* 8022AC30  38 63 FF D0 */	addi r3, r3, lit_5157@l /* 0x803BFFD0@l */
/* 8022AC34  54 00 10 3A */	slwi r0, r0, 2
/* 8022AC38  7C 03 00 2E */	lwzx r0, r3, r0
/* 8022AC3C  7C 09 03 A6 */	mtctr r0
/* 8022AC40  4E 80 04 20 */	bctr 
/* 8022AC44  88 1D 00 00 */	lbz r0, 0(r29)
/* 8022AC48  28 00 00 00 */	cmplwi r0, 0
/* 8022AC4C  40 82 00 28 */	bne lbl_8022AC74
/* 8022AC50  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022AC54  38 80 00 04 */	li r4, 4
/* 8022AC58  3C A0 80 43 */	lis r5, g_meter2_info@ha /* 0x80430188@ha */
/* 8022AC5C  38 A5 01 88 */	addi r5, r5, g_meter2_info@l /* 0x80430188@l */
/* 8022AC60  80 A5 00 88 */	lwz r5, 0x88(r5)
/* 8022AC64  38 C1 00 38 */	addi r6, r1, 0x38
/* 8022AC68  38 E0 00 01 */	li r7, 1
/* 8022AC6C  48 00 E0 81 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022AC70  48 00 02 A8 */	b lbl_8022AF18
lbl_8022AC74:
/* 8022AC74  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8022AC78  28 00 00 02 */	cmplwi r0, 2
/* 8022AC7C  40 82 00 28 */	bne lbl_8022ACA4
/* 8022AC80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022AC84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022AC88  80 A3 09 4C */	lwz r5, 0x94c(r3)
/* 8022AC8C  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022AC90  38 80 00 04 */	li r4, 4
/* 8022AC94  38 C1 00 38 */	addi r6, r1, 0x38
/* 8022AC98  38 E0 00 01 */	li r7, 1
/* 8022AC9C  48 00 E0 51 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022ACA0  48 00 02 78 */	b lbl_8022AF18
lbl_8022ACA4:
/* 8022ACA4  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022ACA8  38 80 00 04 */	li r4, 4
/* 8022ACAC  3C A0 80 43 */	lis r5, g_meter2_info@ha /* 0x80430188@ha */
/* 8022ACB0  38 A5 01 88 */	addi r5, r5, g_meter2_info@l /* 0x80430188@l */
/* 8022ACB4  80 A5 00 84 */	lwz r5, 0x84(r5)
/* 8022ACB8  38 C1 00 38 */	addi r6, r1, 0x38
/* 8022ACBC  38 E0 00 01 */	li r7, 1
/* 8022ACC0  48 00 E0 2D */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022ACC4  48 00 02 54 */	b lbl_8022AF18
/* 8022ACC8  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022ACCC  38 80 00 00 */	li r4, 0
/* 8022ACD0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022ACD4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022ACD8  80 A5 5E 0C */	lwz r5, 0x5e0c(r5)
/* 8022ACDC  38 C1 00 38 */	addi r6, r1, 0x38
/* 8022ACE0  38 E0 00 01 */	li r7, 1
/* 8022ACE4  48 00 E0 09 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022ACE8  48 00 02 30 */	b lbl_8022AF18
/* 8022ACEC  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022ACF0  38 80 00 01 */	li r4, 1
/* 8022ACF4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022ACF8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022ACFC  80 A5 5E 0C */	lwz r5, 0x5e0c(r5)
/* 8022AD00  38 C1 00 38 */	addi r6, r1, 0x38
/* 8022AD04  38 E0 00 01 */	li r7, 1
/* 8022AD08  48 00 DF E5 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022AD0C  48 00 02 0C */	b lbl_8022AF18
/* 8022AD10  80 1D 00 00 */	lwz r0, 0(r29)
/* 8022AD14  7C 1D 07 34 */	extsh r29, r0
/* 8022AD18  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8022AD1C  B0 03 01 76 */	sth r0, 0x176(r3)
/* 8022AD20  48 00 DC 09 */	bl dMsgObject_getFundRaising__Fv
/* 8022AD24  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8022AD28  7C A0 E8 50 */	subf r5, r0, r29
/* 8022AD2C  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022AD30  38 80 00 0A */	li r4, 0xa
/* 8022AD34  38 C1 00 38 */	addi r6, r1, 0x38
/* 8022AD38  38 E0 00 01 */	li r7, 1
/* 8022AD3C  48 00 DF B1 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022AD40  48 00 01 D8 */	b lbl_8022AF18
/* 8022AD44  4B FF 3A 11 */	bl dMeter2Info_getNewLetterNum__Fv
/* 8022AD48  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8022AD4C  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022AD50  38 80 00 0B */	li r4, 0xb
/* 8022AD54  38 C1 00 38 */	addi r6, r1, 0x38
/* 8022AD58  38 E0 00 01 */	li r7, 1
/* 8022AD5C  48 00 DF 91 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022AD60  48 00 01 B8 */	b lbl_8022AF18
/* 8022AD64  4B FF DD 69 */	bl getPohNum__Fv
/* 8022AD68  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8022AD6C  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022AD70  38 80 00 0C */	li r4, 0xc
/* 8022AD74  38 C1 00 38 */	addi r6, r1, 0x38
/* 8022AD78  38 E0 00 01 */	li r7, 1
/* 8022AD7C  48 00 DF 71 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022AD80  48 00 01 98 */	b lbl_8022AF18
/* 8022AD84  88 1D 00 00 */	lbz r0, 0(r29)
/* 8022AD88  28 00 00 00 */	cmplwi r0, 0
/* 8022AD8C  40 82 00 14 */	bne lbl_8022ADA0
/* 8022AD90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022AD94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022AD98  80 A3 5E 0C */	lwz r5, 0x5e0c(r3)
/* 8022AD9C  48 00 00 10 */	b lbl_8022ADAC
lbl_8022ADA0:
/* 8022ADA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022ADA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022ADA8  80 A3 09 48 */	lwz r5, 0x948(r3)
lbl_8022ADAC:
/* 8022ADAC  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022ADB0  38 80 00 0D */	li r4, 0xd
/* 8022ADB4  38 C1 00 38 */	addi r6, r1, 0x38
/* 8022ADB8  38 E0 00 01 */	li r7, 1
/* 8022ADBC  48 00 DF 31 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022ADC0  48 00 01 58 */	b lbl_8022AF18
/* 8022ADC4  88 1D 00 00 */	lbz r0, 0(r29)
/* 8022ADC8  28 00 00 00 */	cmplwi r0, 0
/* 8022ADCC  40 82 00 10 */	bne lbl_8022ADDC
/* 8022ADD0  4B E0 36 59 */	bl dComIfGs_checkGetInsectNum__Fv
/* 8022ADD4  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8022ADD8  48 00 00 10 */	b lbl_8022ADE8
lbl_8022ADDC:
/* 8022ADDC  4B E0 36 4D */	bl dComIfGs_checkGetInsectNum__Fv
/* 8022ADE0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8022ADE4  20 A0 00 18 */	subfic r5, r0, 0x18
lbl_8022ADE8:
/* 8022ADE8  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022ADEC  38 80 00 02 */	li r4, 2
/* 8022ADF0  38 C1 00 38 */	addi r6, r1, 0x38
/* 8022ADF4  38 E0 00 01 */	li r7, 1
/* 8022ADF8  48 00 DE F5 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022ADFC  48 00 01 1C */	b lbl_8022AF18
/* 8022AE00  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022AE04  38 80 00 03 */	li r4, 3
/* 8022AE08  38 A0 00 00 */	li r5, 0
/* 8022AE0C  38 C1 00 38 */	addi r6, r1, 0x38
/* 8022AE10  38 E0 00 01 */	li r7, 1
/* 8022AE14  48 00 DE D9 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022AE18  48 00 01 00 */	b lbl_8022AF18
/* 8022AE1C  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022AE20  3C 80 00 01 */	lis r4, 1
/* 8022AE24  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022AE28  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022AE2C  88 A5 5E A1 */	lbz r5, 0x5ea1(r5)
/* 8022AE30  38 C1 00 38 */	addi r6, r1, 0x38
/* 8022AE34  38 E0 00 01 */	li r7, 1
/* 8022AE38  48 00 DE B5 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022AE3C  48 00 00 DC */	b lbl_8022AF18
/* 8022AE40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022AE44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022AE48  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8022AE4C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FF1F@ha */
/* 8022AE50  38 84 FF 1F */	addi r4, r4, 0xFF1F /* 0x0000FF1F@l */
/* 8022AE54  4B E0 9B B1 */	bl getEventReg__11dSv_event_cCFUs
/* 8022AE58  7C 60 1B 78 */	mr r0, r3
/* 8022AE5C  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022AE60  38 80 00 06 */	li r4, 6
/* 8022AE64  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8022AE68  20 A0 00 14 */	subfic r5, r0, 0x14
/* 8022AE6C  38 C1 00 38 */	addi r6, r1, 0x38
/* 8022AE70  38 E0 00 01 */	li r7, 1
/* 8022AE74  48 00 DE 79 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022AE78  48 00 00 A0 */	b lbl_8022AF18
/* 8022AE7C  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022AE80  38 80 00 09 */	li r4, 9
/* 8022AE84  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022AE88  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022AE8C  80 A5 5E 0C */	lwz r5, 0x5e0c(r5)
/* 8022AE90  38 C1 00 38 */	addi r6, r1, 0x38
/* 8022AE94  38 E0 00 01 */	li r7, 1
/* 8022AE98  48 00 DE 55 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022AE9C  48 00 00 7C */	b lbl_8022AF18
/* 8022AEA0  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022AEA4  38 80 00 0E */	li r4, 0xe
/* 8022AEA8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022AEAC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022AEB0  80 A5 5E 0C */	lwz r5, 0x5e0c(r5)
/* 8022AEB4  38 C1 00 38 */	addi r6, r1, 0x38
/* 8022AEB8  38 E0 00 01 */	li r7, 1
/* 8022AEBC  48 00 DE 31 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022AEC0  48 00 00 58 */	b lbl_8022AF18
/* 8022AEC4  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022AEC8  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010001@ha */
/* 8022AECC  38 84 00 01 */	addi r4, r4, 0x0001 /* 0x00010001@l */
/* 8022AED0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022AED4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8022AED8  80 A5 5E 0C */	lwz r5, 0x5e0c(r5)
/* 8022AEDC  38 C1 00 38 */	addi r6, r1, 0x38
/* 8022AEE0  38 E0 00 01 */	li r7, 1
/* 8022AEE4  48 00 DE 09 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022AEE8  48 00 00 30 */	b lbl_8022AF18
/* 8022AEEC  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022AEF0  38 80 00 08 */	li r4, 8
/* 8022AEF4  3C A0 80 43 */	lis r5, g_meter2_info@ha /* 0x80430188@ha */
/* 8022AEF8  38 A5 01 88 */	addi r5, r5, g_meter2_info@l /* 0x80430188@l */
/* 8022AEFC  88 A5 00 BC */	lbz r5, 0xbc(r5)
/* 8022AF00  38 C1 00 38 */	addi r6, r1, 0x38
/* 8022AF04  38 E0 00 01 */	li r7, 1
/* 8022AF08  48 00 DD E5 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022AF0C  48 00 00 0C */	b lbl_8022AF18
lbl_8022AF10:
/* 8022AF10  38 60 00 00 */	li r3, 0
/* 8022AF14  48 00 01 84 */	b lbl_8022B098
lbl_8022AF18:
/* 8022AF18  7F E3 FB 78 */	mr r3, r31
/* 8022AF1C  38 81 00 38 */	addi r4, r1, 0x38
/* 8022AF20  48 00 05 C1 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022AF24  38 60 00 01 */	li r3, 1
/* 8022AF28  48 00 01 70 */	b lbl_8022B098
lbl_8022AF2C:
/* 8022AF2C  54 80 04 0E */	rlwinm r0, r4, 0, 0x10, 7
/* 8022AF30  28 00 00 0B */	cmplwi r0, 0xb
/* 8022AF34  41 81 01 2C */	bgt lbl_8022B060
/* 8022AF38  3C A0 80 3C */	lis r5, lit_5158@ha /* 0x803BFFA0@ha */
/* 8022AF3C  38 A5 FF A0 */	addi r5, r5, lit_5158@l /* 0x803BFFA0@l */
/* 8022AF40  54 00 10 3A */	slwi r0, r0, 2
/* 8022AF44  7C 05 00 2E */	lwzx r0, r5, r0
/* 8022AF48  7C 09 03 A6 */	mtctr r0
/* 8022AF4C  4E 80 04 20 */	bctr 
/* 8022AF50  38 81 00 10 */	addi r4, r1, 0x10
/* 8022AF54  48 00 05 8D */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022AF58  38 60 00 01 */	li r3, 1
/* 8022AF5C  48 00 01 3C */	b lbl_8022B098
/* 8022AF60  38 81 00 10 */	addi r4, r1, 0x10
/* 8022AF64  48 00 05 7D */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022AF68  38 60 00 01 */	li r3, 1
/* 8022AF6C  48 00 01 2C */	b lbl_8022B098
/* 8022AF70  38 60 00 B2 */	li r3, 0xb2
/* 8022AF74  4B FF D6 59 */	bl changeCodeToChar__FUs
/* 8022AF78  7C 64 1B 78 */	mr r4, r3
/* 8022AF7C  7F E3 FB 78 */	mr r3, r31
/* 8022AF80  48 00 05 61 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022AF84  38 60 00 01 */	li r3, 1
/* 8022AF88  48 00 01 10 */	b lbl_8022B098
/* 8022AF8C  38 60 00 B3 */	li r3, 0xb3
/* 8022AF90  4B FF D6 3D */	bl changeCodeToChar__FUs
/* 8022AF94  7C 64 1B 78 */	mr r4, r3
/* 8022AF98  7F E3 FB 78 */	mr r3, r31
/* 8022AF9C  48 00 05 45 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022AFA0  38 60 00 01 */	li r3, 1
/* 8022AFA4  48 00 00 F4 */	b lbl_8022B098
/* 8022AFA8  38 60 00 B1 */	li r3, 0xb1
/* 8022AFAC  4B FF D6 21 */	bl changeCodeToChar__FUs
/* 8022AFB0  7C 64 1B 78 */	mr r4, r3
/* 8022AFB4  7F E3 FB 78 */	mr r3, r31
/* 8022AFB8  48 00 05 29 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022AFBC  38 60 00 01 */	li r3, 1
/* 8022AFC0  48 00 00 D8 */	b lbl_8022B098
/* 8022AFC4  38 60 00 89 */	li r3, 0x89
/* 8022AFC8  4B FF D6 05 */	bl changeCodeToChar__FUs
/* 8022AFCC  7C 64 1B 78 */	mr r4, r3
/* 8022AFD0  7F E3 FB 78 */	mr r3, r31
/* 8022AFD4  48 00 05 0D */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022AFD8  38 60 00 01 */	li r3, 1
/* 8022AFDC  48 00 00 BC */	b lbl_8022B098
/* 8022AFE0  38 60 00 B9 */	li r3, 0xb9
/* 8022AFE4  4B FF D5 E9 */	bl changeCodeToChar__FUs
/* 8022AFE8  7C 64 1B 78 */	mr r4, r3
/* 8022AFEC  7F E3 FB 78 */	mr r3, r31
/* 8022AFF0  48 00 04 F1 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022AFF4  38 60 00 01 */	li r3, 1
/* 8022AFF8  48 00 00 A0 */	b lbl_8022B098
/* 8022AFFC  38 60 00 BC */	li r3, 0xbc
/* 8022B000  4B FF D5 CD */	bl changeCodeToChar__FUs
/* 8022B004  7C 64 1B 78 */	mr r4, r3
/* 8022B008  7F E3 FB 78 */	mr r3, r31
/* 8022B00C  48 00 04 D5 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022B010  38 60 00 01 */	li r3, 1
/* 8022B014  48 00 00 84 */	b lbl_8022B098
/* 8022B018  38 60 00 BD */	li r3, 0xbd
/* 8022B01C  4B FF D5 B1 */	bl changeCodeToChar__FUs
/* 8022B020  7C 64 1B 78 */	mr r4, r3
/* 8022B024  7F E3 FB 78 */	mr r3, r31
/* 8022B028  48 00 04 B9 */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022B02C  38 60 00 01 */	li r3, 1
/* 8022B030  48 00 00 68 */	b lbl_8022B098
/* 8022B034  38 60 00 BE */	li r3, 0xbe
/* 8022B038  4B FF D5 95 */	bl changeCodeToChar__FUs
/* 8022B03C  7C 64 1B 78 */	mr r4, r3
/* 8022B040  7F E3 FB 78 */	mr r3, r31
/* 8022B044  48 00 04 9D */	bl push_word__26jmessage_tMeasureProcessorFPc
/* 8022B048  38 60 00 01 */	li r3, 1
/* 8022B04C  48 00 00 4C */	b lbl_8022B098
/* 8022B050  7F E3 FB 78 */	mr r3, r31
/* 8022B054  48 00 01 39 */	bl do_space__26jmessage_tMeasureProcessorFUl
/* 8022B058  38 60 00 01 */	li r3, 1
/* 8022B05C  48 00 00 3C */	b lbl_8022B098
lbl_8022B060:
/* 8022B060  54 80 04 0F */	rlwinm. r0, r4, 0, 0x10, 7
/* 8022B064  41 82 00 20 */	beq lbl_8022B084
/* 8022B068  41 80 00 2C */	blt lbl_8022B094
/* 8022B06C  2C 00 00 15 */	cmpwi r0, 0x15
/* 8022B070  40 80 00 24 */	bge lbl_8022B094
/* 8022B074  7F E3 FB 78 */	mr r3, r31
/* 8022B078  48 00 01 15 */	bl do_space__26jmessage_tMeasureProcessorFUl
/* 8022B07C  38 60 00 01 */	li r3, 1
/* 8022B080  48 00 00 18 */	b lbl_8022B098
lbl_8022B084:
/* 8022B084  80 1D 00 00 */	lwz r0, 0(r29)
/* 8022B088  90 1E 05 B8 */	stw r0, 0x5b8(r30)
/* 8022B08C  38 60 00 01 */	li r3, 1
/* 8022B090  48 00 00 08 */	b lbl_8022B098
lbl_8022B094:
/* 8022B094  38 60 00 00 */	li r3, 0
lbl_8022B098:
/* 8022B098  39 61 01 E0 */	addi r11, r1, 0x1e0
/* 8022B09C  48 13 71 8D */	bl _restgpr_29
/* 8022B0A0  80 01 01 E4 */	lwz r0, 0x1e4(r1)
/* 8022B0A4  7C 08 03 A6 */	mtlr r0
/* 8022B0A8  38 21 01 E0 */	addi r1, r1, 0x1e0
/* 8022B0AC  4E 80 00 20 */	blr 
