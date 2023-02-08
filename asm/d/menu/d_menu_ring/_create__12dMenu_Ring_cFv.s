lbl_801EAB7C:
/* 801EAB7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EAB80  7C 08 02 A6 */	mflr r0
/* 801EAB84  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EAB88  88 03 06 B0 */	lbz r0, 0x6b0(r3)
/* 801EAB8C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801EAB90  3C 80 80 3C */	lis r4, stick_init@ha /* 0x803BDEAC@ha */
/* 801EAB94  38 04 DE AC */	addi r0, r4, stick_init@l /* 0x803BDEAC@l */
/* 801EAB98  7D 80 2A 14 */	add r12, r0, r5
/* 801EAB9C  48 17 74 E9 */	bl __ptmf_scall
/* 801EABA0  60 00 00 00 */	nop 
/* 801EABA4  38 00 00 3C */	li r0, 0x3c
/* 801EABA8  90 01 00 08 */	stw r0, 8(r1)
/* 801EABAC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801EABB0  38 81 00 08 */	addi r4, r1, 8
/* 801EABB4  38 A0 00 00 */	li r5, 0
/* 801EABB8  38 C0 00 00 */	li r6, 0
/* 801EABBC  38 E0 00 00 */	li r7, 0
/* 801EABC0  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EABC4  FC 40 08 90 */	fmr f2, f1
/* 801EABC8  C0 62 A9 C0 */	lfs f3, lit_4465(r2)
/* 801EABCC  FC 80 18 90 */	fmr f4, f3
/* 801EABD0  39 00 00 00 */	li r8, 0
/* 801EABD4  48 0C 0D B1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801EABD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EABDC  7C 08 03 A6 */	mtlr r0
/* 801EABE0  38 21 00 10 */	addi r1, r1, 0x10
/* 801EABE4  4E 80 00 20 */	blr 
