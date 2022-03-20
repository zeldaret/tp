lbl_80372F94:
/* 80372F94  7C 08 02 A6 */	mflr r0
/* 80372F98  90 01 00 04 */	stw r0, 4(r1)
/* 80372F9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80372FA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80372FA4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80372FA8  3B C4 00 00 */	addi r30, r4, 0
/* 80372FAC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80372FB0  3B A3 00 00 */	addi r29, r3, 0
/* 80372FB4  4B FC A7 41 */	bl OSDisableInterrupts
/* 80372FB8  80 0D 94 58 */	lwz r0, SendMailData(r13)
/* 80372FBC  3B E3 00 00 */	addi r31, r3, 0
/* 80372FC0  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 80372FC4  41 82 00 0C */	beq lbl_80372FD0
/* 80372FC8  38 60 10 00 */	li r3, 0x1000
/* 80372FCC  48 00 00 08 */	b lbl_80372FD4
lbl_80372FD0:
/* 80372FD0  38 60 00 00 */	li r3, 0
lbl_80372FD4:
/* 80372FD4  3C 63 00 02 */	addis r3, r3, 2
/* 80372FD8  38 1E 00 03 */	addi r0, r30, 3
/* 80372FDC  38 9D 00 00 */	addi r4, r29, 0
/* 80372FE0  54 05 00 3A */	rlwinm r5, r0, 0, 0, 0x1d
/* 80372FE4  38 63 E0 00 */	addi r3, r3, -8192
/* 80372FE8  48 00 03 A5 */	bl DBGRead
/* 80372FEC  38 00 00 00 */	li r0, 0
/* 80372FF0  90 0D 94 5C */	stw r0, RecvDataLeng(r13)
/* 80372FF4  7F E3 FB 78 */	mr r3, r31
/* 80372FF8  98 0D 94 64 */	stb r0, data_804519E4(r13)
/* 80372FFC  4B FC A7 21 */	bl OSRestoreInterrupts
/* 80373000  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80373004  38 60 00 00 */	li r3, 0
/* 80373008  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037300C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80373010  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80373014  38 21 00 20 */	addi r1, r1, 0x20
/* 80373018  7C 08 03 A6 */	mtlr r0
/* 8037301C  4E 80 00 20 */	blr 
