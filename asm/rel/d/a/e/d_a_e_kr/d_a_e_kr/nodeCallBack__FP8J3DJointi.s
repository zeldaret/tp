lbl_806FF9AC:
/* 806FF9AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806FF9B0  7C 08 02 A6 */	mflr r0
/* 806FF9B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806FF9B8  39 61 00 20 */	addi r11, r1, 0x20
/* 806FF9BC  4B C6 28 1D */	bl _savegpr_28
/* 806FF9C0  2C 04 00 00 */	cmpwi r4, 0
/* 806FF9C4  40 82 02 F8 */	bne lbl_806FFCBC
/* 806FF9C8  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 806FF9CC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 806FF9D0  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 806FF9D4  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 806FF9D8  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 806FF9DC  28 1C 00 00 */	cmplwi r28, 0
/* 806FF9E0  41 82 02 DC */	beq lbl_806FFCBC
/* 806FF9E4  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806FF9E8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806FF9EC  1F BF 00 30 */	mulli r29, r31, 0x30
/* 806FF9F0  7C 60 EA 14 */	add r3, r0, r29
/* 806FF9F4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806FF9F8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806FF9FC  80 84 00 00 */	lwz r4, 0(r4)
/* 806FFA00  4B C4 6A B1 */	bl PSMTXCopy
/* 806FFA04  2C 1F 00 03 */	cmpwi r31, 3
/* 806FFA08  41 82 00 0C */	beq lbl_806FFA14
/* 806FFA0C  2C 1F 00 04 */	cmpwi r31, 4
/* 806FFA10  40 82 00 5C */	bne lbl_806FFA6C
lbl_806FFA14:
/* 806FFA14  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FFA18  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FFA1C  80 63 00 00 */	lwz r3, 0(r3)
/* 806FFA20  A8 1C 0E 7C */	lha r0, 0xe7c(r28)
/* 806FFA24  7C 00 0E 70 */	srawi r0, r0, 1
/* 806FFA28  7C 00 01 94 */	addze r0, r0
/* 806FFA2C  7C 04 07 34 */	extsh r4, r0
/* 806FFA30  4B 90 CA 05 */	bl mDoMtx_YrotM__FPA4_fs
/* 806FFA34  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FFA38  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FFA3C  80 63 00 00 */	lwz r3, 0(r3)
/* 806FFA40  A8 9C 0E 7C */	lha r4, 0xe7c(r28)
/* 806FFA44  4B 90 C9 59 */	bl mDoMtx_XrotM__FPA4_fs
/* 806FFA48  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FFA4C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FFA50  80 63 00 00 */	lwz r3, 0(r3)
/* 806FFA54  A8 9C 0E 80 */	lha r4, 0xe80(r28)
/* 806FFA58  38 00 00 03 */	li r0, 3
/* 806FFA5C  7C 04 03 D6 */	divw r0, r4, r0
/* 806FFA60  7C 04 07 34 */	extsh r4, r0
/* 806FFA64  4B 90 CA 69 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806FFA68  48 00 00 58 */	b lbl_806FFAC0
lbl_806FFA6C:
/* 806FFA6C  2C 1F 00 08 */	cmpwi r31, 8
/* 806FFA70  40 82 00 2C */	bne lbl_806FFA9C
/* 806FFA74  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FFA78  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FFA7C  80 63 00 00 */	lwz r3, 0(r3)
/* 806FFA80  A8 9C 0E 80 */	lha r4, 0xe80(r28)
/* 806FFA84  38 00 00 03 */	li r0, 3
/* 806FFA88  7C 04 03 D6 */	divw r0, r4, r0
/* 806FFA8C  7C 00 00 D0 */	neg r0, r0
/* 806FFA90  7C 04 07 34 */	extsh r4, r0
/* 806FFA94  4B 90 CA 39 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806FFA98  48 00 00 28 */	b lbl_806FFAC0
lbl_806FFA9C:
/* 806FFA9C  2C 1F 00 07 */	cmpwi r31, 7
/* 806FFAA0  40 82 00 20 */	bne lbl_806FFAC0
/* 806FFAA4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FFAA8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FFAAC  80 63 00 00 */	lwz r3, 0(r3)
/* 806FFAB0  A8 1C 0E 80 */	lha r0, 0xe80(r28)
/* 806FFAB4  7C 00 00 D0 */	neg r0, r0
/* 806FFAB8  7C 04 07 34 */	extsh r4, r0
/* 806FFABC  4B 90 CA 11 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_806FFAC0:
/* 806FFAC0  2C 1F 00 0A */	cmpwi r31, 0xa
/* 806FFAC4  41 80 00 4C */	blt lbl_806FFB10
/* 806FFAC8  2C 1F 00 0D */	cmpwi r31, 0xd
/* 806FFACC  41 81 00 44 */	bgt lbl_806FFB10
/* 806FFAD0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FFAD4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FFAD8  80 63 00 00 */	lwz r3, 0(r3)
/* 806FFADC  A8 1C 0E A0 */	lha r0, 0xea0(r28)
/* 806FFAE0  7C 00 0E 70 */	srawi r0, r0, 1
/* 806FFAE4  7C 00 01 94 */	addze r0, r0
/* 806FFAE8  7C 04 07 34 */	extsh r4, r0
/* 806FFAEC  4B 90 C9 E1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806FFAF0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FFAF4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FFAF8  80 63 00 00 */	lwz r3, 0(r3)
/* 806FFAFC  57 E0 08 3C */	slwi r0, r31, 1
/* 806FFB00  7C 9C 02 14 */	add r4, r28, r0
/* 806FFB04  A8 84 0E 7C */	lha r4, 0xe7c(r4)
/* 806FFB08  4B 90 C8 95 */	bl mDoMtx_XrotM__FPA4_fs
/* 806FFB0C  48 00 00 50 */	b lbl_806FFB5C
lbl_806FFB10:
/* 806FFB10  2C 1F 00 0F */	cmpwi r31, 0xf
/* 806FFB14  41 80 00 48 */	blt lbl_806FFB5C
/* 806FFB18  2C 1F 00 12 */	cmpwi r31, 0x12
/* 806FFB1C  41 81 00 40 */	bgt lbl_806FFB5C
/* 806FFB20  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FFB24  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FFB28  80 63 00 00 */	lwz r3, 0(r3)
/* 806FFB2C  A8 1C 0E A2 */	lha r0, 0xea2(r28)
/* 806FFB30  7C 00 0E 70 */	srawi r0, r0, 1
/* 806FFB34  7C 00 01 94 */	addze r0, r0
/* 806FFB38  7C 04 07 34 */	extsh r4, r0
/* 806FFB3C  4B 90 C9 91 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806FFB40  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FFB44  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FFB48  80 63 00 00 */	lwz r3, 0(r3)
/* 806FFB4C  57 E0 08 3C */	slwi r0, r31, 1
/* 806FFB50  7C 9C 02 14 */	add r4, r28, r0
/* 806FFB54  A8 84 0E 7C */	lha r4, 0xe7c(r4)
/* 806FFB58  4B 90 C8 45 */	bl mDoMtx_XrotM__FPA4_fs
lbl_806FFB5C:
/* 806FFB5C  2C 1F 00 03 */	cmpwi r31, 3
/* 806FFB60  40 82 00 1C */	bne lbl_806FFB7C
/* 806FFB64  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FFB68  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FFB6C  80 63 00 00 */	lwz r3, 0(r3)
/* 806FFB70  A8 9C 0E AC */	lha r4, 0xeac(r28)
/* 806FFB74  4B 90 C9 59 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806FFB78  48 00 00 B4 */	b lbl_806FFC2C
lbl_806FFB7C:
/* 806FFB7C  2C 1F 00 13 */	cmpwi r31, 0x13
/* 806FFB80  40 82 00 24 */	bne lbl_806FFBA4
/* 806FFB84  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FFB88  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FFB8C  80 63 00 00 */	lwz r3, 0(r3)
/* 806FFB90  A8 1C 0E AC */	lha r0, 0xeac(r28)
/* 806FFB94  7C 00 00 D0 */	neg r0, r0
/* 806FFB98  7C 04 07 34 */	extsh r4, r0
/* 806FFB9C  4B 90 C9 31 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806FFBA0  48 00 00 8C */	b lbl_806FFC2C
lbl_806FFBA4:
/* 806FFBA4  2C 1F 00 14 */	cmpwi r31, 0x14
/* 806FFBA8  40 82 00 24 */	bne lbl_806FFBCC
/* 806FFBAC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FFBB0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FFBB4  80 63 00 00 */	lwz r3, 0(r3)
/* 806FFBB8  A8 1C 0E AE */	lha r0, 0xeae(r28)
/* 806FFBBC  7C 00 00 D0 */	neg r0, r0
/* 806FFBC0  7C 04 07 34 */	extsh r4, r0
/* 806FFBC4  4B 90 C9 09 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806FFBC8  48 00 00 64 */	b lbl_806FFC2C
lbl_806FFBCC:
/* 806FFBCC  2C 1F 00 19 */	cmpwi r31, 0x19
/* 806FFBD0  40 82 00 24 */	bne lbl_806FFBF4
/* 806FFBD4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FFBD8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FFBDC  80 63 00 00 */	lwz r3, 0(r3)
/* 806FFBE0  A8 1C 0E B0 */	lha r0, 0xeb0(r28)
/* 806FFBE4  7C 00 00 D0 */	neg r0, r0
/* 806FFBE8  7C 04 07 34 */	extsh r4, r0
/* 806FFBEC  4B 90 C8 E1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806FFBF0  48 00 00 3C */	b lbl_806FFC2C
lbl_806FFBF4:
/* 806FFBF4  2C 1F 00 1E */	cmpwi r31, 0x1e
/* 806FFBF8  41 82 00 0C */	beq lbl_806FFC04
/* 806FFBFC  2C 1F 00 1F */	cmpwi r31, 0x1f
/* 806FFC00  40 82 00 2C */	bne lbl_806FFC2C
lbl_806FFC04:
/* 806FFC04  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FFC08  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FFC0C  80 63 00 00 */	lwz r3, 0(r3)
/* 806FFC10  A8 9C 0E B6 */	lha r4, 0xeb6(r28)
/* 806FFC14  4B 90 C8 21 */	bl mDoMtx_YrotM__FPA4_fs
/* 806FFC18  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FFC1C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FFC20  80 63 00 00 */	lwz r3, 0(r3)
/* 806FFC24  A8 9C 0E B6 */	lha r4, 0xeb6(r28)
/* 806FFC28  4B 90 C8 A5 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_806FFC2C:
/* 806FFC2C  A8 9C 0E BC */	lha r4, 0xebc(r28)
/* 806FFC30  7C 80 07 35 */	extsh. r0, r4
/* 806FFC34  41 82 00 54 */	beq lbl_806FFC88
/* 806FFC38  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 806FFC3C  41 82 00 18 */	beq lbl_806FFC54
/* 806FFC40  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FFC44  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FFC48  80 63 00 00 */	lwz r3, 0(r3)
/* 806FFC4C  4B 90 C7 E9 */	bl mDoMtx_YrotM__FPA4_fs
/* 806FFC50  48 00 00 38 */	b lbl_806FFC88
lbl_806FFC54:
/* 806FFC54  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 806FFC58  41 82 00 18 */	beq lbl_806FFC70
/* 806FFC5C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FFC60  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FFC64  80 63 00 00 */	lwz r3, 0(r3)
/* 806FFC68  4B 90 C7 35 */	bl mDoMtx_XrotM__FPA4_fs
/* 806FFC6C  48 00 00 1C */	b lbl_806FFC88
lbl_806FFC70:
/* 806FFC70  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 806FFC74  41 82 00 14 */	beq lbl_806FFC88
/* 806FFC78  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FFC7C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FFC80  80 63 00 00 */	lwz r3, 0(r3)
/* 806FFC84  4B 90 C8 49 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_806FFC88:
/* 806FFC88  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FFC8C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FFC90  80 63 00 00 */	lwz r3, 0(r3)
/* 806FFC94  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 806FFC98  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806FFC9C  7C 80 EA 14 */	add r4, r0, r29
/* 806FFCA0  4B C4 68 11 */	bl PSMTXCopy
/* 806FFCA4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806FFCA8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806FFCAC  80 63 00 00 */	lwz r3, 0(r3)
/* 806FFCB0  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 806FFCB4  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 806FFCB8  4B C4 67 F9 */	bl PSMTXCopy
lbl_806FFCBC:
/* 806FFCBC  38 60 00 01 */	li r3, 1
/* 806FFCC0  39 61 00 20 */	addi r11, r1, 0x20
/* 806FFCC4  4B C6 25 61 */	bl _restgpr_28
/* 806FFCC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806FFCCC  7C 08 03 A6 */	mtlr r0
/* 806FFCD0  38 21 00 20 */	addi r1, r1, 0x20
/* 806FFCD4  4E 80 00 20 */	blr 
