lbl_805C8008:
/* 805C8008  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C800C  7C 08 02 A6 */	mflr r0
/* 805C8010  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C8014  7C 66 1B 78 */	mr r6, r3
/* 805C8018  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C801C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C8020  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 805C8024  7C 00 07 74 */	extsb r0, r0
/* 805C8028  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805C802C  7C 63 02 14 */	add r3, r3, r0
/* 805C8030  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 805C8034  C0 06 05 C8 */	lfs f0, 0x5c8(r6)
/* 805C8038  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805C803C  C0 06 05 CC */	lfs f0, 0x5cc(r6)
/* 805C8040  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C8044  C0 06 05 D0 */	lfs f0, 0x5d0(r6)
/* 805C8048  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805C804C  C0 06 05 E0 */	lfs f0, 0x5e0(r6)
/* 805C8050  D0 01 00 08 */	stfs f0, 8(r1)
/* 805C8054  C0 06 05 E4 */	lfs f0, 0x5e4(r6)
/* 805C8058  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805C805C  C0 06 05 E8 */	lfs f0, 0x5e8(r6)
/* 805C8060  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805C8064  38 63 02 48 */	addi r3, r3, 0x248
/* 805C8068  38 81 00 14 */	addi r4, r1, 0x14
/* 805C806C  38 A1 00 08 */	addi r5, r1, 8
/* 805C8070  C0 26 06 00 */	lfs f1, 0x600(r6)
/* 805C8074  38 C0 00 00 */	li r6, 0
/* 805C8078  4B BB 8A 69 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 805C807C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C8080  7C 08 03 A6 */	mtlr r0
/* 805C8084  38 21 00 20 */	addi r1, r1, 0x20
/* 805C8088  4E 80 00 20 */	blr 
