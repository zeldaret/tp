lbl_80CBBA10:
/* 80CBBA10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CBBA14  7C 08 02 A6 */	mflr r0
/* 80CBBA18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CBBA1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CBBA20  7C 7F 1B 78 */	mr r31, r3
/* 80CBBA24  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80CBBA28  28 00 00 03 */	cmplwi r0, 3
/* 80CBBA2C  40 82 00 8C */	bne lbl_80CBBAB8
/* 80CBBA30  38 00 00 01 */	li r0, 1
/* 80CBBA34  98 1F 0B A0 */	stb r0, 0xba0(r31)
/* 80CBBA38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBBA3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBBA40  A8 83 5D C8 */	lha r4, 0x5dc8(r3)
/* 80CBBA44  38 04 FF FF */	addi r0, r4, -1
/* 80CBBA48  B0 03 5D C8 */	sth r0, 0x5dc8(r3)
/* 80CBBA4C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CBBA50  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CBBA54  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CBBA58  7C 05 07 74 */	extsb r5, r0
/* 80CBBA5C  4B 37 97 A5 */	bl onSwitch__10dSv_info_cFii
/* 80CBBA60  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CBBA64  7C 03 07 74 */	extsb r3, r0
/* 80CBBA68  4B 37 16 05 */	bl dComIfGp_getReverb__Fi
/* 80CBBA6C  7C 67 1B 78 */	mr r7, r3
/* 80CBBA70  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008022A@ha */
/* 80CBBA74  38 03 02 2A */	addi r0, r3, 0x022A /* 0x0008022A@l */
/* 80CBBA78  90 01 00 08 */	stw r0, 8(r1)
/* 80CBBA7C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CBBA80  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CBBA84  80 63 00 00 */	lwz r3, 0(r3)
/* 80CBBA88  38 81 00 08 */	addi r4, r1, 8
/* 80CBBA8C  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CBBA90  38 C0 00 00 */	li r6, 0
/* 80CBBA94  3D 00 80 CC */	lis r8, lit_4513@ha /* 0x80CBC420@ha */
/* 80CBBA98  C0 28 C4 20 */	lfs f1, lit_4513@l(r8)  /* 0x80CBC420@l */
/* 80CBBA9C  FC 40 08 90 */	fmr f2, f1
/* 80CBBAA0  3D 00 80 CC */	lis r8, lit_4514@ha /* 0x80CBC424@ha */
/* 80CBBAA4  C0 68 C4 24 */	lfs f3, lit_4514@l(r8)  /* 0x80CBC424@l */
/* 80CBBAA8  FC 80 18 90 */	fmr f4, f3
/* 80CBBAAC  39 00 00 00 */	li r8, 0
/* 80CBBAB0  4B 5E FE D5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CBBAB4  48 00 00 2C */	b lbl_80CBBAE0
lbl_80CBBAB8:
/* 80CBBAB8  4B FF F5 0D */	bl checkOpen__12daObjRgate_cFv
/* 80CBBABC  2C 03 00 00 */	cmpwi r3, 0
/* 80CBBAC0  41 82 00 20 */	beq lbl_80CBBAE0
/* 80CBBAC4  A8 1F 0B A2 */	lha r0, 0xba2(r31)
/* 80CBBAC8  B0 1F 00 FC */	sth r0, 0xfc(r31)
/* 80CBBACC  88 1F 0B A1 */	lbz r0, 0xba1(r31)
/* 80CBBAD0  98 1F 00 FE */	stb r0, 0xfe(r31)
/* 80CBBAD4  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CBBAD8  60 00 00 04 */	ori r0, r0, 4
/* 80CBBADC  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CBBAE0:
/* 80CBBAE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CBBAE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CBBAE8  7C 08 03 A6 */	mtlr r0
/* 80CBBAEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CBBAF0  4E 80 00 20 */	blr 
