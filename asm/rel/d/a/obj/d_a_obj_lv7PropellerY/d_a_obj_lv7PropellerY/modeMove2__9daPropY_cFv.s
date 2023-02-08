lbl_80C85B84:
/* 80C85B84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C85B88  7C 08 02 A6 */	mflr r0
/* 80C85B8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C85B90  39 61 00 30 */	addi r11, r1, 0x30
/* 80C85B94  4B 6D C6 45 */	bl _savegpr_28
/* 80C85B98  7C 7F 1B 78 */	mr r31, r3
/* 80C85B9C  3C 60 80 C8 */	lis r3, lit_3650@ha /* 0x80C86130@ha */
/* 80C85BA0  3B 83 61 30 */	addi r28, r3, lit_3650@l /* 0x80C86130@l */
/* 80C85BA4  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80C85BA8  3C 80 80 C8 */	lis r4, l_HIO@ha /* 0x80C862CC@ha */
/* 80C85BAC  3B A4 62 CC */	addi r29, r4, l_HIO@l /* 0x80C862CC@l */
/* 80C85BB0  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 80C85BB4  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80C85BB8  4B 5E AB 89 */	bl cLib_chaseF__FPfff
/* 80C85BBC  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80C85BC0  A8 9F 05 B6 */	lha r4, 0x5b6(r31)
/* 80C85BC4  38 A0 00 01 */	li r5, 1
/* 80C85BC8  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 80C85BCC  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80C85BD0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C85BD4  FC 00 00 1E */	fctiwz f0, f0
/* 80C85BD8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C85BDC  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80C85BE0  38 E0 00 01 */	li r7, 1
/* 80C85BE4  4B 5E A9 5D */	bl cLib_addCalcAngleS__FPsssss
/* 80C85BE8  7C 7E 1B 78 */	mr r30, r3
/* 80C85BEC  C0 5C 00 20 */	lfs f2, 0x20(r28)
/* 80C85BF0  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80C85BF4  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80C85BF8  EC 01 00 24 */	fdivs f0, f1, f0
/* 80C85BFC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C85C00  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 80C85C04  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C85C08  7C 03 07 74 */	extsb r3, r0
/* 80C85C0C  4B 3A 74 61 */	bl dComIfGp_getReverb__Fi
/* 80C85C10  7C 7D 1B 78 */	mr r29, r3
/* 80C85C14  C0 3F 05 C4 */	lfs f1, 0x5c4(r31)
/* 80C85C18  4B 6D C4 95 */	bl __cvt_fp2unsigned
/* 80C85C1C  7C 66 1B 78 */	mr r6, r3
/* 80C85C20  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008027E@ha */
/* 80C85C24  38 03 02 7E */	addi r0, r3, 0x027E /* 0x0008027E@l */
/* 80C85C28  90 01 00 08 */	stw r0, 8(r1)
/* 80C85C2C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C85C30  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C85C34  80 63 00 00 */	lwz r3, 0(r3)
/* 80C85C38  38 81 00 08 */	addi r4, r1, 8
/* 80C85C3C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C85C40  7F A7 EB 78 */	mr r7, r29
/* 80C85C44  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 80C85C48  FC 40 08 90 */	fmr f2, f1
/* 80C85C4C  C0 7C 00 24 */	lfs f3, 0x24(r28)
/* 80C85C50  FC 80 18 90 */	fmr f4, f3
/* 80C85C54  39 00 00 00 */	li r8, 0
/* 80C85C58  4B 62 68 B5 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C85C5C  7F C0 07 35 */	extsh. r0, r30
/* 80C85C60  40 82 00 34 */	bne lbl_80C85C94
/* 80C85C64  88 1F 05 B1 */	lbz r0, 0x5b1(r31)
/* 80C85C68  28 00 00 00 */	cmplwi r0, 0
/* 80C85C6C  40 82 00 14 */	bne lbl_80C85C80
/* 80C85C70  A8 7F 05 B6 */	lha r3, 0x5b6(r31)
/* 80C85C74  38 03 80 00 */	addi r0, r3, -32768
/* 80C85C78  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
/* 80C85C7C  48 00 00 10 */	b lbl_80C85C8C
lbl_80C85C80:
/* 80C85C80  A8 7F 05 B6 */	lha r3, 0x5b6(r31)
/* 80C85C84  38 03 7F FF */	addi r0, r3, 0x7fff
/* 80C85C88  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
lbl_80C85C8C:
/* 80C85C8C  7F E3 FB 78 */	mr r3, r31
/* 80C85C90  4B FF FE 79 */	bl init_modeWait__9daPropY_cFv
lbl_80C85C94:
/* 80C85C94  39 61 00 30 */	addi r11, r1, 0x30
/* 80C85C98  4B 6D C5 8D */	bl _restgpr_28
/* 80C85C9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C85CA0  7C 08 03 A6 */	mtlr r0
/* 80C85CA4  38 21 00 30 */	addi r1, r1, 0x30
/* 80C85CA8  4E 80 00 20 */	blr 
