lbl_80477A98:
/* 80477A98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80477A9C  7C 08 02 A6 */	mflr r0
/* 80477AA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80477AA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80477AA8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80477AAC  7C 7E 1B 78 */	mr r30, r3
/* 80477AB0  4B FF 7B F5 */	bl data__12daObjCarry_cFv
/* 80477AB4  83 E3 00 6C */	lwz r31, 0x6c(r3)
/* 80477AB8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80477ABC  7C 03 07 74 */	extsb r3, r0
/* 80477AC0  4B BB 55 AC */	b dComIfGp_getReverb__Fi
/* 80477AC4  7C 67 1B 78 */	mr r7, r3
/* 80477AC8  93 E1 00 08 */	stw r31, 8(r1)
/* 80477ACC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80477AD0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80477AD4  80 63 00 00 */	lwz r3, 0(r3)
/* 80477AD8  38 81 00 08 */	addi r4, r1, 8
/* 80477ADC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80477AE0  38 C0 00 00 */	li r6, 0
/* 80477AE4  3D 00 80 48 */	lis r8, lit_4685@ha
/* 80477AE8  C0 28 A3 CC */	lfs f1, lit_4685@l(r8)
/* 80477AEC  FC 40 08 90 */	fmr f2, f1
/* 80477AF0  3D 00 80 48 */	lis r8, lit_5550@ha
/* 80477AF4  C0 68 A4 0C */	lfs f3, lit_5550@l(r8)
/* 80477AF8  FC 80 18 90 */	fmr f4, f3
/* 80477AFC  39 00 00 00 */	li r8, 0
/* 80477B00  4B E3 3E 84 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80477B04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80477B08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80477B0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80477B10  7C 08 03 A6 */	mtlr r0
/* 80477B14  38 21 00 20 */	addi r1, r1, 0x20
/* 80477B18  4E 80 00 20 */	blr 
