lbl_80352A34:
/* 80352A34  7C 08 02 A6 */	mflr r0
/* 80352A38  1C 83 01 10 */	mulli r4, r3, 0x110
/* 80352A3C  90 01 00 04 */	stw r0, 4(r1)
/* 80352A40  3C 60 80 45 */	lis r3, __CARDBlock@ha
/* 80352A44  94 21 FF F8 */	stwu r1, -8(r1)
/* 80352A48  38 03 CB C0 */	addi r0, r3, __CARDBlock@l
/* 80352A4C  7C 60 22 14 */	add r3, r0, r4
/* 80352A50  38 63 00 8C */	addi r3, r3, 0x8c
/* 80352A54  4B FE F2 45 */	bl OSWakeupThread
/* 80352A58  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80352A5C  38 21 00 08 */	addi r1, r1, 8
/* 80352A60  7C 08 03 A6 */	mtlr r0
/* 80352A64  4E 80 00 20 */	blr 
