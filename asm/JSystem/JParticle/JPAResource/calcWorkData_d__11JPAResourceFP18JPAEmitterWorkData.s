lbl_80276A0C:
/* 80276A0C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80276A10  7C 08 02 A6 */	mflr r0
/* 80276A14  90 01 00 44 */	stw r0, 0x44(r1)
/* 80276A18  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80276A1C  7C 9F 23 78 */	mr r31, r4
/* 80276A20  80 A4 00 00 */	lwz r5, 0(r4)
/* 80276A24  A8 05 00 4C */	lha r0, 0x4c(r5)
/* 80276A28  1C 00 00 B6 */	mulli r0, r0, 0xb6
/* 80276A2C  7C 03 07 34 */	extsh r3, r0
/* 80276A30  A8 05 00 4E */	lha r0, 0x4e(r5)
/* 80276A34  1C 00 00 B6 */	mulli r0, r0, 0xb6
/* 80276A38  7C 04 07 34 */	extsh r4, r0
/* 80276A3C  A8 05 00 50 */	lha r0, 0x50(r5)
/* 80276A40  1C 00 00 B6 */	mulli r0, r0, 0xb6
/* 80276A44  7C 05 07 34 */	extsh r5, r0
/* 80276A48  38 C1 00 08 */	addi r6, r1, 8
/* 80276A4C  48 00 9C E9 */	bl JPAGetXYZRotateMtx__FsssPA4_f
/* 80276A50  80 7F 00 00 */	lwz r3, 0(r31)
/* 80276A54  38 63 00 68 */	addi r3, r3, 0x68
/* 80276A58  38 81 00 08 */	addi r4, r1, 8
/* 80276A5C  38 BF 00 A8 */	addi r5, r31, 0xa8
/* 80276A60  48 0C FA 85 */	bl PSMTXConcat
/* 80276A64  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80276A68  80 9F 00 00 */	lwz r4, 0(r31)
/* 80276A6C  38 84 00 18 */	addi r4, r4, 0x18
/* 80276A70  38 BF 01 20 */	addi r5, r31, 0x120
/* 80276A74  48 0D 03 D9 */	bl PSMTXMultVecSR
/* 80276A78  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80276A7C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80276A80  7C 08 03 A6 */	mtlr r0
/* 80276A84  38 21 00 40 */	addi r1, r1, 0x40
/* 80276A88  4E 80 00 20 */	blr 
