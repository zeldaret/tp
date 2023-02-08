lbl_80AB6700:
/* 80AB6700  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AB6704  7C 08 02 A6 */	mflr r0
/* 80AB6708  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AB670C  39 61 00 30 */	addi r11, r1, 0x30
/* 80AB6710  4B 8A BA C5 */	bl _savegpr_27
/* 80AB6714  7C 7B 1B 78 */	mr r27, r3
/* 80AB6718  38 7B 0F 84 */	addi r3, r27, 0xf84
/* 80AB671C  4B 68 EF ED */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80AB6720  7C 7C 1B 78 */	mr r28, r3
/* 80AB6724  38 00 00 00 */	li r0, 0
/* 80AB6728  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80AB672C  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 80AB6730  3C 60 80 AB */	lis r3, srchNi__12daNpc_Raca_cFPvPv@ha /* 0x80AB6674@ha */
/* 80AB6734  38 63 66 74 */	addi r3, r3, srchNi__12daNpc_Raca_cFPvPv@l /* 0x80AB6674@l */
/* 80AB6738  7F 64 DB 78 */	mr r4, r27
/* 80AB673C  4B 56 AB FD */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80AB6740  3B 60 00 00 */	li r27, 0
/* 80AB6744  3B E0 00 00 */	li r31, 0
/* 80AB6748  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 80AB674C  3B A3 57 08 */	addi r29, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 80AB6750  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80AB6754  3B C3 0F DC */	addi r30, r3, mFindCount__8daNpcT_c@l /* 0x80450FDC@l */
/* 80AB6758  48 00 00 4C */	b lbl_80AB67A4
lbl_80AB675C:
/* 80AB675C  28 1C 00 00 */	cmplwi r28, 0
/* 80AB6760  41 82 00 3C */	beq lbl_80AB679C
/* 80AB6764  7C 7D F8 2E */	lwzx r3, r29, r31
/* 80AB6768  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80AB676C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AB6770  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80AB6774  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AB6778  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80AB677C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AB6780  7F 83 E3 78 */	mr r3, r28
/* 80AB6784  38 81 00 08 */	addi r4, r1, 8
/* 80AB6788  48 00 26 CD */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 80AB678C  2C 03 00 00 */	cmpwi r3, 0
/* 80AB6790  41 82 00 0C */	beq lbl_80AB679C
/* 80AB6794  7C 7D F8 2E */	lwzx r3, r29, r31
/* 80AB6798  48 00 00 1C */	b lbl_80AB67B4
lbl_80AB679C:
/* 80AB679C  3B 7B 00 01 */	addi r27, r27, 1
/* 80AB67A0  3B FF 00 04 */	addi r31, r31, 4
lbl_80AB67A4:
/* 80AB67A4  80 1E 00 00 */	lwz r0, 0(r30)
/* 80AB67A8  7C 1B 00 00 */	cmpw r27, r0
/* 80AB67AC  41 80 FF B0 */	blt lbl_80AB675C
/* 80AB67B0  38 60 00 00 */	li r3, 0
lbl_80AB67B4:
/* 80AB67B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80AB67B8  4B 8A BA 69 */	bl _restgpr_27
/* 80AB67BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AB67C0  7C 08 03 A6 */	mtlr r0
/* 80AB67C4  38 21 00 30 */	addi r1, r1, 0x30
/* 80AB67C8  4E 80 00 20 */	blr 
