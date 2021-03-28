lbl_80348D54:
/* 80348D54  7C 08 02 A6 */	mflr r0
/* 80348D58  90 01 00 04 */	stw r0, 4(r1)
/* 80348D5C  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80348D60  BF 41 00 20 */	stmw r26, 0x20(r1)
/* 80348D64  7C DD 33 79 */	or. r29, r6, r6
/* 80348D68  3B 43 00 00 */	addi r26, r3, 0
/* 80348D6C  3B 64 00 00 */	addi r27, r4, 0
/* 80348D70  3B 85 00 00 */	addi r28, r5, 0
/* 80348D74  3B C7 00 00 */	addi r30, r7, 0
/* 80348D78  3B E8 00 00 */	addi r31, r8, 0
/* 80348D7C  41 80 00 10 */	blt lbl_80348D8C
/* 80348D80  80 1A 00 34 */	lwz r0, 0x34(r26)
/* 80348D84  7C 1D 00 40 */	cmplw r29, r0
/* 80348D88  40 81 00 1C */	ble lbl_80348DA4
lbl_80348D8C:
/* 80348D8C  3C 60 80 3D */	lis r3, lit_239@ha
/* 80348D90  4C C6 31 82 */	crclr 6
/* 80348D94  38 A3 14 80 */	addi r5, r3, lit_239@l
/* 80348D98  38 6D 84 60 */	la r3, lit_118(r13) /* 804509E0-_SDA_BASE_ */
/* 80348D9C  38 80 02 EE */	li r4, 0x2ee
/* 80348DA0  4B CB E0 DD */	bl OSPanic
lbl_80348DA4:
/* 80348DA4  7C 9D E2 15 */	add. r4, r29, r28
/* 80348DA8  41 80 00 14 */	blt lbl_80348DBC
/* 80348DAC  80 7A 00 34 */	lwz r3, 0x34(r26)
/* 80348DB0  38 03 00 20 */	addi r0, r3, 0x20
/* 80348DB4  7C 04 00 40 */	cmplw r4, r0
/* 80348DB8  41 80 00 1C */	blt lbl_80348DD4
lbl_80348DBC:
/* 80348DBC  3C 60 80 3D */	lis r3, lit_239@ha
/* 80348DC0  4C C6 31 82 */	crclr 6
/* 80348DC4  38 A3 14 80 */	addi r5, r3, lit_239@l
/* 80348DC8  38 6D 84 60 */	la r3, lit_118(r13) /* 804509E0-_SDA_BASE_ */
/* 80348DCC  38 80 02 F4 */	li r4, 0x2f4
/* 80348DD0  4B CB E0 AD */	bl OSPanic
lbl_80348DD4:
/* 80348DD4  93 DA 00 38 */	stw r30, 0x38(r26)
/* 80348DD8  3C 60 80 35 */	lis r3, cbForReadAsync@ha
/* 80348DDC  38 E3 8E 14 */	addi r7, r3, cbForReadAsync@l
/* 80348DE0  80 1A 00 30 */	lwz r0, 0x30(r26)
/* 80348DE4  38 7A 00 00 */	addi r3, r26, 0
/* 80348DE8  38 9B 00 00 */	addi r4, r27, 0
/* 80348DEC  38 BC 00 00 */	addi r5, r28, 0
/* 80348DF0  39 1F 00 00 */	addi r8, r31, 0
/* 80348DF4  7C C0 EA 14 */	add r6, r0, r29
/* 80348DF8  48 00 1F 35 */	bl DVDReadAbsAsyncPrio
/* 80348DFC  BB 41 00 20 */	lmw r26, 0x20(r1)
/* 80348E00  38 60 00 01 */	li r3, 1
/* 80348E04  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80348E08  38 21 00 38 */	addi r1, r1, 0x38
/* 80348E0C  7C 08 03 A6 */	mtlr r0
/* 80348E10  4E 80 00 20 */	blr 
