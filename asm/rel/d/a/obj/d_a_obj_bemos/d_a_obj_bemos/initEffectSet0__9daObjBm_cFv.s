lbl_80BB0584:
/* 80BB0584  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BB0588  7C 08 02 A6 */	mflr r0
/* 80BB058C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BB0590  39 61 00 40 */	addi r11, r1, 0x40
/* 80BB0594  4B 7B 1C 3C */	b _savegpr_26
/* 80BB0598  7C 7E 1B 78 */	mr r30, r3
/* 80BB059C  3C 60 80 BB */	lis r3, l_eye_offset@ha
/* 80BB05A0  3B E3 37 B8 */	addi r31, r3, l_eye_offset@l
/* 80BB05A4  80 1E 04 B4 */	lwz r0, 0x4b4(r30)
/* 80BB05A8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BB05AC  A0 1E 04 B8 */	lhz r0, 0x4b8(r30)
/* 80BB05B0  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80BB05B4  A8 61 00 22 */	lha r3, 0x22(r1)
/* 80BB05B8  A8 1E 0F 96 */	lha r0, 0xf96(r30)
/* 80BB05BC  7C 03 02 14 */	add r0, r3, r0
/* 80BB05C0  B0 01 00 22 */	sth r0, 0x22(r1)
/* 80BB05C4  3B 40 00 00 */	li r26, 0
/* 80BB05C8  3B A0 00 00 */	li r29, 0
/* 80BB05CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BB05D0  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80BB05D4  3B 9F 00 C8 */	addi r28, r31, 0xc8
lbl_80BB05D8:
/* 80BB05D8  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80BB05DC  38 80 00 00 */	li r4, 0
/* 80BB05E0  90 81 00 08 */	stw r4, 8(r1)
/* 80BB05E4  38 00 FF FF */	li r0, -1
/* 80BB05E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BB05EC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BB05F0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BB05F4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BB05F8  38 80 00 00 */	li r4, 0
/* 80BB05FC  7C BC EA 2E */	lhzx r5, r28, r29
/* 80BB0600  38 DE 05 38 */	addi r6, r30, 0x538
/* 80BB0604  38 E0 00 00 */	li r7, 0
/* 80BB0608  39 01 00 20 */	addi r8, r1, 0x20
/* 80BB060C  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 80BB0610  39 40 00 FF */	li r10, 0xff
/* 80BB0614  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80BB0618  4B 49 C4 78 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BB061C  3B 5A 00 01 */	addi r26, r26, 1
/* 80BB0620  2C 1A 00 02 */	cmpwi r26, 2
/* 80BB0624  3B BD 00 02 */	addi r29, r29, 2
/* 80BB0628  41 80 FF B0 */	blt lbl_80BB05D8
/* 80BB062C  3B 40 00 00 */	li r26, 0
/* 80BB0630  3B A0 00 00 */	li r29, 0
/* 80BB0634  3B 9F 00 CC */	addi r28, r31, 0xcc
lbl_80BB0638:
/* 80BB0638  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80BB063C  38 80 00 00 */	li r4, 0
/* 80BB0640  90 81 00 08 */	stw r4, 8(r1)
/* 80BB0644  38 00 FF FF */	li r0, -1
/* 80BB0648  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BB064C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BB0650  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BB0654  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BB0658  38 80 00 00 */	li r4, 0
/* 80BB065C  7C BC EA 2E */	lhzx r5, r28, r29
/* 80BB0660  38 DE 05 38 */	addi r6, r30, 0x538
/* 80BB0664  38 E0 00 00 */	li r7, 0
/* 80BB0668  39 01 00 20 */	addi r8, r1, 0x20
/* 80BB066C  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 80BB0670  39 40 00 FF */	li r10, 0xff
/* 80BB0674  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80BB0678  4B 49 C4 18 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BB067C  3B 5A 00 01 */	addi r26, r26, 1
/* 80BB0680  2C 1A 00 04 */	cmpwi r26, 4
/* 80BB0684  3B BD 00 02 */	addi r29, r29, 2
/* 80BB0688  41 80 FF B0 */	blt lbl_80BB0638
/* 80BB068C  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80BB0690  38 80 00 00 */	li r4, 0
/* 80BB0694  90 81 00 08 */	stw r4, 8(r1)
/* 80BB0698  38 00 FF FF */	li r0, -1
/* 80BB069C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BB06A0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BB06A4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BB06A8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BB06AC  38 80 00 00 */	li r4, 0
/* 80BB06B0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008453@ha */
/* 80BB06B4  38 A5 84 53 */	addi r5, r5, 0x8453 /* 0x00008453@l */
/* 80BB06B8  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80BB06BC  38 E0 00 00 */	li r7, 0
/* 80BB06C0  39 1E 04 B4 */	addi r8, r30, 0x4b4
/* 80BB06C4  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 80BB06C8  39 40 00 FF */	li r10, 0xff
/* 80BB06CC  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80BB06D0  4B 49 C3 C0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BB06D4  90 7E 0F F8 */	stw r3, 0xff8(r30)
/* 80BB06D8  80 7E 0F F8 */	lwz r3, 0xff8(r30)
/* 80BB06DC  28 03 00 00 */	cmplwi r3, 0
/* 80BB06E0  41 82 00 10 */	beq lbl_80BB06F0
/* 80BB06E4  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BB06E8  60 00 00 40 */	ori r0, r0, 0x40
/* 80BB06EC  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80BB06F0:
/* 80BB06F0  38 00 00 C8 */	li r0, 0xc8
/* 80BB06F4  98 1E 0F F5 */	stb r0, 0xff5(r30)
/* 80BB06F8  38 00 00 01 */	li r0, 1
/* 80BB06FC  98 1E 0F F6 */	stb r0, 0xff6(r30)
/* 80BB0700  39 61 00 40 */	addi r11, r1, 0x40
/* 80BB0704  4B 7B 1B 18 */	b _restgpr_26
/* 80BB0708  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BB070C  7C 08 03 A6 */	mtlr r0
/* 80BB0710  38 21 00 40 */	addi r1, r1, 0x40
/* 80BB0714  4E 80 00 20 */	blr 
