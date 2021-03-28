lbl_80C48BD8:
/* 80C48BD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C48BDC  7C 08 02 A6 */	mflr r0
/* 80C48BE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C48BE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C48BE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C48BEC  7C 7E 1B 78 */	mr r30, r3
/* 80C48BF0  3C 80 80 C5 */	lis r4, l_bmd@ha
/* 80C48BF4  3B E4 9C A8 */	addi r31, r4, l_bmd@l
/* 80C48BF8  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C48BFC  D0 03 05 FC */	stfs f0, 0x5fc(r3)
/* 80C48C00  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80C48C04  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 80C48C08  48 00 0A C9 */	bl anmInit__12daObjKshtr_cFv
/* 80C48C0C  7F C3 F3 78 */	mr r3, r30
/* 80C48C10  4B FF F2 45 */	bl offDzb__12daObjKshtr_cFv
/* 80C48C14  88 1E 05 EA */	lbz r0, 0x5ea(r30)
/* 80C48C18  2C 00 00 03 */	cmpwi r0, 3
/* 80C48C1C  41 82 00 20 */	beq lbl_80C48C3C
/* 80C48C20  40 80 00 10 */	bge lbl_80C48C30
/* 80C48C24  2C 00 00 02 */	cmpwi r0, 2
/* 80C48C28  40 80 00 C8 */	bge lbl_80C48CF0
/* 80C48C2C  48 00 00 C4 */	b lbl_80C48CF0
lbl_80C48C30:
/* 80C48C30  2C 00 00 05 */	cmpwi r0, 5
/* 80C48C34  40 80 00 BC */	bge lbl_80C48CF0
/* 80C48C38  48 00 00 54 */	b lbl_80C48C8C
lbl_80C48C3C:
/* 80C48C3C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C48C40  7C 03 07 74 */	extsb r3, r0
/* 80C48C44  4B 3E 44 28 */	b dComIfGp_getReverb__Fi
/* 80C48C48  7C 67 1B 78 */	mr r7, r3
/* 80C48C4C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080195@ha */
/* 80C48C50  38 03 01 95 */	addi r0, r3, 0x0195 /* 0x00080195@l */
/* 80C48C54  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C48C58  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C48C5C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C48C60  80 63 00 00 */	lwz r3, 0(r3)
/* 80C48C64  38 81 00 0C */	addi r4, r1, 0xc
/* 80C48C68  38 BE 05 38 */	addi r5, r30, 0x538
/* 80C48C6C  38 C0 00 00 */	li r6, 0
/* 80C48C70  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80C48C74  FC 40 08 90 */	fmr f2, f1
/* 80C48C78  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80C48C7C  FC 80 18 90 */	fmr f4, f3
/* 80C48C80  39 00 00 00 */	li r8, 0
/* 80C48C84  4B 66 2D 00 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C48C88  48 00 00 68 */	b lbl_80C48CF0
lbl_80C48C8C:
/* 80C48C8C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C48C90  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80C48C94  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C48C98  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80C48C9C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C48CA0  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80C48CA4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C48CA8  7C 03 07 74 */	extsb r3, r0
/* 80C48CAC  4B 3E 43 C0 */	b dComIfGp_getReverb__Fi
/* 80C48CB0  7C 67 1B 78 */	mr r7, r3
/* 80C48CB4  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080281@ha */
/* 80C48CB8  38 03 02 81 */	addi r0, r3, 0x0281 /* 0x00080281@l */
/* 80C48CBC  90 01 00 08 */	stw r0, 8(r1)
/* 80C48CC0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C48CC4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C48CC8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C48CCC  38 81 00 08 */	addi r4, r1, 8
/* 80C48CD0  38 BE 05 38 */	addi r5, r30, 0x538
/* 80C48CD4  38 C0 00 00 */	li r6, 0
/* 80C48CD8  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80C48CDC  FC 40 08 90 */	fmr f2, f1
/* 80C48CE0  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80C48CE4  FC 80 18 90 */	fmr f4, f3
/* 80C48CE8  39 00 00 00 */	li r8, 0
/* 80C48CEC  4B 66 2C 98 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C48CF0:
/* 80C48CF0  38 60 00 01 */	li r3, 1
/* 80C48CF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C48CF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C48CFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C48D00  7C 08 03 A6 */	mtlr r0
/* 80C48D04  38 21 00 20 */	addi r1, r1, 0x20
/* 80C48D08  4E 80 00 20 */	blr 
