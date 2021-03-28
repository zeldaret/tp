lbl_80CE003C:
/* 80CE003C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80CE0040  7C 08 02 A6 */	mflr r0
/* 80CE0044  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CE0048  39 61 00 60 */	addi r11, r1, 0x60
/* 80CE004C  4B 68 21 7C */	b _savegpr_24
/* 80CE0050  7C 78 1B 78 */	mr r24, r3
/* 80CE0054  7C 9A 23 78 */	mr r26, r4
/* 80CE0058  3C 60 80 CE */	lis r3, SOUP_MODEL_OFFSET@ha
/* 80CE005C  3B 83 02 3C */	addi r28, r3, SOUP_MODEL_OFFSET@l
/* 80CE0060  C0 1C 00 18 */	lfs f0, 0x18(r28)
/* 80CE0064  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CE0068  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80CE006C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CE0070  38 61 00 20 */	addi r3, r1, 0x20
/* 80CE0074  38 80 00 00 */	li r4, 0
/* 80CE0078  38 A0 00 00 */	li r5, 0
/* 80CE007C  38 C0 00 00 */	li r6, 0
/* 80CE0080  4B 58 73 74 */	b __ct__5csXyzFsss
/* 80CE0084  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80CE0088  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CE008C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CE0090  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CE0094  3B 20 00 00 */	li r25, 0
/* 80CE0098  3B E0 00 00 */	li r31, 0
/* 80CE009C  3B C0 00 00 */	li r30, 0
/* 80CE00A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE00A4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80CE00A8  57 40 10 3A */	slwi r0, r26, 2
/* 80CE00AC  3B 7C 00 2C */	addi r27, r28, 0x2c
/* 80CE00B0  7F 7B 02 14 */	add r27, r27, r0
/* 80CE00B4  57 40 18 38 */	slwi r0, r26, 3
/* 80CE00B8  7F 58 02 14 */	add r26, r24, r0
lbl_80CE00BC:
/* 80CE00BC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80CE00C0  38 80 00 00 */	li r4, 0
/* 80CE00C4  90 81 00 08 */	stw r4, 8(r1)
/* 80CE00C8  38 00 FF FF */	li r0, -1
/* 80CE00CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE00D0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CE00D4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CE00D8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CE00DC  38 80 00 00 */	li r4, 0
/* 80CE00E0  7C BB F2 2E */	lhzx r5, r27, r30
/* 80CE00E4  38 C1 00 34 */	addi r6, r1, 0x34
/* 80CE00E8  38 E0 00 00 */	li r7, 0
/* 80CE00EC  39 01 00 20 */	addi r8, r1, 0x20
/* 80CE00F0  39 21 00 28 */	addi r9, r1, 0x28
/* 80CE00F4  39 40 00 FF */	li r10, 0xff
/* 80CE00F8  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 80CE00FC  4B 36 C9 94 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CE0100  38 1F 05 9C */	addi r0, r31, 0x59c
/* 80CE0104  7C 7A 01 2E */	stwx r3, r26, r0
/* 80CE0108  3B 39 00 01 */	addi r25, r25, 1
/* 80CE010C  2C 19 00 02 */	cmpwi r25, 2
/* 80CE0110  3B FF 00 04 */	addi r31, r31, 4
/* 80CE0114  3B DE 00 02 */	addi r30, r30, 2
/* 80CE0118  41 80 FF A4 */	blt lbl_80CE00BC
/* 80CE011C  39 61 00 60 */	addi r11, r1, 0x60
/* 80CE0120  4B 68 20 F4 */	b _restgpr_24
/* 80CE0124  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80CE0128  7C 08 03 A6 */	mtlr r0
/* 80CE012C  38 21 00 60 */	addi r1, r1, 0x60
/* 80CE0130  4E 80 00 20 */	blr 
