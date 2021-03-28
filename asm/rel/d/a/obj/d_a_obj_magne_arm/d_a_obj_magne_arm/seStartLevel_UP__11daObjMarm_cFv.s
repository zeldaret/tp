lbl_80591F50:
/* 80591F50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80591F54  7C 08 02 A6 */	mflr r0
/* 80591F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80591F5C  7C 65 1B 78 */	mr r5, r3
/* 80591F60  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008014B@ha */
/* 80591F64  38 03 01 4B */	addi r0, r3, 0x014B /* 0x0008014B@l */
/* 80591F68  90 01 00 08 */	stw r0, 8(r1)
/* 80591F6C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80591F70  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80591F74  80 63 00 00 */	lwz r3, 0(r3)
/* 80591F78  38 81 00 08 */	addi r4, r1, 8
/* 80591F7C  38 A5 0A 50 */	addi r5, r5, 0xa50
/* 80591F80  38 C0 00 00 */	li r6, 0
/* 80591F84  38 E0 00 00 */	li r7, 0
/* 80591F88  3D 00 80 59 */	lis r8, lit_4010@ha
/* 80591F8C  C0 28 29 0C */	lfs f1, lit_4010@l(r8)
/* 80591F90  FC 40 08 90 */	fmr f2, f1
/* 80591F94  3D 00 80 59 */	lis r8, lit_4684@ha
/* 80591F98  C0 68 29 5C */	lfs f3, lit_4684@l(r8)
/* 80591F9C  FC 80 18 90 */	fmr f4, f3
/* 80591FA0  39 00 00 00 */	li r8, 0
/* 80591FA4  4B D1 A5 68 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80591FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80591FAC  7C 08 03 A6 */	mtlr r0
/* 80591FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80591FB4  4E 80 00 20 */	blr 
