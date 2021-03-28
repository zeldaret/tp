lbl_80AE45DC:
/* 80AE45DC  94 21 FE 20 */	stwu r1, -0x1e0(r1)
/* 80AE45E0  7C 08 02 A6 */	mflr r0
/* 80AE45E4  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 80AE45E8  39 61 01 E0 */	addi r11, r1, 0x1e0
/* 80AE45EC  4B 87 DB B8 */	b _savegpr_15
/* 80AE45F0  90 61 00 08 */	stw r3, 8(r1)
/* 80AE45F4  39 E0 00 00 */	li r15, 0
/* 80AE45F8  3A 00 00 00 */	li r16, 0
/* 80AE45FC  3A 20 00 00 */	li r17, 0
/* 80AE4600  3A 40 00 00 */	li r18, 0
/* 80AE4604  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AE4608  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AE460C  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 80AE4610  3A 81 00 0C */	addi r20, r1, 0xc
/* 80AE4614  3C 60 80 AE */	lis r3, mEvtBitLabels__11daNpc_Sha_c@ha
/* 80AE4618  3A 63 71 1C */	addi r19, r3, mEvtBitLabels__11daNpc_Sha_c@l
lbl_80AE461C:
/* 80AE461C  7F E3 FB 78 */	mr r3, r31
/* 80AE4620  7C 93 92 2E */	lhzx r4, r19, r18
/* 80AE4624  4B 55 03 E0 */	b getEventReg__11dSv_event_cCFUs
/* 80AE4628  38 E0 00 01 */	li r7, 1
/* 80AE462C  39 00 00 00 */	li r8, 0
/* 80AE4630  54 66 06 3E */	clrlwi r6, r3, 0x18
/* 80AE4634  38 A0 00 00 */	li r5, 0
/* 80AE4638  38 60 00 01 */	li r3, 1
/* 80AE463C  38 00 00 08 */	li r0, 8
/* 80AE4640  7C 09 03 A6 */	mtctr r0
lbl_80AE4644:
/* 80AE4644  7C 08 8A 14 */	add r0, r8, r17
/* 80AE4648  54 04 10 3A */	slwi r4, r0, 2
/* 80AE464C  7C B4 21 2E */	stwx r5, r20, r4
/* 80AE4650  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 80AE4654  7C 00 30 39 */	and. r0, r0, r6
/* 80AE4658  41 82 00 0C */	beq lbl_80AE4664
/* 80AE465C  7C 74 21 2E */	stwx r3, r20, r4
/* 80AE4660  39 EF 00 01 */	addi r15, r15, 1
lbl_80AE4664:
/* 80AE4664  54 E7 0E 3C */	rlwinm r7, r7, 1, 0x18, 0x1e
/* 80AE4668  39 08 00 01 */	addi r8, r8, 1
/* 80AE466C  42 00 FF D8 */	bdnz lbl_80AE4644
/* 80AE4670  3A 10 00 01 */	addi r16, r16, 1
/* 80AE4674  2C 10 00 06 */	cmpwi r16, 6
/* 80AE4678  3A 31 00 08 */	addi r17, r17, 8
/* 80AE467C  3A 52 00 02 */	addi r18, r18, 2
/* 80AE4680  41 80 FF 9C */	blt lbl_80AE461C
/* 80AE4684  2C 0F 00 2D */	cmpwi r15, 0x2d
/* 80AE4688  41 80 00 0C */	blt lbl_80AE4694
/* 80AE468C  38 60 FF FE */	li r3, -2
/* 80AE4690  48 00 02 28 */	b lbl_80AE48B8
lbl_80AE4694:
/* 80AE4694  3B 80 00 02 */	li r28, 2
/* 80AE4698  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AE469C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AE46A0  39 E3 0D D8 */	addi r15, r3, 0xdd8
/* 80AE46A4  3C 60 80 AE */	lis r3, mTmpBitLabels__11daNpc_Sha_c@ha
/* 80AE46A8  3A 23 71 28 */	addi r17, r3, mTmpBitLabels__11daNpc_Sha_c@l
/* 80AE46AC  3C 60 80 AE */	lis r3, mQueries__11daNpc_Sha_c@ha
/* 80AE46B0  38 03 74 34 */	addi r0, r3, mQueries__11daNpc_Sha_c@l
/* 80AE46B4  90 01 01 90 */	stw r0, 0x190(r1)
/* 80AE46B8  3C 60 80 AE */	lis r3, mEvtBitLabels__11daNpc_Sha_c@ha
/* 80AE46BC  38 03 71 1C */	addi r0, r3, mEvtBitLabels__11daNpc_Sha_c@l
/* 80AE46C0  90 01 01 8C */	stw r0, 0x18c(r1)
/* 80AE46C4  7D F0 7B 78 */	mr r16, r15
lbl_80AE46C8:
/* 80AE46C8  3A 80 00 00 */	li r20, 0
/* 80AE46CC  3A 40 00 00 */	li r18, 0
lbl_80AE46D0:
/* 80AE46D0  7D E3 7B 78 */	mr r3, r15
/* 80AE46D4  7C 91 92 2E */	lhzx r4, r17, r18
/* 80AE46D8  4B 55 03 2C */	b getEventReg__11dSv_event_cCFUs
/* 80AE46DC  7C 73 1B 78 */	mr r19, r3
/* 80AE46E0  7F E3 FB 78 */	mr r3, r31
/* 80AE46E4  80 81 01 8C */	lwz r4, 0x18c(r1)
/* 80AE46E8  7C 84 92 2E */	lhzx r4, r4, r18
/* 80AE46EC  4B 55 03 18 */	b getEventReg__11dSv_event_cCFUs
/* 80AE46F0  7E 65 1B 78 */	or r5, r19, r3
/* 80AE46F4  7D E3 7B 78 */	mr r3, r15
/* 80AE46F8  7C 91 92 2E */	lhzx r4, r17, r18
/* 80AE46FC  4B 55 02 E4 */	b setEventReg__11dSv_event_cFUsUc
/* 80AE4700  3A 94 00 01 */	addi r20, r20, 1
/* 80AE4704  2C 14 00 06 */	cmpwi r20, 6
/* 80AE4708  3A 52 00 02 */	addi r18, r18, 2
/* 80AE470C  41 80 FF C4 */	blt lbl_80AE46D0
/* 80AE4710  38 80 00 00 */	li r4, 0
/* 80AE4714  38 A0 FF FF */	li r5, -1
/* 80AE4718  38 00 00 30 */	li r0, 0x30
/* 80AE471C  7C 09 03 A6 */	mtctr r0
lbl_80AE4720:
/* 80AE4720  38 61 00 CC */	addi r3, r1, 0xcc
/* 80AE4724  7C A3 21 2E */	stwx r5, r3, r4
/* 80AE4728  38 84 00 04 */	addi r4, r4, 4
/* 80AE472C  42 00 FF F4 */	bdnz lbl_80AE4720
/* 80AE4730  3B 20 00 00 */	li r25, 0
/* 80AE4734  3B 60 00 00 */	li r27, 0
/* 80AE4738  3A 40 00 00 */	li r18, 0
/* 80AE473C  3B 40 00 00 */	li r26, 0
/* 80AE4740  3B 00 00 00 */	li r24, 0
/* 80AE4744  3A E0 00 00 */	li r23, 0
/* 80AE4748  3A C0 00 00 */	li r22, 0
/* 80AE474C  3A 80 00 00 */	li r20, 0
/* 80AE4750  3A 60 00 00 */	li r19, 0
lbl_80AE4754:
/* 80AE4754  3B A0 00 01 */	li r29, 1
/* 80AE4758  3A A0 00 00 */	li r21, 0
lbl_80AE475C:
/* 80AE475C  80 61 00 08 */	lwz r3, 8(r1)
/* 80AE4760  7F D5 9A 14 */	add r30, r21, r19
/* 80AE4764  1C 9E 00 0C */	mulli r4, r30, 0xc
/* 80AE4768  80 01 01 90 */	lwz r0, 0x190(r1)
/* 80AE476C  7D 80 22 14 */	add r12, r0, r4
/* 80AE4770  4B 87 D9 14 */	b __ptmf_scall
/* 80AE4774  60 00 00 00 */	nop 
/* 80AE4778  2C 03 00 00 */	cmpwi r3, 0
/* 80AE477C  41 82 00 54 */	beq lbl_80AE47D0
/* 80AE4780  57 C0 10 3A */	slwi r0, r30, 2
/* 80AE4784  38 61 00 0C */	addi r3, r1, 0xc
/* 80AE4788  7C 03 00 2E */	lwzx r0, r3, r0
/* 80AE478C  2C 00 00 00 */	cmpwi r0, 0
/* 80AE4790  3B 39 00 01 */	addi r25, r25, 1
/* 80AE4794  41 82 00 08 */	beq lbl_80AE479C
/* 80AE4798  3A F7 00 01 */	addi r23, r23, 1
lbl_80AE479C:
/* 80AE479C  7E 03 83 78 */	mr r3, r16
/* 80AE47A0  7C 91 A2 2E */	lhzx r4, r17, r20
/* 80AE47A4  4B 55 02 60 */	b getEventReg__11dSv_event_cCFUs
/* 80AE47A8  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 80AE47AC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80AE47B0  7C 80 00 39 */	and. r0, r4, r0
/* 80AE47B4  40 82 00 18 */	bne lbl_80AE47CC
/* 80AE47B8  38 61 00 CC */	addi r3, r1, 0xcc
/* 80AE47BC  7F 03 91 2E */	stwx r24, r3, r18
/* 80AE47C0  3B 7B 00 01 */	addi r27, r27, 1
/* 80AE47C4  3A 52 00 04 */	addi r18, r18, 4
/* 80AE47C8  48 00 00 08 */	b lbl_80AE47D0
lbl_80AE47CC:
/* 80AE47CC  3B 5A 00 01 */	addi r26, r26, 1
lbl_80AE47D0:
/* 80AE47D0  57 BD 0E 3C */	rlwinm r29, r29, 1, 0x18, 0x1e
/* 80AE47D4  3A B5 00 01 */	addi r21, r21, 1
/* 80AE47D8  2C 15 00 08 */	cmpwi r21, 8
/* 80AE47DC  3B 18 00 01 */	addi r24, r24, 1
/* 80AE47E0  41 80 FF 7C */	blt lbl_80AE475C
/* 80AE47E4  3A D6 00 01 */	addi r22, r22, 1
/* 80AE47E8  2C 16 00 06 */	cmpwi r22, 6
/* 80AE47EC  3A 94 00 02 */	addi r20, r20, 2
/* 80AE47F0  3A 73 00 08 */	addi r19, r19, 8
/* 80AE47F4  41 80 FF 60 */	blt lbl_80AE4754
/* 80AE47F8  7D E3 7B 78 */	mr r3, r15
/* 80AE47FC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F2FF@ha */
/* 80AE4800  38 84 F2 FF */	addi r4, r4, 0xF2FF /* 0x0000F2FF@l */
/* 80AE4804  4B 55 02 00 */	b getEventReg__11dSv_event_cCFUs
/* 80AE4808  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AE480C  41 82 00 1C */	beq lbl_80AE4828
/* 80AE4810  28 00 00 2D */	cmplwi r0, 0x2d
/* 80AE4814  40 81 00 08 */	ble lbl_80AE481C
/* 80AE4818  38 60 00 2D */	li r3, 0x2d
lbl_80AE481C:
/* 80AE481C  38 03 FF FF */	addi r0, r3, -1
/* 80AE4820  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80AE4824  48 00 00 94 */	b lbl_80AE48B8
lbl_80AE4828:
/* 80AE4828  2C 19 00 00 */	cmpwi r25, 0
/* 80AE482C  41 82 00 0C */	beq lbl_80AE4838
/* 80AE4830  7C 19 B8 00 */	cmpw r25, r23
/* 80AE4834  40 82 00 0C */	bne lbl_80AE4840
lbl_80AE4838:
/* 80AE4838  38 60 FF FF */	li r3, -1
/* 80AE483C  48 00 00 7C */	b lbl_80AE48B8
lbl_80AE4840:
/* 80AE4840  2C 1B 00 00 */	cmpwi r27, 0
/* 80AE4844  41 82 00 38 */	beq lbl_80AE487C
/* 80AE4848  38 60 00 00 */	li r3, 0
/* 80AE484C  7F 64 DB 78 */	mr r4, r27
/* 80AE4850  48 00 1C 05 */	bl func_80AE6454
/* 80AE4854  3C 80 80 43 */	lis r4, g_Counter@ha
/* 80AE4858  80 04 0C D8 */	lwz r0, g_Counter@l(r4)
/* 80AE485C  7C 63 02 14 */	add r3, r3, r0
/* 80AE4860  7C 03 DB 96 */	divwu r0, r3, r27
/* 80AE4864  7C 00 D9 D6 */	mullw r0, r0, r27
/* 80AE4868  7C 00 18 50 */	subf r0, r0, r3
/* 80AE486C  54 00 10 3A */	slwi r0, r0, 2
/* 80AE4870  38 61 00 CC */	addi r3, r1, 0xcc
/* 80AE4874  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AE4878  48 00 00 40 */	b lbl_80AE48B8
lbl_80AE487C:
/* 80AE487C  2C 1A 00 00 */	cmpwi r26, 0
/* 80AE4880  41 82 00 34 */	beq lbl_80AE48B4
/* 80AE4884  3A 60 00 00 */	li r19, 0
/* 80AE4888  3A 40 00 00 */	li r18, 0
lbl_80AE488C:
/* 80AE488C  7D E3 7B 78 */	mr r3, r15
/* 80AE4890  7C 91 92 2E */	lhzx r4, r17, r18
/* 80AE4894  38 A0 00 00 */	li r5, 0
/* 80AE4898  4B 55 01 48 */	b setEventReg__11dSv_event_cFUsUc
/* 80AE489C  3A 73 00 01 */	addi r19, r19, 1
/* 80AE48A0  2C 13 00 06 */	cmpwi r19, 6
/* 80AE48A4  3A 52 00 02 */	addi r18, r18, 2
/* 80AE48A8  41 80 FF E4 */	blt lbl_80AE488C
/* 80AE48AC  37 9C FF FF */	addic. r28, r28, -1
/* 80AE48B0  40 82 FE 18 */	bne lbl_80AE46C8
lbl_80AE48B4:
/* 80AE48B4  38 60 FF FF */	li r3, -1
lbl_80AE48B8:
/* 80AE48B8  39 61 01 E0 */	addi r11, r1, 0x1e0
/* 80AE48BC  4B 87 D9 34 */	b _restgpr_15
/* 80AE48C0  80 01 01 E4 */	lwz r0, 0x1e4(r1)
/* 80AE48C4  7C 08 03 A6 */	mtlr r0
/* 80AE48C8  38 21 01 E0 */	addi r1, r1, 0x1e0
/* 80AE48CC  4E 80 00 20 */	blr 
