lbl_80CDD5CC:
/* 80CDD5CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CDD5D0  7C 08 02 A6 */	mflr r0
/* 80CDD5D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CDD5D8  39 61 00 20 */	addi r11, r1, 0x20
/* 80CDD5DC  4B 68 4B FD */	bl _savegpr_28
/* 80CDD5E0  7C 7F 1B 78 */	mr r31, r3
/* 80CDD5E4  88 03 0B 28 */	lbz r0, 0xb28(r3)
/* 80CDD5E8  54 05 18 38 */	slwi r5, r0, 3
/* 80CDD5EC  3C 60 80 CE */	lis r3, l_bmdData@ha /* 0x80CDE394@ha */
/* 80CDD5F0  38 83 E3 94 */	addi r4, r3, l_bmdData@l /* 0x80CDE394@l */
/* 80CDD5F4  3B 84 00 04 */	addi r28, r4, 4
/* 80CDD5F8  7C 1C 28 2E */	lwzx r0, r28, r5
/* 80CDD5FC  54 00 10 3A */	slwi r0, r0, 2
/* 80CDD600  3C 60 80 CE */	lis r3, l_resNameList@ha /* 0x80CDE39C@ha */
/* 80CDD604  38 63 E3 9C */	addi r3, r3, l_resNameList@l /* 0x80CDE39C@l */
/* 80CDD608  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CDD60C  7C 84 28 2E */	lwzx r4, r4, r5
/* 80CDD610  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDD614  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDD618  3F A5 00 02 */	addis r29, r5, 2
/* 80CDD61C  3B BD C2 F8 */	addi r29, r29, -15624
/* 80CDD620  7F A5 EB 78 */	mr r5, r29
/* 80CDD624  38 C0 00 80 */	li r6, 0x80
/* 80CDD628  4B 35 EC C5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CDD62C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CDD630  40 82 00 0C */	bne lbl_80CDD63C
/* 80CDD634  38 60 00 00 */	li r3, 0
/* 80CDD638  48 00 00 98 */	b lbl_80CDD6D0
lbl_80CDD63C:
/* 80CDD63C  3C 80 00 08 */	lis r4, 8
/* 80CDD640  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CDD644  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CDD648  4B 33 76 0D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CDD64C  90 7F 05 8C */	stw r3, 0x58c(r31)
/* 80CDD650  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 80CDD654  28 00 00 00 */	cmplwi r0, 0
/* 80CDD658  40 82 00 0C */	bne lbl_80CDD664
/* 80CDD65C  38 60 00 00 */	li r3, 0
/* 80CDD660  48 00 00 70 */	b lbl_80CDD6D0
lbl_80CDD664:
/* 80CDD664  88 1F 0B 28 */	lbz r0, 0xb28(r31)
/* 80CDD668  54 00 18 38 */	slwi r0, r0, 3
/* 80CDD66C  7C 1C 00 2E */	lwzx r0, r28, r0
/* 80CDD670  54 00 10 3A */	slwi r0, r0, 2
/* 80CDD674  3C 60 80 CE */	lis r3, l_resNameList@ha /* 0x80CDE39C@ha */
/* 80CDD678  38 63 E3 9C */	addi r3, r3, l_resNameList@l /* 0x80CDE39C@l */
/* 80CDD67C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CDD680  38 80 00 07 */	li r4, 7
/* 80CDD684  7F A5 EB 78 */	mr r5, r29
/* 80CDD688  38 C0 00 80 */	li r6, 0x80
/* 80CDD68C  4B 35 EC 61 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CDD690  7C 65 1B 79 */	or. r5, r3, r3
/* 80CDD694  41 82 00 38 */	beq lbl_80CDD6CC
/* 80CDD698  38 7F 05 68 */	addi r3, r31, 0x568
/* 80CDD69C  38 9E 00 58 */	addi r4, r30, 0x58
/* 80CDD6A0  38 C0 00 01 */	li r6, 1
/* 80CDD6A4  38 E0 00 00 */	li r7, 0
/* 80CDD6A8  3D 00 80 CE */	lis r8, lit_3892@ha /* 0x80CDE364@ha */
/* 80CDD6AC  C0 28 E3 64 */	lfs f1, lit_3892@l(r8)  /* 0x80CDE364@l */
/* 80CDD6B0  39 00 00 00 */	li r8, 0
/* 80CDD6B4  39 20 FF FF */	li r9, -1
/* 80CDD6B8  4B 33 00 55 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80CDD6BC  2C 03 00 00 */	cmpwi r3, 0
/* 80CDD6C0  41 82 00 0C */	beq lbl_80CDD6CC
/* 80CDD6C4  38 60 00 01 */	li r3, 1
/* 80CDD6C8  48 00 00 08 */	b lbl_80CDD6D0
lbl_80CDD6CC:
/* 80CDD6CC  38 60 00 00 */	li r3, 0
lbl_80CDD6D0:
/* 80CDD6D0  39 61 00 20 */	addi r11, r1, 0x20
/* 80CDD6D4  4B 68 4B 51 */	bl _restgpr_28
/* 80CDD6D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CDD6DC  7C 08 03 A6 */	mtlr r0
/* 80CDD6E0  38 21 00 20 */	addi r1, r1, 0x20
/* 80CDD6E4  4E 80 00 20 */	blr 
