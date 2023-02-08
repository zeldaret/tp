lbl_809FBB94:
/* 809FBB94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FBB98  7C 08 02 A6 */	mflr r0
/* 809FBB9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FBBA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FBBA4  93 C1 00 08 */	stw r30, 8(r1)
/* 809FBBA8  7C 7E 1B 78 */	mr r30, r3
/* 809FBBAC  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 809FBBB0  2C 00 00 06 */	cmpwi r0, 6
/* 809FBBB4  41 82 00 28 */	beq lbl_809FBBDC
/* 809FBBB8  83 FE 0B 5C */	lwz r31, 0xb5c(r30)
/* 809FBBBC  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809FBBC0  4B 74 9C D9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FBBC4  93 FE 0B 5C */	stw r31, 0xb5c(r30)
/* 809FBBC8  38 00 00 06 */	li r0, 6
/* 809FBBCC  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 809FBBD0  3C 60 80 A0 */	lis r3, lit_4869@ha /* 0x80A00720@ha */
/* 809FBBD4  C0 03 07 20 */	lfs f0, lit_4869@l(r3)  /* 0x80A00720@l */
/* 809FBBD8  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_809FBBDC:
/* 809FBBDC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809FBBE0  2C 00 00 12 */	cmpwi r0, 0x12
/* 809FBBE4  41 82 00 28 */	beq lbl_809FBC0C
/* 809FBBE8  83 FE 0B 80 */	lwz r31, 0xb80(r30)
/* 809FBBEC  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809FBBF0  4B 74 9C A9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FBBF4  93 FE 0B 80 */	stw r31, 0xb80(r30)
/* 809FBBF8  38 00 00 12 */	li r0, 0x12
/* 809FBBFC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809FBC00  3C 60 80 A0 */	lis r3, lit_4869@ha /* 0x80A00720@ha */
/* 809FBC04  C0 03 07 20 */	lfs f0, lit_4869@l(r3)  /* 0x80A00720@l */
/* 809FBC08  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809FBC0C:
/* 809FBC0C  3C 60 80 A0 */	lis r3, m__19daNpc_Hanjo_Param_c@ha /* 0x80A00600@ha */
/* 809FBC10  38 63 06 00 */	addi r3, r3, m__19daNpc_Hanjo_Param_c@l /* 0x80A00600@l */
/* 809FBC14  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 809FBC18  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 809FBC1C  38 00 00 01 */	li r0, 1
/* 809FBC20  98 1E 17 21 */	stb r0, 0x1721(r30)
/* 809FBC24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FBC28  83 C1 00 08 */	lwz r30, 8(r1)
/* 809FBC2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FBC30  7C 08 03 A6 */	mtlr r0
/* 809FBC34  38 21 00 10 */	addi r1, r1, 0x10
/* 809FBC38  4E 80 00 20 */	blr 
