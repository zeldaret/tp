lbl_80650B7C:
/* 80650B7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80650B80  7C 08 02 A6 */	mflr r0
/* 80650B84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80650B88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80650B8C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80650B90  7C 7E 1B 78 */	mr r30, r3
/* 80650B94  3C 60 80 65 */	lis r3, lit_3649@ha
/* 80650B98  3B E3 27 3C */	addi r31, r3, lit_3649@l
/* 80650B9C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80650BA0  28 00 00 02 */	cmplwi r0, 2
/* 80650BA4  40 82 00 A8 */	bne lbl_80650C4C
/* 80650BA8  88 1E 06 6C */	lbz r0, 0x66c(r30)
/* 80650BAC  28 00 00 00 */	cmplwi r0, 0
/* 80650BB0  41 82 00 0C */	beq lbl_80650BBC
/* 80650BB4  28 00 00 01 */	cmplwi r0, 1
/* 80650BB8  40 82 01 3C */	bne lbl_80650CF4
lbl_80650BBC:
/* 80650BBC  38 00 00 02 */	li r0, 2
/* 80650BC0  98 1E 06 6C */	stb r0, 0x66c(r30)
/* 80650BC4  3C 60 80 65 */	lis r3, stringBase0@ha
/* 80650BC8  38 63 27 D0 */	addi r3, r3, stringBase0@l
/* 80650BCC  38 80 00 43 */	li r4, 0x43
/* 80650BD0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80650BD4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80650BD8  3C A5 00 02 */	addis r5, r5, 2
/* 80650BDC  38 C0 00 80 */	li r6, 0x80
/* 80650BE0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80650BE4  4B 9E B7 08 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80650BE8  7C 64 1B 78 */	mr r4, r3
/* 80650BEC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80650BF0  38 A0 00 00 */	li r5, 0
/* 80650BF4  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80650BF8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80650BFC  FC 60 08 90 */	fmr f3, f1
/* 80650C00  C0 9F 00 04 */	lfs f4, 4(r31)
/* 80650C04  4B 9C 02 6C */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80650C08  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070429@ha */
/* 80650C0C  38 03 04 29 */	addi r0, r3, 0x0429 /* 0x00070429@l */
/* 80650C10  90 01 00 0C */	stw r0, 0xc(r1)
/* 80650C14  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80650C18  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80650C1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80650C20  38 81 00 0C */	addi r4, r1, 0xc
/* 80650C24  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80650C28  38 C0 00 00 */	li r6, 0
/* 80650C2C  38 E0 00 00 */	li r7, 0
/* 80650C30  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80650C34  FC 40 08 90 */	fmr f2, f1
/* 80650C38  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80650C3C  FC 80 18 90 */	fmr f4, f3
/* 80650C40  39 00 00 00 */	li r8, 0
/* 80650C44  4B C5 AD 40 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80650C48  48 00 00 AC */	b lbl_80650CF4
lbl_80650C4C:
/* 80650C4C  28 00 00 00 */	cmplwi r0, 0
/* 80650C50  40 82 00 A4 */	bne lbl_80650CF4
/* 80650C54  88 1E 06 6C */	lbz r0, 0x66c(r30)
/* 80650C58  28 00 00 02 */	cmplwi r0, 2
/* 80650C5C  41 82 00 0C */	beq lbl_80650C68
/* 80650C60  28 00 00 03 */	cmplwi r0, 3
/* 80650C64  40 82 00 90 */	bne lbl_80650CF4
lbl_80650C68:
/* 80650C68  38 00 00 00 */	li r0, 0
/* 80650C6C  98 1E 06 6C */	stb r0, 0x66c(r30)
/* 80650C70  3C 60 80 65 */	lis r3, stringBase0@ha
/* 80650C74  38 63 27 D0 */	addi r3, r3, stringBase0@l
/* 80650C78  38 80 00 44 */	li r4, 0x44
/* 80650C7C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80650C80  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80650C84  3C A5 00 02 */	addis r5, r5, 2
/* 80650C88  38 C0 00 80 */	li r6, 0x80
/* 80650C8C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80650C90  4B 9E B6 5C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80650C94  7C 64 1B 78 */	mr r4, r3
/* 80650C98  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80650C9C  38 A0 00 00 */	li r5, 0
/* 80650CA0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80650CA4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80650CA8  FC 60 08 90 */	fmr f3, f1
/* 80650CAC  C0 9F 00 04 */	lfs f4, 4(r31)
/* 80650CB0  4B 9C 01 C0 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80650CB4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070428@ha */
/* 80650CB8  38 03 04 28 */	addi r0, r3, 0x0428 /* 0x00070428@l */
/* 80650CBC  90 01 00 08 */	stw r0, 8(r1)
/* 80650CC0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80650CC4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80650CC8  80 63 00 00 */	lwz r3, 0(r3)
/* 80650CCC  38 81 00 08 */	addi r4, r1, 8
/* 80650CD0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80650CD4  38 C0 00 00 */	li r6, 0
/* 80650CD8  38 E0 00 00 */	li r7, 0
/* 80650CDC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80650CE0  FC 40 08 90 */	fmr f2, f1
/* 80650CE4  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80650CE8  FC 80 18 90 */	fmr f4, f3
/* 80650CEC  39 00 00 00 */	li r8, 0
/* 80650CF0  4B C5 AC 94 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80650CF4:
/* 80650CF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80650CF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80650CFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80650D00  7C 08 03 A6 */	mtlr r0
/* 80650D04  38 21 00 20 */	addi r1, r1, 0x20
/* 80650D08  4E 80 00 20 */	blr 
