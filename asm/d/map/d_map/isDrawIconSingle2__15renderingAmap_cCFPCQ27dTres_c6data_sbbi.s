lbl_80029190:
/* 80029190  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80029194  7C 08 02 A6 */	mflr r0
/* 80029198  90 01 00 34 */	stw r0, 0x34(r1)
/* 8002919C  39 61 00 30 */	addi r11, r1, 0x30
/* 800291A0  48 33 90 21 */	bl _savegpr_22
/* 800291A4  7C 77 1B 78 */	mr r23, r3
/* 800291A8  7C 9B 23 78 */	mr r27, r4
/* 800291AC  7C BE 2B 78 */	mr r30, r5
/* 800291B0  7C D6 33 78 */	mr r22, r6
/* 800291B4  7C FC 3B 78 */	mr r28, r7
/* 800291B8  3B E0 00 00 */	li r31, 0
/* 800291BC  4B FF F7 09 */	bl getDispType__15renderingAmap_cCFv
/* 800291C0  7C 7D 1B 78 */	mr r29, r3
/* 800291C4  7E E3 BB 78 */	mr r3, r23
/* 800291C8  4B FF FF 99 */	bl getStayType__15renderingAmap_cCFv
/* 800291CC  7C 79 1B 78 */	mr r25, r3
/* 800291D0  88 7B 00 11 */	lbz r3, 0x11(r27)
/* 800291D4  48 07 32 DD */	bl getTypeToTypeGroupNo__7dTres_cFUc
/* 800291D8  54 78 06 3E */	clrlwi r24, r3, 0x18
/* 800291DC  7E E3 BB 78 */	mr r3, r23
/* 800291E0  81 97 00 00 */	lwz r12, 0(r23)
/* 800291E4  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 800291E8  7D 89 03 A6 */	mtctr r12
/* 800291EC  4E 80 04 21 */	bctrl 
/* 800291F0  7C 7A 1B 78 */	mr r26, r3
/* 800291F4  3A E0 00 00 */	li r23, 0
/* 800291F8  2C 19 00 01 */	cmpwi r25, 1
/* 800291FC  40 82 00 14 */	bne lbl_80029210
/* 80029200  48 01 5A A1 */	bl chkGetCompass__10dMapInfo_nFv
/* 80029204  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80029208  41 82 00 08 */	beq lbl_80029210
/* 8002920C  3A E0 00 01 */	li r23, 1
lbl_80029210:
/* 80029210  28 18 00 10 */	cmplwi r24, 0x10
/* 80029214  41 81 04 BC */	bgt lbl_800296D0
/* 80029218  3C 60 80 3A */	lis r3, lit_4259@ha /* 0x803A6F28@ha */
/* 8002921C  38 63 6F 28 */	addi r3, r3, lit_4259@l /* 0x803A6F28@l */
/* 80029220  57 00 10 3A */	slwi r0, r24, 2
/* 80029224  7C 03 00 2E */	lwzx r0, r3, r0
/* 80029228  7C 09 03 A6 */	mtctr r0
/* 8002922C  4E 80 04 20 */	bctr 
/* 80029230  2C 19 00 01 */	cmpwi r25, 1
/* 80029234  40 82 04 9C */	bne lbl_800296D0
/* 80029238  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 8002923C  41 82 04 94 */	beq lbl_800296D0
/* 80029240  88 9B 00 00 */	lbz r4, 0(r27)
/* 80029244  28 04 00 FF */	cmplwi r4, 0xff
/* 80029248  41 82 04 88 */	beq lbl_800296D0
/* 8002924C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80029250  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80029254  38 63 09 58 */	addi r3, r3, 0x958
/* 80029258  48 00 B5 91 */	bl isTbox__12dSv_memBit_cCFi
/* 8002925C  2C 03 00 00 */	cmpwi r3, 0
/* 80029260  40 82 04 70 */	bne lbl_800296D0
/* 80029264  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80029268  41 82 04 68 */	beq lbl_800296D0
/* 8002926C  3B E0 00 01 */	li r31, 1
/* 80029270  48 00 04 60 */	b lbl_800296D0
/* 80029274  2C 19 00 01 */	cmpwi r25, 1
/* 80029278  40 82 00 24 */	bne lbl_8002929C
/* 8002927C  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80029280  40 82 00 0C */	bne lbl_8002928C
/* 80029284  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 80029288  41 82 04 48 */	beq lbl_800296D0
lbl_8002928C:
/* 8002928C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80029290  41 82 04 40 */	beq lbl_800296D0
/* 80029294  3B E0 00 01 */	li r31, 1
/* 80029298  48 00 04 38 */	b lbl_800296D0
lbl_8002929C:
/* 8002929C  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 800292A0  41 82 04 30 */	beq lbl_800296D0
/* 800292A4  88 9B 00 10 */	lbz r4, 0x10(r27)
/* 800292A8  28 04 00 FF */	cmplwi r4, 0xff
/* 800292AC  41 82 00 24 */	beq lbl_800292D0
/* 800292B0  41 82 04 20 */	beq lbl_800296D0
/* 800292B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800292B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800292BC  88 BB 00 01 */	lbz r5, 1(r27)
/* 800292C0  7C A5 07 74 */	extsb r5, r5
/* 800292C4  48 00 C0 9D */	bl isSwitch__10dSv_info_cCFii
/* 800292C8  2C 03 00 00 */	cmpwi r3, 0
/* 800292CC  41 82 04 04 */	beq lbl_800296D0
lbl_800292D0:
/* 800292D0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800292D4  41 82 03 FC */	beq lbl_800296D0
/* 800292D8  3B E0 00 01 */	li r31, 1
/* 800292DC  48 00 03 F4 */	b lbl_800296D0
/* 800292E0  2C 19 00 01 */	cmpwi r25, 1
/* 800292E4  40 82 03 EC */	bne lbl_800296D0
/* 800292E8  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 800292EC  41 82 03 E4 */	beq lbl_800296D0
/* 800292F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800292F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800292F8  38 63 09 58 */	addi r3, r3, 0x958
/* 800292FC  88 9B 00 00 */	lbz r4, 0(r27)
/* 80029300  48 00 B4 E9 */	bl isTbox__12dSv_memBit_cCFi
/* 80029304  2C 03 00 00 */	cmpwi r3, 0
/* 80029308  40 82 03 C8 */	bne lbl_800296D0
/* 8002930C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80029310  41 82 03 C0 */	beq lbl_800296D0
/* 80029314  3B E0 00 01 */	li r31, 1
/* 80029318  48 00 03 B8 */	b lbl_800296D0
/* 8002931C  2C 19 00 00 */	cmpwi r25, 0
/* 80029320  40 82 03 B0 */	bne lbl_800296D0
/* 80029324  3A E0 00 00 */	li r23, 0
/* 80029328  48 00 5A B9 */	bl dComIfGp_isLightDropMapVisible__Fv
/* 8002932C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80029330  41 82 00 68 */	beq lbl_80029398
/* 80029334  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80029338  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002933C  88 03 4E 0C */	lbz r0, 0x4e0c(r3)
/* 80029340  2C 00 00 02 */	cmpwi r0, 2
/* 80029344  40 82 00 50 */	bne lbl_80029394
/* 80029348  88 7B 00 00 */	lbz r3, 0(r27)
/* 8002934C  38 03 FF CD */	addi r0, r3, -51
/* 80029350  28 00 00 01 */	cmplwi r0, 1
/* 80029354  40 81 00 0C */	ble lbl_80029360
/* 80029358  2C 03 00 35 */	cmpwi r3, 0x35
/* 8002935C  40 82 00 30 */	bne lbl_8002938C
lbl_80029360:
/* 80029360  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80029364  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80029368  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8002936C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80029370  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80029374  A0 84 00 EE */	lhz r4, 0xee(r4)
/* 80029378  48 00 B6 45 */	bl isEventBit__11dSv_event_cCFUs
/* 8002937C  2C 03 00 00 */	cmpwi r3, 0
/* 80029380  41 82 00 18 */	beq lbl_80029398
/* 80029384  3A E0 00 01 */	li r23, 1
/* 80029388  48 00 00 10 */	b lbl_80029398
lbl_8002938C:
/* 8002938C  3A E0 00 01 */	li r23, 1
/* 80029390  48 00 00 08 */	b lbl_80029398
lbl_80029394:
/* 80029394  3A E0 00 01 */	li r23, 1
lbl_80029398:
/* 80029398  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 8002939C  41 82 03 34 */	beq lbl_800296D0
/* 800293A0  3A E0 00 00 */	li r23, 0
/* 800293A4  88 9B 00 00 */	lbz r4, 0(r27)
/* 800293A8  28 04 00 FF */	cmplwi r4, 0xff
/* 800293AC  41 82 00 20 */	beq lbl_800293CC
/* 800293B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800293B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800293B8  38 63 09 58 */	addi r3, r3, 0x958
/* 800293BC  48 00 B4 2D */	bl isTbox__12dSv_memBit_cCFi
/* 800293C0  2C 03 00 00 */	cmpwi r3, 0
/* 800293C4  40 82 00 08 */	bne lbl_800293CC
/* 800293C8  3A E0 00 01 */	li r23, 1
lbl_800293CC:
/* 800293CC  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 800293D0  41 82 03 00 */	beq lbl_800296D0
/* 800293D4  2C 1D 00 03 */	cmpwi r29, 3
/* 800293D8  40 82 00 24 */	bne lbl_800293FC
/* 800293DC  88 1B 00 01 */	lbz r0, 1(r27)
/* 800293E0  7C 00 07 74 */	extsb r0, r0
/* 800293E4  7C 00 E0 00 */	cmpw r0, r28
/* 800293E8  40 82 02 E8 */	bne lbl_800296D0
/* 800293EC  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800293F0  41 82 02 E0 */	beq lbl_800296D0
/* 800293F4  3B E0 00 01 */	li r31, 1
/* 800293F8  48 00 02 D8 */	b lbl_800296D0
lbl_800293FC:
/* 800293FC  2C 1D 00 04 */	cmpwi r29, 4
/* 80029400  40 82 00 14 */	bne lbl_80029414
/* 80029404  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80029408  41 82 02 C8 */	beq lbl_800296D0
/* 8002940C  3B E0 00 01 */	li r31, 1
/* 80029410  48 00 02 C0 */	b lbl_800296D0
lbl_80029414:
/* 80029414  2C 1D 00 05 */	cmpwi r29, 5
/* 80029418  40 82 00 1C */	bne lbl_80029434
/* 8002941C  88 1B 00 01 */	lbz r0, 1(r27)
/* 80029420  7C 00 07 74 */	extsb r0, r0
/* 80029424  7C 00 E0 00 */	cmpw r0, r28
/* 80029428  40 82 02 A8 */	bne lbl_800296D0
/* 8002942C  3B E0 00 01 */	li r31, 1
/* 80029430  48 00 02 A0 */	b lbl_800296D0
lbl_80029434:
/* 80029434  3B E0 00 01 */	li r31, 1
/* 80029438  48 00 02 98 */	b lbl_800296D0
/* 8002943C  88 9B 00 00 */	lbz r4, 0(r27)
/* 80029440  28 04 00 FF */	cmplwi r4, 0xff
/* 80029444  41 82 00 20 */	beq lbl_80029464
/* 80029448  41 82 02 88 */	beq lbl_800296D0
/* 8002944C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80029450  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80029454  38 63 09 58 */	addi r3, r3, 0x958
/* 80029458  48 00 B3 91 */	bl isTbox__12dSv_memBit_cCFi
/* 8002945C  2C 03 00 00 */	cmpwi r3, 0
/* 80029460  40 82 02 70 */	bne lbl_800296D0
lbl_80029464:
/* 80029464  88 9B 00 10 */	lbz r4, 0x10(r27)
/* 80029468  28 04 00 FF */	cmplwi r4, 0xff
/* 8002946C  41 82 00 24 */	beq lbl_80029490
/* 80029470  41 82 02 60 */	beq lbl_800296D0
/* 80029474  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80029478  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002947C  88 BB 00 01 */	lbz r5, 1(r27)
/* 80029480  7C A5 07 74 */	extsb r5, r5
/* 80029484  48 00 BE DD */	bl isSwitch__10dSv_info_cCFii
/* 80029488  2C 03 00 00 */	cmpwi r3, 0
/* 8002948C  41 82 02 44 */	beq lbl_800296D0
lbl_80029490:
/* 80029490  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80029494  41 82 02 3C */	beq lbl_800296D0
/* 80029498  3B E0 00 01 */	li r31, 1
/* 8002949C  48 00 02 34 */	b lbl_800296D0
/* 800294A0  2C 19 00 01 */	cmpwi r25, 1
/* 800294A4  40 82 02 2C */	bne lbl_800296D0
/* 800294A8  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 800294AC  41 82 02 24 */	beq lbl_800296D0
/* 800294B0  88 9B 00 10 */	lbz r4, 0x10(r27)
/* 800294B4  28 04 00 FF */	cmplwi r4, 0xff
/* 800294B8  41 82 00 24 */	beq lbl_800294DC
/* 800294BC  41 82 02 14 */	beq lbl_800296D0
/* 800294C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800294C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800294C8  88 BB 00 01 */	lbz r5, 1(r27)
/* 800294CC  7C A5 07 74 */	extsb r5, r5
/* 800294D0  48 00 BE 91 */	bl isSwitch__10dSv_info_cCFii
/* 800294D4  2C 03 00 00 */	cmpwi r3, 0
/* 800294D8  41 82 01 F8 */	beq lbl_800296D0
lbl_800294DC:
/* 800294DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800294E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800294E4  38 63 09 58 */	addi r3, r3, 0x958
/* 800294E8  38 80 00 03 */	li r4, 3
/* 800294EC  48 00 B4 49 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 800294F0  2C 03 00 00 */	cmpwi r3, 0
/* 800294F4  40 82 01 DC */	bne lbl_800296D0
/* 800294F8  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800294FC  41 82 01 D4 */	beq lbl_800296D0
/* 80029500  3B E0 00 01 */	li r31, 1
/* 80029504  48 00 01 CC */	b lbl_800296D0
/* 80029508  2C 19 00 01 */	cmpwi r25, 1
/* 8002950C  40 82 01 C4 */	bne lbl_800296D0
/* 80029510  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80029514  41 82 01 BC */	beq lbl_800296D0
/* 80029518  88 9B 00 00 */	lbz r4, 0(r27)
/* 8002951C  28 04 00 FF */	cmplwi r4, 0xff
/* 80029520  41 82 00 20 */	beq lbl_80029540
/* 80029524  41 82 01 AC */	beq lbl_800296D0
/* 80029528  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002952C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80029530  38 63 09 58 */	addi r3, r3, 0x958
/* 80029534  48 00 B2 B5 */	bl isTbox__12dSv_memBit_cCFi
/* 80029538  2C 03 00 00 */	cmpwi r3, 0
/* 8002953C  40 82 01 94 */	bne lbl_800296D0
lbl_80029540:
/* 80029540  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80029544  41 82 01 8C */	beq lbl_800296D0
/* 80029548  3B E0 00 01 */	li r31, 1
/* 8002954C  48 00 01 84 */	b lbl_800296D0
/* 80029550  2C 19 00 00 */	cmpwi r25, 0
/* 80029554  40 82 01 7C */	bne lbl_800296D0
/* 80029558  88 9B 00 00 */	lbz r4, 0(r27)
/* 8002955C  28 04 00 FF */	cmplwi r4, 0xff
/* 80029560  41 82 01 70 */	beq lbl_800296D0
/* 80029564  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80029568  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002956C  38 63 09 58 */	addi r3, r3, 0x958
/* 80029570  48 00 B2 79 */	bl isTbox__12dSv_memBit_cCFi
/* 80029574  2C 03 00 00 */	cmpwi r3, 0
/* 80029578  41 82 01 58 */	beq lbl_800296D0
/* 8002957C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80029580  41 82 01 50 */	beq lbl_800296D0
/* 80029584  3B E0 00 01 */	li r31, 1
/* 80029588  48 00 01 48 */	b lbl_800296D0
/* 8002958C  2C 19 00 01 */	cmpwi r25, 1
/* 80029590  40 82 01 40 */	bne lbl_800296D0
/* 80029594  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80029598  41 82 01 38 */	beq lbl_800296D0
/* 8002959C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800295A0  41 82 01 30 */	beq lbl_800296D0
/* 800295A4  3B E0 00 01 */	li r31, 1
/* 800295A8  48 00 01 28 */	b lbl_800296D0
/* 800295AC  2C 19 00 01 */	cmpwi r25, 1
/* 800295B0  40 82 01 20 */	bne lbl_800296D0
/* 800295B4  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 800295B8  41 82 01 18 */	beq lbl_800296D0
/* 800295BC  88 9B 00 00 */	lbz r4, 0(r27)
/* 800295C0  28 04 00 FF */	cmplwi r4, 0xff
/* 800295C4  41 82 00 20 */	beq lbl_800295E4
/* 800295C8  41 82 01 08 */	beq lbl_800296D0
/* 800295CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800295D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800295D4  38 63 09 58 */	addi r3, r3, 0x958
/* 800295D8  48 00 B2 11 */	bl isTbox__12dSv_memBit_cCFi
/* 800295DC  2C 03 00 00 */	cmpwi r3, 0
/* 800295E0  40 82 00 F0 */	bne lbl_800296D0
lbl_800295E4:
/* 800295E4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800295E8  41 82 00 E8 */	beq lbl_800296D0
/* 800295EC  3B E0 00 01 */	li r31, 1
/* 800295F0  48 00 00 E0 */	b lbl_800296D0
/* 800295F4  2C 19 00 00 */	cmpwi r25, 0
/* 800295F8  40 82 00 D8 */	bne lbl_800296D0
/* 800295FC  88 9B 00 10 */	lbz r4, 0x10(r27)
/* 80029600  28 04 00 FF */	cmplwi r4, 0xff
/* 80029604  41 82 00 24 */	beq lbl_80029628
/* 80029608  41 82 00 C8 */	beq lbl_800296D0
/* 8002960C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80029610  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80029614  88 BB 00 01 */	lbz r5, 1(r27)
/* 80029618  7C A5 07 74 */	extsb r5, r5
/* 8002961C  48 00 BD 45 */	bl isSwitch__10dSv_info_cCFii
/* 80029620  2C 03 00 00 */	cmpwi r3, 0
/* 80029624  41 82 00 AC */	beq lbl_800296D0
lbl_80029628:
/* 80029628  3B E0 00 01 */	li r31, 1
/* 8002962C  48 00 00 A4 */	b lbl_800296D0
/* 80029630  2C 19 00 01 */	cmpwi r25, 1
/* 80029634  40 82 00 9C */	bne lbl_800296D0
/* 80029638  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 8002963C  41 82 00 94 */	beq lbl_800296D0
/* 80029640  88 9B 00 00 */	lbz r4, 0(r27)
/* 80029644  28 04 00 FF */	cmplwi r4, 0xff
/* 80029648  41 82 00 20 */	beq lbl_80029668
/* 8002964C  41 82 00 84 */	beq lbl_800296D0
/* 80029650  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80029654  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80029658  38 63 09 58 */	addi r3, r3, 0x958
/* 8002965C  48 00 B1 8D */	bl isTbox__12dSv_memBit_cCFi
/* 80029660  2C 03 00 00 */	cmpwi r3, 0
/* 80029664  41 82 00 6C */	beq lbl_800296D0
lbl_80029668:
/* 80029668  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8002966C  41 82 00 64 */	beq lbl_800296D0
/* 80029670  3B E0 00 01 */	li r31, 1
/* 80029674  48 00 00 5C */	b lbl_800296D0
/* 80029678  2C 19 00 01 */	cmpwi r25, 1
/* 8002967C  40 82 00 54 */	bne lbl_800296D0
/* 80029680  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80029684  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80029688  3B 23 09 58 */	addi r25, r3, 0x958
/* 8002968C  7F 23 CB 78 */	mr r3, r25
/* 80029690  38 80 00 03 */	li r4, 3
/* 80029694  48 00 B2 A1 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 80029698  2C 03 00 00 */	cmpwi r3, 0
/* 8002969C  40 82 00 34 */	bne lbl_800296D0
/* 800296A0  88 9B 00 00 */	lbz r4, 0(r27)
/* 800296A4  28 04 00 FF */	cmplwi r4, 0xff
/* 800296A8  41 82 00 28 */	beq lbl_800296D0
/* 800296AC  7F 23 CB 78 */	mr r3, r25
/* 800296B0  48 00 B1 39 */	bl isTbox__12dSv_memBit_cCFi
/* 800296B4  2C 03 00 00 */	cmpwi r3, 0
/* 800296B8  40 82 00 18 */	bne lbl_800296D0
/* 800296BC  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 800296C0  41 82 00 10 */	beq lbl_800296D0
/* 800296C4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800296C8  41 82 00 08 */	beq lbl_800296D0
/* 800296CC  3B E0 00 01 */	li r31, 1
lbl_800296D0:
/* 800296D0  7F E3 FB 78 */	mr r3, r31
/* 800296D4  39 61 00 30 */	addi r11, r1, 0x30
/* 800296D8  48 33 8B 35 */	bl _restgpr_22
/* 800296DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800296E0  7C 08 03 A6 */	mtlr r0
/* 800296E4  38 21 00 30 */	addi r1, r1, 0x30
/* 800296E8  4E 80 00 20 */	blr 
