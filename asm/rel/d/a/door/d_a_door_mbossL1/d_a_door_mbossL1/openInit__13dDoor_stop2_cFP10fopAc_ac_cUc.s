lbl_80672B70:
/* 80672B70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80672B74  7C 08 02 A6 */	mflr r0
/* 80672B78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80672B7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80672B80  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80672B84  7C 9E 23 78 */	mr r30, r4
/* 80672B88  3C 80 80 67 */	lis r4, l_staff_name@ha /* 0x80677558@ha */
/* 80672B8C  3B E4 75 58 */	addi r31, r4, l_staff_name@l /* 0x80677558@l */
/* 80672B90  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80672B94  D0 03 00 04 */	stfs f0, 4(r3)
/* 80672B98  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80672B9C  38 00 00 01 */	li r0, 1
/* 80672BA0  98 03 00 0B */	stb r0, 0xb(r3)
/* 80672BA4  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80672BA8  41 82 01 18 */	beq lbl_80672CC0
/* 80672BAC  7F C3 F3 78 */	mr r3, r30
/* 80672BB0  4B FF FC 89 */	bl getNowLevel__FP10fopAc_ac_c
/* 80672BB4  28 03 00 0B */	cmplwi r3, 0xb
/* 80672BB8  41 81 01 08 */	bgt lbl_80672CC0
/* 80672BBC  3C 80 80 67 */	lis r4, lit_3792@ha /* 0x80677A28@ha */
/* 80672BC0  38 84 7A 28 */	addi r4, r4, lit_3792@l /* 0x80677A28@l */
/* 80672BC4  54 60 10 3A */	slwi r0, r3, 2
/* 80672BC8  7C 04 00 2E */	lwzx r0, r4, r0
/* 80672BCC  7C 09 03 A6 */	mtctr r0
/* 80672BD0  4E 80 04 20 */	bctr 
lbl_80672BD4:
/* 80672BD4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80672BD8  7C 03 07 74 */	extsb r3, r0
/* 80672BDC  4B 9B A4 91 */	bl dComIfGp_getReverb__Fi
/* 80672BE0  7C 67 1B 78 */	mr r7, r3
/* 80672BE4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C3@ha */
/* 80672BE8  38 03 00 C3 */	addi r0, r3, 0x00C3 /* 0x000800C3@l */
/* 80672BEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80672BF0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80672BF4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80672BF8  80 63 00 00 */	lwz r3, 0(r3)
/* 80672BFC  38 81 00 10 */	addi r4, r1, 0x10
/* 80672C00  38 BE 05 38 */	addi r5, r30, 0x538
/* 80672C04  38 C0 00 00 */	li r6, 0
/* 80672C08  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80672C0C  FC 40 08 90 */	fmr f2, f1
/* 80672C10  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 80672C14  FC 80 18 90 */	fmr f4, f3
/* 80672C18  39 00 00 00 */	li r8, 0
/* 80672C1C  4B C3 8D 69 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80672C20  48 00 00 A0 */	b lbl_80672CC0
lbl_80672C24:
/* 80672C24  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80672C28  7C 03 07 74 */	extsb r3, r0
/* 80672C2C  4B 9B A4 41 */	bl dComIfGp_getReverb__Fi
/* 80672C30  7C 67 1B 78 */	mr r7, r3
/* 80672C34  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080010@ha */
/* 80672C38  38 03 00 10 */	addi r0, r3, 0x0010 /* 0x00080010@l */
/* 80672C3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80672C40  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80672C44  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80672C48  80 63 00 00 */	lwz r3, 0(r3)
/* 80672C4C  38 81 00 0C */	addi r4, r1, 0xc
/* 80672C50  38 BE 05 38 */	addi r5, r30, 0x538
/* 80672C54  38 C0 00 00 */	li r6, 0
/* 80672C58  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80672C5C  FC 40 08 90 */	fmr f2, f1
/* 80672C60  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 80672C64  FC 80 18 90 */	fmr f4, f3
/* 80672C68  39 00 00 00 */	li r8, 0
/* 80672C6C  4B C3 8D 19 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80672C70  48 00 00 50 */	b lbl_80672CC0
lbl_80672C74:
/* 80672C74  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80672C78  7C 03 07 74 */	extsb r3, r0
/* 80672C7C  4B 9B A3 F1 */	bl dComIfGp_getReverb__Fi
/* 80672C80  7C 67 1B 78 */	mr r7, r3
/* 80672C84  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008021D@ha */
/* 80672C88  38 03 02 1D */	addi r0, r3, 0x021D /* 0x0008021D@l */
/* 80672C8C  90 01 00 08 */	stw r0, 8(r1)
/* 80672C90  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80672C94  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80672C98  80 63 00 00 */	lwz r3, 0(r3)
/* 80672C9C  38 81 00 08 */	addi r4, r1, 8
/* 80672CA0  38 BE 05 38 */	addi r5, r30, 0x538
/* 80672CA4  38 C0 00 00 */	li r6, 0
/* 80672CA8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80672CAC  FC 40 08 90 */	fmr f2, f1
/* 80672CB0  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 80672CB4  FC 80 18 90 */	fmr f4, f3
/* 80672CB8  39 00 00 00 */	li r8, 0
/* 80672CBC  4B C3 8C C9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80672CC0:
/* 80672CC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80672CC4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80672CC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80672CCC  7C 08 03 A6 */	mtlr r0
/* 80672CD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80672CD4  4E 80 00 20 */	blr 
