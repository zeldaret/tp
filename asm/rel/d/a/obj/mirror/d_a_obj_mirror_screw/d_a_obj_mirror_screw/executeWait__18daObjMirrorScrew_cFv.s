lbl_80C98AE4:
/* 80C98AE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C98AE8  7C 08 02 A6 */	mflr r0
/* 80C98AEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C98AF0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C98AF4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C98AF8  7C 7F 1B 78 */	mr r31, r3
/* 80C98AFC  3C 60 80 CA */	lis r3, M_attr__18daObjMirrorScrew_c@ha /* 0x80C9975C@ha */
/* 80C98B00  3B C3 97 5C */	addi r30, r3, M_attr__18daObjMirrorScrew_c@l /* 0x80C9975C@l */
/* 80C98B04  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80C98B08  28 03 00 00 */	cmplwi r3, 0
/* 80C98B0C  41 82 00 DC */	beq lbl_80C98BE8
/* 80C98B10  A8 03 05 EE */	lha r0, 0x5ee(r3)
/* 80C98B14  C8 3E 00 28 */	lfd f1, 0x28(r30)
/* 80C98B18  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C98B1C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C98B20  3C 00 43 30 */	lis r0, 0x4330
/* 80C98B24  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C98B28  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C98B2C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C98B30  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80C98B34  EC 21 00 24 */	fdivs f1, f1, f0
/* 80C98B38  38 7E 00 00 */	addi r3, r30, 0
/* 80C98B3C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C98B40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C98B44  40 81 00 88 */	ble lbl_80C98BCC
/* 80C98B48  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80C98B4C  38 03 00 01 */	addi r0, r3, 1
/* 80C98B50  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 80C98B54  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80C98B58  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C98B5C  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80C98B60  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C98B64  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C98B68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C98B6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C98B70  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C98B74  38 80 00 04 */	li r4, 4
/* 80C98B78  38 A0 00 0F */	li r5, 0xf
/* 80C98B7C  38 C1 00 08 */	addi r6, r1, 8
/* 80C98B80  4B 3D 6F 91 */	bl StartQuake__12dVibration_cFii4cXyz
/* 80C98B84  80 9F 05 CC */	lwz r4, 0x5cc(r31)
/* 80C98B88  38 7E 00 00 */	addi r3, r30, 0
/* 80C98B8C  80 03 00 08 */	lwz r0, 8(r3)
/* 80C98B90  7C 04 00 00 */	cmpw r4, r0
/* 80C98B94  40 81 00 54 */	ble lbl_80C98BE8
/* 80C98B98  38 00 00 01 */	li r0, 1
/* 80C98B9C  90 1F 05 B0 */	stw r0, 0x5b0(r31)
/* 80C98BA0  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 80C98BA4  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80C98BA8  3C 60 80 CA */	lis r3, ActionTable__18daObjMirrorScrew_c@ha /* 0x80C997F4@ha */
/* 80C98BAC  38 03 97 F4 */	addi r0, r3, ActionTable__18daObjMirrorScrew_c@l /* 0x80C997F4@l */
/* 80C98BB0  7C 00 22 14 */	add r0, r0, r4
/* 80C98BB4  90 1F 05 AC */	stw r0, 0x5ac(r31)
/* 80C98BB8  7F E3 FB 78 */	mr r3, r31
/* 80C98BBC  81 9F 05 AC */	lwz r12, 0x5ac(r31)
/* 80C98BC0  4B 6C 94 C5 */	bl __ptmf_scall
/* 80C98BC4  60 00 00 00 */	nop 
/* 80C98BC8  48 00 00 20 */	b lbl_80C98BE8
lbl_80C98BCC:
/* 80C98BCC  38 00 00 00 */	li r0, 0
/* 80C98BD0  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 80C98BD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C98BD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C98BDC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C98BE0  38 80 00 1F */	li r4, 0x1f
/* 80C98BE4  4B 3D 71 B1 */	bl StopQuake__12dVibration_cFi
lbl_80C98BE8:
/* 80C98BE8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C98BEC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C98BF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C98BF4  7C 08 03 A6 */	mtlr r0
/* 80C98BF8  38 21 00 30 */	addi r1, r1, 0x30
/* 80C98BFC  4E 80 00 20 */	blr 
