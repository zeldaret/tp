lbl_80044324:
/* 80044324  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80044328  7C 08 02 A6 */	mflr r0
/* 8004432C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80044330  39 61 00 20 */	addi r11, r1, 0x20
/* 80044334  48 31 DE 9D */	bl _savegpr_26
/* 80044338  7C 7B 1B 78 */	mr r27, r3
/* 8004433C  3B 9B 00 08 */	addi r28, r27, 8
/* 80044340  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80044344  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80044348  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 8004434C  7F A3 EB 78 */	mr r3, r29
/* 80044350  3C 80 80 38 */	lis r4, d_event_d_event_data__stringBase0@ha
/* 80044354  38 84 9D D0 */	addi r4, r4, d_event_d_event_data__stringBase0@l
/* 80044358  38 84 00 51 */	addi r4, r4, 0x51
/* 8004435C  38 A0 00 00 */	li r5, 0
/* 80044360  38 C0 00 00 */	li r6, 0
/* 80044364  48 00 37 B9 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80044368  7C 7E 1B 78 */	mr r30, r3
/* 8004436C  2C 1E FF FF */	cmpwi r30, -1
/* 80044370  41 82 06 D0 */	beq lbl_80044A40
/* 80044374  7F A3 EB 78 */	mr r3, r29
/* 80044378  7F C4 F3 78 */	mr r4, r30
/* 8004437C  48 00 3B E1 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80044380  7C 7F 1B 78 */	mr r31, r3
/* 80044384  7F A3 EB 78 */	mr r3, r29
/* 80044388  7F C4 F3 78 */	mr r4, r30
/* 8004438C  48 00 39 C1 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80044390  2C 03 00 00 */	cmpwi r3, 0
/* 80044394  41 82 03 00 */	beq lbl_80044694
/* 80044398  80 9F 00 00 */	lwz r4, 0(r31)
/* 8004439C  3C 60 53 41 */	lis r3, 0x5341 /* 0x53415645@ha */
/* 800443A0  38 03 56 45 */	addi r0, r3, 0x5645 /* 0x53415645@l */
/* 800443A4  7C 04 00 00 */	cmpw r4, r0
/* 800443A8  41 82 01 C4 */	beq lbl_8004456C
/* 800443AC  40 80 00 54 */	bge lbl_80044400
/* 800443B0  3C 60 45 4E */	lis r3, 0x454E /* 0x454E4400@ha */
/* 800443B4  38 03 44 00 */	addi r0, r3, 0x4400 /* 0x454E4400@l */
/* 800443B8  7C 04 00 00 */	cmpw r4, r0
/* 800443BC  41 82 01 3C */	beq lbl_800444F8
/* 800443C0  40 80 00 2C */	bge lbl_800443EC
/* 800443C4  3C 60 43 52 */	lis r3, 0x4352 /* 0x43524541@ha */
/* 800443C8  38 03 45 41 */	addi r0, r3, 0x4541 /* 0x43524541@l */
/* 800443CC  7C 04 00 00 */	cmpw r4, r0
/* 800443D0  41 82 00 7C */	beq lbl_8004444C
/* 800443D4  40 80 02 C0 */	bge lbl_80044694
/* 800443D8  3C 60 43 4F */	lis r3, 0x434F /* 0x434F4E54@ha */
/* 800443DC  38 03 4E 54 */	addi r0, r3, 0x4E54 /* 0x434F4E54@l */
/* 800443E0  7C 04 00 00 */	cmpw r4, r0
/* 800443E4  41 82 01 24 */	beq lbl_80044508
/* 800443E8  48 00 02 AC */	b lbl_80044694
lbl_800443EC:
/* 800443EC  3C 60 46 49 */	lis r3, 0x4649 /* 0x46494E49@ha */
/* 800443F0  38 03 4E 49 */	addi r0, r3, 0x4E49 /* 0x46494E49@l */
/* 800443F4  7C 04 00 00 */	cmpw r4, r0
/* 800443F8  41 82 01 00 */	beq lbl_800444F8
/* 800443FC  48 00 02 98 */	b lbl_80044694
lbl_80044400:
/* 80044400  3C 60 54 45 */	lis r3, 0x5445 /* 0x54454C4F@ha */
/* 80044404  38 03 4C 4F */	addi r0, r3, 0x4C4F /* 0x54454C4F@l */
/* 80044408  7C 04 00 00 */	cmpw r4, r0
/* 8004440C  41 82 01 B4 */	beq lbl_800445C0
/* 80044410  40 80 00 18 */	bge lbl_80044428
/* 80044414  3C 60 53 48 */	lis r3, 0x5348 /* 0x53484F57@ha */
/* 80044418  38 03 4F 57 */	addi r0, r3, 0x4F57 /* 0x53484F57@l */
/* 8004441C  7C 04 00 00 */	cmpw r4, r0
/* 80044420  41 82 00 2C */	beq lbl_8004444C
/* 80044424  48 00 02 70 */	b lbl_80044694
lbl_80044428:
/* 80044428  3C 60 57 41 */	lis r3, 0x5741 /* 0x57414954@ha */
/* 8004442C  38 03 49 54 */	addi r0, r3, 0x4954 /* 0x57414954@l */
/* 80044430  7C 04 00 00 */	cmpw r4, r0
/* 80044434  41 82 00 08 */	beq lbl_8004443C
/* 80044438  48 00 02 5C */	b lbl_80044694
lbl_8004443C:
/* 8004443C  7F 63 DB 78 */	mr r3, r27
/* 80044440  7F C4 F3 78 */	mr r4, r30
/* 80044444  4B FF FB 95 */	bl specialProc_WaitStart__12dEvDtStaff_cFi
/* 80044448  48 00 02 4C */	b lbl_80044694
lbl_8004444C:
/* 8004444C  38 00 FF FF */	li r0, -1
/* 80044450  90 1C 00 00 */	stw r0, 0(r28)
/* 80044454  38 00 00 00 */	li r0, 0
/* 80044458  90 1C 00 04 */	stw r0, 4(r28)
/* 8004445C  7F A3 EB 78 */	mr r3, r29
/* 80044460  7F C4 F3 78 */	mr r4, r30
/* 80044464  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80044468  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 8004446C  38 A5 00 59 */	addi r5, r5, 0x59
/* 80044470  48 00 3C D5 */	bl getMySubstanceNum__16dEvent_manager_cFiPCc
/* 80044474  90 7C 00 0C */	stw r3, 0xc(r28)
/* 80044478  7F A3 EB 78 */	mr r3, r29
/* 8004447C  7F C4 F3 78 */	mr r4, r30
/* 80044480  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80044484  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80044488  38 A5 00 59 */	addi r5, r5, 0x59
/* 8004448C  38 C0 00 03 */	li r6, 3
/* 80044490  48 00 3C 5D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80044494  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80044498  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 8004449C  2C 00 00 01 */	cmpwi r0, 1
/* 800444A0  40 80 00 40 */	bge lbl_800444E0
/* 800444A4  7F A3 EB 78 */	mr r3, r29
/* 800444A8  7F C4 F3 78 */	mr r4, r30
/* 800444AC  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 800444B0  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 800444B4  38 A5 00 5F */	addi r5, r5, 0x5f
/* 800444B8  48 00 3C 8D */	bl getMySubstanceNum__16dEvent_manager_cFiPCc
/* 800444BC  90 7C 00 0C */	stw r3, 0xc(r28)
/* 800444C0  7F A3 EB 78 */	mr r3, r29
/* 800444C4  7F C4 F3 78 */	mr r4, r30
/* 800444C8  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 800444CC  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 800444D0  38 A5 00 5F */	addi r5, r5, 0x5f
/* 800444D4  38 C0 00 03 */	li r6, 3
/* 800444D8  48 00 3C 15 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 800444DC  90 7C 00 10 */	stw r3, 0x10(r28)
lbl_800444E0:
/* 800444E0  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 800444E4  80 03 00 00 */	lwz r0, 0(r3)
/* 800444E8  90 1C 00 08 */	stw r0, 8(r28)
/* 800444EC  38 00 00 00 */	li r0, 0
/* 800444F0  B0 1B 00 42 */	sth r0, 0x42(r27)
/* 800444F4  48 00 01 A0 */	b lbl_80044694
lbl_800444F8:
/* 800444F8  38 00 00 10 */	li r0, 0x10
/* 800444FC  80 7C 00 04 */	lwz r3, 4(r28)
/* 80044500  B0 03 00 F8 */	sth r0, 0xf8(r3)
/* 80044504  48 00 01 90 */	b lbl_80044694
lbl_80044508:
/* 80044508  38 00 00 0F */	li r0, 0xf
/* 8004450C  80 7C 00 04 */	lwz r3, 4(r28)
/* 80044510  B0 03 00 F8 */	sth r0, 0xf8(r3)
/* 80044514  7F A3 EB 78 */	mr r3, r29
/* 80044518  7F C4 F3 78 */	mr r4, r30
/* 8004451C  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80044520  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80044524  38 A5 00 59 */	addi r5, r5, 0x59
/* 80044528  38 C0 00 03 */	li r6, 3
/* 8004452C  48 00 3B C1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80044530  28 03 00 00 */	cmplwi r3, 0
/* 80044534  40 82 00 20 */	bne lbl_80044554
/* 80044538  7F A3 EB 78 */	mr r3, r29
/* 8004453C  7F C4 F3 78 */	mr r4, r30
/* 80044540  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80044544  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80044548  38 A5 00 5F */	addi r5, r5, 0x5f
/* 8004454C  38 C0 00 03 */	li r6, 3
/* 80044550  48 00 3B 9D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
lbl_80044554:
/* 80044554  80 03 00 00 */	lwz r0, 0(r3)
/* 80044558  90 1C 00 08 */	stw r0, 8(r28)
/* 8004455C  80 7C 00 08 */	lwz r3, 8(r28)
/* 80044560  38 80 03 E8 */	li r4, 0x3e8
/* 80044564  4B FD B9 21 */	bl fopMsgM_messageSet__FUlUl
/* 80044568  48 00 01 2C */	b lbl_80044694
lbl_8004456C:
/* 8004456C  38 00 00 01 */	li r0, 1
/* 80044570  90 1C 00 08 */	stw r0, 8(r28)
/* 80044574  7F A3 EB 78 */	mr r3, r29
/* 80044578  7F C4 F3 78 */	mr r4, r30
/* 8004457C  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80044580  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80044584  38 A5 00 62 */	addi r5, r5, 0x62
/* 80044588  38 C0 00 03 */	li r6, 3
/* 8004458C  48 00 3B 61 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80044590  28 03 00 00 */	cmplwi r3, 0
/* 80044594  41 82 00 18 */	beq lbl_800445AC
/* 80044598  80 03 00 00 */	lwz r0, 0(r3)
/* 8004459C  2C 00 00 01 */	cmpwi r0, 1
/* 800445A0  40 82 00 0C */	bne lbl_800445AC
/* 800445A4  38 00 00 02 */	li r0, 2
/* 800445A8  90 1C 00 08 */	stw r0, 8(r28)
lbl_800445AC:
/* 800445AC  80 1C 00 08 */	lwz r0, 8(r28)
/* 800445B0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 800445B4  48 15 7A 11 */	bl d_GameOver_Create__FUc
/* 800445B8  90 7C 00 00 */	stw r3, 0(r28)
/* 800445BC  48 00 00 D8 */	b lbl_80044694
lbl_800445C0:
/* 800445C0  7F A3 EB 78 */	mr r3, r29
/* 800445C4  7F C4 F3 78 */	mr r4, r30
/* 800445C8  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 800445CC  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 800445D0  38 A5 00 67 */	addi r5, r5, 0x67
/* 800445D4  38 C0 00 03 */	li r6, 3
/* 800445D8  48 00 3B 15 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 800445DC  28 03 00 00 */	cmplwi r3, 0
/* 800445E0  41 82 00 20 */	beq lbl_80044600
/* 800445E4  80 03 00 00 */	lwz r0, 0(r3)
/* 800445E8  2C 00 00 00 */	cmpwi r0, 0
/* 800445EC  41 82 00 14 */	beq lbl_80044600
/* 800445F0  4B FF F2 01 */	bl getStartTelopNo__Fv
/* 800445F4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 800445F8  90 1C 00 08 */	stw r0, 8(r28)
/* 800445FC  48 00 00 7C */	b lbl_80044678
lbl_80044600:
/* 80044600  7F A3 EB 78 */	mr r3, r29
/* 80044604  7F C4 F3 78 */	mr r4, r30
/* 80044608  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 8004460C  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80044610  38 A5 00 03 */	addi r5, r5, 3
/* 80044614  38 C0 00 04 */	li r6, 4
/* 80044618  48 00 3A D5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8004461C  7C 7A 1B 78 */	mr r26, r3
/* 80044620  7F A3 EB 78 */	mr r3, r29
/* 80044624  7F C4 F3 78 */	mr r4, r30
/* 80044628  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 8004462C  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80044630  38 A5 00 5F */	addi r5, r5, 0x5f
/* 80044634  38 C0 00 03 */	li r6, 3
/* 80044638  48 00 3A B5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8004463C  28 03 00 00 */	cmplwi r3, 0
/* 80044640  41 82 00 10 */	beq lbl_80044650
/* 80044644  80 03 00 00 */	lwz r0, 0(r3)
/* 80044648  90 1C 00 08 */	stw r0, 8(r28)
/* 8004464C  48 00 00 2C */	b lbl_80044678
lbl_80044650:
/* 80044650  28 1A 00 00 */	cmplwi r26, 0
/* 80044654  41 82 00 18 */	beq lbl_8004466C
/* 80044658  7F 43 D3 78 */	mr r3, r26
/* 8004465C  4B FF F0 D1 */	bl getTelopNo__FPCc
/* 80044660  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80044664  90 1C 00 08 */	stw r0, 8(r28)
/* 80044668  48 00 00 10 */	b lbl_80044678
lbl_8004466C:
/* 8004466C  4B FF F1 59 */	bl getTelopNo__Fv
/* 80044670  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80044674  90 1C 00 08 */	stw r0, 8(r28)
lbl_80044678:
/* 80044678  38 00 00 00 */	li r0, 0
/* 8004467C  B0 1B 00 42 */	sth r0, 0x42(r27)
/* 80044680  80 7C 00 08 */	lwz r3, 8(r28)
/* 80044684  28 03 FF FF */	cmplwi r3, 0xffff
/* 80044688  41 82 00 0C */	beq lbl_80044694
/* 8004468C  4B FD B9 39 */	bl fopMsgM_messageSetDemo__FUl
/* 80044690  90 7C 00 00 */	stw r3, 0(r28)
lbl_80044694:
/* 80044694  80 9F 00 00 */	lwz r4, 0(r31)
/* 80044698  3C 60 50 55 */	lis r3, 0x5055 /* 0x50555348@ha */
/* 8004469C  38 03 53 48 */	addi r0, r3, 0x5348 /* 0x50555348@l */
/* 800446A0  7C 04 00 00 */	cmpw r4, r0
/* 800446A4  41 82 01 5C */	beq lbl_80044800
/* 800446A8  40 80 00 68 */	bge lbl_80044710
/* 800446AC  3C 60 44 45 */	lis r3, 0x4445 /* 0x44454C45@ha */
/* 800446B0  38 03 4C 45 */	addi r0, r3, 0x4C45 /* 0x44454C45@l */
/* 800446B4  7C 04 00 00 */	cmpw r4, r0
/* 800446B8  41 82 02 80 */	beq lbl_80044938
/* 800446BC  40 80 00 2C */	bge lbl_800446E8
/* 800446C0  3C 60 43 52 */	lis r3, 0x4352 /* 0x43524541@ha */
/* 800446C4  38 03 45 41 */	addi r0, r3, 0x4541 /* 0x43524541@l */
/* 800446C8  7C 04 00 00 */	cmpw r4, r0
/* 800446CC  41 82 00 A4 */	beq lbl_80044770
/* 800446D0  40 80 03 64 */	bge lbl_80044A34
/* 800446D4  3C 60 43 4F */	lis r3, 0x434F /* 0x434F4E54@ha */
/* 800446D8  38 03 4E 54 */	addi r0, r3, 0x4E54 /* 0x434F4E54@l */
/* 800446DC  7C 04 00 00 */	cmpw r4, r0
/* 800446E0  41 82 02 A8 */	beq lbl_80044988
/* 800446E4  48 00 03 50 */	b lbl_80044A34
lbl_800446E8:
/* 800446E8  3C 60 46 49 */	lis r3, 0x4649 /* 0x46494E49@ha */
/* 800446EC  38 03 4E 49 */	addi r0, r3, 0x4E49 /* 0x46494E49@l */
/* 800446F0  7C 04 00 00 */	cmpw r4, r0
/* 800446F4  41 82 02 44 */	beq lbl_80044938
/* 800446F8  40 80 03 3C */	bge lbl_80044A34
/* 800446FC  3C 60 45 4E */	lis r3, 0x454E /* 0x454E4400@ha */
/* 80044700  38 03 44 00 */	addi r0, r3, 0x4400 /* 0x454E4400@l */
/* 80044704  7C 04 00 00 */	cmpw r4, r0
/* 80044708  41 82 02 90 */	beq lbl_80044998
/* 8004470C  48 00 03 28 */	b lbl_80044A34
lbl_80044710:
/* 80044710  3C 60 54 45 */	lis r3, 0x5445 /* 0x54454C4F@ha */
/* 80044714  38 03 4C 4F */	addi r0, r3, 0x4C4F /* 0x54454C4F@l */
/* 80044718  7C 04 00 00 */	cmpw r4, r0
/* 8004471C  41 82 01 04 */	beq lbl_80044820
/* 80044720  40 80 00 2C */	bge lbl_8004474C
/* 80044724  3C 60 53 48 */	lis r3, 0x5348 /* 0x53484F57@ha */
/* 80044728  38 03 4F 57 */	addi r0, r3, 0x4F57 /* 0x53484F57@l */
/* 8004472C  7C 04 00 00 */	cmpw r4, r0
/* 80044730  41 82 01 00 */	beq lbl_80044830
/* 80044734  40 80 03 00 */	bge lbl_80044A34
/* 80044738  3C 60 53 41 */	lis r3, 0x5341 /* 0x53415645@ha */
/* 8004473C  38 03 56 45 */	addi r0, r3, 0x5645 /* 0x53415645@l */
/* 80044740  7C 04 00 00 */	cmpw r4, r0
/* 80044744  41 82 02 80 */	beq lbl_800449C4
/* 80044748  48 00 02 EC */	b lbl_80044A34
lbl_8004474C:
/* 8004474C  3C 60 57 41 */	lis r3, 0x5741 /* 0x57414954@ha */
/* 80044750  38 03 49 54 */	addi r0, r3, 0x4954 /* 0x57414954@l */
/* 80044754  7C 04 00 00 */	cmpw r4, r0
/* 80044758  41 82 00 08 */	beq lbl_80044760
/* 8004475C  48 00 02 D8 */	b lbl_80044A34
lbl_80044760:
/* 80044760  7F 63 DB 78 */	mr r3, r27
/* 80044764  7F C4 F3 78 */	mr r4, r30
/* 80044768  4B FF F8 D5 */	bl specialProc_WaitProc__12dEvDtStaff_cFi
/* 8004476C  48 00 02 D4 */	b lbl_80044A40
lbl_80044770:
/* 80044770  A8 1B 00 42 */	lha r0, 0x42(r27)
/* 80044774  2C 00 00 01 */	cmpwi r0, 1
/* 80044778  41 82 00 50 */	beq lbl_800447C8
/* 8004477C  40 80 00 10 */	bge lbl_8004478C
/* 80044780  2C 00 00 00 */	cmpwi r0, 0
/* 80044784  40 80 00 14 */	bge lbl_80044798
/* 80044788  48 00 02 B8 */	b lbl_80044A40
lbl_8004478C:
/* 8004478C  2C 00 00 03 */	cmpwi r0, 3
/* 80044790  40 80 02 B0 */	bge lbl_80044A40
/* 80044794  48 00 00 5C */	b lbl_800447F0
lbl_80044798:
/* 80044798  80 7C 00 08 */	lwz r3, 8(r28)
/* 8004479C  38 80 03 E8 */	li r4, 0x3e8
/* 800447A0  4B FD B6 E5 */	bl fopMsgM_messageSet__FUlUl
/* 800447A4  90 7C 00 00 */	stw r3, 0(r28)
/* 800447A8  80 7C 00 00 */	lwz r3, 0(r28)
/* 800447AC  3C 03 00 01 */	addis r0, r3, 1
/* 800447B0  28 00 FF FF */	cmplwi r0, 0xffff
/* 800447B4  41 82 02 8C */	beq lbl_80044A40
/* 800447B8  A8 7B 00 42 */	lha r3, 0x42(r27)
/* 800447BC  38 03 00 01 */	addi r0, r3, 1
/* 800447C0  B0 1B 00 42 */	sth r0, 0x42(r27)
/* 800447C4  48 00 02 7C */	b lbl_80044A40
lbl_800447C8:
/* 800447C8  80 7C 00 00 */	lwz r3, 0(r28)
/* 800447CC  4B FD B2 59 */	bl fopMsgM_SearchByID__FUi
/* 800447D0  90 7C 00 04 */	stw r3, 4(r28)
/* 800447D4  80 1C 00 04 */	lwz r0, 4(r28)
/* 800447D8  28 00 00 00 */	cmplwi r0, 0
/* 800447DC  41 82 02 64 */	beq lbl_80044A40
/* 800447E0  A8 7B 00 42 */	lha r3, 0x42(r27)
/* 800447E4  38 03 00 01 */	addi r0, r3, 1
/* 800447E8  B0 1B 00 42 */	sth r0, 0x42(r27)
/* 800447EC  48 00 02 54 */	b lbl_80044A40
lbl_800447F0:
/* 800447F0  7F A3 EB 78 */	mr r3, r29
/* 800447F4  7F C4 F3 78 */	mr r4, r30
/* 800447F8  48 00 39 85 */	bl cutEnd__16dEvent_manager_cFi
/* 800447FC  48 00 02 44 */	b lbl_80044A40
lbl_80044800:
/* 80044800  80 7C 00 04 */	lwz r3, 4(r28)
/* 80044804  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80044808  28 00 00 0E */	cmplwi r0, 0xe
/* 8004480C  40 82 02 34 */	bne lbl_80044A40
/* 80044810  7F A3 EB 78 */	mr r3, r29
/* 80044814  7F C4 F3 78 */	mr r4, r30
/* 80044818  48 00 39 65 */	bl cutEnd__16dEvent_manager_cFi
/* 8004481C  48 00 02 24 */	b lbl_80044A40
lbl_80044820:
/* 80044820  7F A3 EB 78 */	mr r3, r29
/* 80044824  7F C4 F3 78 */	mr r4, r30
/* 80044828  48 00 39 55 */	bl cutEnd__16dEvent_manager_cFi
/* 8004482C  48 00 02 14 */	b lbl_80044A40
lbl_80044830:
/* 80044830  A8 1B 00 42 */	lha r0, 0x42(r27)
/* 80044834  2C 00 00 01 */	cmpwi r0, 1
/* 80044838  41 82 00 3C */	beq lbl_80044874
/* 8004483C  40 80 00 EC */	bge lbl_80044928
/* 80044840  2C 00 00 00 */	cmpwi r0, 0
/* 80044844  40 80 00 08 */	bge lbl_8004484C
/* 80044848  48 00 00 E0 */	b lbl_80044928
lbl_8004484C:
/* 8004484C  80 7C 00 08 */	lwz r3, 8(r28)
/* 80044850  38 80 03 E8 */	li r4, 0x3e8
/* 80044854  4B FD B6 31 */	bl fopMsgM_messageSet__FUlUl
/* 80044858  90 7C 00 00 */	stw r3, 0(r28)
/* 8004485C  80 7C 00 00 */	lwz r3, 0(r28)
/* 80044860  3C 03 00 01 */	addis r0, r3, 1
/* 80044864  28 00 FF FF */	cmplwi r0, 0xffff
/* 80044868  41 82 01 D8 */	beq lbl_80044A40
/* 8004486C  38 00 00 01 */	li r0, 1
/* 80044870  B0 1B 00 42 */	sth r0, 0x42(r27)
lbl_80044874:
/* 80044874  80 7C 00 00 */	lwz r3, 0(r28)
/* 80044878  4B FD B1 AD */	bl fopMsgM_SearchByID__FUi
/* 8004487C  90 7C 00 04 */	stw r3, 4(r28)
/* 80044880  80 7C 00 04 */	lwz r3, 4(r28)
/* 80044884  28 03 00 00 */	cmplwi r3, 0
/* 80044888  41 82 01 B8 */	beq lbl_80044A40
/* 8004488C  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80044890  2C 00 00 11 */	cmpwi r0, 0x11
/* 80044894  41 82 01 AC */	beq lbl_80044A40
/* 80044898  40 80 00 10 */	bge lbl_800448A8
/* 8004489C  2C 00 00 0E */	cmpwi r0, 0xe
/* 800448A0  41 82 00 14 */	beq lbl_800448B4
/* 800448A4  48 00 01 9C */	b lbl_80044A40
lbl_800448A8:
/* 800448A8  2C 00 00 13 */	cmpwi r0, 0x13
/* 800448AC  40 80 01 94 */	bge lbl_80044A40
/* 800448B0  48 00 00 10 */	b lbl_800448C0
lbl_800448B4:
/* 800448B4  38 00 00 10 */	li r0, 0x10
/* 800448B8  B0 03 00 F8 */	sth r0, 0xf8(r3)
/* 800448BC  48 00 01 84 */	b lbl_80044A40
lbl_800448C0:
/* 800448C0  38 00 00 13 */	li r0, 0x13
/* 800448C4  B0 03 00 F8 */	sth r0, 0xf8(r3)
/* 800448C8  38 00 FF FF */	li r0, -1
/* 800448CC  90 1C 00 00 */	stw r0, 0(r28)
/* 800448D0  38 80 00 00 */	li r4, 0
/* 800448D4  90 9C 00 04 */	stw r4, 4(r28)
/* 800448D8  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 800448DC  38 03 FF FF */	addi r0, r3, -1
/* 800448E0  90 1C 00 0C */	stw r0, 0xc(r28)
/* 800448E4  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 800448E8  2C 00 00 00 */	cmpwi r0, 0
/* 800448EC  41 82 00 24 */	beq lbl_80044910
/* 800448F0  B0 9B 00 42 */	sth r4, 0x42(r27)
/* 800448F4  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 800448F8  38 03 00 04 */	addi r0, r3, 4
/* 800448FC  90 1C 00 10 */	stw r0, 0x10(r28)
/* 80044900  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 80044904  80 03 00 00 */	lwz r0, 0(r3)
/* 80044908  90 1C 00 08 */	stw r0, 8(r28)
/* 8004490C  48 00 01 34 */	b lbl_80044A40
lbl_80044910:
/* 80044910  7F A3 EB 78 */	mr r3, r29
/* 80044914  7F C4 F3 78 */	mr r4, r30
/* 80044918  48 00 38 65 */	bl cutEnd__16dEvent_manager_cFi
/* 8004491C  38 00 00 63 */	li r0, 0x63
/* 80044920  B0 1B 00 42 */	sth r0, 0x42(r27)
/* 80044924  48 00 01 1C */	b lbl_80044A40
lbl_80044928:
/* 80044928  7F A3 EB 78 */	mr r3, r29
/* 8004492C  7F C4 F3 78 */	mr r4, r30
/* 80044930  48 00 38 4D */	bl cutEnd__16dEvent_manager_cFi
/* 80044934  48 00 01 0C */	b lbl_80044A40
lbl_80044938:
/* 80044938  80 7C 00 04 */	lwz r3, 4(r28)
/* 8004493C  28 03 00 00 */	cmplwi r3, 0
/* 80044940  40 82 00 14 */	bne lbl_80044954
/* 80044944  7F A3 EB 78 */	mr r3, r29
/* 80044948  7F C4 F3 78 */	mr r4, r30
/* 8004494C  48 00 38 31 */	bl cutEnd__16dEvent_manager_cFi
/* 80044950  48 00 00 F0 */	b lbl_80044A40
lbl_80044954:
/* 80044954  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80044958  28 00 00 12 */	cmplwi r0, 0x12
/* 8004495C  40 82 00 E4 */	bne lbl_80044A40
/* 80044960  38 00 00 13 */	li r0, 0x13
/* 80044964  B0 03 00 F8 */	sth r0, 0xf8(r3)
/* 80044968  38 00 FF FF */	li r0, -1
/* 8004496C  90 1C 00 00 */	stw r0, 0(r28)
/* 80044970  38 00 00 00 */	li r0, 0
/* 80044974  90 1C 00 04 */	stw r0, 4(r28)
/* 80044978  7F A3 EB 78 */	mr r3, r29
/* 8004497C  7F C4 F3 78 */	mr r4, r30
/* 80044980  48 00 37 FD */	bl cutEnd__16dEvent_manager_cFi
/* 80044984  48 00 00 BC */	b lbl_80044A40
lbl_80044988:
/* 80044988  7F A3 EB 78 */	mr r3, r29
/* 8004498C  7F C4 F3 78 */	mr r4, r30
/* 80044990  48 00 37 ED */	bl cutEnd__16dEvent_manager_cFi
/* 80044994  48 00 00 AC */	b lbl_80044A40
lbl_80044998:
/* 80044998  80 7C 00 04 */	lwz r3, 4(r28)
/* 8004499C  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 800449A0  2C 00 00 13 */	cmpwi r0, 0x13
/* 800449A4  40 80 00 9C */	bge lbl_80044A40
/* 800449A8  2C 00 00 11 */	cmpwi r0, 0x11
/* 800449AC  40 80 00 08 */	bge lbl_800449B4
/* 800449B0  48 00 00 90 */	b lbl_80044A40
lbl_800449B4:
/* 800449B4  7F A3 EB 78 */	mr r3, r29
/* 800449B8  7F C4 F3 78 */	mr r4, r30
/* 800449BC  48 00 37 C1 */	bl cutEnd__16dEvent_manager_cFi
/* 800449C0  48 00 00 80 */	b lbl_80044A40
lbl_800449C4:
/* 800449C4  80 7C 00 00 */	lwz r3, 0(r28)
/* 800449C8  3C 03 00 01 */	addis r0, r3, 1
/* 800449CC  28 00 FF FF */	cmplwi r0, 0xffff
/* 800449D0  41 82 00 2C */	beq lbl_800449FC
/* 800449D4  4B FD B0 51 */	bl fopMsgM_SearchByID__FUi
/* 800449D8  28 03 00 00 */	cmplwi r3, 0
/* 800449DC  41 82 00 18 */	beq lbl_800449F4
/* 800449E0  88 03 01 18 */	lbz r0, 0x118(r3)
/* 800449E4  20 00 00 08 */	subfic r0, r0, 8
/* 800449E8  7C 00 00 34 */	cntlzw r0, r0
/* 800449EC  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 800449F0  48 00 00 10 */	b lbl_80044A00
lbl_800449F4:
/* 800449F4  38 00 00 00 */	li r0, 0
/* 800449F8  48 00 00 08 */	b lbl_80044A00
lbl_800449FC:
/* 800449FC  38 00 00 00 */	li r0, 0
lbl_80044A00:
/* 80044A00  2C 00 00 00 */	cmpwi r0, 0
/* 80044A04  41 82 00 3C */	beq lbl_80044A40
/* 80044A08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80044A0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80044A10  88 03 5E 89 */	lbz r0, 0x5e89(r3)
/* 80044A14  28 00 00 01 */	cmplwi r0, 1
/* 80044A18  40 82 00 28 */	bne lbl_80044A40
/* 80044A1C  7F A3 EB 78 */	mr r3, r29
/* 80044A20  7F C4 F3 78 */	mr r4, r30
/* 80044A24  48 00 37 59 */	bl cutEnd__16dEvent_manager_cFi
/* 80044A28  7F 83 E3 78 */	mr r3, r28
/* 80044A2C  48 15 75 DD */	bl d_GameOver_Delete__FRUi
/* 80044A30  48 00 00 10 */	b lbl_80044A40
lbl_80044A34:
/* 80044A34  7F A3 EB 78 */	mr r3, r29
/* 80044A38  7F C4 F3 78 */	mr r4, r30
/* 80044A3C  48 00 37 41 */	bl cutEnd__16dEvent_manager_cFi
lbl_80044A40:
/* 80044A40  39 61 00 20 */	addi r11, r1, 0x20
/* 80044A44  48 31 D7 D9 */	bl _restgpr_26
/* 80044A48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80044A4C  7C 08 03 A6 */	mtlr r0
/* 80044A50  38 21 00 20 */	addi r1, r1, 0x20
/* 80044A54  4E 80 00 20 */	blr 
