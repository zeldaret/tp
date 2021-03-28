lbl_8045A9E8:
/* 8045A9E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045A9EC  7C 08 02 A6 */	mflr r0
/* 8045A9F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045A9F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045A9F8  93 C1 00 08 */	stw r30, 8(r1)
/* 8045A9FC  7C 7F 1B 78 */	mr r31, r3
/* 8045AA00  88 03 0C C9 */	lbz r0, 0xcc9(r3)
/* 8045AA04  28 00 00 00 */	cmplwi r0, 0
/* 8045AA08  40 82 00 38 */	bne lbl_8045AA40
/* 8045AA0C  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 8045AA10  B0 1F 0C CA */	sth r0, 0xcca(r31)
/* 8045AA14  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 8045AA18  B0 1F 0C CC */	sth r0, 0xccc(r31)
/* 8045AA1C  38 00 00 01 */	li r0, 1
/* 8045AA20  98 1F 0C C9 */	stb r0, 0xcc9(r31)
/* 8045AA24  38 00 00 00 */	li r0, 0
/* 8045AA28  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 8045AA2C  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 8045AA30  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 8045AA34  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 8045AA38  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 8045AA3C  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
lbl_8045AA40:
/* 8045AA40  7F E3 FB 78 */	mr r3, r31
/* 8045AA44  4B BD 6E 2C */	b getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 8045AA48  7C 64 1B 78 */	mr r4, r3
/* 8045AA4C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 8045AA50  4B BD 24 6C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8045AA54  7C 7E 1B 78 */	mr r30, r3
/* 8045AA58  2C 1E 00 04 */	cmpwi r30, 4
/* 8045AA5C  40 82 00 78 */	bne lbl_8045AAD4
/* 8045AA60  38 60 00 00 */	li r3, 0
/* 8045AA64  4B FF ED 41 */	bl getDzbName__Fi
/* 8045AA68  7C 7E 1B 78 */	mr r30, r3
/* 8045AA6C  7F E3 FB 78 */	mr r3, r31
/* 8045AA70  4B BD 6E 00 */	b getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 8045AA74  7C 64 1B 78 */	mr r4, r3
/* 8045AA78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045AA7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045AA80  3C 63 00 02 */	addis r3, r3, 2
/* 8045AA84  7F C5 F3 78 */	mr r5, r30
/* 8045AA88  38 63 C2 F8 */	addi r3, r3, -15624
/* 8045AA8C  4B BE 1C 2C */	b getObjectResName2Index__14dRes_control_cFPCcPCc
/* 8045AA90  7C 7E 1B 78 */	mr r30, r3
/* 8045AA94  7F E3 FB 78 */	mr r3, r31
/* 8045AA98  4B BD 6D D8 */	b getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 8045AA9C  7C 64 1B 78 */	mr r4, r3
/* 8045AAA0  7F E3 FB 78 */	mr r3, r31
/* 8045AAA4  7F C5 F3 78 */	mr r5, r30
/* 8045AAA8  38 C0 00 00 */	li r6, 0
/* 8045AAAC  3C E0 80 02 */	lis r7, 0x8002 /* 0x80022110@ha */
/* 8045AAB0  38 E7 21 10 */	addi r7, r7, 0x2110 /* 0x80022110@l */
/* 8045AAB4  39 00 00 00 */	li r8, 0
/* 8045AAB8  4B C1 DD 04 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 8045AABC  7C 7E 1B 78 */	mr r30, r3
/* 8045AAC0  2C 1E 00 05 */	cmpwi r30, 5
/* 8045AAC4  40 82 00 08 */	bne lbl_8045AACC
/* 8045AAC8  48 00 00 10 */	b lbl_8045AAD8
lbl_8045AACC:
/* 8045AACC  7F E3 FB 78 */	mr r3, r31
/* 8045AAD0  4B C1 DE 80 */	b MoveBGExecute__16dBgS_MoveBgActorFv
lbl_8045AAD4:
/* 8045AAD4  7F C3 F3 78 */	mr r3, r30
lbl_8045AAD8:
/* 8045AAD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045AADC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045AAE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045AAE4  7C 08 03 A6 */	mtlr r0
/* 8045AAE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8045AAEC  4E 80 00 20 */	blr 
