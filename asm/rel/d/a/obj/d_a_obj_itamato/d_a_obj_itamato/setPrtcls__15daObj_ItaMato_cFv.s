lbl_80C2A7C4:
/* 80C2A7C4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C2A7C8  7C 08 02 A6 */	mflr r0
/* 80C2A7CC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C2A7D0  39 61 00 40 */	addi r11, r1, 0x40
/* 80C2A7D4  4B 73 79 F4 */	b _savegpr_24
/* 80C2A7D8  7C 78 1B 78 */	mr r24, r3
/* 80C2A7DC  3B 20 00 00 */	li r25, 0
/* 80C2A7E0  3B E0 00 00 */	li r31, 0
/* 80C2A7E4  3B C0 00 00 */	li r30, 0
/* 80C2A7E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C2A7EC  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80C2A7F0  3C 60 80 C3 */	lis r3, id@ha
/* 80C2A7F4  3B 83 AC 18 */	addi r28, r3, id@l
/* 80C2A7F8  3C 60 80 C3 */	lis r3, lit_4317@ha
/* 80C2A7FC  3B A3 AB C4 */	addi r29, r3, lit_4317@l
lbl_80C2A800:
/* 80C2A800  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80C2A804  38 00 00 FF */	li r0, 0xff
/* 80C2A808  90 01 00 08 */	stw r0, 8(r1)
/* 80C2A80C  38 80 00 00 */	li r4, 0
/* 80C2A810  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C2A814  38 00 FF FF */	li r0, -1
/* 80C2A818  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C2A81C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C2A820  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C2A824  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C2A828  3B 5E 0A 08 */	addi r26, r30, 0xa08
/* 80C2A82C  7C 98 D0 2E */	lwzx r4, r24, r26
/* 80C2A830  38 A0 00 00 */	li r5, 0
/* 80C2A834  7C DC FA 2E */	lhzx r6, r28, r31
/* 80C2A838  38 F8 04 D0 */	addi r7, r24, 0x4d0
/* 80C2A83C  39 00 00 00 */	li r8, 0
/* 80C2A840  39 38 04 E4 */	addi r9, r24, 0x4e4
/* 80C2A844  39 40 00 00 */	li r10, 0
/* 80C2A848  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80C2A84C  4B 42 2C 80 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C2A850  7C 78 D1 2E */	stwx r3, r24, r26
/* 80C2A854  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80C2A858  38 63 02 10 */	addi r3, r3, 0x210
/* 80C2A85C  7C 98 D0 2E */	lwzx r4, r24, r26
/* 80C2A860  4B 42 10 54 */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80C2A864  3B 39 00 01 */	addi r25, r25, 1
/* 80C2A868  2C 19 00 03 */	cmpwi r25, 3
/* 80C2A86C  3B FF 00 02 */	addi r31, r31, 2
/* 80C2A870  3B DE 00 04 */	addi r30, r30, 4
/* 80C2A874  41 80 FF 8C */	blt lbl_80C2A800
/* 80C2A878  39 61 00 40 */	addi r11, r1, 0x40
/* 80C2A87C  4B 73 79 98 */	b _restgpr_24
/* 80C2A880  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C2A884  7C 08 03 A6 */	mtlr r0
/* 80C2A888  38 21 00 40 */	addi r1, r1, 0x40
/* 80C2A88C  4E 80 00 20 */	blr 
