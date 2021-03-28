lbl_802CCA18:
/* 802CCA18  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 802CCA1C  7C 08 02 A6 */	mflr r0
/* 802CCA20  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 802CCA24  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 802CCA28  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 802CCA2C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 802CCA30  48 09 57 A9 */	bl _savegpr_28
/* 802CCA34  7C 7C 1B 78 */	mr r28, r3
/* 802CCA38  7C 9D 23 78 */	mr r29, r4
/* 802CCA3C  7C BE 2B 78 */	mr r30, r5
/* 802CCA40  7C DF 33 78 */	mr r31, r6
/* 802CCA44  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802CCA48  41 82 05 20 */	beq lbl_802CCF68
/* 802CCA4C  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802CCA50  88 63 00 0C */	lbz r3, 0xc(r3)
/* 802CCA54  7C 63 07 74 */	extsb r3, r3
/* 802CCA58  4B D6 06 15 */	bl dComIfGp_getReverb__Fi
/* 802CCA5C  7C 60 07 74 */	extsb r0, r3
/* 802CCA60  C8 22 C5 40 */	lfd f1, lit_3887(r2)
/* 802CCA64  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802CCA68  90 01 00 8C */	stw r0, 0x8c(r1)
/* 802CCA6C  3C 00 43 30 */	lis r0, 0x4330
/* 802CCA70  90 01 00 88 */	stw r0, 0x88(r1)
/* 802CCA74  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 802CCA78  EC 20 08 28 */	fsubs f1, f0, f1
/* 802CCA7C  C0 02 C5 3C */	lfs f0, lit_3885(r2)
/* 802CCA80  EF E1 00 24 */	fdivs f31, f1, f0
/* 802CCA84  88 1C 03 FE */	lbz r0, 0x3fe(r28)
/* 802CCA88  28 00 00 01 */	cmplwi r0, 1
/* 802CCA8C  41 82 00 0C */	beq lbl_802CCA98
/* 802CCA90  28 00 00 02 */	cmplwi r0, 2
/* 802CCA94  40 82 01 6C */	bne lbl_802CCC00
lbl_802CCA98:
/* 802CCA98  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802CCA9C  2C 00 00 64 */	cmpwi r0, 0x64
/* 802CCAA0  41 82 00 A4 */	beq lbl_802CCB44
/* 802CCAA4  40 80 00 2C */	bge lbl_802CCAD0
/* 802CCAA8  2C 00 00 1E */	cmpwi r0, 0x1e
/* 802CCAAC  41 82 00 5C */	beq lbl_802CCB08
/* 802CCAB0  40 80 00 10 */	bge lbl_802CCAC0
/* 802CCAB4  2C 00 00 19 */	cmpwi r0, 0x19
/* 802CCAB8  41 82 00 3C */	beq lbl_802CCAF4
/* 802CCABC  48 00 04 AC */	b lbl_802CCF68
lbl_802CCAC0:
/* 802CCAC0  2C 00 00 20 */	cmpwi r0, 0x20
/* 802CCAC4  41 82 00 6C */	beq lbl_802CCB30
/* 802CCAC8  40 80 04 A0 */	bge lbl_802CCF68
/* 802CCACC  48 00 00 50 */	b lbl_802CCB1C
lbl_802CCAD0:
/* 802CCAD0  2C 00 00 67 */	cmpwi r0, 0x67
/* 802CCAD4  41 82 00 AC */	beq lbl_802CCB80
/* 802CCAD8  40 80 00 10 */	bge lbl_802CCAE8
/* 802CCADC  2C 00 00 66 */	cmpwi r0, 0x66
/* 802CCAE0  40 80 00 8C */	bge lbl_802CCB6C
/* 802CCAE4  48 00 00 74 */	b lbl_802CCB58
lbl_802CCAE8:
/* 802CCAE8  2C 00 00 69 */	cmpwi r0, 0x69
/* 802CCAEC  40 80 04 7C */	bge lbl_802CCF68
/* 802CCAF0  48 00 00 A4 */	b lbl_802CCB94
lbl_802CCAF4:
/* 802CCAF4  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050075@ha */
/* 802CCAF8  38 03 00 75 */	addi r0, r3, 0x0075 /* 0x00050075@l */
/* 802CCAFC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 802CCB00  90 01 00 84 */	stw r0, 0x84(r1)
/* 802CCB04  48 00 00 A8 */	b lbl_802CCBAC
lbl_802CCB08:
/* 802CCB08  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500B5@ha */
/* 802CCB0C  38 03 00 B5 */	addi r0, r3, 0x00B5 /* 0x000500B5@l */
/* 802CCB10  90 01 00 78 */	stw r0, 0x78(r1)
/* 802CCB14  90 01 00 84 */	stw r0, 0x84(r1)
/* 802CCB18  48 00 00 94 */	b lbl_802CCBAC
lbl_802CCB1C:
/* 802CCB1C  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500B6@ha */
/* 802CCB20  38 03 00 B6 */	addi r0, r3, 0x00B6 /* 0x000500B6@l */
/* 802CCB24  90 01 00 74 */	stw r0, 0x74(r1)
/* 802CCB28  90 01 00 84 */	stw r0, 0x84(r1)
/* 802CCB2C  48 00 00 80 */	b lbl_802CCBAC
lbl_802CCB30:
/* 802CCB30  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500B7@ha */
/* 802CCB34  38 03 00 B7 */	addi r0, r3, 0x00B7 /* 0x000500B7@l */
/* 802CCB38  90 01 00 70 */	stw r0, 0x70(r1)
/* 802CCB3C  90 01 00 84 */	stw r0, 0x84(r1)
/* 802CCB40  48 00 00 6C */	b lbl_802CCBAC
lbl_802CCB44:
/* 802CCB44  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501C8@ha */
/* 802CCB48  38 03 01 C8 */	addi r0, r3, 0x01C8 /* 0x000501C8@l */
/* 802CCB4C  90 01 00 6C */	stw r0, 0x6c(r1)
/* 802CCB50  90 01 00 84 */	stw r0, 0x84(r1)
/* 802CCB54  48 00 00 58 */	b lbl_802CCBAC
lbl_802CCB58:
/* 802CCB58  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501C9@ha */
/* 802CCB5C  38 03 01 C9 */	addi r0, r3, 0x01C9 /* 0x000501C9@l */
/* 802CCB60  90 01 00 68 */	stw r0, 0x68(r1)
/* 802CCB64  90 01 00 84 */	stw r0, 0x84(r1)
/* 802CCB68  48 00 00 44 */	b lbl_802CCBAC
lbl_802CCB6C:
/* 802CCB6C  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500B8@ha */
/* 802CCB70  38 03 00 B8 */	addi r0, r3, 0x00B8 /* 0x000500B8@l */
/* 802CCB74  90 01 00 64 */	stw r0, 0x64(r1)
/* 802CCB78  90 01 00 84 */	stw r0, 0x84(r1)
/* 802CCB7C  48 00 00 30 */	b lbl_802CCBAC
lbl_802CCB80:
/* 802CCB80  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500B9@ha */
/* 802CCB84  38 03 00 B9 */	addi r0, r3, 0x00B9 /* 0x000500B9@l */
/* 802CCB88  90 01 00 60 */	stw r0, 0x60(r1)
/* 802CCB8C  90 01 00 84 */	stw r0, 0x84(r1)
/* 802CCB90  48 00 00 1C */	b lbl_802CCBAC
lbl_802CCB94:
/* 802CCB94  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500BA@ha */
/* 802CCB98  38 03 00 BA */	addi r0, r3, 0x00BA /* 0x000500BA@l */
/* 802CCB9C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 802CCBA0  90 01 00 84 */	stw r0, 0x84(r1)
/* 802CCBA4  48 00 00 08 */	b lbl_802CCBAC
/* 802CCBA8  48 00 03 C0 */	b lbl_802CCF68
lbl_802CCBAC:
/* 802CCBAC  80 61 00 84 */	lwz r3, 0x84(r1)
/* 802CCBB0  3C 03 00 01 */	addis r0, r3, 1
/* 802CCBB4  28 00 FF FF */	cmplwi r0, 0xffff
/* 802CCBB8  41 82 03 B0 */	beq lbl_802CCF68
/* 802CCBBC  90 61 00 58 */	stw r3, 0x58(r1)
/* 802CCBC0  38 7C 00 0C */	addi r3, r28, 0xc
/* 802CCBC4  38 81 00 58 */	addi r4, r1, 0x58
/* 802CCBC8  7F 85 E3 78 */	mr r5, r28
/* 802CCBCC  7F E6 FB 78 */	mr r6, r31
/* 802CCBD0  57 A7 06 3E */	clrlwi r7, r29, 0x18
/* 802CCBD4  FC 20 F8 90 */	fmr f1, f31
/* 802CCBD8  C0 42 C5 34 */	lfs f2, lit_3837(r2)
/* 802CCBDC  FC 60 10 90 */	fmr f3, f2
/* 802CCBE0  C0 82 C5 38 */	lfs f4, lit_3838(r2)
/* 802CCBE4  FC A0 20 90 */	fmr f5, f4
/* 802CCBE8  39 00 00 00 */	li r8, 0
/* 802CCBEC  81 9C 00 0C */	lwz r12, 0xc(r28)
/* 802CCBF0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802CCBF4  7D 89 03 A6 */	mtctr r12
/* 802CCBF8  4E 80 04 21 */	bctrl 
/* 802CCBFC  48 00 03 6C */	b lbl_802CCF68
lbl_802CCC00:
/* 802CCC00  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500CD@ha */
/* 802CCC04  38 03 00 CD */	addi r0, r3, 0x00CD /* 0x000500CD@l */
/* 802CCC08  90 01 00 80 */	stw r0, 0x80(r1)
/* 802CCC0C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802CCC10  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802CCC14  41 82 01 78 */	beq lbl_802CCD8C
/* 802CCC18  40 80 00 58 */	bge lbl_802CCC70
/* 802CCC1C  2C 00 00 20 */	cmpwi r0, 0x20
/* 802CCC20  41 82 01 18 */	beq lbl_802CCD38
/* 802CCC24  40 80 00 28 */	bge lbl_802CCC4C
/* 802CCC28  2C 00 00 1D */	cmpwi r0, 0x1d
/* 802CCC2C  41 82 00 D8 */	beq lbl_802CCD04
/* 802CCC30  40 80 00 10 */	bge lbl_802CCC40
/* 802CCC34  2C 00 00 03 */	cmpwi r0, 3
/* 802CCC38  41 82 00 90 */	beq lbl_802CCCC8
/* 802CCC3C  48 00 02 B0 */	b lbl_802CCEEC
lbl_802CCC40:
/* 802CCC40  2C 00 00 1F */	cmpwi r0, 0x1f
/* 802CCC44  40 80 02 A8 */	bge lbl_802CCEEC
/* 802CCC48  48 00 00 A0 */	b lbl_802CCCE8
lbl_802CCC4C:
/* 802CCC4C  2C 00 00 25 */	cmpwi r0, 0x25
/* 802CCC50  41 82 01 20 */	beq lbl_802CCD70
/* 802CCC54  40 80 00 10 */	bge lbl_802CCC64
/* 802CCC58  2C 00 00 23 */	cmpwi r0, 0x23
/* 802CCC5C  41 82 00 F8 */	beq lbl_802CCD54
/* 802CCC60  48 00 02 8C */	b lbl_802CCEEC
lbl_802CCC64:
/* 802CCC64  2C 00 00 27 */	cmpwi r0, 0x27
/* 802CCC68  40 80 02 84 */	bge lbl_802CCEEC
/* 802CCC6C  48 00 02 68 */	b lbl_802CCED4
lbl_802CCC70:
/* 802CCC70  2C 00 00 4A */	cmpwi r0, 0x4a
/* 802CCC74  41 82 01 F0 */	beq lbl_802CCE64
/* 802CCC78  40 80 00 2C */	bge lbl_802CCCA4
/* 802CCC7C  2C 00 00 47 */	cmpwi r0, 0x47
/* 802CCC80  41 82 01 90 */	beq lbl_802CCE10
/* 802CCC84  40 80 00 14 */	bge lbl_802CCC98
/* 802CCC88  2C 00 00 45 */	cmpwi r0, 0x45
/* 802CCC8C  41 82 01 34 */	beq lbl_802CCDC0
/* 802CCC90  40 80 01 64 */	bge lbl_802CCDF4
/* 802CCC94  48 00 02 58 */	b lbl_802CCEEC
lbl_802CCC98:
/* 802CCC98  2C 00 00 49 */	cmpwi r0, 0x49
/* 802CCC9C  40 80 01 AC */	bge lbl_802CCE48
/* 802CCCA0  48 00 01 8C */	b lbl_802CCE2C
lbl_802CCCA4:
/* 802CCCA4  2C 00 00 70 */	cmpwi r0, 0x70
/* 802CCCA8  41 82 02 10 */	beq lbl_802CCEB8
/* 802CCCAC  40 80 00 10 */	bge lbl_802CCCBC
/* 802CCCB0  2C 00 00 6B */	cmpwi r0, 0x6b
/* 802CCCB4  41 82 01 CC */	beq lbl_802CCE80
/* 802CCCB8  48 00 02 34 */	b lbl_802CCEEC
lbl_802CCCBC:
/* 802CCCBC  2C 00 00 72 */	cmpwi r0, 0x72
/* 802CCCC0  40 80 02 2C */	bge lbl_802CCEEC
/* 802CCCC4  48 00 01 D8 */	b lbl_802CCE9C
lbl_802CCCC8:
/* 802CCCC8  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802CCCCC  28 00 00 01 */	cmplwi r0, 1
/* 802CCCD0  40 82 02 1C */	bne lbl_802CCEEC
/* 802CCCD4  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802CCCD8  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100000B@ha */
/* 802CCCDC  38 84 00 0B */	addi r4, r4, 0x000B /* 0x0100000B@l */
/* 802CCCE0  4B FE 27 BD */	bl subBgmStart__8Z2SeqMgrFUl
/* 802CCCE4  48 00 02 84 */	b lbl_802CCF68
lbl_802CCCE8:
/* 802CCCE8  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802CCCEC  28 00 00 0F */	cmplwi r0, 0xf
/* 802CCCF0  40 82 01 FC */	bne lbl_802CCEEC
/* 802CCCF4  38 03 00 47 */	addi r0, r3, 0x47
/* 802CCCF8  90 01 00 54 */	stw r0, 0x54(r1)
/* 802CCCFC  90 01 00 80 */	stw r0, 0x80(r1)
/* 802CCD00  48 00 01 EC */	b lbl_802CCEEC
lbl_802CCD04:
/* 802CCD04  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802CCD08  28 00 00 04 */	cmplwi r0, 4
/* 802CCD0C  40 82 00 14 */	bne lbl_802CCD20
/* 802CCD10  38 03 00 E2 */	addi r0, r3, 0xe2
/* 802CCD14  90 01 00 50 */	stw r0, 0x50(r1)
/* 802CCD18  90 01 00 80 */	stw r0, 0x80(r1)
/* 802CCD1C  48 00 01 D0 */	b lbl_802CCEEC
lbl_802CCD20:
/* 802CCD20  28 00 00 05 */	cmplwi r0, 5
/* 802CCD24  40 82 01 C8 */	bne lbl_802CCEEC
/* 802CCD28  38 03 00 E3 */	addi r0, r3, 0xe3
/* 802CCD2C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802CCD30  90 01 00 80 */	stw r0, 0x80(r1)
/* 802CCD34  48 00 01 B8 */	b lbl_802CCEEC
lbl_802CCD38:
/* 802CCD38  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802CCD3C  28 00 00 06 */	cmplwi r0, 6
/* 802CCD40  40 82 01 AC */	bne lbl_802CCEEC
/* 802CCD44  38 03 00 DA */	addi r0, r3, 0xda
/* 802CCD48  90 01 00 48 */	stw r0, 0x48(r1)
/* 802CCD4C  90 01 00 80 */	stw r0, 0x80(r1)
/* 802CCD50  48 00 01 9C */	b lbl_802CCEEC
lbl_802CCD54:
/* 802CCD54  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802CCD58  28 00 00 0A */	cmplwi r0, 0xa
/* 802CCD5C  40 82 01 90 */	bne lbl_802CCEEC
/* 802CCD60  38 03 00 E4 */	addi r0, r3, 0xe4
/* 802CCD64  90 01 00 44 */	stw r0, 0x44(r1)
/* 802CCD68  90 01 00 80 */	stw r0, 0x80(r1)
/* 802CCD6C  48 00 01 80 */	b lbl_802CCEEC
lbl_802CCD70:
/* 802CCD70  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802CCD74  28 00 00 0A */	cmplwi r0, 0xa
/* 802CCD78  40 82 01 74 */	bne lbl_802CCEEC
/* 802CCD7C  38 03 00 D9 */	addi r0, r3, 0xd9
/* 802CCD80  90 01 00 40 */	stw r0, 0x40(r1)
/* 802CCD84  90 01 00 80 */	stw r0, 0x80(r1)
/* 802CCD88  48 00 01 64 */	b lbl_802CCEEC
lbl_802CCD8C:
/* 802CCD8C  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802CCD90  28 00 00 0F */	cmplwi r0, 0xf
/* 802CCD94  40 82 00 14 */	bne lbl_802CCDA8
/* 802CCD98  38 03 00 EE */	addi r0, r3, 0xee
/* 802CCD9C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802CCDA0  90 01 00 80 */	stw r0, 0x80(r1)
/* 802CCDA4  48 00 01 48 */	b lbl_802CCEEC
lbl_802CCDA8:
/* 802CCDA8  28 00 00 11 */	cmplwi r0, 0x11
/* 802CCDAC  40 82 01 40 */	bne lbl_802CCEEC
/* 802CCDB0  38 03 00 EF */	addi r0, r3, 0xef
/* 802CCDB4  90 01 00 38 */	stw r0, 0x38(r1)
/* 802CCDB8  90 01 00 80 */	stw r0, 0x80(r1)
/* 802CCDBC  48 00 01 30 */	b lbl_802CCEEC
lbl_802CCDC0:
/* 802CCDC0  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802CCDC4  28 00 00 01 */	cmplwi r0, 1
/* 802CCDC8  40 82 00 14 */	bne lbl_802CCDDC
/* 802CCDCC  38 03 01 CC */	addi r0, r3, 0x1cc
/* 802CCDD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802CCDD4  90 01 00 80 */	stw r0, 0x80(r1)
/* 802CCDD8  48 00 01 14 */	b lbl_802CCEEC
lbl_802CCDDC:
/* 802CCDDC  28 00 00 02 */	cmplwi r0, 2
/* 802CCDE0  40 82 01 0C */	bne lbl_802CCEEC
/* 802CCDE4  38 03 01 CD */	addi r0, r3, 0x1cd
/* 802CCDE8  90 01 00 30 */	stw r0, 0x30(r1)
/* 802CCDEC  90 01 00 80 */	stw r0, 0x80(r1)
/* 802CCDF0  48 00 00 FC */	b lbl_802CCEEC
lbl_802CCDF4:
/* 802CCDF4  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802CCDF8  28 00 00 01 */	cmplwi r0, 1
/* 802CCDFC  40 82 00 F0 */	bne lbl_802CCEEC
/* 802CCE00  38 03 01 CF */	addi r0, r3, 0x1cf
/* 802CCE04  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802CCE08  90 01 00 80 */	stw r0, 0x80(r1)
/* 802CCE0C  48 00 00 E0 */	b lbl_802CCEEC
lbl_802CCE10:
/* 802CCE10  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802CCE14  28 00 00 01 */	cmplwi r0, 1
/* 802CCE18  40 82 00 D4 */	bne lbl_802CCEEC
/* 802CCE1C  38 03 01 CA */	addi r0, r3, 0x1ca
/* 802CCE20  90 01 00 28 */	stw r0, 0x28(r1)
/* 802CCE24  90 01 00 80 */	stw r0, 0x80(r1)
/* 802CCE28  48 00 00 C4 */	b lbl_802CCEEC
lbl_802CCE2C:
/* 802CCE2C  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802CCE30  28 00 00 01 */	cmplwi r0, 1
/* 802CCE34  40 82 00 B8 */	bne lbl_802CCEEC
/* 802CCE38  38 03 01 CB */	addi r0, r3, 0x1cb
/* 802CCE3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CCE40  90 01 00 80 */	stw r0, 0x80(r1)
/* 802CCE44  48 00 00 A8 */	b lbl_802CCEEC
lbl_802CCE48:
/* 802CCE48  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802CCE4C  28 00 00 01 */	cmplwi r0, 1
/* 802CCE50  40 82 00 9C */	bne lbl_802CCEEC
/* 802CCE54  38 03 01 D0 */	addi r0, r3, 0x1d0
/* 802CCE58  90 01 00 20 */	stw r0, 0x20(r1)
/* 802CCE5C  90 01 00 80 */	stw r0, 0x80(r1)
/* 802CCE60  48 00 00 8C */	b lbl_802CCEEC
lbl_802CCE64:
/* 802CCE64  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802CCE68  28 00 00 01 */	cmplwi r0, 1
/* 802CCE6C  40 82 00 80 */	bne lbl_802CCEEC
/* 802CCE70  38 03 01 CE */	addi r0, r3, 0x1ce
/* 802CCE74  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802CCE78  90 01 00 80 */	stw r0, 0x80(r1)
/* 802CCE7C  48 00 00 70 */	b lbl_802CCEEC
lbl_802CCE80:
/* 802CCE80  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802CCE84  28 00 00 01 */	cmplwi r0, 1
/* 802CCE88  40 82 00 64 */	bne lbl_802CCEEC
/* 802CCE8C  38 03 01 D1 */	addi r0, r3, 0x1d1
/* 802CCE90  90 01 00 18 */	stw r0, 0x18(r1)
/* 802CCE94  90 01 00 80 */	stw r0, 0x80(r1)
/* 802CCE98  48 00 00 54 */	b lbl_802CCEEC
lbl_802CCE9C:
/* 802CCE9C  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802CCEA0  28 00 00 01 */	cmplwi r0, 1
/* 802CCEA4  40 82 00 48 */	bne lbl_802CCEEC
/* 802CCEA8  38 03 00 9F */	addi r0, r3, 0x9f
/* 802CCEAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CCEB0  90 01 00 80 */	stw r0, 0x80(r1)
/* 802CCEB4  48 00 00 38 */	b lbl_802CCEEC
lbl_802CCEB8:
/* 802CCEB8  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802CCEBC  28 00 00 01 */	cmplwi r0, 1
/* 802CCEC0  40 82 00 2C */	bne lbl_802CCEEC
/* 802CCEC4  38 03 00 42 */	addi r0, r3, 0x42
/* 802CCEC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802CCECC  90 01 00 80 */	stw r0, 0x80(r1)
/* 802CCED0  48 00 00 1C */	b lbl_802CCEEC
lbl_802CCED4:
/* 802CCED4  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802CCED8  28 00 00 04 */	cmplwi r0, 4
/* 802CCEDC  40 82 00 10 */	bne lbl_802CCEEC
/* 802CCEE0  38 03 02 A0 */	addi r0, r3, 0x2a0
/* 802CCEE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802CCEE8  90 01 00 80 */	stw r0, 0x80(r1)
lbl_802CCEEC:
/* 802CCEEC  80 1C 00 00 */	lwz r0, 0(r28)
/* 802CCEF0  28 00 00 00 */	cmplwi r0, 0
/* 802CCEF4  41 82 00 0C */	beq lbl_802CCF00
/* 802CCEF8  7F 83 E3 78 */	mr r3, r28
/* 802CCEFC  4B FD 52 89 */	bl releaseSound__14JAISoundHandleFv
lbl_802CCF00:
/* 802CCF00  80 01 00 80 */	lwz r0, 0x80(r1)
/* 802CCF04  90 01 00 08 */	stw r0, 8(r1)
/* 802CCF08  38 7C 00 0C */	addi r3, r28, 0xc
/* 802CCF0C  38 81 00 08 */	addi r4, r1, 8
/* 802CCF10  7F 85 E3 78 */	mr r5, r28
/* 802CCF14  7F E6 FB 78 */	mr r6, r31
/* 802CCF18  57 A7 06 3E */	clrlwi r7, r29, 0x18
/* 802CCF1C  FC 20 F8 90 */	fmr f1, f31
/* 802CCF20  C0 42 C5 34 */	lfs f2, lit_3837(r2)
/* 802CCF24  FC 60 10 90 */	fmr f3, f2
/* 802CCF28  C0 82 C5 38 */	lfs f4, lit_3838(r2)
/* 802CCF2C  FC A0 20 90 */	fmr f5, f4
/* 802CCF30  39 00 00 00 */	li r8, 0
/* 802CCF34  81 9C 00 0C */	lwz r12, 0xc(r28)
/* 802CCF38  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802CCF3C  7D 89 03 A6 */	mtctr r12
/* 802CCF40  4E 80 04 21 */	bctrl 
/* 802CCF44  80 1C 00 00 */	lwz r0, 0(r28)
/* 802CCF48  28 00 00 00 */	cmplwi r0, 0
/* 802CCF4C  41 82 00 1C */	beq lbl_802CCF68
/* 802CCF50  38 7C 00 0C */	addi r3, r28, 0xc
/* 802CCF54  7F 84 E3 78 */	mr r4, r28
/* 802CCF58  38 A0 00 08 */	li r5, 8
/* 802CCF5C  7F C6 F3 78 */	mr r6, r30
/* 802CCF60  38 E0 FF FF */	li r7, -1
/* 802CCF64  4B FD DF 79 */	bl setPortData__14Z2SoundStarterFP14JAISoundHandleUlUsSc
lbl_802CCF68:
/* 802CCF68  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 802CCF6C  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 802CCF70  39 61 00 A0 */	addi r11, r1, 0xa0
/* 802CCF74  48 09 52 B1 */	bl _restgpr_28
/* 802CCF78  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 802CCF7C  7C 08 03 A6 */	mtlr r0
/* 802CCF80  38 21 00 B0 */	addi r1, r1, 0xb0
/* 802CCF84  4E 80 00 20 */	blr 
