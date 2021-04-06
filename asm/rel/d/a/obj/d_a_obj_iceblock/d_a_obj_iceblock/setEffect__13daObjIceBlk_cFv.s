lbl_80C23388:
/* 80C23388  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C2338C  7C 08 02 A6 */	mflr r0
/* 80C23390  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C23394  39 61 00 40 */	addi r11, r1, 0x40
/* 80C23398  4B 73 EE 39 */	bl _savegpr_26
/* 80C2339C  7C 7D 1B 78 */	mr r29, r3
/* 80C233A0  3C 60 80 C2 */	lis r3, l_dir_vec@ha /* 0x80C242F4@ha */
/* 80C233A4  3B C3 42 F4 */	addi r30, r3, l_dir_vec@l /* 0x80C242F4@l */
/* 80C233A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C233AC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C233B0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C233B4  38 00 00 FF */	li r0, 0xff
/* 80C233B8  90 01 00 08 */	stw r0, 8(r1)
/* 80C233BC  38 80 00 00 */	li r4, 0
/* 80C233C0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C233C4  38 00 FF FF */	li r0, -1
/* 80C233C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C233CC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C233D0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C233D4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C233D8  80 9D 09 D4 */	lwz r4, 0x9d4(r29)
/* 80C233DC  38 A0 00 00 */	li r5, 0
/* 80C233E0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000867B@ha */
/* 80C233E4  38 C6 86 7B */	addi r6, r6, 0x867B /* 0x0000867B@l */
/* 80C233E8  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 80C233EC  39 00 00 00 */	li r8, 0
/* 80C233F0  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 80C233F4  39 40 00 00 */	li r10, 0
/* 80C233F8  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80C233FC  4B 42 A0 D1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C23400  90 7D 09 D4 */	stw r3, 0x9d4(r29)
/* 80C23404  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C23408  38 00 00 FF */	li r0, 0xff
/* 80C2340C  90 01 00 08 */	stw r0, 8(r1)
/* 80C23410  38 80 00 00 */	li r4, 0
/* 80C23414  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C23418  38 00 FF FF */	li r0, -1
/* 80C2341C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C23420  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C23424  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C23428  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C2342C  80 9D 09 D8 */	lwz r4, 0x9d8(r29)
/* 80C23430  38 A0 00 00 */	li r5, 0
/* 80C23434  A0 DE 00 D8 */	lhz r6, 0xd8(r30)
/* 80C23438  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 80C2343C  39 00 00 00 */	li r8, 0
/* 80C23440  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 80C23444  39 40 00 00 */	li r10, 0
/* 80C23448  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80C2344C  4B 42 A0 81 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C23450  90 7D 09 D8 */	stw r3, 0x9d8(r29)
/* 80C23454  3B 40 00 00 */	li r26, 0
/* 80C23458  3B 80 00 00 */	li r28, 0
/* 80C2345C  3B 7E 00 DC */	addi r27, r30, 0xdc
lbl_80C23460:
/* 80C23460  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C23464  38 80 00 00 */	li r4, 0
/* 80C23468  90 81 00 08 */	stw r4, 8(r1)
/* 80C2346C  38 00 FF FF */	li r0, -1
/* 80C23470  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C23474  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C23478  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C2347C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C23480  38 80 00 00 */	li r4, 0
/* 80C23484  7C BB E2 2E */	lhzx r5, r27, r28
/* 80C23488  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80C2348C  38 E0 00 00 */	li r7, 0
/* 80C23490  39 1D 04 B4 */	addi r8, r29, 0x4b4
/* 80C23494  39 3D 04 EC */	addi r9, r29, 0x4ec
/* 80C23498  39 40 00 FF */	li r10, 0xff
/* 80C2349C  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80C234A0  4B 42 95 F1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C234A4  3B 5A 00 01 */	addi r26, r26, 1
/* 80C234A8  2C 1A 00 02 */	cmpwi r26, 2
/* 80C234AC  3B 9C 00 02 */	addi r28, r28, 2
/* 80C234B0  41 80 FF B0 */	blt lbl_80C23460
/* 80C234B4  38 60 00 00 */	li r3, 0
/* 80C234B8  38 A0 00 01 */	li r5, 1
/* 80C234BC  38 80 00 00 */	li r4, 0
/* 80C234C0  38 00 00 02 */	li r0, 2
/* 80C234C4  7C 09 03 A6 */	mtctr r0
lbl_80C234C8:
/* 80C234C8  38 E3 09 E4 */	addi r7, r3, 0x9e4
/* 80C234CC  7C DD 38 2E */	lwzx r6, r29, r7
/* 80C234D0  28 06 00 00 */	cmplwi r6, 0
/* 80C234D4  41 82 00 18 */	beq lbl_80C234EC
/* 80C234D8  80 06 00 F4 */	lwz r0, 0xf4(r6)
/* 80C234DC  60 00 00 01 */	ori r0, r0, 1
/* 80C234E0  90 06 00 F4 */	stw r0, 0xf4(r6)
/* 80C234E4  90 A6 00 24 */	stw r5, 0x24(r6)
/* 80C234E8  7C 9D 39 2E */	stwx r4, r29, r7
lbl_80C234EC:
/* 80C234EC  38 63 00 04 */	addi r3, r3, 4
/* 80C234F0  42 00 FF D8 */	bdnz lbl_80C234C8
/* 80C234F4  39 61 00 40 */	addi r11, r1, 0x40
/* 80C234F8  4B 73 ED 25 */	bl _restgpr_26
/* 80C234FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C23500  7C 08 03 A6 */	mtlr r0
/* 80C23504  38 21 00 40 */	addi r1, r1, 0x40
/* 80C23508  4E 80 00 20 */	blr 
