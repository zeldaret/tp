lbl_8053036C:
/* 8053036C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80530370  7C 08 02 A6 */	mflr r0
/* 80530374  90 01 00 44 */	stw r0, 0x44(r1)
/* 80530378  39 61 00 40 */	addi r11, r1, 0x40
/* 8053037C  4B E3 1E 4D */	bl _savegpr_24
/* 80530380  7C 7C 1B 78 */	mr r28, r3
/* 80530384  3C 60 80 53 */	lis r3, cNullVec__6Z2Calc@ha /* 0x805364A4@ha */
/* 80530388  3B C3 64 A4 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x805364A4@l */
/* 8053038C  88 1C 0C 3D */	lbz r0, 0xc3d(r28)
/* 80530390  28 00 00 01 */	cmplwi r0, 1
/* 80530394  40 82 00 E8 */	bne lbl_8053047C
/* 80530398  3B A0 00 00 */	li r29, 0
/* 8053039C  3B 60 00 00 */	li r27, 0
/* 805303A0  3B 40 00 00 */	li r26, 0
/* 805303A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805303A8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805303AC  3B 1E 03 64 */	addi r24, r30, 0x364
/* 805303B0  3C 60 80 53 */	lis r3, lit_3679@ha /* 0x80536168@ha */
/* 805303B4  3B 23 61 68 */	addi r25, r3, lit_3679@l /* 0x80536168@l */
lbl_805303B8:
/* 805303B8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 805303BC  38 00 00 FF */	li r0, 0xff
/* 805303C0  90 01 00 08 */	stw r0, 8(r1)
/* 805303C4  38 80 00 00 */	li r4, 0
/* 805303C8  90 81 00 0C */	stw r4, 0xc(r1)
/* 805303CC  38 00 FF FF */	li r0, -1
/* 805303D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805303D4  90 81 00 14 */	stw r4, 0x14(r1)
/* 805303D8  90 81 00 18 */	stw r4, 0x18(r1)
/* 805303DC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805303E0  3B DA 0C 28 */	addi r30, r26, 0xc28
/* 805303E4  7C 9C F0 2E */	lwzx r4, r28, r30
/* 805303E8  38 A0 00 00 */	li r5, 0
/* 805303EC  7C D8 DA 2E */	lhzx r6, r24, r27
/* 805303F0  38 FC 04 D0 */	addi r7, r28, 0x4d0
/* 805303F4  39 00 00 00 */	li r8, 0
/* 805303F8  39 20 00 00 */	li r9, 0
/* 805303FC  39 40 00 00 */	li r10, 0
/* 80530400  C0 39 00 00 */	lfs f1, 0(r25)
/* 80530404  4B B1 D0 C9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80530408  7C 7C F1 2E */	stwx r3, r28, r30
/* 8053040C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80530410  38 63 02 10 */	addi r3, r3, 0x210
/* 80530414  7C 9C F0 2E */	lwzx r4, r28, r30
/* 80530418  4B B1 B5 01 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8053041C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80530420  41 82 00 44 */	beq lbl_80530464
/* 80530424  3C 60 80 53 */	lis r3, s_bt_sub__FPvPv@ha /* 0x8052B148@ha */
/* 80530428  38 63 B1 48 */	addi r3, r3, s_bt_sub__FPvPv@l /* 0x8052B148@l */
/* 8053042C  7F 84 E3 78 */	mr r4, r28
/* 80530430  4B AF 0F 09 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80530434  28 03 00 00 */	cmplwi r3, 0
/* 80530438  41 82 00 2C */	beq lbl_80530464
/* 8053043C  80 63 06 14 */	lwz r3, 0x614(r3)
/* 80530440  38 63 00 24 */	addi r3, r3, 0x24
/* 80530444  38 9E 00 68 */	addi r4, r30, 0x68
/* 80530448  38 BE 00 98 */	addi r5, r30, 0x98
/* 8053044C  38 DE 00 A4 */	addi r6, r30, 0xa4
/* 80530450  4B D5 03 B9 */	bl func_80280808
/* 80530454  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80530458  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 8053045C  D0 1E 00 B0 */	stfs f0, 0xb0(r30)
/* 80530460  D0 3E 00 B4 */	stfs f1, 0xb4(r30)
lbl_80530464:
/* 80530464  3B BD 00 01 */	addi r29, r29, 1
/* 80530468  2C 1D 00 03 */	cmpwi r29, 3
/* 8053046C  3B 7B 00 02 */	addi r27, r27, 2
/* 80530470  3B 5A 00 04 */	addi r26, r26, 4
/* 80530474  41 80 FF 44 */	blt lbl_805303B8
/* 80530478  48 00 00 CC */	b lbl_80530544
lbl_8053047C:
/* 8053047C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80530480  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80530484  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80530488  38 00 00 FF */	li r0, 0xff
/* 8053048C  90 01 00 08 */	stw r0, 8(r1)
/* 80530490  38 80 00 00 */	li r4, 0
/* 80530494  90 81 00 0C */	stw r4, 0xc(r1)
/* 80530498  38 00 FF FF */	li r0, -1
/* 8053049C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805304A0  90 81 00 14 */	stw r4, 0x14(r1)
/* 805304A4  90 81 00 18 */	stw r4, 0x18(r1)
/* 805304A8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805304AC  80 9C 0C 28 */	lwz r4, 0xc28(r28)
/* 805304B0  38 A0 00 00 */	li r5, 0
/* 805304B4  88 1C 06 34 */	lbz r0, 0x634(r28)
/* 805304B8  54 00 08 3C */	slwi r0, r0, 1
/* 805304BC  38 DE 03 6C */	addi r6, r30, 0x36c
/* 805304C0  7C C6 02 2E */	lhzx r6, r6, r0
/* 805304C4  38 FC 04 D0 */	addi r7, r28, 0x4d0
/* 805304C8  39 00 00 00 */	li r8, 0
/* 805304CC  39 20 00 00 */	li r9, 0
/* 805304D0  39 40 00 00 */	li r10, 0
/* 805304D4  3D 60 80 53 */	lis r11, lit_3679@ha /* 0x80536168@ha */
/* 805304D8  C0 2B 61 68 */	lfs f1, lit_3679@l(r11)  /* 0x80536168@l */
/* 805304DC  4B B1 CF F1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805304E0  90 7C 0C 28 */	stw r3, 0xc28(r28)
/* 805304E4  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805304E8  38 63 02 10 */	addi r3, r3, 0x210
/* 805304EC  80 9C 0C 28 */	lwz r4, 0xc28(r28)
/* 805304F0  4B B1 B4 29 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805304F4  7C 7A 1B 79 */	or. r26, r3, r3
/* 805304F8  41 82 00 4C */	beq lbl_80530544
/* 805304FC  80 7C 06 00 */	lwz r3, 0x600(r28)
/* 80530500  80 63 00 04 */	lwz r3, 4(r3)
/* 80530504  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80530508  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8053050C  88 1C 06 34 */	lbz r0, 0x634(r28)
/* 80530510  54 00 10 3A */	slwi r0, r0, 2
/* 80530514  38 7E 03 84 */	addi r3, r30, 0x384
/* 80530518  7C 03 00 2E */	lwzx r0, r3, r0
/* 8053051C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80530520  7C 64 02 14 */	add r3, r4, r0
/* 80530524  38 9A 00 68 */	addi r4, r26, 0x68
/* 80530528  38 BA 00 98 */	addi r5, r26, 0x98
/* 8053052C  38 DA 00 A4 */	addi r6, r26, 0xa4
/* 80530530  4B D5 02 D9 */	bl func_80280808
/* 80530534  C0 3A 00 9C */	lfs f1, 0x9c(r26)
/* 80530538  C0 1A 00 98 */	lfs f0, 0x98(r26)
/* 8053053C  D0 1A 00 B0 */	stfs f0, 0xb0(r26)
/* 80530540  D0 3A 00 B4 */	stfs f1, 0xb4(r26)
lbl_80530544:
/* 80530544  39 61 00 40 */	addi r11, r1, 0x40
/* 80530548  4B E3 1C CD */	bl _restgpr_24
/* 8053054C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80530550  7C 08 03 A6 */	mtlr r0
/* 80530554  38 21 00 40 */	addi r1, r1, 0x40
/* 80530558  4E 80 00 20 */	blr 
