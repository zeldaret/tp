lbl_80CDB2E0:
/* 80CDB2E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CDB2E4  7C 08 02 A6 */	mflr r0
/* 80CDB2E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CDB2EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CDB2F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CDB2F4  7C 7E 1B 78 */	mr r30, r3
/* 80CDB2F8  7C 9F 23 78 */	mr r31, r4
/* 80CDB2FC  88 03 09 84 */	lbz r0, 0x984(r3)
/* 80CDB300  28 00 00 00 */	cmplwi r0, 0
/* 80CDB304  40 82 00 50 */	bne lbl_80CDB354
/* 80CDB308  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CDB30C  7C 03 07 74 */	extsb r3, r0
/* 80CDB310  4B 35 1D 5C */	b dComIfGp_getReverb__Fi
/* 80CDB314  7C 67 1B 78 */	mr r7, r3
/* 80CDB318  93 E1 00 08 */	stw r31, 8(r1)
/* 80CDB31C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CDB320  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CDB324  80 63 00 00 */	lwz r3, 0(r3)
/* 80CDB328  38 81 00 08 */	addi r4, r1, 8
/* 80CDB32C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CDB330  38 C0 00 00 */	li r6, 0
/* 80CDB334  3D 00 80 CE */	lis r8, lit_3879@ha
/* 80CDB338  C0 28 B8 54 */	lfs f1, lit_3879@l(r8)
/* 80CDB33C  FC 40 08 90 */	fmr f2, f1
/* 80CDB340  3D 00 80 CE */	lis r8, lit_4282@ha
/* 80CDB344  C0 68 B8 80 */	lfs f3, lit_4282@l(r8)
/* 80CDB348  FC 80 18 90 */	fmr f4, f3
/* 80CDB34C  39 00 00 00 */	li r8, 0
/* 80CDB350  4B 5D 11 BC */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CDB354:
/* 80CDB354  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CDB358  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CDB35C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CDB360  7C 08 03 A6 */	mtlr r0
/* 80CDB364  38 21 00 20 */	addi r1, r1, 0x20
/* 80CDB368  4E 80 00 20 */	blr 
