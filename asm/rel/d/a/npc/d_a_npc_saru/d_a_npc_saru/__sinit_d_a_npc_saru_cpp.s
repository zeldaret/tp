lbl_80AC42E0:
/* 80AC42E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC42E4  7C 08 02 A6 */	mflr r0
/* 80AC42E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC42EC  3C 60 80 AC */	lis r3, cNullVec__6Z2Calc@ha
/* 80AC42F0  38 A3 46 A4 */	addi r5, r3, cNullVec__6Z2Calc@l
/* 80AC42F4  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80AC42F8  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80AC42FC  80 64 00 00 */	lwz r3, 0(r4)
/* 80AC4300  80 04 00 04 */	lwz r0, 4(r4)
/* 80AC4304  90 65 07 20 */	stw r3, 0x720(r5)
/* 80AC4308  90 05 07 24 */	stw r0, 0x724(r5)
/* 80AC430C  80 04 00 08 */	lwz r0, 8(r4)
/* 80AC4310  90 05 07 28 */	stw r0, 0x728(r5)
/* 80AC4314  38 85 07 20 */	addi r4, r5, 0x720
/* 80AC4318  80 65 06 FC */	lwz r3, 0x6fc(r5)
/* 80AC431C  80 05 07 00 */	lwz r0, 0x700(r5)
/* 80AC4320  90 64 00 0C */	stw r3, 0xc(r4)
/* 80AC4324  90 04 00 10 */	stw r0, 0x10(r4)
/* 80AC4328  80 05 07 04 */	lwz r0, 0x704(r5)
/* 80AC432C  90 04 00 14 */	stw r0, 0x14(r4)
/* 80AC4330  80 65 07 08 */	lwz r3, 0x708(r5)
/* 80AC4334  80 05 07 0C */	lwz r0, 0x70c(r5)
/* 80AC4338  90 64 00 18 */	stw r3, 0x18(r4)
/* 80AC433C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80AC4340  80 05 07 10 */	lwz r0, 0x710(r5)
/* 80AC4344  90 04 00 20 */	stw r0, 0x20(r4)
/* 80AC4348  80 65 07 14 */	lwz r3, 0x714(r5)
/* 80AC434C  80 05 07 18 */	lwz r0, 0x718(r5)
/* 80AC4350  90 64 00 24 */	stw r3, 0x24(r4)
/* 80AC4354  90 04 00 28 */	stw r0, 0x28(r4)
/* 80AC4358  80 05 07 1C */	lwz r0, 0x71c(r5)
/* 80AC435C  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80AC4360  3C 60 80 AC */	lis r3, __vt__18daNpc_Saru_Param_c@ha
/* 80AC4364  38 03 4F D4 */	addi r0, r3, __vt__18daNpc_Saru_Param_c@l
/* 80AC4368  3C 60 80 AC */	lis r3, l_HIO@ha
/* 80AC436C  94 03 4F F4 */	stwu r0, l_HIO@l(r3)
/* 80AC4370  3C 80 80 AC */	lis r4, __dt__18daNpc_Saru_Param_cFv@ha
/* 80AC4374  38 84 44 8C */	addi r4, r4, __dt__18daNpc_Saru_Param_cFv@l
/* 80AC4378  3C A0 80 AC */	lis r5, lit_3845@ha
/* 80AC437C  38 A5 4F E8 */	addi r5, r5, lit_3845@l
/* 80AC4380  4B FF C0 39 */	bl __register_global_object
/* 80AC4384  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC4388  7C 08 03 A6 */	mtlr r0
/* 80AC438C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC4390  4E 80 00 20 */	blr 
