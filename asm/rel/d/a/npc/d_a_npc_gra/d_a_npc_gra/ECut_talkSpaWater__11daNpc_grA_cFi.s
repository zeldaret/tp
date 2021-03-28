lbl_809C6608:
/* 809C6608  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809C660C  7C 08 02 A6 */	mflr r0
/* 809C6610  90 01 00 44 */	stw r0, 0x44(r1)
/* 809C6614  39 61 00 40 */	addi r11, r1, 0x40
/* 809C6618  4B 99 BB BC */	b _savegpr_27
/* 809C661C  7C 7C 1B 78 */	mr r28, r3
/* 809C6620  7C 9B 23 78 */	mr r27, r4
/* 809C6624  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C6628  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809C662C  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 809C6630  3B C0 00 00 */	li r30, 0
/* 809C6634  3B A0 FF FF */	li r29, -1
/* 809C6638  7F E3 FB 78 */	mr r3, r31
/* 809C663C  3C A0 80 9D */	lis r5, struct_809CA4B8+0x0@ha
/* 809C6640  38 A5 A4 B8 */	addi r5, r5, struct_809CA4B8+0x0@l
/* 809C6644  38 A5 01 46 */	addi r5, r5, 0x146
/* 809C6648  38 C0 00 03 */	li r6, 3
/* 809C664C  4B 68 1A A0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809C6650  28 03 00 00 */	cmplwi r3, 0
/* 809C6654  41 82 00 08 */	beq lbl_809C665C
/* 809C6658  83 A3 00 00 */	lwz r29, 0(r3)
lbl_809C665C:
/* 809C665C  7F E3 FB 78 */	mr r3, r31
/* 809C6660  7F 64 DB 78 */	mr r4, r27
/* 809C6664  4B 68 16 E8 */	b getIsAddvance__16dEvent_manager_cFi
/* 809C6668  2C 03 00 00 */	cmpwi r3, 0
/* 809C666C  41 82 01 4C */	beq lbl_809C67B8
/* 809C6670  2C 1D 00 0A */	cmpwi r29, 0xa
/* 809C6674  41 82 00 2C */	beq lbl_809C66A0
/* 809C6678  40 80 01 40 */	bge lbl_809C67B8
/* 809C667C  2C 1D 00 00 */	cmpwi r29, 0
/* 809C6680  41 82 00 08 */	beq lbl_809C6688
/* 809C6684  48 00 01 34 */	b lbl_809C67B8
lbl_809C6688:
/* 809C6688  7F 83 E3 78 */	mr r3, r28
/* 809C668C  38 80 00 00 */	li r4, 0
/* 809C6690  4B FF C9 E1 */	bl setLookMode__11daNpc_grA_cFi
/* 809C6694  38 00 00 01 */	li r0, 1
/* 809C6698  98 1C 16 90 */	stb r0, 0x1690(r28)
/* 809C669C  48 00 01 1C */	b lbl_809C67B8
lbl_809C66A0:
/* 809C66A0  7F 83 E3 78 */	mr r3, r28
/* 809C66A4  38 80 00 30 */	li r4, 0x30
/* 809C66A8  38 A0 00 00 */	li r5, 0
/* 809C66AC  4B 78 D6 70 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809C66B0  3C 60 80 9D */	lis r3, lit_4611@ha
/* 809C66B4  C0 03 9E 34 */	lfs f0, lit_4611@l(r3)
/* 809C66B8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809C66BC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809C66C0  3C 60 80 9D */	lis r3, lit_7629@ha
/* 809C66C4  C0 03 A4 A0 */	lfs f0, lit_7629@l(r3)
/* 809C66C8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809C66CC  38 7C 04 A8 */	addi r3, r28, 0x4a8
/* 809C66D0  4B 64 66 94 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 809C66D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C66D8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 809C66DC  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 809C66E0  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 809C66E4  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 809C66E8  EC 21 00 28 */	fsubs f1, f1, f0
/* 809C66EC  3C 60 80 9D */	lis r3, lit_4611@ha
/* 809C66F0  C0 03 9E 34 */	lfs f0, lit_4611@l(r3)
/* 809C66F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C66F8  40 80 00 20 */	bge lbl_809C6718
/* 809C66FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809C6700  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809C6704  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 809C6708  38 04 10 00 */	addi r0, r4, 0x1000
/* 809C670C  7C 04 07 34 */	extsh r4, r0
/* 809C6710  4B 64 5D 24 */	b mDoMtx_YrotM__FPA4_fs
/* 809C6714  48 00 00 1C */	b lbl_809C6730
lbl_809C6718:
/* 809C6718  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809C671C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809C6720  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 809C6724  38 04 F0 00 */	addi r0, r4, -4096
/* 809C6728  7C 04 07 34 */	extsh r4, r0
/* 809C672C  4B 64 5D 08 */	b mDoMtx_YrotM__FPA4_fs
lbl_809C6730:
/* 809C6730  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809C6734  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809C6738  38 81 00 14 */	addi r4, r1, 0x14
/* 809C673C  7C 85 23 78 */	mr r5, r4
/* 809C6740  4B 98 06 2C */	b PSMTXMultVec
/* 809C6744  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 809C6748  D0 01 00 08 */	stfs f0, 8(r1)
/* 809C674C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 809C6750  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 809C6754  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809C6758  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809C675C  3C 60 80 9D */	lis r3, lit_7629@ha
/* 809C6760  C0 03 A4 A0 */	lfs f0, lit_7629@l(r3)
/* 809C6764  EC 01 00 2A */	fadds f0, f1, f0
/* 809C6768  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809C676C  38 61 00 08 */	addi r3, r1, 8
/* 809C6770  4B 65 75 4C */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 809C6774  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809C6778  41 82 00 10 */	beq lbl_809C6788
/* 809C677C  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 809C6780  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 809C6784  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_809C6788:
/* 809C6788  83 FF 5D AC */	lwz r31, 0x5dac(r31)
/* 809C678C  38 61 00 14 */	addi r3, r1, 0x14
/* 809C6790  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 809C6794  4B 8A A4 A8 */	b cLib_targetAngleY__FRC3VecRC3Vec
/* 809C6798  7C 65 1B 78 */	mr r5, r3
/* 809C679C  7F E3 FB 78 */	mr r3, r31
/* 809C67A0  38 81 00 14 */	addi r4, r1, 0x14
/* 809C67A4  38 C0 00 00 */	li r6, 0
/* 809C67A8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 809C67AC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 809C67B0  7D 89 03 A6 */	mtctr r12
/* 809C67B4  4E 80 04 21 */	bctrl 
lbl_809C67B8:
/* 809C67B8  2C 1D 00 0A */	cmpwi r29, 0xa
/* 809C67BC  41 82 00 1C */	beq lbl_809C67D8
/* 809C67C0  40 80 00 3C */	bge lbl_809C67FC
/* 809C67C4  2C 1D 00 00 */	cmpwi r29, 0
/* 809C67C8  41 82 00 08 */	beq lbl_809C67D0
/* 809C67CC  48 00 00 30 */	b lbl_809C67FC
lbl_809C67D0:
/* 809C67D0  3B C0 00 01 */	li r30, 1
/* 809C67D4  48 00 00 2C */	b lbl_809C6800
lbl_809C67D8:
/* 809C67D8  7F 83 E3 78 */	mr r3, r28
/* 809C67DC  38 80 00 00 */	li r4, 0
/* 809C67E0  38 A0 00 01 */	li r5, 1
/* 809C67E4  38 C0 00 00 */	li r6, 0
/* 809C67E8  4B 78 D5 9C */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809C67EC  2C 03 00 00 */	cmpwi r3, 0
/* 809C67F0  41 82 00 10 */	beq lbl_809C6800
/* 809C67F4  3B C0 00 01 */	li r30, 1
/* 809C67F8  48 00 00 08 */	b lbl_809C6800
lbl_809C67FC:
/* 809C67FC  3B C0 00 01 */	li r30, 1
lbl_809C6800:
/* 809C6800  7F C3 F3 78 */	mr r3, r30
/* 809C6804  39 61 00 40 */	addi r11, r1, 0x40
/* 809C6808  4B 99 BA 18 */	b _restgpr_27
/* 809C680C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809C6810  7C 08 03 A6 */	mtlr r0
/* 809C6814  38 21 00 40 */	addi r1, r1, 0x40
/* 809C6818  4E 80 00 20 */	blr 
