lbl_805D3F90:
/* 805D3F90  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805D3F94  7C 08 02 A6 */	mflr r0
/* 805D3F98  90 01 00 44 */	stw r0, 0x44(r1)
/* 805D3F9C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805D3FA0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805D3FA4  7C 7E 1B 78 */	mr r30, r3
/* 805D3FA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805D3FAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805D3FB0  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 805D3FB4  38 61 00 14 */	addi r3, r1, 0x14
/* 805D3FB8  38 9F 00 D8 */	addi r4, r31, 0xd8
/* 805D3FBC  38 BF 00 E4 */	addi r5, r31, 0xe4
/* 805D3FC0  4B C9 2B 75 */	bl __mi__4cXyzCFRC3Vec
/* 805D3FC4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805D3FC8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805D3FCC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805D3FD0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805D3FD4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805D3FD8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805D3FDC  38 61 00 08 */	addi r3, r1, 8
/* 805D3FE0  38 9F 00 D8 */	addi r4, r31, 0xd8
/* 805D3FE4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 805D3FE8  4B C9 2B 4D */	bl __mi__4cXyzCFRC3Vec
/* 805D3FEC  C0 01 00 08 */	lfs f0, 8(r1)
/* 805D3FF0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805D3FF4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805D3FF8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805D3FFC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805D4000  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805D4004  38 61 00 2C */	addi r3, r1, 0x2c
/* 805D4008  4B C9 31 21 */	bl atan2sX_Z__4cXyzCFv
/* 805D400C  7C 7F 1B 78 */	mr r31, r3
/* 805D4010  38 61 00 20 */	addi r3, r1, 0x20
/* 805D4014  4B C9 31 15 */	bl atan2sX_Z__4cXyzCFv
/* 805D4018  7C 03 F8 50 */	subf r0, r3, r31
/* 805D401C  7C 03 07 34 */	extsh r3, r0
/* 805D4020  4B D9 10 B1 */	bl abs
/* 805D4024  38 80 30 00 */	li r4, 0x3000
/* 805D4028  7C 80 1A 78 */	xor r0, r4, r3
/* 805D402C  7C 03 0E 70 */	srawi r3, r0, 1
/* 805D4030  7C 00 20 38 */	and r0, r0, r4
/* 805D4034  7C 00 18 50 */	subf r0, r0, r3
/* 805D4038  54 03 0F FE */	srwi r3, r0, 0x1f
/* 805D403C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805D4040  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805D4044  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805D4048  7C 08 03 A6 */	mtlr r0
/* 805D404C  38 21 00 40 */	addi r1, r1, 0x40
/* 805D4050  4E 80 00 20 */	blr 
