lbl_805CA4FC:
/* 805CA4FC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805CA500  7C 08 02 A6 */	mflr r0
/* 805CA504  90 01 00 64 */	stw r0, 0x64(r1)
/* 805CA508  39 61 00 60 */	addi r11, r1, 0x60
/* 805CA50C  4B D9 7C B5 */	bl _savegpr_22
/* 805CA510  7C 7C 1B 78 */	mr r28, r3
/* 805CA514  3C 60 80 5D */	lis r3, lit_3844@ha /* 0x805CAD5C@ha */
/* 805CA518  3B C3 AD 5C */	addi r30, r3, lit_3844@l /* 0x805CAD5C@l */
/* 805CA51C  38 7C 06 18 */	addi r3, r28, 0x618
/* 805CA520  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 805CA524  C0 5E 01 50 */	lfs f2, 0x150(r30)
/* 805CA528  C0 7E 01 54 */	lfs f3, 0x154(r30)
/* 805CA52C  4B CA 55 11 */	bl cLib_addCalc2__FPffff
/* 805CA530  C0 1C 06 18 */	lfs f0, 0x618(r28)
/* 805CA534  FC 00 00 1E */	fctiwz f0, f0
/* 805CA538  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805CA53C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805CA540  3C 60 80 5D */	lis r3, data_805CB0D4@ha /* 0x805CB0D4@ha */
/* 805CA544  98 03 B0 D4 */	stb r0, data_805CB0D4@l(r3)  /* 0x805CB0D4@l */
/* 805CA548  80 1C 04 E4 */	lwz r0, 0x4e4(r28)
/* 805CA54C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CA550  A0 1C 04 E8 */	lhz r0, 0x4e8(r28)
/* 805CA554  B0 01 00 28 */	sth r0, 0x28(r1)
/* 805CA558  3B A0 00 00 */	li r29, 0
/* 805CA55C  3B 60 00 00 */	li r27, 0
/* 805CA560  3B 40 00 00 */	li r26, 0
/* 805CA564  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805CA568  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805CA56C  3C 60 80 5D */	lis r3, effId@ha /* 0x805CAFAC@ha */
/* 805CA570  3A C3 AF AC */	addi r22, r3, effId@l /* 0x805CAFAC@l */
/* 805CA574  3C 60 80 5D */	lis r3, data_805CB098@ha /* 0x805CB098@ha */
/* 805CA578  3A E3 B0 98 */	addi r23, r3, data_805CB098@l /* 0x805CB098@l */
/* 805CA57C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047C@ha */
/* 805CA580  3B 23 04 7C */	addi r25, r3, 0x047C /* 0x0007047C@l */
lbl_805CA584:
/* 805CA584  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 805CA588  38 00 00 FF */	li r0, 0xff
/* 805CA58C  90 01 00 08 */	stw r0, 8(r1)
/* 805CA590  38 80 00 00 */	li r4, 0
/* 805CA594  90 81 00 0C */	stw r4, 0xc(r1)
/* 805CA598  38 00 FF FF */	li r0, -1
/* 805CA59C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805CA5A0  90 81 00 14 */	stw r4, 0x14(r1)
/* 805CA5A4  90 81 00 18 */	stw r4, 0x18(r1)
/* 805CA5A8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805CA5AC  3B 1A 06 1C */	addi r24, r26, 0x61c
/* 805CA5B0  7C 9C C0 2E */	lwzx r4, r28, r24
/* 805CA5B4  38 A0 00 00 */	li r5, 0
/* 805CA5B8  7C D6 DA 2E */	lhzx r6, r22, r27
/* 805CA5BC  7E E7 BB 78 */	mr r7, r23
/* 805CA5C0  39 00 00 00 */	li r8, 0
/* 805CA5C4  39 21 00 24 */	addi r9, r1, 0x24
/* 805CA5C8  39 40 00 00 */	li r10, 0
/* 805CA5CC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805CA5D0  4B A8 2E FD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805CA5D4  7C 7C C1 2E */	stwx r3, r28, r24
/* 805CA5D8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 805CA5DC  38 63 02 10 */	addi r3, r3, 0x210
/* 805CA5E0  7C 9C C0 2E */	lwzx r4, r28, r24
/* 805CA5E4  4B A8 13 35 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805CA5E8  7C 78 1B 79 */	or. r24, r3, r3
/* 805CA5EC  41 82 00 38 */	beq lbl_805CA624
/* 805CA5F0  80 7C 06 EC */	lwz r3, 0x6ec(r28)
/* 805CA5F4  80 63 00 04 */	lwz r3, 4(r3)
/* 805CA5F8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805CA5FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805CA600  38 63 03 90 */	addi r3, r3, 0x390
/* 805CA604  38 98 00 68 */	addi r4, r24, 0x68
/* 805CA608  38 B8 00 98 */	addi r5, r24, 0x98
/* 805CA60C  38 D8 00 A4 */	addi r6, r24, 0xa4
/* 805CA610  4B CB 61 F9 */	bl func_80280808
/* 805CA614  C0 38 00 9C */	lfs f1, 0x9c(r24)
/* 805CA618  C0 18 00 98 */	lfs f0, 0x98(r24)
/* 805CA61C  D0 18 00 B0 */	stfs f0, 0xb0(r24)
/* 805CA620  D0 38 00 B4 */	stfs f1, 0xb4(r24)
lbl_805CA624:
/* 805CA624  93 21 00 20 */	stw r25, 0x20(r1)
/* 805CA628  38 7C 06 44 */	addi r3, r28, 0x644
/* 805CA62C  38 81 00 20 */	addi r4, r1, 0x20
/* 805CA630  38 A0 FF FF */	li r5, -1
/* 805CA634  81 9C 06 44 */	lwz r12, 0x644(r28)
/* 805CA638  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 805CA63C  7D 89 03 A6 */	mtctr r12
/* 805CA640  4E 80 04 21 */	bctrl 
/* 805CA644  3B BD 00 01 */	addi r29, r29, 1
/* 805CA648  2C 1D 00 04 */	cmpwi r29, 4
/* 805CA64C  3B 7B 00 02 */	addi r27, r27, 2
/* 805CA650  3B 5A 00 04 */	addi r26, r26, 4
/* 805CA654  41 80 FF 30 */	blt lbl_805CA584
/* 805CA658  39 61 00 60 */	addi r11, r1, 0x60
/* 805CA65C  4B D9 7B B1 */	bl _restgpr_22
/* 805CA660  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805CA664  7C 08 03 A6 */	mtlr r0
/* 805CA668  38 21 00 60 */	addi r1, r1, 0x60
/* 805CA66C  4E 80 00 20 */	blr 
