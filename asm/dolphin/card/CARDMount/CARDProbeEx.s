lbl_80356A4C:
/* 80356A4C  7C 08 02 A6 */	mflr r0
/* 80356A50  90 01 00 04 */	stw r0, 4(r1)
/* 80356A54  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80356A58  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 80356A5C  7C 7B 1B 79 */	or. r27, r3, r3
/* 80356A60  3B 84 00 00 */	addi r28, r4, 0
/* 80356A64  3B E5 00 00 */	addi r31, r5, 0
/* 80356A68  41 80 00 0C */	blt lbl_80356A74
/* 80356A6C  2C 1B 00 02 */	cmpwi r27, 2
/* 80356A70  41 80 00 0C */	blt lbl_80356A7C
lbl_80356A74:
/* 80356A74  38 60 FF 80 */	li r3, -128
/* 80356A78  48 00 01 3C */	b lbl_80356BB4
lbl_80356A7C:
/* 80356A7C  3C 60 80 00 */	lis r3, 0x8000 /* 0x800030E3@ha */
/* 80356A80  88 03 30 E3 */	lbz r0, 0x30E3(r3)
/* 80356A84  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80356A88  41 82 00 0C */	beq lbl_80356A94
/* 80356A8C  38 60 FF FD */	li r3, -3
/* 80356A90  48 00 01 24 */	b lbl_80356BB4
lbl_80356A94:
/* 80356A94  1C 9B 01 10 */	mulli r4, r27, 0x110
/* 80356A98  3C 60 80 45 */	lis r3, __CARDBlock@ha
/* 80356A9C  38 03 CB C0 */	addi r0, r3, __CARDBlock@l
/* 80356AA0  7F C0 22 14 */	add r30, r0, r4
/* 80356AA4  4B FE 6C 51 */	bl OSDisableInterrupts
/* 80356AA8  3B A3 00 00 */	addi r29, r3, 0
/* 80356AAC  38 7B 00 00 */	addi r3, r27, 0
/* 80356AB0  4B FE CB 3D */	bl EXIProbeEx
/* 80356AB4  2C 03 FF FF */	cmpwi r3, -1
/* 80356AB8  40 82 00 0C */	bne lbl_80356AC4
/* 80356ABC  3B C0 FF FD */	li r30, -3
/* 80356AC0  48 00 00 E8 */	b lbl_80356BA8
lbl_80356AC4:
/* 80356AC4  2C 03 00 00 */	cmpwi r3, 0
/* 80356AC8  40 82 00 0C */	bne lbl_80356AD4
/* 80356ACC  3B C0 FF FF */	li r30, -1
/* 80356AD0  48 00 00 D8 */	b lbl_80356BA8
lbl_80356AD4:
/* 80356AD4  80 1E 00 00 */	lwz r0, 0(r30)
/* 80356AD8  2C 00 00 00 */	cmpwi r0, 0
/* 80356ADC  41 82 00 40 */	beq lbl_80356B1C
/* 80356AE0  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 80356AE4  2C 00 00 01 */	cmpwi r0, 1
/* 80356AE8  40 80 00 0C */	bge lbl_80356AF4
/* 80356AEC  3B C0 FF FF */	li r30, -1
/* 80356AF0  48 00 00 B8 */	b lbl_80356BA8
lbl_80356AF4:
/* 80356AF4  28 1C 00 00 */	cmplwi r28, 0
/* 80356AF8  41 82 00 0C */	beq lbl_80356B04
/* 80356AFC  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80356B00  90 1C 00 00 */	stw r0, 0(r28)
lbl_80356B04:
/* 80356B04  28 1F 00 00 */	cmplwi r31, 0
/* 80356B08  41 82 00 0C */	beq lbl_80356B14
/* 80356B0C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80356B10  90 1F 00 00 */	stw r0, 0(r31)
lbl_80356B14:
/* 80356B14  3B C0 00 00 */	li r30, 0
/* 80356B18  48 00 00 90 */	b lbl_80356BA8
lbl_80356B1C:
/* 80356B1C  7F 63 DB 78 */	mr r3, r27
/* 80356B20  4B FE D6 D9 */	bl EXIGetState
/* 80356B24  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80356B28  41 82 00 0C */	beq lbl_80356B34
/* 80356B2C  3B C0 FF FE */	li r30, -2
/* 80356B30  48 00 00 78 */	b lbl_80356BA8
lbl_80356B34:
/* 80356B34  38 7B 00 00 */	addi r3, r27, 0
/* 80356B38  38 A1 00 14 */	addi r5, r1, 0x14
/* 80356B3C  38 80 00 00 */	li r4, 0
/* 80356B40  4B FE D6 F9 */	bl EXIGetID
/* 80356B44  2C 03 00 00 */	cmpwi r3, 0
/* 80356B48  40 82 00 0C */	bne lbl_80356B54
/* 80356B4C  3B C0 FF FF */	li r30, -1
/* 80356B50  48 00 00 58 */	b lbl_80356BA8
lbl_80356B54:
/* 80356B54  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80356B58  4B FF FD F1 */	bl IsCard
/* 80356B5C  2C 03 00 00 */	cmpwi r3, 0
/* 80356B60  41 82 00 44 */	beq lbl_80356BA4
/* 80356B64  28 1C 00 00 */	cmplwi r28, 0
/* 80356B68  41 82 00 10 */	beq lbl_80356B78
/* 80356B6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80356B70  54 00 06 3A */	rlwinm r0, r0, 0, 0x18, 0x1d
/* 80356B74  90 1C 00 00 */	stw r0, 0(r28)
lbl_80356B78:
/* 80356B78  28 1F 00 00 */	cmplwi r31, 0
/* 80356B7C  41 82 00 20 */	beq lbl_80356B9C
/* 80356B80  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80356B84  3C 60 80 3D */	lis r3, SectorSizeTable@ha
/* 80356B88  38 03 20 00 */	addi r0, r3, SectorSizeTable@l
/* 80356B8C  54 83 BE FA */	rlwinm r3, r4, 0x17, 0x1b, 0x1d
/* 80356B90  7C 60 1A 14 */	add r3, r0, r3
/* 80356B94  80 03 00 00 */	lwz r0, 0(r3)
/* 80356B98  90 1F 00 00 */	stw r0, 0(r31)
lbl_80356B9C:
/* 80356B9C  3B C0 00 00 */	li r30, 0
/* 80356BA0  48 00 00 08 */	b lbl_80356BA8
lbl_80356BA4:
/* 80356BA4  3B C0 FF FE */	li r30, -2
lbl_80356BA8:
/* 80356BA8  7F A3 EB 78 */	mr r3, r29
/* 80356BAC  4B FE 6B 71 */	bl OSRestoreInterrupts
/* 80356BB0  7F C3 F3 78 */	mr r3, r30
lbl_80356BB4:
/* 80356BB4  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 80356BB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80356BBC  38 21 00 30 */	addi r1, r1, 0x30
/* 80356BC0  7C 08 03 A6 */	mtlr r0
/* 80356BC4  4E 80 00 20 */	blr 
