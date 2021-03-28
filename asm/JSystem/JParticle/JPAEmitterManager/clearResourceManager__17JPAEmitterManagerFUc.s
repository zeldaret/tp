lbl_8027E354:
/* 8027E354  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027E358  7C 08 02 A6 */	mflr r0
/* 8027E35C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027E360  39 61 00 20 */	addi r11, r1, 0x20
/* 8027E364  48 0E 3E 71 */	bl _savegpr_27
/* 8027E368  7C 7B 1B 78 */	mr r27, r3
/* 8027E36C  7C 9C 23 78 */	mr r28, r4
/* 8027E370  3B A0 00 00 */	li r29, 0
/* 8027E374  54 9F 06 3E */	clrlwi r31, r4, 0x18
/* 8027E378  48 00 00 44 */	b lbl_8027E3BC
lbl_8027E37C:
/* 8027E37C  80 7B 00 00 */	lwz r3, 0(r27)
/* 8027E380  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8027E384  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8027E388  7C 63 00 2E */	lwzx r3, r3, r0
/* 8027E38C  48 00 00 24 */	b lbl_8027E3B0
lbl_8027E390:
/* 8027E390  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 8027E394  80 83 00 00 */	lwz r4, 0(r3)
/* 8027E398  88 04 01 13 */	lbz r0, 0x113(r4)
/* 8027E39C  7C 1F 00 40 */	cmplw r31, r0
/* 8027E3A0  40 82 00 0C */	bne lbl_8027E3AC
/* 8027E3A4  7F 63 DB 78 */	mr r3, r27
/* 8027E3A8  4B FF FF 31 */	bl forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
lbl_8027E3AC:
/* 8027E3AC  7F C3 F3 78 */	mr r3, r30
lbl_8027E3B0:
/* 8027E3B0  28 03 00 00 */	cmplwi r3, 0
/* 8027E3B4  40 82 FF DC */	bne lbl_8027E390
/* 8027E3B8  3B BD 00 01 */	addi r29, r29, 1
lbl_8027E3BC:
/* 8027E3BC  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 8027E3C0  88 1B 00 2C */	lbz r0, 0x2c(r27)
/* 8027E3C4  7C 03 00 40 */	cmplw r3, r0
/* 8027E3C8  41 80 FF B4 */	blt lbl_8027E37C
/* 8027E3CC  38 80 00 00 */	li r4, 0
/* 8027E3D0  80 7B 00 1C */	lwz r3, 0x1c(r27)
/* 8027E3D4  57 80 15 BA */	rlwinm r0, r28, 2, 0x16, 0x1d
/* 8027E3D8  7C 83 01 2E */	stwx r4, r3, r0
/* 8027E3DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8027E3E0  48 0E 3E 41 */	bl _restgpr_27
/* 8027E3E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027E3E8  7C 08 03 A6 */	mtlr r0
/* 8027E3EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8027E3F0  4E 80 00 20 */	blr 
