lbl_80D07A60:
/* 80D07A60  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D07A64  7C 08 02 A6 */	mflr r0
/* 80D07A68  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D07A6C  39 61 00 50 */	addi r11, r1, 0x50
/* 80D07A70  4B 65 A7 5C */	b _savegpr_25
/* 80D07A74  7C 7A 1B 78 */	mr r26, r3
/* 80D07A78  3C 60 80 D1 */	lis r3, lit_3867@ha
/* 80D07A7C  3B E3 85 C0 */	addi r31, r3, lit_3867@l
/* 80D07A80  A8 7A 05 74 */	lha r3, 0x574(r26)
/* 80D07A84  38 03 00 01 */	addi r0, r3, 1
/* 80D07A88  B0 1A 05 74 */	sth r0, 0x574(r26)
/* 80D07A8C  A8 1A 05 76 */	lha r0, 0x576(r26)
/* 80D07A90  2C 00 00 00 */	cmpwi r0, 0
/* 80D07A94  40 82 00 B4 */	bne lbl_80D07B48
/* 80D07A98  3B 7A 05 7C */	addi r27, r26, 0x57c
/* 80D07A9C  3B 80 00 00 */	li r28, 0
/* 80D07AA0  48 00 00 90 */	b lbl_80D07B30
lbl_80D07AA4:
/* 80D07AA4  88 1B 01 5C */	lbz r0, 0x15c(r27)
/* 80D07AA8  7C 00 07 75 */	extsb. r0, r0
/* 80D07AAC  41 82 00 7C */	beq lbl_80D07B28
/* 80D07AB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D07AB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D07AB8  C0 3B 00 04 */	lfs f1, 4(r27)
/* 80D07ABC  C0 5B 00 08 */	lfs f2, 8(r27)
/* 80D07AC0  C0 7B 00 0C */	lfs f3, 0xc(r27)
/* 80D07AC4  4B 63 EE 24 */	b PSMTXTrans
/* 80D07AC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D07ACC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D07AD0  A8 9B 00 1C */	lha r4, 0x1c(r27)
/* 80D07AD4  4B 30 49 60 */	b mDoMtx_YrotM__FPA4_fs
/* 80D07AD8  C0 3B 00 10 */	lfs f1, 0x10(r27)
/* 80D07ADC  C0 5B 00 14 */	lfs f2, 0x14(r27)
/* 80D07AE0  C0 7B 00 18 */	lfs f3, 0x18(r27)
/* 80D07AE4  4B 30 53 54 */	b scaleM__14mDoMtx_stack_cFfff
/* 80D07AE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D07AEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D07AF0  80 9B 00 00 */	lwz r4, 0(r27)
/* 80D07AF4  38 84 00 24 */	addi r4, r4, 0x24
/* 80D07AF8  4B 63 E9 B8 */	b PSMTXCopy
/* 80D07AFC  38 7B 01 44 */	addi r3, r27, 0x144
/* 80D07B00  38 9B 00 04 */	addi r4, r27, 4
/* 80D07B04  4B 56 76 D8 */	b SetC__8cM3dGCylFRC4cXyz
/* 80D07B08  38 7B 01 44 */	addi r3, r27, 0x144
/* 80D07B0C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D07B10  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 80D07B14  EC 21 00 32 */	fmuls f1, f1, f0
/* 80D07B18  4B 56 76 E8 */	b SetR__8cM3dGCylFf
/* 80D07B1C  38 7B 01 44 */	addi r3, r27, 0x144
/* 80D07B20  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80D07B24  4B 56 76 D4 */	b SetH__8cM3dGCylFf
lbl_80D07B28:
/* 80D07B28  3B 9C 00 01 */	addi r28, r28, 1
/* 80D07B2C  3B 7B 01 60 */	addi r27, r27, 0x160
lbl_80D07B30:
/* 80D07B30  80 1A 1B 7C */	lwz r0, 0x1b7c(r26)
/* 80D07B34  7C 1C 00 00 */	cmpw r28, r0
/* 80D07B38  41 80 FF 6C */	blt lbl_80D07AA4
/* 80D07B3C  38 00 00 01 */	li r0, 1
/* 80D07B40  B0 1A 05 76 */	sth r0, 0x576(r26)
/* 80D07B44  48 00 01 88 */	b lbl_80D07CCC
lbl_80D07B48:
/* 80D07B48  3B BA 05 7C */	addi r29, r26, 0x57c
/* 80D07B4C  3B 60 00 00 */	li r27, 0
/* 80D07B50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D07B54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D07B58  3B C3 23 3C */	addi r30, r3, 0x233c
/* 80D07B5C  48 00 01 64 */	b lbl_80D07CC0
lbl_80D07B60:
/* 80D07B60  7F C3 F3 78 */	mr r3, r30
/* 80D07B64  38 9D 00 20 */	addi r4, r29, 0x20
/* 80D07B68  4B 55 D0 40 */	b Set__4cCcSFP8cCcD_Obj
/* 80D07B6C  A8 1D 00 1E */	lha r0, 0x1e(r29)
/* 80D07B70  2C 00 00 00 */	cmpwi r0, 0
/* 80D07B74  40 82 00 44 */	bne lbl_80D07BB8
/* 80D07B78  38 7D 00 20 */	addi r3, r29, 0x20
/* 80D07B7C  4B 37 CA DC */	b ChkCoHit__12dCcD_GObjInfFv
/* 80D07B80  28 03 00 00 */	cmplwi r3, 0
/* 80D07B84  41 82 00 34 */	beq lbl_80D07BB8
/* 80D07B88  38 7D 00 20 */	addi r3, r29, 0x20
/* 80D07B8C  4B 37 CB 64 */	b GetCoHitObj__12dCcD_GObjInfFv
/* 80D07B90  4B 55 BE B8 */	b GetAc__8cCcD_ObjFv
/* 80D07B94  28 03 00 00 */	cmplwi r3, 0
/* 80D07B98  41 82 00 20 */	beq lbl_80D07BB8
/* 80D07B9C  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80D07BA0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D07BA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D07BA8  4C 41 13 82 */	cror 2, 1, 2
/* 80D07BAC  40 82 00 0C */	bne lbl_80D07BB8
/* 80D07BB0  38 00 00 14 */	li r0, 0x14
/* 80D07BB4  B0 1D 00 1E */	sth r0, 0x1e(r29)
lbl_80D07BB8:
/* 80D07BB8  A8 7D 00 1E */	lha r3, 0x1e(r29)
/* 80D07BBC  2C 03 00 00 */	cmpwi r3, 0
/* 80D07BC0  41 82 00 F8 */	beq lbl_80D07CB8
/* 80D07BC4  38 03 FF FF */	addi r0, r3, -1
/* 80D07BC8  B0 1D 00 1E */	sth r0, 0x1e(r29)
/* 80D07BCC  A8 DA 05 74 */	lha r6, 0x574(r26)
/* 80D07BD0  1C 06 13 88 */	mulli r0, r6, 0x1388
/* 80D07BD4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D07BD8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80D07BDC  38 A3 9A 20 */	addi r5, r3, sincosTable___5JMath@l
/* 80D07BE0  7C 65 04 2E */	lfsx f3, r5, r0
/* 80D07BE4  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80D07BE8  A8 1D 00 1E */	lha r0, 0x1e(r29)
/* 80D07BEC  C8 3F 00 10 */	lfd f1, 0x10(r31)
/* 80D07BF0  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 80D07BF4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D07BF8  3C 60 43 30 */	lis r3, 0x4330
/* 80D07BFC  90 61 00 08 */	stw r3, 8(r1)
/* 80D07C00  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D07C04  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D07C08  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80D07C0C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D07C10  FC 00 00 1E */	fctiwz f0, f0
/* 80D07C14  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80D07C18  83 81 00 14 */	lwz r28, 0x14(r1)
/* 80D07C1C  1C 06 17 70 */	mulli r0, r6, 0x1770
/* 80D07C20  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D07C24  7C 65 04 2E */	lfsx f3, r5, r0
/* 80D07C28  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D07C2C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80D07C30  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80D07C34  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D07C38  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80D07C3C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D07C40  FC 00 00 1E */	fctiwz f0, f0
/* 80D07C44  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80D07C48  83 21 00 24 */	lwz r25, 0x24(r1)
/* 80D07C4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D07C50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D07C54  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80D07C58  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80D07C5C  C0 7D 00 0C */	lfs f3, 0xc(r29)
/* 80D07C60  4B 63 EC 88 */	b PSMTXTrans
/* 80D07C64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D07C68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D07C6C  A8 9D 00 1C */	lha r4, 0x1c(r29)
/* 80D07C70  4B 30 47 C4 */	b mDoMtx_YrotM__FPA4_fs
/* 80D07C74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D07C78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D07C7C  7F 84 E3 78 */	mr r4, r28
/* 80D07C80  4B 30 47 1C */	b mDoMtx_XrotM__FPA4_fs
/* 80D07C84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D07C88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D07C8C  7F 24 CB 78 */	mr r4, r25
/* 80D07C90  4B 30 48 3C */	b mDoMtx_ZrotM__FPA4_fs
/* 80D07C94  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 80D07C98  C0 5D 00 14 */	lfs f2, 0x14(r29)
/* 80D07C9C  C0 7D 00 18 */	lfs f3, 0x18(r29)
/* 80D07CA0  4B 30 51 98 */	b scaleM__14mDoMtx_stack_cFfff
/* 80D07CA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D07CA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D07CAC  80 9D 00 00 */	lwz r4, 0(r29)
/* 80D07CB0  38 84 00 24 */	addi r4, r4, 0x24
/* 80D07CB4  4B 63 E7 FC */	b PSMTXCopy
lbl_80D07CB8:
/* 80D07CB8  3B 7B 00 01 */	addi r27, r27, 1
/* 80D07CBC  3B BD 01 60 */	addi r29, r29, 0x160
lbl_80D07CC0:
/* 80D07CC0  80 1A 1B 7C */	lwz r0, 0x1b7c(r26)
/* 80D07CC4  7C 1B 00 00 */	cmpw r27, r0
/* 80D07CC8  41 80 FE 98 */	blt lbl_80D07B60
lbl_80D07CCC:
/* 80D07CCC  38 60 00 01 */	li r3, 1
/* 80D07CD0  39 61 00 50 */	addi r11, r1, 0x50
/* 80D07CD4  4B 65 A5 44 */	b _restgpr_25
/* 80D07CD8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D07CDC  7C 08 03 A6 */	mtlr r0
/* 80D07CE0  38 21 00 50 */	addi r1, r1, 0x50
/* 80D07CE4  4E 80 00 20 */	blr 
