lbl_80CF7260:
/* 80CF7260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF7264  7C 08 02 A6 */	mflr r0
/* 80CF7268  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF726C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF7270  7C 7F 1B 78 */	mr r31, r3
/* 80CF7274  88 03 0B 20 */	lbz r0, 0xb20(r3)
/* 80CF7278  28 00 00 00 */	cmplwi r0, 0
/* 80CF727C  40 82 00 38 */	bne lbl_80CF72B4
/* 80CF7280  38 00 00 01 */	li r0, 1
/* 80CF7284  98 1F 0B 20 */	stb r0, 0xb20(r31)
/* 80CF7288  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80CF728C  B0 1F 0B 22 */	sth r0, 0xb22(r31)
/* 80CF7290  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80CF7294  B0 1F 0B 24 */	sth r0, 0xb24(r31)
/* 80CF7298  38 00 00 00 */	li r0, 0
/* 80CF729C  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80CF72A0  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80CF72A4  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 80CF72A8  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80CF72AC  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80CF72B0  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
lbl_80CF72B4:
/* 80CF72B4  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80CF72B8  3C 80 80 D0 */	lis r4, l_arcName@ha /* 0x80CF8488@ha */
/* 80CF72BC  38 84 84 88 */	addi r4, r4, l_arcName@l /* 0x80CF8488@l */
/* 80CF72C0  80 84 00 00 */	lwz r4, 0(r4)
/* 80CF72C4  4B 33 5B F9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CF72C8  7C 60 1B 78 */	mr r0, r3
/* 80CF72CC  2C 00 00 04 */	cmpwi r0, 4
/* 80CF72D0  40 82 00 38 */	bne lbl_80CF7308
/* 80CF72D4  7F E3 FB 78 */	mr r3, r31
/* 80CF72D8  3C 80 80 D0 */	lis r4, l_arcName@ha /* 0x80CF8488@ha */
/* 80CF72DC  38 84 84 88 */	addi r4, r4, l_arcName@l /* 0x80CF8488@l */
/* 80CF72E0  80 84 00 00 */	lwz r4, 0(r4)
/* 80CF72E4  38 A0 FF FF */	li r5, -1
/* 80CF72E8  38 C0 00 00 */	li r6, 0
/* 80CF72EC  38 E0 0E C0 */	li r7, 0xec0
/* 80CF72F0  39 00 00 00 */	li r8, 0
/* 80CF72F4  4B 38 14 C9 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CF72F8  7C 60 1B 78 */	mr r0, r3
/* 80CF72FC  2C 00 00 05 */	cmpwi r0, 5
/* 80CF7300  40 82 00 08 */	bne lbl_80CF7308
/* 80CF7304  48 00 00 08 */	b lbl_80CF730C
lbl_80CF7308:
/* 80CF7308  7C 03 03 78 */	mr r3, r0
lbl_80CF730C:
/* 80CF730C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF7310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF7314  7C 08 03 A6 */	mtlr r0
/* 80CF7318  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF731C  4E 80 00 20 */	blr 
