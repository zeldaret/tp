lbl_800183DC:
/* 800183DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800183E0  7C 08 02 A6 */	mflr r0
/* 800183E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800183E8  39 61 00 30 */	addi r11, r1, 0x30
/* 800183EC  48 34 9D D9 */	bl _savegpr_23
/* 800183F0  4B FF 69 FD */	bl mDoExt_getArchiveHeap__Fv
/* 800183F4  7C 64 1B 78 */	mr r4, r3
/* 800183F8  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008820@ha */
/* 800183FC  38 63 88 20 */	addi r3, r3, 0x8820 /* 0x00008820@l */
/* 80018400  38 A0 00 00 */	li r5, 0
/* 80018404  48 2B 86 21 */	bl create__12JKRSolidHeapFUlP7JKRHeapb
/* 80018408  7C 7E 1B 78 */	mr r30, r3
/* 8001840C  48 2B 60 2D */	bl becomeCurrentHeap__7JKRHeapFv
/* 80018410  7C 7D 1B 78 */	mr r29, r3
/* 80018414  3C 60 80 3F */	lis r3, DMC@ha
/* 80018418  38 63 0F 50 */	addi r3, r3, DMC@l
/* 8001841C  38 80 00 00 */	li r4, 0
/* 80018420  38 A0 0C 60 */	li r5, 0xc60
/* 80018424  4B FE B0 35 */	bl memset
/* 80018428  3B 80 00 00 */	li r28, 0
/* 8001842C  3B 40 00 00 */	li r26, 0
/* 80018430  3C 60 80 37 */	lis r3, DynamicNameTable@ha
/* 80018434  3B E3 46 40 */	addi r31, r3, DynamicNameTable@l
lbl_80018438:
/* 80018438  7F 7F D2 14 */	add r27, r31, r26
/* 8001843C  80 1B 00 04 */	lwz r0, 4(r27)
/* 80018440  28 00 00 00 */	cmplwi r0, 0
/* 80018444  41 82 00 BC */	beq lbl_80018500
/* 80018448  3A E0 00 00 */	li r23, 0
/* 8001844C  3B 20 00 00 */	li r25, 0
/* 80018450  3C 60 80 3F */	lis r3, DMC@ha
/* 80018454  3B 03 0F 50 */	addi r24, r3, DMC@l
lbl_80018458:
/* 80018458  7C 78 C8 2E */	lwzx r3, r24, r25
/* 8001845C  28 03 00 00 */	cmplwi r3, 0
/* 80018460  41 82 00 44 */	beq lbl_800184A4
/* 80018464  81 83 00 0C */	lwz r12, 0xc(r3)
/* 80018468  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8001846C  7D 89 03 A6 */	mtctr r12
/* 80018470  4E 80 04 21 */	bctrl 
/* 80018474  7C 64 1B 78 */	mr r4, r3
/* 80018478  80 7B 00 04 */	lwz r3, 4(r27)
/* 8001847C  48 35 05 19 */	bl strcmp
/* 80018480  2C 03 00 00 */	cmpwi r3, 0
/* 80018484  40 82 00 20 */	bne lbl_800184A4
/* 80018488  7C 98 C8 2E */	lwzx r4, r24, r25
/* 8001848C  A8 1B 00 00 */	lha r0, 0(r27)
/* 80018490  54 00 10 3A */	slwi r0, r0, 2
/* 80018494  3C 60 80 3F */	lis r3, DMC@ha
/* 80018498  38 63 0F 50 */	addi r3, r3, DMC@l
/* 8001849C  7C 83 01 2E */	stwx r4, r3, r0
/* 800184A0  48 00 00 14 */	b lbl_800184B4
lbl_800184A4:
/* 800184A4  3A F7 00 01 */	addi r23, r23, 1
/* 800184A8  28 17 03 18 */	cmplwi r23, 0x318
/* 800184AC  3B 39 00 04 */	addi r25, r25, 4
/* 800184B0  41 80 FF A8 */	blt lbl_80018458
lbl_800184B4:
/* 800184B4  A8 1B 00 00 */	lha r0, 0(r27)
/* 800184B8  54 00 10 3A */	slwi r0, r0, 2
/* 800184BC  3C 60 80 3F */	lis r3, DMC@ha
/* 800184C0  38 63 0F 50 */	addi r3, r3, DMC@l
/* 800184C4  7C 03 00 2E */	lwzx r0, r3, r0
/* 800184C8  28 00 00 00 */	cmplwi r0, 0
/* 800184CC  40 82 00 34 */	bne lbl_80018500
/* 800184D0  38 60 00 2C */	li r3, 0x2c
/* 800184D4  48 2B 67 79 */	bl __nw__FUl
/* 800184D8  7C 64 1B 79 */	or. r4, r3, r3
/* 800184DC  41 82 00 10 */	beq lbl_800184EC
/* 800184E0  80 9B 00 04 */	lwz r4, 4(r27)
/* 800184E4  48 24 A1 7D */	bl __ct__20DynamicModuleControlFPCc
/* 800184E8  7C 64 1B 78 */	mr r4, r3
lbl_800184EC:
/* 800184EC  A8 1B 00 00 */	lha r0, 0(r27)
/* 800184F0  54 00 10 3A */	slwi r0, r0, 2
/* 800184F4  3C 60 80 3F */	lis r3, DMC@ha
/* 800184F8  38 63 0F 50 */	addi r3, r3, DMC@l
/* 800184FC  7C 83 01 2E */	stwx r4, r3, r0
lbl_80018500:
/* 80018500  3B 9C 00 01 */	addi r28, r28, 1
/* 80018504  28 1C 02 F5 */	cmplwi r28, 0x2f5
/* 80018508  3B 5A 00 08 */	addi r26, r26, 8
/* 8001850C  41 80 FF 2C */	blt lbl_80018438
/* 80018510  7F C3 F3 78 */	mr r3, r30
/* 80018514  48 2B 86 E1 */	bl adjustSize__12JKRSolidHeapFv
/* 80018518  7F A3 EB 78 */	mr r3, r29
/* 8001851C  48 2B 5F 1D */	bl becomeCurrentHeap__7JKRHeapFv
/* 80018520  38 00 00 01 */	li r0, 1
/* 80018524  98 0D 87 28 */	stb r0, data_80450CA8(r13)
/* 80018528  38 60 00 01 */	li r3, 1
/* 8001852C  39 61 00 30 */	addi r11, r1, 0x30
/* 80018530  48 34 9C E1 */	bl _restgpr_23
/* 80018534  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80018538  7C 08 03 A6 */	mtlr r0
/* 8001853C  38 21 00 30 */	addi r1, r1, 0x30
/* 80018540  4E 80 00 20 */	blr 
