lbl_8049A110:
/* 8049A110  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8049A114  7C 08 02 A6 */	mflr r0
/* 8049A118  90 01 00 54 */	stw r0, 0x54(r1)
/* 8049A11C  39 61 00 50 */	addi r11, r1, 0x50
/* 8049A120  4B EC 80 AD */	bl _savegpr_25
/* 8049A124  7C 79 1B 78 */	mr r25, r3
/* 8049A128  7C 9A 23 78 */	mr r26, r4
/* 8049A12C  3B 60 00 00 */	li r27, 0
/* 8049A130  3B E0 00 00 */	li r31, 0
/* 8049A134  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049A138  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049A13C  3C 60 80 4A */	lis r3, effName_4192@ha /* 0x8049DD40@ha */
/* 8049A140  3B A3 DD 40 */	addi r29, r3, effName_4192@l /* 0x8049DD40@l */
/* 8049A144  3C 60 80 4A */	lis r3, lit_4187@ha /* 0x8049DD3C@ha */
/* 8049A148  3B C3 DD 3C */	addi r30, r3, lit_4187@l /* 0x8049DD3C@l */
lbl_8049A14C:
/* 8049A14C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8049A150  38 80 00 00 */	li r4, 0
/* 8049A154  90 81 00 08 */	stw r4, 8(r1)
/* 8049A158  38 00 FF FF */	li r0, -1
/* 8049A15C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8049A160  90 81 00 10 */	stw r4, 0x10(r1)
/* 8049A164  90 81 00 14 */	stw r4, 0x14(r1)
/* 8049A168  90 81 00 18 */	stw r4, 0x18(r1)
/* 8049A16C  38 80 00 00 */	li r4, 0
/* 8049A170  7C BD FA 2E */	lhzx r5, r29, r31
/* 8049A174  7F 46 D3 78 */	mr r6, r26
/* 8049A178  38 E0 00 00 */	li r7, 0
/* 8049A17C  39 19 04 E4 */	addi r8, r25, 0x4e4
/* 8049A180  39 20 00 00 */	li r9, 0
/* 8049A184  39 40 00 FF */	li r10, 0xff
/* 8049A188  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8049A18C  4B BB 29 05 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8049A190  3B 7B 00 01 */	addi r27, r27, 1
/* 8049A194  2C 1B 00 06 */	cmpwi r27, 6
/* 8049A198  3B FF 00 02 */	addi r31, r31, 2
/* 8049A19C  41 80 FF B0 */	blt lbl_8049A14C
/* 8049A1A0  38 00 00 01 */	li r0, 1
/* 8049A1A4  98 19 09 3F */	stb r0, 0x93f(r25)
/* 8049A1A8  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006001D@ha */
/* 8049A1AC  38 03 00 1D */	addi r0, r3, 0x001D /* 0x0006001D@l */
/* 8049A1B0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8049A1B4  38 79 09 04 */	addi r3, r25, 0x904
/* 8049A1B8  38 81 00 20 */	addi r4, r1, 0x20
/* 8049A1BC  38 A0 00 00 */	li r5, 0
/* 8049A1C0  88 D9 09 48 */	lbz r6, 0x948(r25)
/* 8049A1C4  81 99 09 14 */	lwz r12, 0x914(r25)
/* 8049A1C8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8049A1CC  7D 89 03 A6 */	mtctr r12
/* 8049A1D0  4E 80 04 21 */	bctrl 
/* 8049A1D4  39 61 00 50 */	addi r11, r1, 0x50
/* 8049A1D8  4B EC 80 41 */	bl _restgpr_25
/* 8049A1DC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8049A1E0  7C 08 03 A6 */	mtlr r0
/* 8049A1E4  38 21 00 50 */	addi r1, r1, 0x50
/* 8049A1E8  4E 80 00 20 */	blr 
