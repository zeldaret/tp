lbl_80D44FB0:
/* 80D44FB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D44FB4  7C 08 02 A6 */	mflr r0
/* 80D44FB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D44FBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D44FC0  4B 61 D2 1D */	bl _savegpr_29
/* 80D44FC4  7C 7F 1B 78 */	mr r31, r3
/* 80D44FC8  3C 60 80 D4 */	lis r3, l_arcName@ha /* 0x80D455F0@ha */
/* 80D44FCC  38 63 55 F0 */	addi r3, r3, l_arcName@l /* 0x80D455F0@l */
/* 80D44FD0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D44FD4  38 80 00 06 */	li r4, 6
/* 80D44FD8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D44FDC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D44FE0  3F A5 00 02 */	addis r29, r5, 2
/* 80D44FE4  3B BD C2 F8 */	addi r29, r29, -15624
/* 80D44FE8  7F A5 EB 78 */	mr r5, r29
/* 80D44FEC  38 C0 00 80 */	li r6, 0x80
/* 80D44FF0  4B 2F 72 FD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D44FF4  3C 80 00 08 */	lis r4, 8
/* 80D44FF8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D44FFC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D45000  4B 2C FC 55 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D45004  90 7F 05 AC */	stw r3, 0x5ac(r31)
/* 80D45008  80 1F 05 AC */	lwz r0, 0x5ac(r31)
/* 80D4500C  28 00 00 00 */	cmplwi r0, 0
/* 80D45010  40 82 00 0C */	bne lbl_80D4501C
/* 80D45014  38 60 00 00 */	li r3, 0
/* 80D45018  48 00 00 B0 */	b lbl_80D450C8
lbl_80D4501C:
/* 80D4501C  3C 60 80 D4 */	lis r3, l_arcName@ha /* 0x80D455F0@ha */
/* 80D45020  38 63 55 F0 */	addi r3, r3, l_arcName@l /* 0x80D455F0@l */
/* 80D45024  80 63 00 00 */	lwz r3, 0(r3)
/* 80D45028  38 80 00 05 */	li r4, 5
/* 80D4502C  7F A5 EB 78 */	mr r5, r29
/* 80D45030  38 C0 00 80 */	li r6, 0x80
/* 80D45034  4B 2F 72 B9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D45038  7C 7E 1B 78 */	mr r30, r3
/* 80D4503C  3C 80 00 08 */	lis r4, 8
/* 80D45040  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D45044  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D45048  4B 2C FC 0D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D4504C  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80D45050  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 80D45054  28 00 00 00 */	cmplwi r0, 0
/* 80D45058  40 82 00 0C */	bne lbl_80D45064
/* 80D4505C  38 60 00 00 */	li r3, 0
/* 80D45060  48 00 00 68 */	b lbl_80D450C8
lbl_80D45064:
/* 80D45064  3C 60 80 D4 */	lis r3, l_arcName@ha /* 0x80D455F0@ha */
/* 80D45068  38 63 55 F0 */	addi r3, r3, l_arcName@l /* 0x80D455F0@l */
/* 80D4506C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D45070  38 80 00 09 */	li r4, 9
/* 80D45074  7F A5 EB 78 */	mr r5, r29
/* 80D45078  38 C0 00 80 */	li r6, 0x80
/* 80D4507C  4B 2F 72 71 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D45080  7C 65 1B 78 */	mr r5, r3
/* 80D45084  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80D45088  38 9E 00 58 */	addi r4, r30, 0x58
/* 80D4508C  38 C0 00 01 */	li r6, 1
/* 80D45090  38 E0 00 00 */	li r7, 0
/* 80D45094  3D 00 80 D4 */	lis r8, lit_3903@ha /* 0x80D455D0@ha */
/* 80D45098  C0 28 55 D0 */	lfs f1, lit_3903@l(r8)  /* 0x80D455D0@l */
/* 80D4509C  39 00 00 00 */	li r8, 0
/* 80D450A0  39 20 FF FF */	li r9, -1
/* 80D450A4  4B 2C 86 69 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80D450A8  2C 03 00 00 */	cmpwi r3, 0
/* 80D450AC  40 82 00 0C */	bne lbl_80D450B8
/* 80D450B0  38 60 00 00 */	li r3, 0
/* 80D450B4  48 00 00 14 */	b lbl_80D450C8
lbl_80D450B8:
/* 80D450B8  3C 60 80 D4 */	lis r3, lit_3816@ha /* 0x80D455CC@ha */
/* 80D450BC  C0 03 55 CC */	lfs f0, lit_3816@l(r3)  /* 0x80D455CC@l */
/* 80D450C0  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 80D450C4  38 60 00 01 */	li r3, 1
lbl_80D450C8:
/* 80D450C8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D450CC  4B 61 D1 5D */	bl _restgpr_29
/* 80D450D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D450D4  7C 08 03 A6 */	mtlr r0
/* 80D450D8  38 21 00 20 */	addi r1, r1, 0x20
/* 80D450DC  4E 80 00 20 */	blr 
