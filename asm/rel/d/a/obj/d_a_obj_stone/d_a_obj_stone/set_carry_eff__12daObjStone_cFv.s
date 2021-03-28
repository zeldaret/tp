lbl_80CEC6D8:
/* 80CEC6D8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CEC6DC  7C 08 02 A6 */	mflr r0
/* 80CEC6E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CEC6E4  39 61 00 50 */	addi r11, r1, 0x50
/* 80CEC6E8  4B 67 5A E4 */	b _savegpr_25
/* 80CEC6EC  7C 7F 1B 78 */	mr r31, r3
/* 80CEC6F0  3C 60 80 CF */	lis r3, l_bmdIdx@ha
/* 80CEC6F4  3B 43 CA B4 */	addi r26, r3, l_bmdIdx@l
/* 80CEC6F8  88 1F 09 06 */	lbz r0, 0x906(r31)
/* 80CEC6FC  28 00 00 01 */	cmplwi r0, 1
/* 80CEC700  40 82 00 18 */	bne lbl_80CEC718
/* 80CEC704  C0 1A 01 04 */	lfs f0, 0x104(r26)
/* 80CEC708  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CEC70C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CEC710  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CEC714  48 00 00 14 */	b lbl_80CEC728
lbl_80CEC718:
/* 80CEC718  C0 1A 01 14 */	lfs f0, 0x114(r26)
/* 80CEC71C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CEC720  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CEC724  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_80CEC728:
/* 80CEC728  88 1F 09 50 */	lbz r0, 0x950(r31)
/* 80CEC72C  28 00 00 03 */	cmplwi r0, 3
/* 80CEC730  40 82 00 94 */	bne lbl_80CEC7C4
/* 80CEC734  3B 20 00 00 */	li r25, 0
/* 80CEC738  3B C0 00 00 */	li r30, 0
/* 80CEC73C  3B A0 00 00 */	li r29, 0
/* 80CEC740  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CEC744  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80CEC748  3B 9A 01 80 */	addi r28, r26, 0x180
lbl_80CEC74C:
/* 80CEC74C  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80CEC750  38 80 00 00 */	li r4, 0
/* 80CEC754  90 81 00 08 */	stw r4, 8(r1)
/* 80CEC758  38 00 FF FF */	li r0, -1
/* 80CEC75C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CEC760  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CEC764  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CEC768  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CEC76C  38 80 00 00 */	li r4, 0
/* 80CEC770  7C BC EA 2E */	lhzx r5, r28, r29
/* 80CEC774  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80CEC778  38 E0 00 00 */	li r7, 0
/* 80CEC77C  39 00 00 00 */	li r8, 0
/* 80CEC780  39 21 00 20 */	addi r9, r1, 0x20
/* 80CEC784  39 40 00 FF */	li r10, 0xff
/* 80CEC788  C0 3A 01 04 */	lfs f1, 0x104(r26)
/* 80CEC78C  4B 36 03 04 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CEC790  38 1E 09 64 */	addi r0, r30, 0x964
/* 80CEC794  7C 7F 01 2E */	stwx r3, r31, r0
/* 80CEC798  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80CEC79C  28 03 00 00 */	cmplwi r3, 0
/* 80CEC7A0  41 82 00 10 */	beq lbl_80CEC7B0
/* 80CEC7A4  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80CEC7A8  60 00 00 40 */	ori r0, r0, 0x40
/* 80CEC7AC  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80CEC7B0:
/* 80CEC7B0  3B 39 00 01 */	addi r25, r25, 1
/* 80CEC7B4  2C 19 00 03 */	cmpwi r25, 3
/* 80CEC7B8  3B DE 00 04 */	addi r30, r30, 4
/* 80CEC7BC  3B BD 00 02 */	addi r29, r29, 2
/* 80CEC7C0  41 80 FF 8C */	blt lbl_80CEC74C
lbl_80CEC7C4:
/* 80CEC7C4  39 61 00 50 */	addi r11, r1, 0x50
/* 80CEC7C8  4B 67 5A 50 */	b _restgpr_25
/* 80CEC7CC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CEC7D0  7C 08 03 A6 */	mtlr r0
/* 80CEC7D4  38 21 00 50 */	addi r1, r1, 0x50
/* 80CEC7D8  4E 80 00 20 */	blr 
