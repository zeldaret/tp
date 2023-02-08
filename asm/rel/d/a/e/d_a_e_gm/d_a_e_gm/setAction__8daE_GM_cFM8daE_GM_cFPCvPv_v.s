lbl_806D12C8:
/* 806D12C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D12CC  7C 08 02 A6 */	mflr r0
/* 806D12D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D12D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D12D8  93 C1 00 08 */	stw r30, 8(r1)
/* 806D12DC  7C 7E 1B 78 */	mr r30, r3
/* 806D12E0  7C 9F 23 78 */	mr r31, r4
/* 806D12E4  38 7E 0A 24 */	addi r3, r30, 0xa24
/* 806D12E8  4B C9 0D 31 */	bl __ptmf_test
/* 806D12EC  2C 03 00 00 */	cmpwi r3, 0
/* 806D12F0  41 82 00 1C */	beq lbl_806D130C
/* 806D12F4  38 00 FF FF */	li r0, -1
/* 806D12F8  90 1E 0A 3C */	stw r0, 0xa3c(r30)
/* 806D12FC  7F C3 F3 78 */	mr r3, r30
/* 806D1300  39 9E 0A 24 */	addi r12, r30, 0xa24
/* 806D1304  4B C9 0D 81 */	bl __ptmf_scall
/* 806D1308  60 00 00 00 */	nop 
lbl_806D130C:
/* 806D130C  80 7E 0A 24 */	lwz r3, 0xa24(r30)
/* 806D1310  80 1E 0A 28 */	lwz r0, 0xa28(r30)
/* 806D1314  90 7E 0A 30 */	stw r3, 0xa30(r30)
/* 806D1318  90 1E 0A 34 */	stw r0, 0xa34(r30)
/* 806D131C  80 1E 0A 2C */	lwz r0, 0xa2c(r30)
/* 806D1320  90 1E 0A 38 */	stw r0, 0xa38(r30)
/* 806D1324  80 7F 00 00 */	lwz r3, 0(r31)
/* 806D1328  80 1F 00 04 */	lwz r0, 4(r31)
/* 806D132C  90 7E 0A 24 */	stw r3, 0xa24(r30)
/* 806D1330  90 1E 0A 28 */	stw r0, 0xa28(r30)
/* 806D1334  80 1F 00 08 */	lwz r0, 8(r31)
/* 806D1338  90 1E 0A 2C */	stw r0, 0xa2c(r30)
/* 806D133C  38 00 00 00 */	li r0, 0
/* 806D1340  90 1E 0A 3C */	stw r0, 0xa3c(r30)
/* 806D1344  7F C3 F3 78 */	mr r3, r30
/* 806D1348  39 9E 0A 24 */	addi r12, r30, 0xa24
/* 806D134C  4B C9 0D 39 */	bl __ptmf_scall
/* 806D1350  60 00 00 00 */	nop 
/* 806D1354  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D1358  83 C1 00 08 */	lwz r30, 8(r1)
/* 806D135C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D1360  7C 08 03 A6 */	mtlr r0
/* 806D1364  38 21 00 10 */	addi r1, r1, 0x10
/* 806D1368  4E 80 00 20 */	blr 
