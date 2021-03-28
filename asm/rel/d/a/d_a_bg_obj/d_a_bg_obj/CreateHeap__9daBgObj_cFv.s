lbl_8045A940:
/* 8045A940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045A944  7C 08 02 A6 */	mflr r0
/* 8045A948  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045A94C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045A950  93 C1 00 08 */	stw r30, 8(r1)
/* 8045A954  7C 7E 1B 78 */	mr r30, r3
/* 8045A958  3C 80 80 46 */	lis r4, l_specName@ha
/* 8045A95C  83 E4 CB 38 */	lwz r31, l_specName@l(r4)
/* 8045A960  4B BD 6F 10 */	b getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 8045A964  7F E4 FB 78 */	mr r4, r31
/* 8045A968  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8045A96C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8045A970  3C A5 00 02 */	addis r5, r5, 2
/* 8045A974  38 C0 00 80 */	li r6, 0x80
/* 8045A978  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8045A97C  4B BE 1A 00 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8045A980  7C 64 1B 78 */	mr r4, r3
/* 8045A984  88 1E 0D 02 */	lbz r0, 0xd02(r30)
/* 8045A988  28 00 00 00 */	cmplwi r0, 0
/* 8045A98C  40 82 00 24 */	bne lbl_8045A9B0
/* 8045A990  38 7E 0C D0 */	addi r3, r30, 0xcd0
/* 8045A994  4B FF EF 71 */	bl Set__Q29daBgObj_c11spec_data_cFPv
/* 8045A998  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8045A99C  40 82 00 0C */	bne lbl_8045A9A8
/* 8045A9A0  38 60 00 00 */	li r3, 0
/* 8045A9A4  48 00 00 2C */	b lbl_8045A9D0
lbl_8045A9A8:
/* 8045A9A8  38 00 00 01 */	li r0, 1
/* 8045A9AC  98 1E 0D 02 */	stb r0, 0xd02(r30)
lbl_8045A9B0:
/* 8045A9B0  7F C3 F3 78 */	mr r3, r30
/* 8045A9B4  A0 1E 0C D0 */	lhz r0, 0xcd0(r30)
/* 8045A9B8  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8045A9BC  3C 80 80 46 */	lis r4, mCreateHeapFunc__9daBgObj_c@ha
/* 8045A9C0  38 04 CB 6C */	addi r0, r4, mCreateHeapFunc__9daBgObj_c@l
/* 8045A9C4  7D 80 2A 14 */	add r12, r0, r5
/* 8045A9C8  4B F0 76 BC */	b __ptmf_scall
/* 8045A9CC  60 00 00 00 */	nop 
lbl_8045A9D0:
/* 8045A9D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045A9D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045A9D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045A9DC  7C 08 03 A6 */	mtlr r0
/* 8045A9E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8045A9E4  4E 80 00 20 */	blr 
