lbl_80D36404:
/* 80D36404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D36408  7C 08 02 A6 */	mflr r0
/* 80D3640C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D36410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D36414  7C 7F 1B 78 */	mr r31, r3
/* 80D36418  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D3641C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D36420  40 82 00 28 */	bne lbl_80D36448
/* 80D36424  28 1F 00 00 */	cmplwi r31, 0
/* 80D36428  41 82 00 14 */	beq lbl_80D3643C
/* 80D3642C  4B 34 21 F8 */	b __ct__16dBgS_MoveBgActorFv
/* 80D36430  3C 60 80 D3 */	lis r3, __vt__13daObjWCover_c@ha
/* 80D36434  38 03 6A F0 */	addi r0, r3, __vt__13daObjWCover_c@l
/* 80D36438  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80D3643C:
/* 80D3643C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D36440  60 00 00 08 */	ori r0, r0, 8
/* 80D36444  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D36448:
/* 80D36448  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D3644C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D36450  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D36454  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D36458  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D3645C  7C 05 07 74 */	extsb r5, r0
/* 80D36460  4B 2F EF 00 */	b isSwitch__10dSv_info_cCFii
/* 80D36464  2C 03 00 00 */	cmpwi r3, 0
/* 80D36468  41 82 00 0C */	beq lbl_80D36474
/* 80D3646C  38 60 00 05 */	li r3, 5
/* 80D36470  48 00 00 5C */	b lbl_80D364CC
lbl_80D36474:
/* 80D36474  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80D36478  3C 80 80 D3 */	lis r4, l_arcName@ha
/* 80D3647C  38 84 6A 6C */	addi r4, r4, l_arcName@l
/* 80D36480  80 84 00 00 */	lwz r4, 0(r4)
/* 80D36484  4B 2F 6A 38 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D36488  7C 60 1B 78 */	mr r0, r3
/* 80D3648C  2C 00 00 04 */	cmpwi r0, 4
/* 80D36490  40 82 00 38 */	bne lbl_80D364C8
/* 80D36494  7F E3 FB 78 */	mr r3, r31
/* 80D36498  3C 80 80 D3 */	lis r4, l_arcName@ha
/* 80D3649C  38 84 6A 6C */	addi r4, r4, l_arcName@l
/* 80D364A0  80 84 00 00 */	lwz r4, 0(r4)
/* 80D364A4  38 A0 00 07 */	li r5, 7
/* 80D364A8  38 C0 00 00 */	li r6, 0
/* 80D364AC  38 E0 0D 90 */	li r7, 0xd90
/* 80D364B0  39 00 00 00 */	li r8, 0
/* 80D364B4  4B 34 23 08 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D364B8  7C 60 1B 78 */	mr r0, r3
/* 80D364BC  2C 00 00 05 */	cmpwi r0, 5
/* 80D364C0  40 82 00 08 */	bne lbl_80D364C8
/* 80D364C4  48 00 00 08 */	b lbl_80D364CC
lbl_80D364C8:
/* 80D364C8  7C 03 03 78 */	mr r3, r0
lbl_80D364CC:
/* 80D364CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D364D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D364D4  7C 08 03 A6 */	mtlr r0
/* 80D364D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D364DC  4E 80 00 20 */	blr 
