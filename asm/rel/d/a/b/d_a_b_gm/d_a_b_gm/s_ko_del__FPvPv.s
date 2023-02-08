lbl_805EE05C:
/* 805EE05C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EE060  7C 08 02 A6 */	mflr r0
/* 805EE064  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EE068  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EE06C  7C 7F 1B 78 */	mr r31, r3
/* 805EE070  4B A2 AC 71 */	bl fopAc_IsActor__FPv
/* 805EE074  2C 03 00 00 */	cmpwi r3, 0
/* 805EE078  41 82 00 24 */	beq lbl_805EE09C
/* 805EE07C  A8 1F 00 08 */	lha r0, 8(r31)
/* 805EE080  2C 00 01 BB */	cmpwi r0, 0x1bb
/* 805EE084  40 82 00 18 */	bne lbl_805EE09C
/* 805EE088  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805EE08C  28 00 00 00 */	cmplwi r0, 0
/* 805EE090  40 82 00 0C */	bne lbl_805EE09C
/* 805EE094  38 00 00 01 */	li r0, 1
/* 805EE098  98 1F 0A 76 */	stb r0, 0xa76(r31)
lbl_805EE09C:
/* 805EE09C  38 60 00 00 */	li r3, 0
/* 805EE0A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EE0A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EE0A8  7C 08 03 A6 */	mtlr r0
/* 805EE0AC  38 21 00 10 */	addi r1, r1, 0x10
/* 805EE0B0  4E 80 00 20 */	blr 
