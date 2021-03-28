lbl_80477990:
/* 80477990  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80477994  7C 08 02 A6 */	mflr r0
/* 80477998  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047799C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804779A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804779A4  7C 7E 1B 78 */	mr r30, r3
/* 804779A8  4B FF 7C FD */	bl data__12daObjCarry_cFv
/* 804779AC  83 E3 00 60 */	lwz r31, 0x60(r3)
/* 804779B0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804779B4  7C 03 07 74 */	extsb r3, r0
/* 804779B8  4B BB 56 B4 */	b dComIfGp_getReverb__Fi
/* 804779BC  7C 67 1B 78 */	mr r7, r3
/* 804779C0  93 E1 00 08 */	stw r31, 8(r1)
/* 804779C4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804779C8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804779CC  80 63 00 00 */	lwz r3, 0(r3)
/* 804779D0  38 81 00 08 */	addi r4, r1, 8
/* 804779D4  38 BE 05 38 */	addi r5, r30, 0x538
/* 804779D8  38 C0 00 00 */	li r6, 0
/* 804779DC  3D 00 80 48 */	lis r8, lit_4685@ha
/* 804779E0  C0 28 A3 CC */	lfs f1, lit_4685@l(r8)
/* 804779E4  FC 40 08 90 */	fmr f2, f1
/* 804779E8  3D 00 80 48 */	lis r8, lit_5550@ha
/* 804779EC  C0 68 A4 0C */	lfs f3, lit_5550@l(r8)
/* 804779F0  FC 80 18 90 */	fmr f4, f3
/* 804779F4  39 00 00 00 */	li r8, 0
/* 804779F8  4B E3 3F 8C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804779FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80477A00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80477A04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80477A08  7C 08 03 A6 */	mtlr r0
/* 80477A0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80477A10  4E 80 00 20 */	blr 
