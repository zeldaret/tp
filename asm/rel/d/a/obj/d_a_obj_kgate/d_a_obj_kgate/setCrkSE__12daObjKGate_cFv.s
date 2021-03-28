lbl_80589774:
/* 80589774  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80589778  7C 08 02 A6 */	mflr r0
/* 8058977C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80589780  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80589784  7C 7F 1B 78 */	mr r31, r3
/* 80589788  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 8058978C  7C 03 07 74 */	extsb r3, r0
/* 80589790  4B AA 38 DC */	b dComIfGp_getReverb__Fi
/* 80589794  7C 67 1B 78 */	mr r7, r3
/* 80589798  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080203@ha */
/* 8058979C  38 03 02 03 */	addi r0, r3, 0x0203 /* 0x00080203@l */
/* 805897A0  90 01 00 08 */	stw r0, 8(r1)
/* 805897A4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805897A8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805897AC  80 63 00 00 */	lwz r3, 0(r3)
/* 805897B0  38 81 00 08 */	addi r4, r1, 8
/* 805897B4  38 BF 05 38 */	addi r5, r31, 0x538
/* 805897B8  38 C0 00 00 */	li r6, 0
/* 805897BC  3D 00 80 59 */	lis r8, lit_3881@ha
/* 805897C0  C0 28 AB D4 */	lfs f1, lit_3881@l(r8)
/* 805897C4  FC 40 08 90 */	fmr f2, f1
/* 805897C8  3D 00 80 59 */	lis r8, lit_3882@ha
/* 805897CC  C0 68 AB D8 */	lfs f3, lit_3882@l(r8)
/* 805897D0  FC 80 18 90 */	fmr f4, f3
/* 805897D4  39 00 00 00 */	li r8, 0
/* 805897D8  4B D2 21 AC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 805897DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805897E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805897E4  7C 08 03 A6 */	mtlr r0
/* 805897E8  38 21 00 20 */	addi r1, r1, 0x20
/* 805897EC  4E 80 00 20 */	blr 
