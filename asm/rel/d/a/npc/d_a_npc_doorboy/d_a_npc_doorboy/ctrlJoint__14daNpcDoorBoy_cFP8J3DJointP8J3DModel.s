lbl_809AB578:
/* 809AB578  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809AB57C  7C 08 02 A6 */	mflr r0
/* 809AB580  90 01 00 34 */	stw r0, 0x34(r1)
/* 809AB584  39 61 00 30 */	addi r11, r1, 0x30
/* 809AB588  4B 9B 6C 51 */	bl _savegpr_28
/* 809AB58C  7C 7D 1B 78 */	mr r29, r3
/* 809AB590  7C BE 2B 78 */	mr r30, r5
/* 809AB594  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 809AB598  7C BF 2B 78 */	mr r31, r5
/* 809AB59C  3C 60 80 9B */	lis r3, lit_4341@ha /* 0x809ADA30@ha */
/* 809AB5A0  38 83 DA 30 */	addi r4, r3, lit_4341@l /* 0x809ADA30@l */
/* 809AB5A4  80 64 00 00 */	lwz r3, 0(r4)
/* 809AB5A8  80 04 00 04 */	lwz r0, 4(r4)
/* 809AB5AC  90 61 00 08 */	stw r3, 8(r1)
/* 809AB5B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 809AB5B4  80 04 00 08 */	lwz r0, 8(r4)
/* 809AB5B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 809AB5BC  2C 05 00 00 */	cmpwi r5, 0
/* 809AB5C0  40 82 00 B0 */	bne lbl_809AB670
/* 809AB5C4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809AB5C8  80 63 00 04 */	lwz r3, 4(r3)
/* 809AB5CC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809AB5D0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809AB5D4  38 63 00 30 */	addi r3, r3, 0x30
/* 809AB5D8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809AB5DC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809AB5E0  4B 99 AE D1 */	bl PSMTXCopy
/* 809AB5E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809AB5E8  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809AB5EC  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 809AB5F0  D0 1D 08 54 */	stfs f0, 0x854(r29)
/* 809AB5F4  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 809AB5F8  D0 1D 08 58 */	stfs f0, 0x858(r29)
/* 809AB5FC  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 809AB600  D0 1D 08 5C */	stfs f0, 0x85c(r29)
/* 809AB604  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809AB608  80 63 00 04 */	lwz r3, 4(r3)
/* 809AB60C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809AB610  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809AB614  38 63 00 60 */	addi r3, r3, 0x60
/* 809AB618  7F 84 E3 78 */	mr r4, r28
/* 809AB61C  4B 99 AE 95 */	bl PSMTXCopy
/* 809AB620  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 809AB624  D0 1D 08 60 */	stfs f0, 0x860(r29)
/* 809AB628  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 809AB62C  D0 1D 08 64 */	stfs f0, 0x864(r29)
/* 809AB630  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 809AB634  D0 1D 08 68 */	stfs f0, 0x868(r29)
/* 809AB638  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809AB63C  80 63 00 04 */	lwz r3, 4(r3)
/* 809AB640  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809AB644  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809AB648  38 63 00 90 */	addi r3, r3, 0x90
/* 809AB64C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809AB650  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809AB654  4B 99 AE 5D */	bl PSMTXCopy
/* 809AB658  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 809AB65C  D0 1D 08 6C */	stfs f0, 0x86c(r29)
/* 809AB660  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 809AB664  D0 1D 08 70 */	stfs f0, 0x870(r29)
/* 809AB668  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 809AB66C  D0 1D 08 74 */	stfs f0, 0x874(r29)
lbl_809AB670:
/* 809AB670  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 809AB674  80 03 00 0C */	lwz r0, 0xc(r3)
/* 809AB678  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 809AB67C  7C 60 E2 14 */	add r3, r0, r28
/* 809AB680  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809AB684  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809AB688  4B 99 AE 29 */	bl PSMTXCopy
/* 809AB68C  2C 1F 00 04 */	cmpwi r31, 4
/* 809AB690  40 80 00 2C */	bge lbl_809AB6BC
/* 809AB694  2C 1F 00 01 */	cmpwi r31, 1
/* 809AB698  40 80 00 08 */	bge lbl_809AB6A0
/* 809AB69C  48 00 00 20 */	b lbl_809AB6BC
lbl_809AB6A0:
/* 809AB6A0  7F A3 EB 78 */	mr r3, r29
/* 809AB6A4  7F E4 FB 78 */	mr r4, r31
/* 809AB6A8  38 A1 00 08 */	addi r5, r1, 8
/* 809AB6AC  3C C0 80 9B */	lis r6, m__20daNpcDoorBoy_Param_c@ha /* 0x809AD9A8@ha */
/* 809AB6B0  38 C6 D9 A8 */	addi r6, r6, m__20daNpcDoorBoy_Param_c@l /* 0x809AD9A8@l */
/* 809AB6B4  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 809AB6B8  4B 7A 7C C5 */	bl setLookatMtx__8daNpcF_cFiPif
lbl_809AB6BC:
/* 809AB6BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809AB6C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809AB6C4  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 809AB6C8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 809AB6CC  7C 80 E2 14 */	add r4, r0, r28
/* 809AB6D0  4B 99 AD E1 */	bl PSMTXCopy
/* 809AB6D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809AB6D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809AB6DC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 809AB6E0  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 809AB6E4  4B 99 AD CD */	bl PSMTXCopy
/* 809AB6E8  38 60 00 01 */	li r3, 1
/* 809AB6EC  39 61 00 30 */	addi r11, r1, 0x30
/* 809AB6F0  4B 9B 6B 35 */	bl _restgpr_28
/* 809AB6F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809AB6F8  7C 08 03 A6 */	mtlr r0
/* 809AB6FC  38 21 00 30 */	addi r1, r1, 0x30
/* 809AB700  4E 80 00 20 */	blr 
