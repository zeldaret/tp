lbl_80352A68:
/* 80352A68  7C 08 02 A6 */	mflr r0
/* 80352A6C  90 01 00 04 */	stw r0, 4(r1)
/* 80352A70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80352A74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80352A78  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80352A7C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80352A80  3B A3 00 00 */	addi r29, r3, 0
/* 80352A84  1C 9D 01 10 */	mulli r4, r29, 0x110
/* 80352A88  3C 60 80 45 */	lis r3, __CARDBlock@ha /* 0x8044CBC0@ha */
/* 80352A8C  38 03 CB C0 */	addi r0, r3, __CARDBlock@l /* 0x8044CBC0@l */
/* 80352A90  7F C0 22 14 */	add r30, r0, r4
/* 80352A94  80 1E 00 00 */	lwz r0, 0(r30)
/* 80352A98  2C 00 00 00 */	cmpwi r0, 0
/* 80352A9C  41 82 00 88 */	beq lbl_80352B24
/* 80352AA0  3B E0 00 00 */	li r31, 0
/* 80352AA4  93 FE 00 00 */	stw r31, 0(r30)
/* 80352AA8  38 7D 00 00 */	addi r3, r29, 0
/* 80352AAC  38 80 00 00 */	li r4, 0
/* 80352AB0  4B FF 08 CD */	bl EXISetExiCallback
/* 80352AB4  38 7E 00 E0 */	addi r3, r30, 0xe0
/* 80352AB8  4B FE 81 85 */	bl OSCancelAlarm
/* 80352ABC  80 1E 00 CC */	lwz r0, 0xcc(r30)
/* 80352AC0  28 00 00 00 */	cmplwi r0, 0
/* 80352AC4  7C 0C 03 78 */	mr r12, r0
/* 80352AC8  41 82 00 18 */	beq lbl_80352AE0
/* 80352ACC  93 FE 00 CC */	stw r31, 0xcc(r30)
/* 80352AD0  7D 88 03 A6 */	mtlr r12
/* 80352AD4  38 7D 00 00 */	addi r3, r29, 0
/* 80352AD8  38 80 FF FD */	li r4, -3
/* 80352ADC  4E 80 00 21 */	blrl 
lbl_80352AE0:
/* 80352AE0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80352AE4  2C 00 FF FF */	cmpwi r0, -1
/* 80352AE8  41 82 00 0C */	beq lbl_80352AF4
/* 80352AEC  38 00 FF FD */	li r0, -3
/* 80352AF0  90 1E 00 04 */	stw r0, 4(r30)
lbl_80352AF4:
/* 80352AF4  81 9E 00 C4 */	lwz r12, 0xc4(r30)
/* 80352AF8  28 0C 00 00 */	cmplwi r12, 0
/* 80352AFC  41 82 00 28 */	beq lbl_80352B24
/* 80352B00  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 80352B04  2C 00 00 07 */	cmpwi r0, 7
/* 80352B08  41 80 00 1C */	blt lbl_80352B24
/* 80352B0C  38 00 00 00 */	li r0, 0
/* 80352B10  7D 88 03 A6 */	mtlr r12
/* 80352B14  90 1E 00 C4 */	stw r0, 0xc4(r30)
/* 80352B18  38 7D 00 00 */	addi r3, r29, 0
/* 80352B1C  38 80 FF FD */	li r4, -3
/* 80352B20  4E 80 00 21 */	blrl 
lbl_80352B24:
/* 80352B24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80352B28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80352B2C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80352B30  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80352B34  38 21 00 20 */	addi r1, r1, 0x20
/* 80352B38  7C 08 03 A6 */	mtlr r0
/* 80352B3C  4E 80 00 20 */	blr 
