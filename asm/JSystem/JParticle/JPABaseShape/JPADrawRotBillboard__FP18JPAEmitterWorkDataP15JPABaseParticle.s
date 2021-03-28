lbl_80277F70:
/* 80277F70  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80277F74  7C 08 02 A6 */	mflr r0
/* 80277F78  90 01 00 54 */	stw r0, 0x54(r1)
/* 80277F7C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80277F80  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80277F84  7C 7E 1B 78 */	mr r30, r3
/* 80277F88  7C 9F 23 78 */	mr r31, r4
/* 80277F8C  80 04 00 7C */	lwz r0, 0x7c(r4)
/* 80277F90  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80277F94  40 82 00 DC */	bne lbl_80278070
/* 80277F98  38 7E 01 84 */	addi r3, r30, 0x184
/* 80277F9C  38 A1 00 08 */	addi r5, r1, 8
/* 80277FA0  48 0C ED CD */	bl PSMTXMultVec
/* 80277FA4  A0 1F 00 88 */	lhz r0, 0x88(r31)
/* 80277FA8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80277FAC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80277FB0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80277FB4  7C 43 04 2E */	lfsx f2, r3, r0
/* 80277FB8  7C 63 02 14 */	add r3, r3, r0
/* 80277FBC  C0 63 00 04 */	lfs f3, 4(r3)
/* 80277FC0  C0 3E 01 44 */	lfs f1, 0x144(r30)
/* 80277FC4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80277FC8  EC 81 00 32 */	fmuls f4, f1, f0
/* 80277FCC  C0 3E 01 48 */	lfs f1, 0x148(r30)
/* 80277FD0  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80277FD4  EC 21 00 32 */	fmuls f1, f1, f0
/* 80277FD8  EC 03 01 32 */	fmuls f0, f3, f4
/* 80277FDC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80277FE0  FC 00 10 50 */	fneg f0, f2
/* 80277FE4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80277FE8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80277FEC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80277FF0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80277FF4  EC 02 01 32 */	fmuls f0, f2, f4
/* 80277FF8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80277FFC  EC 03 00 72 */	fmuls f0, f3, f1
/* 80278000  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80278004  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80278008  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8027800C  C0 02 B8 BC */	lfs f0, lit_2741(r2)
/* 80278010  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80278014  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80278018  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8027801C  C0 02 B8 C0 */	lfs f0, lit_2742(r2)
/* 80278020  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80278024  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80278028  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8027802C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80278030  38 61 00 14 */	addi r3, r1, 0x14
/* 80278034  38 80 00 00 */	li r4, 0
/* 80278038  48 0E 82 15 */	bl GXLoadPosMtxImm
/* 8027803C  7F C3 F3 78 */	mr r3, r30
/* 80278040  38 81 00 14 */	addi r4, r1, 0x14
/* 80278044  80 1E 02 10 */	lwz r0, 0x210(r30)
/* 80278048  54 00 10 3A */	slwi r0, r0, 2
/* 8027804C  3C A0 80 3C */	lis r5, p_prj@ha
/* 80278050  38 A5 43 20 */	addi r5, r5, p_prj@l
/* 80278054  7D 85 00 2E */	lwzx r12, r5, r0
/* 80278058  7D 89 03 A6 */	mtctr r12
/* 8027805C  4E 80 04 21 */	bctrl 
/* 80278060  3C 60 80 3C */	lis r3, jpa_dl@ha
/* 80278064  38 63 42 E0 */	addi r3, r3, jpa_dl@l
/* 80278068  38 80 00 20 */	li r4, 0x20
/* 8027806C  48 0E 7E 85 */	bl GXCallDisplayList
lbl_80278070:
/* 80278070  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80278074  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80278078  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8027807C  7C 08 03 A6 */	mtlr r0
/* 80278080  38 21 00 50 */	addi r1, r1, 0x50
/* 80278084  4E 80 00 20 */	blr 
