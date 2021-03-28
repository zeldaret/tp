lbl_802F9280:
/* 802F9280  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F9284  7C 08 02 A6 */	mflr r0
/* 802F9288  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F928C  39 61 00 30 */	addi r11, r1, 0x30
/* 802F9290  48 06 8F 45 */	bl _savegpr_27
/* 802F9294  7C 9B 23 78 */	mr r27, r4
/* 802F9298  7C BC 2B 78 */	mr r28, r5
/* 802F929C  7F 63 DB 78 */	mr r3, r27
/* 802F92A0  81 9B 00 00 */	lwz r12, 0(r27)
/* 802F92A4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802F92A8  7D 89 03 A6 */	mtctr r12
/* 802F92AC  4E 80 04 21 */	bctrl 
/* 802F92B0  7C 7F 1B 78 */	mr r31, r3
/* 802F92B4  7F 63 DB 78 */	mr r3, r27
/* 802F92B8  38 80 00 04 */	li r4, 4
/* 802F92BC  81 9B 00 00 */	lwz r12, 0(r27)
/* 802F92C0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802F92C4  7D 89 03 A6 */	mtctr r12
/* 802F92C8  4E 80 04 21 */	bctrl 
/* 802F92CC  7F 63 DB 78 */	mr r3, r27
/* 802F92D0  38 81 00 0C */	addi r4, r1, 0xc
/* 802F92D4  38 A0 00 04 */	li r5, 4
/* 802F92D8  4B FE 2F C1 */	bl read__14JSUInputStreamFPvl
/* 802F92DC  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 802F92E0  7F 63 DB 78 */	mr r3, r27
/* 802F92E4  38 80 00 04 */	li r4, 4
/* 802F92E8  81 9B 00 00 */	lwz r12, 0(r27)
/* 802F92EC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802F92F0  7D 89 03 A6 */	mtctr r12
/* 802F92F4  4E 80 04 21 */	bctrl 
/* 802F92F8  7F 63 DB 78 */	mr r3, r27
/* 802F92FC  38 81 00 08 */	addi r4, r1, 8
/* 802F9300  38 A0 00 04 */	li r5, 4
/* 802F9304  4B FE 2F 95 */	bl read__14JSUInputStreamFPvl
/* 802F9308  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F930C  7F 63 DB 78 */	mr r3, r27
/* 802F9310  7C 9F F2 14 */	add r4, r31, r30
/* 802F9314  38 A0 00 00 */	li r5, 0
/* 802F9318  4B FE 31 C5 */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 802F931C  7F BE E8 50 */	subf r29, r30, r29
/* 802F9320  57 80 02 DF */	rlwinm. r0, r28, 0, 0xb, 0xf
/* 802F9324  41 82 00 14 */	beq lbl_802F9338
/* 802F9328  7F A3 EB 78 */	mr r3, r29
/* 802F932C  4B FD 59 99 */	bl __nwa__FUl
/* 802F9330  7C 64 1B 78 */	mr r4, r3
/* 802F9334  48 00 00 14 */	b lbl_802F9348
lbl_802F9338:
/* 802F9338  7F A3 EB 78 */	mr r3, r29
/* 802F933C  38 80 FF FC */	li r4, -4
/* 802F9340  4B FD 59 AD */	bl __nwa__FUli
/* 802F9344  7C 64 1B 78 */	mr r4, r3
lbl_802F9348:
/* 802F9348  7C 9E 23 78 */	mr r30, r4
/* 802F934C  28 04 00 00 */	cmplwi r4, 0
/* 802F9350  41 82 00 10 */	beq lbl_802F9360
/* 802F9354  7F 63 DB 78 */	mr r3, r27
/* 802F9358  7F A5 EB 78 */	mr r5, r29
/* 802F935C  4B FE 2F 3D */	bl read__14JSUInputStreamFPvl
lbl_802F9360:
/* 802F9360  7F C3 F3 78 */	mr r3, r30
/* 802F9364  39 61 00 30 */	addi r11, r1, 0x30
/* 802F9368  48 06 8E B9 */	bl _restgpr_27
/* 802F936C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F9370  7C 08 03 A6 */	mtlr r0
/* 802F9374  38 21 00 30 */	addi r1, r1, 0x30
/* 802F9378  4E 80 00 20 */	blr 
