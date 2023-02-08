lbl_8035A748:
/* 8035A748  7C 08 02 A6 */	mflr r0
/* 8035A74C  90 01 00 04 */	stw r0, 4(r1)
/* 8035A750  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8035A754  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8035A758  3B E5 00 00 */	addi r31, r5, 0
/* 8035A75C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8035A760  3B C4 00 00 */	addi r30, r4, 0
/* 8035A764  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8035A768  3B A3 00 00 */	addi r29, r3, 0
/* 8035A76C  4B FE 2F 89 */	bl OSDisableInterrupts
/* 8035A770  93 DD 00 14 */	stw r30, 0x14(r29)
/* 8035A774  7C 1E F8 50 */	subf r0, r30, r31
/* 8035A778  93 FD 00 18 */	stw r31, 0x18(r29)
/* 8035A77C  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 8035A780  80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 8035A784  2C 04 00 00 */	cmpwi r4, 0
/* 8035A788  40 80 00 10 */	bge lbl_8035A798
/* 8035A78C  80 1D 00 08 */	lwz r0, 8(r29)
/* 8035A790  7C 04 02 14 */	add r0, r4, r0
/* 8035A794  90 1D 00 1C */	stw r0, 0x1c(r29)
lbl_8035A798:
/* 8035A798  4B FE 2F 85 */	bl OSRestoreInterrupts
/* 8035A79C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8035A7A0  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8035A7A4  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8035A7A8  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8035A7AC  38 21 00 28 */	addi r1, r1, 0x28
/* 8035A7B0  7C 08 03 A6 */	mtlr r0
/* 8035A7B4  4E 80 00 20 */	blr 
