lbl_804F4BDC:
/* 804F4BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F4BE0  7C 08 02 A6 */	mflr r0
/* 804F4BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F4BE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F4BEC  93 C1 00 08 */	stw r30, 8(r1)
/* 804F4BF0  7C 7E 1B 78 */	mr r30, r3
/* 804F4BF4  38 00 00 05 */	li r0, 5
/* 804F4BF8  B0 03 07 B4 */	sth r0, 0x7b4(r3)
/* 804F4BFC  3B E0 00 00 */	li r31, 0
/* 804F4C00  A8 03 07 A4 */	lha r0, 0x7a4(r3)
/* 804F4C04  2C 00 00 0A */	cmpwi r0, 0xa
/* 804F4C08  41 82 00 98 */	beq lbl_804F4CA0
/* 804F4C0C  40 80 00 1C */	bge lbl_804F4C28
/* 804F4C10  2C 00 00 01 */	cmpwi r0, 1
/* 804F4C14  41 82 01 44 */	beq lbl_804F4D58
/* 804F4C18  40 80 01 40 */	bge lbl_804F4D58
/* 804F4C1C  2C 00 00 00 */	cmpwi r0, 0
/* 804F4C20  40 80 00 14 */	bge lbl_804F4C34
/* 804F4C24  48 00 01 34 */	b lbl_804F4D58
lbl_804F4C28:
/* 804F4C28  2C 00 00 0C */	cmpwi r0, 0xc
/* 804F4C2C  40 80 01 2C */	bge lbl_804F4D58
/* 804F4C30  48 00 00 C8 */	b lbl_804F4CF8
lbl_804F4C34:
/* 804F4C34  38 80 00 15 */	li r4, 0x15
/* 804F4C38  3C A0 80 50 */	lis r5, lit_3777@ha /* 0x804FA6BC@ha */
/* 804F4C3C  C0 25 A6 BC */	lfs f1, lit_3777@l(r5)  /* 0x804FA6BC@l */
/* 804F4C40  38 A0 00 00 */	li r5, 0
/* 804F4C44  FC 40 08 90 */	fmr f2, f1
/* 804F4C48  4B FF AB C1 */	bl anm_init__FP10e_fm_classifUcf
/* 804F4C4C  38 00 00 01 */	li r0, 1
/* 804F4C50  B0 1E 07 A4 */	sth r0, 0x7a4(r30)
/* 804F4C54  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804F4C58  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804F4C5C  80 63 00 00 */	lwz r3, 0(r3)
/* 804F4C60  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804F4C64  38 80 00 1E */	li r4, 0x1e
/* 804F4C68  38 A0 00 00 */	li r5, 0
/* 804F4C6C  4B DB A7 9D */	bl bgmStop__8Z2SeqMgrFUll
/* 804F4C70  38 00 00 07 */	li r0, 7
/* 804F4C74  90 1E 06 1C */	stw r0, 0x61c(r30)
/* 804F4C78  3C 60 80 50 */	lis r3, lit_3792@ha /* 0x804FA6F8@ha */
/* 804F4C7C  C0 03 A6 F8 */	lfs f0, lit_3792@l(r3)  /* 0x804FA6F8@l */
/* 804F4C80  80 7E 06 14 */	lwz r3, 0x614(r30)
/* 804F4C84  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F4C88  80 7E 05 F0 */	lwz r3, 0x5f0(r30)
/* 804F4C8C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F4C90  38 00 00 32 */	li r0, 0x32
/* 804F4C94  3C 7E 00 02 */	addis r3, r30, 2
/* 804F4C98  B0 03 AF F2 */	sth r0, -0x500e(r3)
/* 804F4C9C  48 00 00 BC */	b lbl_804F4D58
lbl_804F4CA0:
/* 804F4CA0  38 80 00 15 */	li r4, 0x15
/* 804F4CA4  3C A0 80 50 */	lis r5, lit_3792@ha /* 0x804FA6F8@ha */
/* 804F4CA8  C0 25 A6 F8 */	lfs f1, lit_3792@l(r5)  /* 0x804FA6F8@l */
/* 804F4CAC  38 A0 00 00 */	li r5, 0
/* 804F4CB0  FC 40 08 90 */	fmr f2, f1
/* 804F4CB4  4B FF AB 55 */	bl anm_init__FP10e_fm_classifUcf
/* 804F4CB8  38 00 00 0B */	li r0, 0xb
/* 804F4CBC  B0 1E 07 A4 */	sth r0, 0x7a4(r30)
/* 804F4CC0  38 00 00 07 */	li r0, 7
/* 804F4CC4  90 1E 06 1C */	stw r0, 0x61c(r30)
/* 804F4CC8  3C 60 80 50 */	lis r3, lit_3792@ha /* 0x804FA6F8@ha */
/* 804F4CCC  C0 03 A6 F8 */	lfs f0, lit_3792@l(r3)  /* 0x804FA6F8@l */
/* 804F4CD0  80 7E 06 14 */	lwz r3, 0x614(r30)
/* 804F4CD4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F4CD8  80 7E 05 F0 */	lwz r3, 0x5f0(r30)
/* 804F4CDC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F4CE0  80 7E 06 14 */	lwz r3, 0x614(r30)
/* 804F4CE4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 804F4CE8  80 7E 05 F0 */	lwz r3, 0x5f0(r30)
/* 804F4CEC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 804F4CF0  38 00 00 28 */	li r0, 0x28
/* 804F4CF4  B0 1E 07 AC */	sth r0, 0x7ac(r30)
lbl_804F4CF8:
/* 804F4CF8  3B E0 00 01 */	li r31, 1
/* 804F4CFC  A8 1E 07 AC */	lha r0, 0x7ac(r30)
/* 804F4D00  2C 00 00 00 */	cmpwi r0, 0
/* 804F4D04  40 82 00 54 */	bne lbl_804F4D58
/* 804F4D08  38 00 00 01 */	li r0, 1
/* 804F4D0C  B0 1E 07 A4 */	sth r0, 0x7a4(r30)
/* 804F4D10  3C 60 80 50 */	lis r3, lit_3777@ha /* 0x804FA6BC@ha */
/* 804F4D14  C0 03 A6 BC */	lfs f0, lit_3777@l(r3)  /* 0x804FA6BC@l */
/* 804F4D18  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 804F4D1C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804F4D20  80 7E 06 14 */	lwz r3, 0x614(r30)
/* 804F4D24  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 804F4D28  80 7E 05 F0 */	lwz r3, 0x5f0(r30)
/* 804F4D2C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 804F4D30  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804F4D34  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804F4D38  80 63 00 00 */	lwz r3, 0(r3)
/* 804F4D3C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804F4D40  38 80 00 1E */	li r4, 0x1e
/* 804F4D44  38 A0 00 00 */	li r5, 0
/* 804F4D48  4B DB A6 C1 */	bl bgmStop__8Z2SeqMgrFUll
/* 804F4D4C  38 00 00 32 */	li r0, 0x32
/* 804F4D50  3C 7E 00 02 */	addis r3, r30, 2
/* 804F4D54  B0 03 AF F2 */	sth r0, -0x500e(r3)
lbl_804F4D58:
/* 804F4D58  7F E3 FB 78 */	mr r3, r31
/* 804F4D5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F4D60  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F4D64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F4D68  7C 08 03 A6 */	mtlr r0
/* 804F4D6C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F4D70  4E 80 00 20 */	blr 
