lbl_80C1BB7C:
/* 80C1BB7C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80C1BB80  7C 08 02 A6 */	mflr r0
/* 80C1BB84  90 01 00 84 */	stw r0, 0x84(r1)
/* 80C1BB88  39 61 00 80 */	addi r11, r1, 0x80
/* 80C1BB8C  4B 74 66 29 */	bl _savegpr_19
/* 80C1BB90  7C 79 1B 78 */	mr r25, r3
/* 80C1BB94  7C 9A 23 78 */	mr r26, r4
/* 80C1BB98  7C BB 2B 78 */	mr r27, r5
/* 80C1BB9C  7C DC 33 78 */	mr r28, r6
/* 80C1BBA0  7C FD 3B 78 */	mr r29, r7
/* 80C1BBA4  7D 1E 43 78 */	mr r30, r8
/* 80C1BBA8  3A 80 00 00 */	li r20, 0
/* 80C1BBAC  3B E0 00 00 */	li r31, 0
/* 80C1BBB0  3B 00 00 00 */	li r24, 0
/* 80C1BBB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1BBB8  3A A3 61 C0 */	addi r21, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1BBBC  48 00 00 C0 */	b lbl_80C1BC7C
lbl_80C1BBC0:
/* 80C1BBC0  7E DC C2 14 */	add r22, r28, r24
/* 80C1BBC4  80 16 00 0C */	lwz r0, 0xc(r22)
/* 80C1BBC8  7C 1E 00 00 */	cmpw r30, r0
/* 80C1BBCC  40 82 00 A8 */	bne lbl_80C1BC74
/* 80C1BBD0  C0 16 00 00 */	lfs f0, 0(r22)
/* 80C1BBD4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C1BBD8  C0 16 00 04 */	lfs f0, 4(r22)
/* 80C1BBDC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C1BBE0  C0 16 00 08 */	lfs f0, 8(r22)
/* 80C1BBE4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C1BBE8  38 79 05 E8 */	addi r3, r25, 0x5e8
/* 80C1BBEC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C1BBF0  38 A1 00 38 */	addi r5, r1, 0x38
/* 80C1BBF4  4B 72 B1 79 */	bl PSMTXMultVec
/* 80C1BBF8  C0 16 00 10 */	lfs f0, 0x10(r22)
/* 80C1BBFC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C1BC00  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C1BC04  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C1BC08  3A 60 00 00 */	li r19, 0
/* 80C1BC0C  3A E0 00 00 */	li r23, 0
/* 80C1BC10  3C 60 80 C2 */	lis r3, lit_3747@ha /* 0x80C1C5FC@ha */
/* 80C1BC14  3A C3 C5 FC */	addi r22, r3, lit_3747@l /* 0x80C1C5FC@l */
/* 80C1BC18  48 00 00 54 */	b lbl_80C1BC6C
lbl_80C1BC1C:
/* 80C1BC1C  80 75 5D 3C */	lwz r3, 0x5d3c(r21)
/* 80C1BC20  38 80 00 00 */	li r4, 0
/* 80C1BC24  90 81 00 08 */	stw r4, 8(r1)
/* 80C1BC28  38 00 FF FF */	li r0, -1
/* 80C1BC2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C1BC30  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C1BC34  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C1BC38  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C1BC3C  38 80 00 00 */	li r4, 0
/* 80C1BC40  7C BA BA 2E */	lhzx r5, r26, r23
/* 80C1BC44  38 C1 00 38 */	addi r6, r1, 0x38
/* 80C1BC48  38 E0 00 00 */	li r7, 0
/* 80C1BC4C  39 00 00 00 */	li r8, 0
/* 80C1BC50  39 21 00 20 */	addi r9, r1, 0x20
/* 80C1BC54  39 40 00 FF */	li r10, 0xff
/* 80C1BC58  C0 36 00 00 */	lfs f1, 0(r22)
/* 80C1BC5C  4B 43 0E 35 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C1BC60  3A 80 00 01 */	li r20, 1
/* 80C1BC64  3A 73 00 01 */	addi r19, r19, 1
/* 80C1BC68  3A F7 00 02 */	addi r23, r23, 2
lbl_80C1BC6C:
/* 80C1BC6C  7C 13 D8 00 */	cmpw r19, r27
/* 80C1BC70  41 80 FF AC */	blt lbl_80C1BC1C
lbl_80C1BC74:
/* 80C1BC74  3B FF 00 01 */	addi r31, r31, 1
/* 80C1BC78  3B 18 00 14 */	addi r24, r24, 0x14
lbl_80C1BC7C:
/* 80C1BC7C  7C 1F E8 00 */	cmpw r31, r29
/* 80C1BC80  41 80 FF 40 */	blt lbl_80C1BBC0
/* 80C1BC84  7E 83 A3 78 */	mr r3, r20
/* 80C1BC88  39 61 00 80 */	addi r11, r1, 0x80
/* 80C1BC8C  4B 74 65 75 */	bl _restgpr_19
/* 80C1BC90  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80C1BC94  7C 08 03 A6 */	mtlr r0
/* 80C1BC98  38 21 00 80 */	addi r1, r1, 0x80
/* 80C1BC9C  4E 80 00 20 */	blr 
