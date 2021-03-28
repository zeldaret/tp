lbl_803522D4:
/* 803522D4  7C 08 02 A6 */	mflr r0
/* 803522D8  28 0A 00 00 */	cmplwi r10, 0
/* 803522DC  90 01 00 04 */	stw r0, 4(r1)
/* 803522E0  38 00 00 00 */	li r0, 0
/* 803522E4  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 803522E8  93 E1 00 34 */	stw r31, 0x34(r1)
/* 803522EC  93 C1 00 30 */	stw r30, 0x30(r1)
/* 803522F0  3B C6 00 00 */	addi r30, r6, 0
/* 803522F4  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 803522F8  3B A3 00 00 */	addi r29, r3, 0
/* 803522FC  90 03 00 00 */	stw r0, 0(r3)
/* 80352300  90 83 00 04 */	stw r4, 4(r3)
/* 80352304  90 A3 00 08 */	stw r5, 8(r3)
/* 80352308  90 E3 00 10 */	stw r7, 0x10(r3)
/* 8035230C  91 03 00 14 */	stw r8, 0x14(r3)
/* 80352310  91 23 00 18 */	stw r9, 0x18(r3)
/* 80352314  41 82 00 0C */	beq lbl_80352320
/* 80352318  91 5D 00 1C */	stw r10, 0x1c(r29)
/* 8035231C  48 00 00 10 */	b lbl_8035232C
lbl_80352320:
/* 80352320  3C 60 80 35 */	lis r3, __ARQCallbackHack@ha
/* 80352324  38 03 21 94 */	addi r0, r3, __ARQCallbackHack@l
/* 80352328  90 1D 00 1C */	stw r0, 0x1c(r29)
lbl_8035232C:
/* 8035232C  4B FE B3 C9 */	bl OSDisableInterrupts
/* 80352330  2C 1E 00 01 */	cmpwi r30, 1
/* 80352334  3B E3 00 00 */	addi r31, r3, 0
/* 80352338  41 82 00 38 */	beq lbl_80352370
/* 8035233C  40 80 00 54 */	bge lbl_80352390
/* 80352340  2C 1E 00 00 */	cmpwi r30, 0
/* 80352344  40 80 00 08 */	bge lbl_8035234C
/* 80352348  48 00 00 48 */	b lbl_80352390
lbl_8035234C:
/* 8035234C  80 0D 93 60 */	lwz r0, __ARQRequestQueueLo(r13)
/* 80352350  28 00 00 00 */	cmplwi r0, 0
/* 80352354  41 82 00 10 */	beq lbl_80352364
/* 80352358  80 6D 93 64 */	lwz r3, __ARQRequestTailLo(r13)
/* 8035235C  93 A3 00 00 */	stw r29, 0(r3)
/* 80352360  48 00 00 08 */	b lbl_80352368
lbl_80352364:
/* 80352364  93 AD 93 60 */	stw r29, __ARQRequestQueueLo(r13)
lbl_80352368:
/* 80352368  93 AD 93 64 */	stw r29, __ARQRequestTailLo(r13)
/* 8035236C  48 00 00 24 */	b lbl_80352390
lbl_80352370:
/* 80352370  80 0D 93 58 */	lwz r0, __ARQRequestQueueHi(r13)
/* 80352374  28 00 00 00 */	cmplwi r0, 0
/* 80352378  41 82 00 10 */	beq lbl_80352388
/* 8035237C  80 6D 93 5C */	lwz r3, __ARQRequestTailHi(r13)
/* 80352380  93 A3 00 00 */	stw r29, 0(r3)
/* 80352384  48 00 00 08 */	b lbl_8035238C
lbl_80352388:
/* 80352388  93 AD 93 58 */	stw r29, __ARQRequestQueueHi(r13)
lbl_8035238C:
/* 8035238C  93 AD 93 5C */	stw r29, __ARQRequestTailHi(r13)
lbl_80352390:
/* 80352390  80 0D 93 68 */	lwz r0, __ARQRequestPendingHi(r13)
/* 80352394  28 00 00 00 */	cmplwi r0, 0
/* 80352398  40 82 00 74 */	bne lbl_8035240C
/* 8035239C  80 0D 93 6C */	lwz r0, __ARQRequestPendingLo(r13)
/* 803523A0  28 00 00 00 */	cmplwi r0, 0
/* 803523A4  40 82 00 68 */	bne lbl_8035240C
/* 803523A8  80 CD 93 58 */	lwz r6, __ARQRequestQueueHi(r13)
/* 803523AC  28 06 00 00 */	cmplwi r6, 0
/* 803523B0  41 82 00 4C */	beq lbl_803523FC
/* 803523B4  80 66 00 08 */	lwz r3, 8(r6)
/* 803523B8  28 03 00 00 */	cmplwi r3, 0
/* 803523BC  40 82 00 18 */	bne lbl_803523D4
/* 803523C0  80 86 00 10 */	lwz r4, 0x10(r6)
/* 803523C4  80 A6 00 14 */	lwz r5, 0x14(r6)
/* 803523C8  80 C6 00 18 */	lwz r6, 0x18(r6)
/* 803523CC  4B FF E2 09 */	bl ARStartDMA
/* 803523D0  48 00 00 14 */	b lbl_803523E4
lbl_803523D4:
/* 803523D4  80 86 00 14 */	lwz r4, 0x14(r6)
/* 803523D8  80 A6 00 10 */	lwz r5, 0x10(r6)
/* 803523DC  80 C6 00 18 */	lwz r6, 0x18(r6)
/* 803523E0  4B FF E1 F5 */	bl ARStartDMA
lbl_803523E4:
/* 803523E4  80 6D 93 58 */	lwz r3, __ARQRequestQueueHi(r13)
/* 803523E8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 803523EC  90 0D 93 70 */	stw r0, __ARQCallbackHi(r13)
/* 803523F0  90 6D 93 68 */	stw r3, __ARQRequestPendingHi(r13)
/* 803523F4  80 03 00 00 */	lwz r0, 0(r3)
/* 803523F8  90 0D 93 58 */	stw r0, __ARQRequestQueueHi(r13)
lbl_803523FC:
/* 803523FC  80 0D 93 68 */	lwz r0, __ARQRequestPendingHi(r13)
/* 80352400  28 00 00 00 */	cmplwi r0, 0
/* 80352404  40 82 00 08 */	bne lbl_8035240C
/* 80352408  4B FF FC 8D */	bl __ARQServiceQueueLo
lbl_8035240C:
/* 8035240C  7F E3 FB 78 */	mr r3, r31
/* 80352410  4B FE B3 0D */	bl OSRestoreInterrupts
/* 80352414  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80352418  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 8035241C  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 80352420  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 80352424  38 21 00 38 */	addi r1, r1, 0x38
/* 80352428  7C 08 03 A6 */	mtlr r0
/* 8035242C  4E 80 00 20 */	blr 
