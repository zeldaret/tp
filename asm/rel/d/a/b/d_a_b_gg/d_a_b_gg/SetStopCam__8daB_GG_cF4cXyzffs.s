lbl_805DFDFC:
/* 805DFDFC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805DFE00  7C 08 02 A6 */	mflr r0
/* 805DFE04  90 01 00 44 */	stw r0, 0x44(r1)
/* 805DFE08  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805DFE0C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805DFE10  7C 7E 1B 78 */	mr r30, r3
/* 805DFE14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805DFE18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805DFE1C  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 805DFE20  7C 00 07 74 */	extsb r0, r0
/* 805DFE24  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805DFE28  7C 63 02 14 */	add r3, r3, r0
/* 805DFE2C  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 805DFE30  3C 60 80 5F */	lis r3, lit_3912@ha
/* 805DFE34  C0 03 D0 64 */	lfs f0, lit_3912@l(r3)
/* 805DFE38  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805DFE3C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 805DFE40  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 805DFE44  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805DFE48  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805DFE4C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805DFE50  C0 44 00 08 */	lfs f2, 8(r4)
/* 805DFE54  C0 24 00 04 */	lfs f1, 4(r4)
/* 805DFE58  C0 04 00 00 */	lfs f0, 0(r4)
/* 805DFE5C  D0 1E 05 F4 */	stfs f0, 0x5f4(r30)
/* 805DFE60  D0 3E 05 F8 */	stfs f1, 0x5f8(r30)
/* 805DFE64  D0 5E 05 FC */	stfs f2, 0x5fc(r30)
/* 805DFE68  C0 1E 05 F4 */	lfs f0, 0x5f4(r30)
/* 805DFE6C  D0 1E 06 0C */	stfs f0, 0x60c(r30)
/* 805DFE70  C0 1E 05 F8 */	lfs f0, 0x5f8(r30)
/* 805DFE74  D0 1E 06 10 */	stfs f0, 0x610(r30)
/* 805DFE78  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 805DFE7C  D0 1E 06 14 */	stfs f0, 0x614(r30)
/* 805DFE80  C0 1E 05 F4 */	lfs f0, 0x5f4(r30)
/* 805DFE84  D0 1E 06 24 */	stfs f0, 0x624(r30)
/* 805DFE88  C0 1E 05 F8 */	lfs f0, 0x5f8(r30)
/* 805DFE8C  D0 1E 06 28 */	stfs f0, 0x628(r30)
/* 805DFE90  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 805DFE94  D0 1E 06 2C */	stfs f0, 0x62c(r30)
/* 805DFE98  38 61 00 20 */	addi r3, r1, 0x20
/* 805DFE9C  38 C1 00 2C */	addi r6, r1, 0x2c
/* 805DFEA0  4B C9 0F 20 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805DFEA4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805DFEA8  D0 1E 06 00 */	stfs f0, 0x600(r30)
/* 805DFEAC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805DFEB0  D0 1E 06 04 */	stfs f0, 0x604(r30)
/* 805DFEB4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805DFEB8  D0 1E 06 08 */	stfs f0, 0x608(r30)
/* 805DFEBC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805DFEC0  D0 1E 06 18 */	stfs f0, 0x618(r30)
/* 805DFEC4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805DFEC8  D0 1E 06 1C */	stfs f0, 0x61c(r30)
/* 805DFECC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805DFED0  D0 1E 06 20 */	stfs f0, 0x620(r30)
/* 805DFED4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805DFED8  D0 1E 06 30 */	stfs f0, 0x630(r30)
/* 805DFEDC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805DFEE0  D0 1E 06 34 */	stfs f0, 0x634(r30)
/* 805DFEE4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805DFEE8  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 805DFEEC  C0 1E 05 F4 */	lfs f0, 0x5f4(r30)
/* 805DFEF0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805DFEF4  C0 1E 05 F8 */	lfs f0, 0x5f8(r30)
/* 805DFEF8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805DFEFC  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 805DFF00  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805DFF04  C0 1E 06 00 */	lfs f0, 0x600(r30)
/* 805DFF08  D0 01 00 08 */	stfs f0, 8(r1)
/* 805DFF0C  C0 1E 06 04 */	lfs f0, 0x604(r30)
/* 805DFF10  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805DFF14  C0 1E 06 08 */	lfs f0, 0x608(r30)
/* 805DFF18  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805DFF1C  38 7F 02 48 */	addi r3, r31, 0x248
/* 805DFF20  38 81 00 14 */	addi r4, r1, 0x14
/* 805DFF24  38 A1 00 08 */	addi r5, r1, 8
/* 805DFF28  C0 3E 06 3C */	lfs f1, 0x63c(r30)
/* 805DFF2C  38 C0 00 00 */	li r6, 0
/* 805DFF30  4B BA 0B B0 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 805DFF34  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805DFF38  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805DFF3C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805DFF40  7C 08 03 A6 */	mtlr r0
/* 805DFF44  38 21 00 40 */	addi r1, r1, 0x40
/* 805DFF48  4E 80 00 20 */	blr 
