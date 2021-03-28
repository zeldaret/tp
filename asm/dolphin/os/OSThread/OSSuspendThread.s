lbl_80341A3C:
/* 80341A3C  7C 08 02 A6 */	mflr r0
/* 80341A40  90 01 00 04 */	stw r0, 4(r1)
/* 80341A44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80341A48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80341A4C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80341A50  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80341A54  7C 7D 1B 78 */	mr r29, r3
/* 80341A58  4B FF BC 9D */	bl OSDisableInterrupts
/* 80341A5C  80 9D 02 CC */	lwz r4, 0x2cc(r29)
/* 80341A60  3B E3 00 00 */	addi r31, r3, 0
/* 80341A64  38 04 00 01 */	addi r0, r4, 1
/* 80341A68  7C 9E 23 79 */	or. r30, r4, r4
/* 80341A6C  90 1D 02 CC */	stw r0, 0x2cc(r29)
/* 80341A70  40 82 01 14 */	bne lbl_80341B84
/* 80341A74  A0 1D 02 C8 */	lhz r0, 0x2c8(r29)
/* 80341A78  2C 00 00 03 */	cmpwi r0, 3
/* 80341A7C  41 82 00 F4 */	beq lbl_80341B70
/* 80341A80  40 80 00 14 */	bge lbl_80341A94
/* 80341A84  2C 00 00 01 */	cmpwi r0, 1
/* 80341A88  41 82 00 28 */	beq lbl_80341AB0
/* 80341A8C  40 80 00 14 */	bge lbl_80341AA0
/* 80341A90  48 00 00 E0 */	b lbl_80341B70
lbl_80341A94:
/* 80341A94  2C 00 00 05 */	cmpwi r0, 5
/* 80341A98  40 80 00 D8 */	bge lbl_80341B70
/* 80341A9C  48 00 00 20 */	b lbl_80341ABC
lbl_80341AA0:
/* 80341AA0  38 00 00 01 */	li r0, 1
/* 80341AA4  90 0D 91 44 */	stw r0, RunQueueHint(r13)
/* 80341AA8  B0 1D 02 C8 */	sth r0, 0x2c8(r29)
/* 80341AAC  48 00 00 C4 */	b lbl_80341B70
lbl_80341AB0:
/* 80341AB0  7F A3 EB 78 */	mr r3, r29
/* 80341AB4  4B FF F2 91 */	bl UnsetRun
/* 80341AB8  48 00 00 B8 */	b lbl_80341B70
lbl_80341ABC:
/* 80341ABC  80 9D 02 E0 */	lwz r4, 0x2e0(r29)
/* 80341AC0  80 BD 02 E4 */	lwz r5, 0x2e4(r29)
/* 80341AC4  28 04 00 00 */	cmplwi r4, 0
/* 80341AC8  40 82 00 10 */	bne lbl_80341AD8
/* 80341ACC  80 7D 02 DC */	lwz r3, 0x2dc(r29)
/* 80341AD0  90 A3 00 04 */	stw r5, 4(r3)
/* 80341AD4  48 00 00 08 */	b lbl_80341ADC
lbl_80341AD8:
/* 80341AD8  90 A4 02 E4 */	stw r5, 0x2e4(r4)
lbl_80341ADC:
/* 80341ADC  28 05 00 00 */	cmplwi r5, 0
/* 80341AE0  40 82 00 10 */	bne lbl_80341AF0
/* 80341AE4  80 7D 02 DC */	lwz r3, 0x2dc(r29)
/* 80341AE8  90 83 00 00 */	stw r4, 0(r3)
/* 80341AEC  48 00 00 08 */	b lbl_80341AF4
lbl_80341AF0:
/* 80341AF0  90 85 02 E0 */	stw r4, 0x2e0(r5)
lbl_80341AF4:
/* 80341AF4  38 00 00 20 */	li r0, 0x20
/* 80341AF8  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 80341AFC  80 9D 02 DC */	lwz r4, 0x2dc(r29)
/* 80341B00  80 64 00 04 */	lwz r3, 4(r4)
/* 80341B04  28 03 00 00 */	cmplwi r3, 0
/* 80341B08  40 82 00 0C */	bne lbl_80341B14
/* 80341B0C  93 A4 00 00 */	stw r29, 0(r4)
/* 80341B10  48 00 00 08 */	b lbl_80341B18
lbl_80341B14:
/* 80341B14  93 A3 02 E0 */	stw r29, 0x2e0(r3)
lbl_80341B18:
/* 80341B18  90 7D 02 E4 */	stw r3, 0x2e4(r29)
/* 80341B1C  38 00 00 00 */	li r0, 0
/* 80341B20  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 80341B24  80 7D 02 DC */	lwz r3, 0x2dc(r29)
/* 80341B28  93 A3 00 04 */	stw r29, 4(r3)
/* 80341B2C  80 7D 02 F0 */	lwz r3, 0x2f0(r29)
/* 80341B30  28 03 00 00 */	cmplwi r3, 0
/* 80341B34  41 82 00 3C */	beq lbl_80341B70
/* 80341B38  83 A3 00 08 */	lwz r29, 8(r3)
lbl_80341B3C:
/* 80341B3C  80 1D 02 CC */	lwz r0, 0x2cc(r29)
/* 80341B40  2C 00 00 00 */	cmpwi r0, 0
/* 80341B44  41 81 00 2C */	bgt lbl_80341B70
/* 80341B48  7F A3 EB 78 */	mr r3, r29
/* 80341B4C  4B FF F2 61 */	bl __OSGetEffectivePriority
/* 80341B50  80 1D 02 D0 */	lwz r0, 0x2d0(r29)
/* 80341B54  38 83 00 00 */	addi r4, r3, 0
/* 80341B58  7C 00 20 00 */	cmpw r0, r4
/* 80341B5C  41 82 00 14 */	beq lbl_80341B70
/* 80341B60  7F A3 EB 78 */	mr r3, r29
/* 80341B64  4B FF F2 85 */	bl SetEffectivePriority
/* 80341B68  7C 7D 1B 79 */	or. r29, r3, r3
/* 80341B6C  40 82 FF D0 */	bne lbl_80341B3C
lbl_80341B70:
/* 80341B70  80 0D 91 44 */	lwz r0, RunQueueHint(r13)
/* 80341B74  2C 00 00 00 */	cmpwi r0, 0
/* 80341B78  41 82 00 0C */	beq lbl_80341B84
/* 80341B7C  38 60 00 00 */	li r3, 0
/* 80341B80  4B FF F4 79 */	bl SelectThread
lbl_80341B84:
/* 80341B84  7F E3 FB 78 */	mr r3, r31
/* 80341B88  4B FF BB 95 */	bl OSRestoreInterrupts
/* 80341B8C  7F C3 F3 78 */	mr r3, r30
/* 80341B90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80341B94  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80341B98  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80341B9C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80341BA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80341BA4  7C 08 03 A6 */	mtlr r0
/* 80341BA8  4E 80 00 20 */	blr 
