lbl_80271A08:
/* 80271A08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80271A0C  7C 08 02 A6 */	mflr r0
/* 80271A10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80271A14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80271A18  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80271A1C  7C 7E 1B 78 */	mr r30, r3
/* 80271A20  7C BF 2B 78 */	mr r31, r5
/* 80271A24  D0 23 00 00 */	stfs f1, 0(r3)
/* 80271A28  38 61 00 0C */	addi r3, r1, 0xc
/* 80271A2C  A8 84 00 00 */	lha r4, 0(r4)
/* 80271A30  4B FF F5 69 */	bl __ct__7cSAngleFs
/* 80271A34  A8 01 00 0C */	lha r0, 0xc(r1)
/* 80271A38  B0 1E 00 04 */	sth r0, 4(r30)
/* 80271A3C  38 61 00 08 */	addi r3, r1, 8
/* 80271A40  A8 9F 00 00 */	lha r4, 0(r31)
/* 80271A44  4B FF F5 55 */	bl __ct__7cSAngleFs
/* 80271A48  A8 01 00 08 */	lha r0, 8(r1)
/* 80271A4C  B0 1E 00 06 */	sth r0, 6(r30)
/* 80271A50  7F C3 F3 78 */	mr r3, r30
/* 80271A54  4B FF FE 5D */	bl Formal__7cSGlobeFv
/* 80271A58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80271A5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80271A60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80271A64  7C 08 03 A6 */	mtlr r0
/* 80271A68  38 21 00 20 */	addi r1, r1, 0x20
/* 80271A6C  4E 80 00 20 */	blr 
