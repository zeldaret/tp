lbl_80C702E0:
/* 80C702E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C702E4  7C 08 02 A6 */	mflr r0
/* 80C702E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C702EC  38 00 00 02 */	li r0, 2
/* 80C702F0  90 03 06 40 */	stw r0, 0x640(r3)
/* 80C702F4  3C 80 80 C7 */	lis r4, lit_3694@ha
/* 80C702F8  C0 04 09 C0 */	lfs f0, lit_3694@l(r4)
/* 80C702FC  D0 03 06 3C */	stfs f0, 0x63c(r3)
/* 80C70300  80 03 06 34 */	lwz r0, 0x634(r3)
/* 80C70304  90 01 00 08 */	stw r0, 8(r1)
/* 80C70308  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80C7030C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80C70310  38 81 00 08 */	addi r4, r1, 8
/* 80C70314  4B 3A 94 E4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C70318  38 00 00 01 */	li r0, 1
/* 80C7031C  98 03 0D B8 */	stb r0, 0xdb8(r3)
/* 80C70320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C70324  7C 08 03 A6 */	mtlr r0
/* 80C70328  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7032C  4E 80 00 20 */	blr 
