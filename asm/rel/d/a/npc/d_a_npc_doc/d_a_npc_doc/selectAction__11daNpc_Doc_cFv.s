lbl_809A8538:
/* 809A8538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A853C  7C 08 02 A6 */	mflr r0
/* 809A8540  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A8544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A8548  93 C1 00 08 */	stw r30, 8(r1)
/* 809A854C  7C 7F 1B 78 */	mr r31, r3
/* 809A8550  3C 60 80 9B */	lis r3, cNullVec__6Z2Calc@ha /* 0x809AA440@ha */
/* 809A8554  3B C3 A4 40 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x809AA440@l */
/* 809A8558  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 809A855C  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 809A8560  80 64 00 00 */	lwz r3, 0(r4)
/* 809A8564  80 04 00 04 */	lwz r0, 4(r4)
/* 809A8568  90 7F 0F AC */	stw r3, 0xfac(r31)
/* 809A856C  90 1F 0F B0 */	stw r0, 0xfb0(r31)
/* 809A8570  80 04 00 08 */	lwz r0, 8(r4)
/* 809A8574  90 1F 0F B4 */	stw r0, 0xfb4(r31)
/* 809A8578  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 809A857C  2C 00 00 01 */	cmpwi r0, 1
/* 809A8580  41 82 00 08 */	beq lbl_809A8588
/* 809A8584  48 00 00 68 */	b lbl_809A85EC
lbl_809A8588:
/* 809A8588  38 60 01 1B */	li r3, 0x11b
/* 809A858C  4B 7A 45 21 */	bl daNpcT_chkEvtBit__FUl
/* 809A8590  2C 03 00 00 */	cmpwi r3, 0
/* 809A8594  40 82 00 3C */	bne lbl_809A85D0
/* 809A8598  88 1F 0F C4 */	lbz r0, 0xfc4(r31)
/* 809A859C  28 00 00 00 */	cmplwi r0, 0
/* 809A85A0  40 82 00 30 */	bne lbl_809A85D0
/* 809A85A4  38 60 01 41 */	li r3, 0x141
/* 809A85A8  4B 7A 45 05 */	bl daNpcT_chkEvtBit__FUl
/* 809A85AC  2C 03 00 00 */	cmpwi r3, 0
/* 809A85B0  41 82 00 20 */	beq lbl_809A85D0
/* 809A85B4  80 7E 04 98 */	lwz r3, 0x498(r30)
/* 809A85B8  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 809A85BC  90 7F 0F AC */	stw r3, 0xfac(r31)
/* 809A85C0  90 1F 0F B0 */	stw r0, 0xfb0(r31)
/* 809A85C4  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 809A85C8  90 1F 0F B4 */	stw r0, 0xfb4(r31)
/* 809A85CC  48 00 00 38 */	b lbl_809A8604
lbl_809A85D0:
/* 809A85D0  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 809A85D4  80 1E 04 A8 */	lwz r0, 0x4a8(r30)
/* 809A85D8  90 7F 0F AC */	stw r3, 0xfac(r31)
/* 809A85DC  90 1F 0F B0 */	stw r0, 0xfb0(r31)
/* 809A85E0  80 1E 04 AC */	lwz r0, 0x4ac(r30)
/* 809A85E4  90 1F 0F B4 */	stw r0, 0xfb4(r31)
/* 809A85E8  48 00 00 1C */	b lbl_809A8604
lbl_809A85EC:
/* 809A85EC  80 7E 04 B0 */	lwz r3, 0x4b0(r30)
/* 809A85F0  80 1E 04 B4 */	lwz r0, 0x4b4(r30)
/* 809A85F4  90 7F 0F AC */	stw r3, 0xfac(r31)
/* 809A85F8  90 1F 0F B0 */	stw r0, 0xfb0(r31)
/* 809A85FC  80 1E 04 B8 */	lwz r0, 0x4b8(r30)
/* 809A8600  90 1F 0F B4 */	stw r0, 0xfb4(r31)
lbl_809A8604:
/* 809A8604  38 60 00 01 */	li r3, 1
/* 809A8608  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A860C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809A8610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A8614  7C 08 03 A6 */	mtlr r0
/* 809A8618  38 21 00 10 */	addi r1, r1, 0x10
/* 809A861C  4E 80 00 20 */	blr 
