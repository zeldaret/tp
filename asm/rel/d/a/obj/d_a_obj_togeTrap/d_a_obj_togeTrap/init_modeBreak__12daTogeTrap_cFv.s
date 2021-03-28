lbl_80D18994:
/* 80D18994  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D18998  7C 08 02 A6 */	mflr r0
/* 80D1899C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D189A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D189A4  7C 7F 1B 78 */	mr r31, r3
/* 80D189A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D189AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D189B0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80D189B4  4B 44 6E 14 */	b getSpinnerRideSpeed__9daPy_py_cCFv
/* 80D189B8  3C 60 80 D2 */	lis r3, l_HIO@ha
/* 80D189BC  38 63 90 B4 */	addi r3, r3, l_HIO@l
/* 80D189C0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80D189C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D189C8  4C 41 13 82 */	cror 2, 1, 2
/* 80D189CC  40 82 00 20 */	bne lbl_80D189EC
/* 80D189D0  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80D189D4  28 04 00 00 */	cmplwi r4, 0
/* 80D189D8  41 82 00 14 */	beq lbl_80D189EC
/* 80D189DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D189E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D189E4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D189E8  4B 35 B8 68 */	b Release__4cBgSFP9dBgW_Base
lbl_80D189EC:
/* 80D189EC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D189F0  7C 03 07 74 */	extsb r3, r0
/* 80D189F4  4B 31 46 78 */	b dComIfGp_getReverb__Fi
/* 80D189F8  7C 67 1B 78 */	mr r7, r3
/* 80D189FC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080256@ha */
/* 80D18A00  38 03 02 56 */	addi r0, r3, 0x0256 /* 0x00080256@l */
/* 80D18A04  90 01 00 08 */	stw r0, 8(r1)
/* 80D18A08  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D18A0C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D18A10  80 63 00 00 */	lwz r3, 0(r3)
/* 80D18A14  38 81 00 08 */	addi r4, r1, 8
/* 80D18A18  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D18A1C  38 C0 00 00 */	li r6, 0
/* 80D18A20  3D 00 80 D2 */	lis r8, lit_4006@ha
/* 80D18A24  C0 28 8E FC */	lfs f1, lit_4006@l(r8)
/* 80D18A28  FC 40 08 90 */	fmr f2, f1
/* 80D18A2C  3D 00 80 D2 */	lis r8, lit_4007@ha
/* 80D18A30  C0 68 8F 00 */	lfs f3, lit_4007@l(r8)
/* 80D18A34  FC 80 18 90 */	fmr f4, f3
/* 80D18A38  39 00 00 00 */	li r8, 0
/* 80D18A3C  4B 59 2F 48 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D18A40  38 00 00 03 */	li r0, 3
/* 80D18A44  98 1F 0A DC */	stb r0, 0xadc(r31)
/* 80D18A48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D18A4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D18A50  7C 08 03 A6 */	mtlr r0
/* 80D18A54  38 21 00 20 */	addi r1, r1, 0x20
/* 80D18A58  4E 80 00 20 */	blr 
