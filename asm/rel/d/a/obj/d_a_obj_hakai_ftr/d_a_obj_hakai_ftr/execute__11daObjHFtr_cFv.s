lbl_80C17BD4:
/* 80C17BD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C17BD8  7C 08 02 A6 */	mflr r0
/* 80C17BDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C17BE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80C17BE4  4B 74 A5 F5 */	bl _savegpr_28
/* 80C17BE8  7C 7F 1B 78 */	mr r31, r3
/* 80C17BEC  48 00 02 89 */	bl chkHit__11daObjHFtr_cFv
/* 80C17BF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C17BF4  41 82 00 84 */	beq lbl_80C17C78
/* 80C17BF8  7F E3 FB 78 */	mr r3, r31
/* 80C17BFC  48 00 02 E1 */	bl callEmt__11daObjHFtr_cFv
/* 80C17C00  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C17C04  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80C17C08  2C 00 00 01 */	cmpwi r0, 1
/* 80C17C0C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008012E@ha */
/* 80C17C10  3B C3 01 2E */	addi r30, r3, 0x012E /* 0x0008012E@l */
/* 80C17C14  40 82 00 08 */	bne lbl_80C17C1C
/* 80C17C18  3B C3 01 FE */	addi r30, r3, 0x1fe
lbl_80C17C1C:
/* 80C17C1C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C17C20  7C 03 07 74 */	extsb r3, r0
/* 80C17C24  4B 41 54 49 */	bl dComIfGp_getReverb__Fi
/* 80C17C28  7C 67 1B 78 */	mr r7, r3
/* 80C17C2C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C17C30  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C17C34  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C17C38  80 63 00 00 */	lwz r3, 0(r3)
/* 80C17C3C  38 81 00 08 */	addi r4, r1, 8
/* 80C17C40  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C17C44  38 C0 00 00 */	li r6, 0
/* 80C17C48  3D 00 80 C2 */	lis r8, lit_3863@ha /* 0x80C18120@ha */
/* 80C17C4C  C0 28 81 20 */	lfs f1, lit_3863@l(r8)  /* 0x80C18120@l */
/* 80C17C50  FC 40 08 90 */	fmr f2, f1
/* 80C17C54  3D 00 80 C2 */	lis r8, lit_3864@ha /* 0x80C18124@ha */
/* 80C17C58  C0 68 81 24 */	lfs f3, lit_3864@l(r8)  /* 0x80C18124@l */
/* 80C17C5C  FC 80 18 90 */	fmr f4, f3
/* 80C17C60  39 00 00 00 */	li r8, 0
/* 80C17C64  4B 69 3D 21 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C17C68  7F E3 FB 78 */	mr r3, r31
/* 80C17C6C  4B 40 20 11 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80C17C70  38 60 00 01 */	li r3, 1
/* 80C17C74  48 00 00 44 */	b lbl_80C17CB8
lbl_80C17C78:
/* 80C17C78  7F E3 FB 78 */	mr r3, r31
/* 80C17C7C  48 00 01 95 */	bl setModelMtx__11daObjHFtr_cFv
/* 80C17C80  3B 80 00 00 */	li r28, 0
/* 80C17C84  3B C0 00 00 */	li r30, 0
/* 80C17C88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C17C8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C17C90  3B A3 23 3C */	addi r29, r3, 0x233c
lbl_80C17C94:
/* 80C17C94  7F A3 EB 78 */	mr r3, r29
/* 80C17C98  38 9E 05 E8 */	addi r4, r30, 0x5e8
/* 80C17C9C  7C 9F 22 14 */	add r4, r31, r4
/* 80C17CA0  4B 64 CF 09 */	bl Set__4cCcSFP8cCcD_Obj
/* 80C17CA4  3B 9C 00 01 */	addi r28, r28, 1
/* 80C17CA8  2C 1C 00 02 */	cmpwi r28, 2
/* 80C17CAC  3B DE 01 3C */	addi r30, r30, 0x13c
/* 80C17CB0  41 80 FF E4 */	blt lbl_80C17C94
/* 80C17CB4  38 60 00 01 */	li r3, 1
lbl_80C17CB8:
/* 80C17CB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C17CBC  4B 74 A5 69 */	bl _restgpr_28
/* 80C17CC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C17CC4  7C 08 03 A6 */	mtlr r0
/* 80C17CC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C17CCC  4E 80 00 20 */	blr 
