lbl_809B6F40:
/* 809B6F40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809B6F44  7C 08 02 A6 */	mflr r0
/* 809B6F48  90 01 00 34 */	stw r0, 0x34(r1)
/* 809B6F4C  39 61 00 30 */	addi r11, r1, 0x30
/* 809B6F50  4B 9A B2 8D */	bl _savegpr_29
/* 809B6F54  7C 7E 1B 78 */	mr r30, r3
/* 809B6F58  3C C0 80 9C */	lis r6, m__19daNpc_Fairy_Param_c@ha /* 0x809B92E4@ha */
/* 809B6F5C  3B A6 92 E4 */	addi r29, r6, m__19daNpc_Fairy_Param_c@l /* 0x809B92E4@l */
/* 809B6F60  3B E0 00 00 */	li r31, 0
/* 809B6F64  80 DD 01 D8 */	lwz r6, 0x1d8(r29)
/* 809B6F68  80 1D 01 DC */	lwz r0, 0x1dc(r29)
/* 809B6F6C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 809B6F70  90 01 00 10 */	stw r0, 0x10(r1)
/* 809B6F74  80 84 00 00 */	lwz r4, 0(r4)
/* 809B6F78  38 04 FF F6 */	addi r0, r4, -10
/* 809B6F7C  28 00 00 28 */	cmplwi r0, 0x28
/* 809B6F80  41 81 01 CC */	bgt lbl_809B714C
/* 809B6F84  3C 80 80 9C */	lis r4, lit_6375@ha /* 0x809BA018@ha */
/* 809B6F88  38 84 A0 18 */	addi r4, r4, lit_6375@l /* 0x809BA018@l */
/* 809B6F8C  54 00 10 3A */	slwi r0, r0, 2
/* 809B6F90  7C 04 00 2E */	lwzx r0, r4, r0
/* 809B6F94  7C 09 03 A6 */	mtctr r0
/* 809B6F98  4E 80 04 20 */	bctr 
lbl_809B6F9C:
/* 809B6F9C  A8 7E 0F 90 */	lha r3, 0xf90(r30)
/* 809B6FA0  38 03 FF FF */	addi r0, r3, -1
/* 809B6FA4  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B6FA8  7C 00 07 35 */	extsh. r0, r0
/* 809B6FAC  41 81 01 A0 */	bgt lbl_809B714C
/* 809B6FB0  38 60 00 0B */	li r3, 0xb
/* 809B6FB4  4B 7F 18 31 */	bl dKy_change_colpat__FUc
/* 809B6FB8  3B E0 00 01 */	li r31, 1
/* 809B6FBC  48 00 01 90 */	b lbl_809B714C
lbl_809B6FC0:
/* 809B6FC0  A8 7E 0F 90 */	lha r3, 0xf90(r30)
/* 809B6FC4  38 03 FF FF */	addi r0, r3, -1
/* 809B6FC8  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B6FCC  7C 00 07 35 */	extsh. r0, r0
/* 809B6FD0  41 81 01 7C */	bgt lbl_809B714C
/* 809B6FD4  3B E0 00 01 */	li r31, 1
/* 809B6FD8  48 00 01 74 */	b lbl_809B714C
lbl_809B6FDC:
/* 809B6FDC  80 05 00 00 */	lwz r0, 0(r5)
/* 809B6FE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B6FE4  38 81 00 0C */	addi r4, r1, 0xc
/* 809B6FE8  38 A0 00 00 */	li r5, 0
/* 809B6FEC  38 C0 00 00 */	li r6, 0
/* 809B6FF0  38 E0 00 00 */	li r7, 0
/* 809B6FF4  4B 79 4C 85 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B6FF8  A8 7E 0F 90 */	lha r3, 0xf90(r30)
/* 809B6FFC  38 03 FF FF */	addi r0, r3, -1
/* 809B7000  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B7004  7C 00 07 35 */	extsh. r0, r0
/* 809B7008  41 81 01 44 */	bgt lbl_809B714C
/* 809B700C  3B E0 00 01 */	li r31, 1
/* 809B7010  48 00 01 3C */	b lbl_809B714C
lbl_809B7014:
/* 809B7014  80 05 00 00 */	lwz r0, 0(r5)
/* 809B7018  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B701C  38 81 00 0C */	addi r4, r1, 0xc
/* 809B7020  38 A0 00 01 */	li r5, 1
/* 809B7024  38 C0 00 00 */	li r6, 0
/* 809B7028  38 E0 00 00 */	li r7, 0
/* 809B702C  4B 79 4C 4D */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B7030  2C 03 00 00 */	cmpwi r3, 0
/* 809B7034  41 82 01 18 */	beq lbl_809B714C
/* 809B7038  3B E0 00 01 */	li r31, 1
/* 809B703C  48 00 01 10 */	b lbl_809B714C
lbl_809B7040:
/* 809B7040  80 05 00 00 */	lwz r0, 0(r5)
/* 809B7044  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B7048  38 81 00 0C */	addi r4, r1, 0xc
/* 809B704C  38 A0 00 01 */	li r5, 1
/* 809B7050  38 C0 00 00 */	li r6, 0
/* 809B7054  38 E0 00 00 */	li r7, 0
/* 809B7058  4B 79 4C 21 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B705C  2C 03 00 00 */	cmpwi r3, 0
/* 809B7060  41 82 00 EC */	beq lbl_809B714C
/* 809B7064  3B E0 00 01 */	li r31, 1
/* 809B7068  48 00 00 E4 */	b lbl_809B714C
lbl_809B706C:
/* 809B706C  80 05 00 00 */	lwz r0, 0(r5)
/* 809B7070  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B7074  38 81 00 0C */	addi r4, r1, 0xc
/* 809B7078  38 A0 00 01 */	li r5, 1
/* 809B707C  38 C0 00 00 */	li r6, 0
/* 809B7080  38 E0 00 00 */	li r7, 0
/* 809B7084  4B 79 4B F5 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B7088  2C 03 00 00 */	cmpwi r3, 0
/* 809B708C  41 82 00 C0 */	beq lbl_809B714C
/* 809B7090  3B E0 00 01 */	li r31, 1
/* 809B7094  48 00 00 B8 */	b lbl_809B714C
lbl_809B7098:
/* 809B7098  80 05 00 00 */	lwz r0, 0(r5)
/* 809B709C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B70A0  38 81 00 0C */	addi r4, r1, 0xc
/* 809B70A4  38 A0 00 01 */	li r5, 1
/* 809B70A8  38 C0 00 00 */	li r6, 0
/* 809B70AC  38 E0 00 00 */	li r7, 0
/* 809B70B0  4B 79 4B C9 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B70B4  2C 03 00 00 */	cmpwi r3, 0
/* 809B70B8  41 82 00 94 */	beq lbl_809B714C
/* 809B70BC  3B E0 00 01 */	li r31, 1
/* 809B70C0  48 00 00 8C */	b lbl_809B714C
lbl_809B70C4:
/* 809B70C4  38 80 00 00 */	li r4, 0
/* 809B70C8  38 A0 00 01 */	li r5, 1
/* 809B70CC  38 C0 00 00 */	li r6, 0
/* 809B70D0  38 E0 00 00 */	li r7, 0
/* 809B70D4  4B 79 4B A5 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B70D8  2C 03 00 00 */	cmpwi r3, 0
/* 809B70DC  41 82 00 70 */	beq lbl_809B714C
/* 809B70E0  3B E0 00 01 */	li r31, 1
/* 809B70E4  48 00 00 68 */	b lbl_809B714C
lbl_809B70E8:
/* 809B70E8  38 00 00 9B */	li r0, 0x9b
/* 809B70EC  90 01 00 08 */	stw r0, 8(r1)
/* 809B70F0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B70F4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B70F8  80 63 00 00 */	lwz r3, 0(r3)
/* 809B70FC  38 81 00 08 */	addi r4, r1, 8
/* 809B7100  38 A0 00 00 */	li r5, 0
/* 809B7104  38 C0 00 00 */	li r6, 0
/* 809B7108  38 E0 00 00 */	li r7, 0
/* 809B710C  C0 3D 00 94 */	lfs f1, 0x94(r29)
/* 809B7110  FC 40 08 90 */	fmr f2, f1
/* 809B7114  C0 7D 00 E8 */	lfs f3, 0xe8(r29)
/* 809B7118  FC 80 18 90 */	fmr f4, f3
/* 809B711C  39 00 00 00 */	li r8, 0
/* 809B7120  4B 8F 48 65 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 809B7124  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 809B7128  54 03 86 3E */	rlwinm r3, r0, 0x10, 0x18, 0x1f
/* 809B712C  C0 3D 00 E0 */	lfs f1, 0xe0(r29)
/* 809B7130  38 80 00 00 */	li r4, 0
/* 809B7134  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 809B7138  7C 05 07 74 */	extsb r5, r0
/* 809B713C  38 C0 00 00 */	li r6, 0
/* 809B7140  38 E0 FF FF */	li r7, -1
/* 809B7144  4B 67 00 2D */	bl dStage_changeScene__FifUlScsi
/* 809B7148  3B E0 00 01 */	li r31, 1
lbl_809B714C:
/* 809B714C  7F E3 FB 78 */	mr r3, r31
/* 809B7150  39 61 00 30 */	addi r11, r1, 0x30
/* 809B7154  4B 9A B0 D5 */	bl _restgpr_29
/* 809B7158  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809B715C  7C 08 03 A6 */	mtlr r0
/* 809B7160  38 21 00 30 */	addi r1, r1, 0x30
/* 809B7164  4E 80 00 20 */	blr 
