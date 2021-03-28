lbl_806AED94:
/* 806AED94  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806AED98  7C 08 02 A6 */	mflr r0
/* 806AED9C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806AEDA0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806AEDA4  4B CB 34 34 */	b _savegpr_28
/* 806AEDA8  7C 7F 1B 78 */	mr r31, r3
/* 806AEDAC  3C 60 80 6B */	lis r3, lit_3792@ha
/* 806AEDB0  3B A3 5C D4 */	addi r29, r3, lit_3792@l
/* 806AEDB4  80 1F 07 08 */	lwz r0, 0x708(r31)
/* 806AEDB8  2C 00 00 05 */	cmpwi r0, 5
/* 806AEDBC  41 82 00 28 */	beq lbl_806AEDE4
/* 806AEDC0  2C 00 00 07 */	cmpwi r0, 7
/* 806AEDC4  41 82 00 20 */	beq lbl_806AEDE4
/* 806AEDC8  2C 00 00 04 */	cmpwi r0, 4
/* 806AEDCC  41 82 00 18 */	beq lbl_806AEDE4
/* 806AEDD0  38 7F 07 34 */	addi r3, r31, 0x734
/* 806AEDD4  38 80 00 00 */	li r4, 0
/* 806AEDD8  38 A0 02 00 */	li r5, 0x200
/* 806AEDDC  4B BC 1D B4 */	b cLib_chaseAngleS__FPsss
/* 806AEDE0  48 00 01 04 */	b lbl_806AEEE4
lbl_806AEDE4:
/* 806AEDE4  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806AEDE8  83 83 00 04 */	lwz r28, 4(r3)
/* 806AEDEC  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806AEDF0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806AEDF4  38 63 05 70 */	addi r3, r3, 0x570
/* 806AEDF8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806AEDFC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806AEE00  4B C9 76 B0 */	b PSMTXCopy
/* 806AEE04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806AEE08  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l
/* 806AEE0C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 806AEE10  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806AEE14  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 806AEE18  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806AEE1C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 806AEE20  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806AEE24  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806AEE28  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806AEE2C  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 806AEE30  7F C4 F3 78 */	mr r4, r30
/* 806AEE34  4B C9 76 7C */	b PSMTXCopy
/* 806AEE38  C0 3D 00 80 */	lfs f1, 0x80(r29)
/* 806AEE3C  C0 5D 00 5C */	lfs f2, 0x5c(r29)
/* 806AEE40  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 806AEE44  4B 95 DF 58 */	b transM__14mDoMtx_stack_cFfff
/* 806AEE48  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 806AEE4C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806AEE50  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 806AEE54  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806AEE58  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 806AEE5C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806AEE60  38 61 00 20 */	addi r3, r1, 0x20
/* 806AEE64  4B 9C 8E 04 */	b __ct__11dBgS_LinChkFv
/* 806AEE68  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806AEE6C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806AEE70  38 61 00 20 */	addi r3, r1, 0x20
/* 806AEE74  38 81 00 14 */	addi r4, r1, 0x14
/* 806AEE78  38 A1 00 08 */	addi r5, r1, 8
/* 806AEE7C  7F E6 FB 78 */	mr r6, r31
/* 806AEE80  4B 9C 8E E4 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806AEE84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806AEE88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806AEE8C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806AEE90  38 81 00 20 */	addi r4, r1, 0x20
/* 806AEE94  4B 9C 55 20 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806AEE98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806AEE9C  41 82 00 20 */	beq lbl_806AEEBC
/* 806AEEA0  38 7F 07 34 */	addi r3, r31, 0x734
/* 806AEEA4  38 80 3A 98 */	li r4, 0x3a98
/* 806AEEA8  38 A0 04 00 */	li r5, 0x400
/* 806AEEAC  4B BC 1C E4 */	b cLib_chaseAngleS__FPsss
/* 806AEEB0  38 00 00 00 */	li r0, 0
/* 806AEEB4  90 1F 07 30 */	stw r0, 0x730(r31)
/* 806AEEB8  48 00 00 20 */	b lbl_806AEED8
lbl_806AEEBC:
/* 806AEEBC  80 1F 07 08 */	lwz r0, 0x708(r31)
/* 806AEEC0  2C 00 00 05 */	cmpwi r0, 5
/* 806AEEC4  41 82 00 14 */	beq lbl_806AEED8
/* 806AEEC8  38 7F 07 34 */	addi r3, r31, 0x734
/* 806AEECC  38 80 00 00 */	li r4, 0
/* 806AEED0  38 A0 02 00 */	li r5, 0x200
/* 806AEED4  4B BC 1C BC */	b cLib_chaseAngleS__FPsss
lbl_806AEED8:
/* 806AEED8  38 61 00 20 */	addi r3, r1, 0x20
/* 806AEEDC  38 80 FF FF */	li r4, -1
/* 806AEEE0  4B 9C 8D FC */	b __dt__11dBgS_LinChkFv
lbl_806AEEE4:
/* 806AEEE4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806AEEE8  4B CB 33 3C */	b _restgpr_28
/* 806AEEEC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806AEEF0  7C 08 03 A6 */	mtlr r0
/* 806AEEF4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806AEEF8  4E 80 00 20 */	blr 
