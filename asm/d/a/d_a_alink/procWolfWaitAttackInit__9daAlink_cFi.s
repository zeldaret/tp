lbl_8013ADF0:
/* 8013ADF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8013ADF4  7C 08 02 A6 */	mflr r0
/* 8013ADF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8013ADFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8013AE00  48 22 73 D9 */	bl _savegpr_28
/* 8013AE04  7C 7F 1B 78 */	mr r31, r3
/* 8013AE08  7C 9D 23 78 */	mr r29, r4
/* 8013AE0C  3C 80 80 39 */	lis r4, lit_3757@ha
/* 8013AE10  3B C4 D6 58 */	addi r30, r4, lit_3757@l
/* 8013AE14  57 A0 18 38 */	slwi r0, r29, 3
/* 8013AE18  3B 9E 48 48 */	addi r28, r30, 0x4848
/* 8013AE1C  7F 9C 02 14 */	add r28, r28, r0
/* 8013AE20  38 80 01 20 */	li r4, 0x120
/* 8013AE24  4B F8 71 49 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013AE28  7F E3 FB 78 */	mr r3, r31
/* 8013AE2C  88 9C 00 04 */	lbz r4, 4(r28)
/* 8013AE30  4B F9 66 FD */	bl setCutType__9daAlink_cFUc
/* 8013AE34  38 00 00 00 */	li r0, 0
/* 8013AE38  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8013AE3C  2C 1D 00 02 */	cmpwi r29, 2
/* 8013AE40  40 82 00 10 */	bne lbl_8013AE50
/* 8013AE44  3B BE 1E C4 */	addi r29, r30, 0x1ec4
/* 8013AE48  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8013AE4C  48 00 00 28 */	b lbl_8013AE74
lbl_8013AE50:
/* 8013AE50  2C 1D 00 01 */	cmpwi r29, 1
/* 8013AE54  40 82 00 14 */	bne lbl_8013AE68
/* 8013AE58  3B BE 1E 88 */	addi r29, r30, 0x1e88
/* 8013AE5C  38 00 00 01 */	li r0, 1
/* 8013AE60  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8013AE64  48 00 00 10 */	b lbl_8013AE74
lbl_8013AE68:
/* 8013AE68  3B BE 1E 4C */	addi r29, r30, 0x1e4c
/* 8013AE6C  38 00 00 01 */	li r0, 1
/* 8013AE70  B0 1F 30 0E */	sth r0, 0x300e(r31)
lbl_8013AE74:
/* 8013AE74  88 1F 05 69 */	lbz r0, 0x569(r31)
/* 8013AE78  28 00 00 04 */	cmplwi r0, 4
/* 8013AE7C  40 82 00 40 */	bne lbl_8013AEBC
/* 8013AE80  7F E3 FB 78 */	mr r3, r31
/* 8013AE84  3C 80 80 00 */	lis r4, 0x8000
/* 8013AE88  38 A0 00 01 */	li r5, 1
/* 8013AE8C  38 C0 00 03 */	li r6, 3
/* 8013AE90  38 E0 00 04 */	li r7, 4
/* 8013AE94  39 00 00 03 */	li r8, 3
/* 8013AE98  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 8013AE9C  C0 5D 00 38 */	lfs f2, 0x38(r29)
/* 8013AEA0  4B F9 66 A1 */	bl setCylAtParam__9daAlink_cFUl11dCcG_At_SplUcUciff
/* 8013AEA4  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8013AEA8  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 8013AEAC  A8 1D 00 14 */	lha r0, 0x14(r29)
/* 8013AEB0  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8013AEB4  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8013AEB8  48 00 00 3C */	b lbl_8013AEF4
lbl_8013AEBC:
/* 8013AEBC  7F E3 FB 78 */	mr r3, r31
/* 8013AEC0  3C 80 80 00 */	lis r4, 0x8000
/* 8013AEC4  38 A0 00 00 */	li r5, 0
/* 8013AEC8  38 C0 00 01 */	li r6, 1
/* 8013AECC  38 E0 00 04 */	li r7, 4
/* 8013AED0  39 00 00 02 */	li r8, 2
/* 8013AED4  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 8013AED8  C0 5D 00 38 */	lfs f2, 0x38(r29)
/* 8013AEDC  4B F9 66 65 */	bl setCylAtParam__9daAlink_cFUl11dCcG_At_SplUcUciff
/* 8013AEE0  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 8013AEE4  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 8013AEE8  A8 1D 00 16 */	lha r0, 0x16(r29)
/* 8013AEEC  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8013AEF0  C0 5D 00 2C */	lfs f2, 0x2c(r29)
lbl_8013AEF4:
/* 8013AEF4  7F E3 FB 78 */	mr r3, r31
/* 8013AEF8  80 9C 00 00 */	lwz r4, 0(r28)
/* 8013AEFC  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8013AF00  A8 BD 00 00 */	lha r5, 0(r29)
/* 8013AF04  C0 7D 00 0C */	lfs f3, 0xc(r29)
/* 8013AF08  4B FE E7 FD */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 8013AF0C  80 9F 27 EC */	lwz r4, 0x27ec(r31)
/* 8013AF10  28 04 00 00 */	cmplwi r4, 0
/* 8013AF14  41 82 00 14 */	beq lbl_8013AF28
/* 8013AF18  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8013AF1C  38 84 05 38 */	addi r4, r4, 0x538
/* 8013AF20  48 13 5C E5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8013AF24  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
lbl_8013AF28:
/* 8013AF28  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013AF2C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8013AF30  38 00 00 00 */	li r0, 0
/* 8013AF34  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 8013AF38  38 00 00 02 */	li r0, 2
/* 8013AF3C  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 8013AF40  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 8013AF44  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 8013AF48  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 8013AF4C  D0 1F 34 80 */	stfs f0, 0x3480(r31)
/* 8013AF50  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8013AF54  D0 1F 34 84 */	stfs f0, 0x3484(r31)
/* 8013AF58  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 8013AF5C  D0 1F 34 88 */	stfs f0, 0x3488(r31)
/* 8013AF60  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 8013AF64  D0 1F 34 38 */	stfs f0, 0x3438(r31)
/* 8013AF68  38 7E 21 4C */	addi r3, r30, 0x214c
/* 8013AF6C  A8 03 00 16 */	lha r0, 0x16(r3)
/* 8013AF70  B0 1F 30 7E */	sth r0, 0x307e(r31)
/* 8013AF74  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha
/* 8013AF78  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)
/* 8013AF7C  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 8013AF80  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013AF84  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 8013AF88  C0 03 00 08 */	lfs f0, 8(r3)
/* 8013AF8C  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 8013AF90  88 1F 05 69 */	lbz r0, 0x569(r31)
/* 8013AF94  28 00 00 01 */	cmplwi r0, 1
/* 8013AF98  41 82 00 0C */	beq lbl_8013AFA4
/* 8013AF9C  38 00 00 0D */	li r0, 0xd
/* 8013AFA0  98 1F 2F 99 */	stb r0, 0x2f99(r31)
lbl_8013AFA4:
/* 8013AFA4  38 60 00 01 */	li r3, 1
/* 8013AFA8  39 61 00 20 */	addi r11, r1, 0x20
/* 8013AFAC  48 22 72 79 */	bl _restgpr_28
/* 8013AFB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013AFB4  7C 08 03 A6 */	mtlr r0
/* 8013AFB8  38 21 00 20 */	addi r1, r1, 0x20
/* 8013AFBC  4E 80 00 20 */	blr 
