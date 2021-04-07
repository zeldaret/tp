lbl_8004D128:
/* 8004D128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004D12C  7C 08 02 A6 */	mflr r0
/* 8004D130  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004D134  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004D138  7C 7F 1B 78 */	mr r31, r3
/* 8004D13C  7C 87 23 78 */	mr r7, r4
/* 8004D140  7C A6 2B 78 */	mr r6, r5
/* 8004D144  88 03 00 19 */	lbz r0, 0x19(r3)
/* 8004D148  28 00 00 19 */	cmplwi r0, 0x19
/* 8004D14C  41 80 00 20 */	blt lbl_8004D16C
/* 8004D150  3C 60 80 38 */	lis r3, d_particle_d_particle__stringBase0@ha /* 0x8037A12C@ha */
/* 8004D154  38 63 A1 2C */	addi r3, r3, d_particle_d_particle__stringBase0@l /* 0x8037A12C@l */
/* 8004D158  38 63 00 23 */	addi r3, r3, 0x23
/* 8004D15C  4C C6 31 82 */	crclr 6
/* 8004D160  4B FB 99 5D */	bl OSReport
/* 8004D164  38 60 00 00 */	li r3, 0
/* 8004D168  48 00 00 3C */	b lbl_8004D1A4
lbl_8004D16C:
/* 8004D16C  1C 60 00 14 */	mulli r3, r0, 0x14
/* 8004D170  38 63 00 1C */	addi r3, r3, 0x1c
/* 8004D174  7C 7F 1A 14 */	add r3, r31, r3
/* 8004D178  80 8D 89 20 */	lwz r4, mEmitterMng__13dPa_control_c(r13)
/* 8004D17C  7C E5 3B 78 */	mr r5, r7
/* 8004D180  4B FF DE 19 */	bl create__19dPa_simpleEcallBackFP17JPAEmitterManagerUsUc
/* 8004D184  28 03 00 00 */	cmplwi r3, 0
/* 8004D188  40 82 00 0C */	bne lbl_8004D194
/* 8004D18C  38 60 00 00 */	li r3, 0
/* 8004D190  48 00 00 14 */	b lbl_8004D1A4
lbl_8004D194:
/* 8004D194  88 7F 00 19 */	lbz r3, 0x19(r31)
/* 8004D198  38 03 00 01 */	addi r0, r3, 1
/* 8004D19C  98 1F 00 19 */	stb r0, 0x19(r31)
/* 8004D1A0  38 60 00 01 */	li r3, 1
lbl_8004D1A4:
/* 8004D1A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004D1A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004D1AC  7C 08 03 A6 */	mtlr r0
/* 8004D1B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8004D1B4  4E 80 00 20 */	blr 
