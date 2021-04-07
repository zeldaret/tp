lbl_80477900:
/* 80477900  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80477904  7C 08 02 A6 */	mflr r0
/* 80477908  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047790C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80477910  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80477914  7C 7E 1B 78 */	mr r30, r3
/* 80477918  88 03 0D B3 */	lbz r0, 0xdb3(r3)
/* 8047791C  28 00 00 00 */	cmplwi r0, 0
/* 80477920  40 82 00 58 */	bne lbl_80477978
/* 80477924  4B FF 7D 81 */	bl data__12daObjCarry_cFv
/* 80477928  83 E3 00 5C */	lwz r31, 0x5c(r3)
/* 8047792C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80477930  7C 03 07 74 */	extsb r3, r0
/* 80477934  4B BB 57 39 */	bl dComIfGp_getReverb__Fi
/* 80477938  7C 67 1B 78 */	mr r7, r3
/* 8047793C  93 E1 00 08 */	stw r31, 8(r1)
/* 80477940  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80477944  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80477948  80 63 00 00 */	lwz r3, 0(r3)
/* 8047794C  38 81 00 08 */	addi r4, r1, 8
/* 80477950  38 BE 05 38 */	addi r5, r30, 0x538
/* 80477954  38 C0 00 00 */	li r6, 0
/* 80477958  3D 00 80 48 */	lis r8, lit_4685@ha /* 0x8047A3CC@ha */
/* 8047795C  C0 28 A3 CC */	lfs f1, lit_4685@l(r8)  /* 0x8047A3CC@l */
/* 80477960  FC 40 08 90 */	fmr f2, f1
/* 80477964  3D 00 80 48 */	lis r8, lit_5550@ha /* 0x8047A40C@ha */
/* 80477968  C0 68 A4 0C */	lfs f3, lit_5550@l(r8)  /* 0x8047A40C@l */
/* 8047796C  FC 80 18 90 */	fmr f4, f3
/* 80477970  39 00 00 00 */	li r8, 0
/* 80477974  4B E3 40 11 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80477978:
/* 80477978  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8047797C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80477980  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80477984  7C 08 03 A6 */	mtlr r0
/* 80477988  38 21 00 20 */	addi r1, r1, 0x20
/* 8047798C  4E 80 00 20 */	blr 
