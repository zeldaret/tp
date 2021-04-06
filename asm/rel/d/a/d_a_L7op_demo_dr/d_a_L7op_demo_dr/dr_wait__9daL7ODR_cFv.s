lbl_805ABCF8:
/* 805ABCF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805ABCFC  7C 08 02 A6 */	mflr r0
/* 805ABD00  90 01 00 24 */	stw r0, 0x24(r1)
/* 805ABD04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805ABD08  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805ABD0C  7C 7F 1B 78 */	mr r31, r3
/* 805ABD10  3C 60 80 5B */	lis r3, lit_3850@ha /* 0x805ADF50@ha */
/* 805ABD14  3B C3 DF 50 */	addi r30, r3, lit_3850@l /* 0x805ADF50@l */
/* 805ABD18  80 1F 08 8C */	lwz r0, 0x88c(r31)
/* 805ABD1C  2C 00 00 00 */	cmpwi r0, 0
/* 805ABD20  40 82 00 D4 */	bne lbl_805ABDF4
/* 805ABD24  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805ABD28  D0 01 00 08 */	stfs f0, 8(r1)
/* 805ABD2C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805ABD30  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805ABD34  38 00 00 01 */	li r0, 1
/* 805ABD38  98 1F 08 B4 */	stb r0, 0x8b4(r31)
/* 805ABD3C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805ABD40  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805ABD44  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805ABD48  C0 03 04 04 */	lfs f0, 0x404(r3)
/* 805ABD4C  EC 41 00 32 */	fmuls f2, f1, f0
/* 805ABD50  C0 03 04 00 */	lfs f0, 0x400(r3)
/* 805ABD54  EC 01 00 32 */	fmuls f0, f1, f0
/* 805ABD58  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 805ABD5C  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 805ABD60  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805ABD64  D0 5F 04 D8 */	stfs f2, 0x4d8(r31)
/* 805ABD68  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805ABD6C  38 81 00 08 */	addi r4, r1, 8
/* 805ABD70  4B CC 4E 95 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805ABD74  38 03 40 00 */	addi r0, r3, 0x4000
/* 805ABD78  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805ABD7C  3C 60 80 5B */	lis r3, d_a_L7op_demo_dr__stringBase0@ha /* 0x805AE0AC@ha */
/* 805ABD80  38 63 E0 AC */	addi r3, r3, d_a_L7op_demo_dr__stringBase0@l /* 0x805AE0AC@l */
/* 805ABD84  38 80 00 2F */	li r4, 0x2f
/* 805ABD88  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805ABD8C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805ABD90  3C A5 00 02 */	addis r5, r5, 2
/* 805ABD94  38 C0 00 80 */	li r6, 0x80
/* 805ABD98  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805ABD9C  4B A9 05 51 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805ABDA0  7C 64 1B 78 */	mr r4, r3
/* 805ABDA4  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805ABDA8  38 A0 00 02 */	li r5, 2
/* 805ABDAC  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 805ABDB0  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 805ABDB4  C0 7E 00 08 */	lfs f3, 8(r30)
/* 805ABDB8  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 805ABDBC  4B A6 50 B5 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805ABDC0  38 00 00 2F */	li r0, 0x2f
/* 805ABDC4  90 1F 08 90 */	stw r0, 0x890(r31)
/* 805ABDC8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 805ABDCC  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805ABDD0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 805ABDD4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805ABDD8  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805ABDDC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 805ABDE0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 805ABDE4  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 805ABDE8  80 7F 08 8C */	lwz r3, 0x88c(r31)
/* 805ABDEC  38 03 00 01 */	addi r0, r3, 1
/* 805ABDF0  90 1F 08 8C */	stw r0, 0x88c(r31)
lbl_805ABDF4:
/* 805ABDF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805ABDF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805ABDFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805ABE00  7C 08 03 A6 */	mtlr r0
/* 805ABE04  38 21 00 20 */	addi r1, r1, 0x20
/* 805ABE08  4E 80 00 20 */	blr 
