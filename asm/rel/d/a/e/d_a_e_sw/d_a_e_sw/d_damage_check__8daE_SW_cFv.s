lbl_807ACCB0:
/* 807ACCB0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807ACCB4  7C 08 02 A6 */	mflr r0
/* 807ACCB8  90 01 00 94 */	stw r0, 0x94(r1)
/* 807ACCBC  39 61 00 90 */	addi r11, r1, 0x90
/* 807ACCC0  4B BB 55 1D */	bl _savegpr_29
/* 807ACCC4  7C 7D 1B 78 */	mr r29, r3
/* 807ACCC8  3C 60 80 7B */	lis r3, cNullVec__6Z2Calc@ha /* 0x807AFE7C@ha */
/* 807ACCCC  3B E3 FE 7C */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x807AFE7C@l */
/* 807ACCD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807ACCD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807ACCD8  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 807ACCDC  38 7D 09 6C */	addi r3, r29, 0x96c
/* 807ACCE0  4B 8D 6B 51 */	bl Move__10dCcD_GSttsFv
/* 807ACCE4  A8 1D 06 F2 */	lha r0, 0x6f2(r29)
/* 807ACCE8  2C 00 00 00 */	cmpwi r0, 0
/* 807ACCEC  40 82 02 F4 */	bne lbl_807ACFE0
/* 807ACCF0  80 7F 01 78 */	lwz r3, 0x178(r31)
/* 807ACCF4  80 1F 01 7C */	lwz r0, 0x17c(r31)
/* 807ACCF8  90 61 00 68 */	stw r3, 0x68(r1)
/* 807ACCFC  90 01 00 6C */	stw r0, 0x6c(r1)
/* 807ACD00  80 1F 01 80 */	lwz r0, 0x180(r31)
/* 807ACD04  90 01 00 70 */	stw r0, 0x70(r1)
/* 807ACD08  38 7D 0A FC */	addi r3, r29, 0xafc
/* 807ACD0C  38 81 00 68 */	addi r4, r1, 0x68
/* 807ACD10  4B BB 53 39 */	bl __ptmf_cmpr
/* 807ACD14  2C 03 00 00 */	cmpwi r3, 0
/* 807ACD18  41 82 02 C8 */	beq lbl_807ACFE0
/* 807ACD1C  80 7F 01 84 */	lwz r3, 0x184(r31)
/* 807ACD20  80 1F 01 88 */	lwz r0, 0x188(r31)
/* 807ACD24  90 61 00 5C */	stw r3, 0x5c(r1)
/* 807ACD28  90 01 00 60 */	stw r0, 0x60(r1)
/* 807ACD2C  80 1F 01 8C */	lwz r0, 0x18c(r31)
/* 807ACD30  90 01 00 64 */	stw r0, 0x64(r1)
/* 807ACD34  38 7D 0A FC */	addi r3, r29, 0xafc
/* 807ACD38  38 81 00 5C */	addi r4, r1, 0x5c
/* 807ACD3C  4B BB 53 0D */	bl __ptmf_cmpr
/* 807ACD40  2C 03 00 00 */	cmpwi r3, 0
/* 807ACD44  40 82 00 08 */	bne lbl_807ACD4C
/* 807ACD48  48 00 02 98 */	b lbl_807ACFE0
lbl_807ACD4C:
/* 807ACD4C  80 1D 09 E8 */	lwz r0, 0x9e8(r29)
/* 807ACD50  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807ACD54  41 82 00 54 */	beq lbl_807ACDA8
/* 807ACD58  80 1D 09 E8 */	lwz r0, 0x9e8(r29)
/* 807ACD5C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807ACD60  90 1D 09 E8 */	stw r0, 0x9e8(r29)
/* 807ACD64  7F C3 F3 78 */	mr r3, r30
/* 807ACD68  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 807ACD6C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 807ACD70  7D 89 03 A6 */	mtctr r12
/* 807ACD74  4E 80 04 21 */	bctrl 
/* 807ACD78  2C 03 00 00 */	cmpwi r3, 0
/* 807ACD7C  41 82 00 2C */	beq lbl_807ACDA8
/* 807ACD80  80 7F 01 90 */	lwz r3, 0x190(r31)
/* 807ACD84  80 1F 01 94 */	lwz r0, 0x194(r31)
/* 807ACD88  90 61 00 50 */	stw r3, 0x50(r1)
/* 807ACD8C  90 01 00 54 */	stw r0, 0x54(r1)
/* 807ACD90  80 1F 01 98 */	lwz r0, 0x198(r31)
/* 807ACD94  90 01 00 58 */	stw r0, 0x58(r1)
/* 807ACD98  7F A3 EB 78 */	mr r3, r29
/* 807ACD9C  38 81 00 50 */	addi r4, r1, 0x50
/* 807ACDA0  4B FF FC A1 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
/* 807ACDA4  48 00 02 3C */	b lbl_807ACFE0
lbl_807ACDA8:
/* 807ACDA8  38 7D 09 8C */	addi r3, r29, 0x98c
/* 807ACDAC  4B 8D 76 B5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 807ACDB0  28 03 00 00 */	cmplwi r3, 0
/* 807ACDB4  41 82 02 2C */	beq lbl_807ACFE0
/* 807ACDB8  38 7D 09 8C */	addi r3, r29, 0x98c
/* 807ACDBC  4B 8D 77 3D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 807ACDC0  90 7D 0A C4 */	stw r3, 0xac4(r29)
/* 807ACDC4  80 7D 0A C4 */	lwz r3, 0xac4(r29)
/* 807ACDC8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807ACDCC  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 807ACDD0  41 82 00 10 */	beq lbl_807ACDE0
/* 807ACDD4  38 00 00 64 */	li r0, 0x64
/* 807ACDD8  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 807ACDDC  48 00 00 24 */	b lbl_807ACE00
lbl_807ACDE0:
/* 807ACDE0  80 1D 06 98 */	lwz r0, 0x698(r29)
/* 807ACDE4  2C 00 00 01 */	cmpwi r0, 1
/* 807ACDE8  40 81 00 10 */	ble lbl_807ACDF8
/* 807ACDEC  38 00 00 64 */	li r0, 0x64
/* 807ACDF0  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 807ACDF4  48 00 00 0C */	b lbl_807ACE00
lbl_807ACDF8:
/* 807ACDF8  38 00 00 0A */	li r0, 0xa
/* 807ACDFC  B0 1D 05 62 */	sth r0, 0x562(r29)
lbl_807ACE00:
/* 807ACE00  7F A3 EB 78 */	mr r3, r29
/* 807ACE04  38 9D 0A C4 */	addi r4, r29, 0xac4
/* 807ACE08  4B 8D AD FD */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 807ACE0C  80 7D 0A C4 */	lwz r3, 0xac4(r29)
/* 807ACE10  80 63 00 10 */	lwz r3, 0x10(r3)
/* 807ACE14  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 807ACE18  40 82 01 C8 */	bne lbl_807ACFE0
/* 807ACE1C  74 60 D8 00 */	andis. r0, r3, 0xd800
/* 807ACE20  41 82 00 10 */	beq lbl_807ACE30
/* 807ACE24  38 00 00 14 */	li r0, 0x14
/* 807ACE28  B0 1D 06 F2 */	sth r0, 0x6f2(r29)
/* 807ACE2C  48 00 00 0C */	b lbl_807ACE38
lbl_807ACE30:
/* 807ACE30  38 00 00 0A */	li r0, 0xa
/* 807ACE34  B0 1D 06 F2 */	sth r0, 0x6f2(r29)
lbl_807ACE38:
/* 807ACE38  88 1D 0A E3 */	lbz r0, 0xae3(r29)
/* 807ACE3C  7C 00 07 75 */	extsb. r0, r0
/* 807ACE40  41 82 00 0C */	beq lbl_807ACE4C
/* 807ACE44  38 00 00 0A */	li r0, 0xa
/* 807ACE48  B0 1D 06 F2 */	sth r0, 0x6f2(r29)
lbl_807ACE4C:
/* 807ACE4C  80 7D 0A C4 */	lwz r3, 0xac4(r29)
/* 807ACE50  80 63 00 10 */	lwz r3, 0x10(r3)
/* 807ACE54  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 807ACE58  41 82 00 70 */	beq lbl_807ACEC8
/* 807ACE5C  88 1E 05 68 */	lbz r0, 0x568(r30)
/* 807ACE60  28 00 00 17 */	cmplwi r0, 0x17
/* 807ACE64  41 82 00 30 */	beq lbl_807ACE94
/* 807ACE68  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 807ACE6C  28 00 00 18 */	cmplwi r0, 0x18
/* 807ACE70  41 82 00 24 */	beq lbl_807ACE94
/* 807ACE74  28 00 00 1F */	cmplwi r0, 0x1f
/* 807ACE78  41 82 00 1C */	beq lbl_807ACE94
/* 807ACE7C  28 00 00 12 */	cmplwi r0, 0x12
/* 807ACE80  41 82 00 14 */	beq lbl_807ACE94
/* 807ACE84  28 00 00 13 */	cmplwi r0, 0x13
/* 807ACE88  41 82 00 0C */	beq lbl_807ACE94
/* 807ACE8C  28 00 00 14 */	cmplwi r0, 0x14
/* 807ACE90  40 82 00 38 */	bne lbl_807ACEC8
lbl_807ACE94:
/* 807ACE94  38 00 00 00 */	li r0, 0
/* 807ACE98  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 807ACE9C  90 1D 06 98 */	stw r0, 0x698(r29)
/* 807ACEA0  80 7F 01 9C */	lwz r3, 0x19c(r31)
/* 807ACEA4  80 1F 01 A0 */	lwz r0, 0x1a0(r31)
/* 807ACEA8  90 61 00 44 */	stw r3, 0x44(r1)
/* 807ACEAC  90 01 00 48 */	stw r0, 0x48(r1)
/* 807ACEB0  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 807ACEB4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 807ACEB8  7F A3 EB 78 */	mr r3, r29
/* 807ACEBC  38 81 00 44 */	addi r4, r1, 0x44
/* 807ACEC0  4B FF FB 81 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
/* 807ACEC4  48 00 01 1C */	b lbl_807ACFE0
lbl_807ACEC8:
/* 807ACEC8  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 807ACECC  40 82 00 14 */	bne lbl_807ACEE0
/* 807ACED0  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 807ACED4  40 82 00 0C */	bne lbl_807ACEE0
/* 807ACED8  54 60 01 09 */	rlwinm. r0, r3, 0, 4, 4
/* 807ACEDC  41 82 00 38 */	beq lbl_807ACF14
lbl_807ACEE0:
/* 807ACEE0  38 00 00 00 */	li r0, 0
/* 807ACEE4  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 807ACEE8  90 1D 06 98 */	stw r0, 0x698(r29)
/* 807ACEEC  80 7F 01 A8 */	lwz r3, 0x1a8(r31)
/* 807ACEF0  80 1F 01 AC */	lwz r0, 0x1ac(r31)
/* 807ACEF4  90 61 00 38 */	stw r3, 0x38(r1)
/* 807ACEF8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 807ACEFC  80 1F 01 B0 */	lwz r0, 0x1b0(r31)
/* 807ACF00  90 01 00 40 */	stw r0, 0x40(r1)
/* 807ACF04  7F A3 EB 78 */	mr r3, r29
/* 807ACF08  38 81 00 38 */	addi r4, r1, 0x38
/* 807ACF0C  4B FF FB 35 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
/* 807ACF10  48 00 00 D0 */	b lbl_807ACFE0
lbl_807ACF14:
/* 807ACF14  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 807ACF18  41 82 00 2C */	beq lbl_807ACF44
/* 807ACF1C  80 7F 01 B4 */	lwz r3, 0x1b4(r31)
/* 807ACF20  80 1F 01 B8 */	lwz r0, 0x1b8(r31)
/* 807ACF24  90 61 00 2C */	stw r3, 0x2c(r1)
/* 807ACF28  90 01 00 30 */	stw r0, 0x30(r1)
/* 807ACF2C  80 1F 01 BC */	lwz r0, 0x1bc(r31)
/* 807ACF30  90 01 00 34 */	stw r0, 0x34(r1)
/* 807ACF34  7F A3 EB 78 */	mr r3, r29
/* 807ACF38  38 81 00 2C */	addi r4, r1, 0x2c
/* 807ACF3C  4B FF FB 05 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
/* 807ACF40  48 00 00 A0 */	b lbl_807ACFE0
lbl_807ACF44:
/* 807ACF44  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 807ACF48  40 82 00 14 */	bne lbl_807ACF5C
/* 807ACF4C  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 807ACF50  40 82 00 0C */	bne lbl_807ACF5C
/* 807ACF54  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 807ACF58  41 82 00 58 */	beq lbl_807ACFB0
lbl_807ACF5C:
/* 807ACF5C  80 7F 01 C0 */	lwz r3, 0x1c0(r31)
/* 807ACF60  80 1F 01 C4 */	lwz r0, 0x1c4(r31)
/* 807ACF64  90 61 00 20 */	stw r3, 0x20(r1)
/* 807ACF68  90 01 00 24 */	stw r0, 0x24(r1)
/* 807ACF6C  80 1F 01 C8 */	lwz r0, 0x1c8(r31)
/* 807ACF70  90 01 00 28 */	stw r0, 0x28(r1)
/* 807ACF74  38 7D 0A FC */	addi r3, r29, 0xafc
/* 807ACF78  38 81 00 20 */	addi r4, r1, 0x20
/* 807ACF7C  4B BB 50 CD */	bl __ptmf_cmpr
/* 807ACF80  2C 03 00 00 */	cmpwi r3, 0
/* 807ACF84  41 82 00 5C */	beq lbl_807ACFE0
/* 807ACF88  80 7F 01 CC */	lwz r3, 0x1cc(r31)
/* 807ACF8C  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 807ACF90  90 61 00 14 */	stw r3, 0x14(r1)
/* 807ACF94  90 01 00 18 */	stw r0, 0x18(r1)
/* 807ACF98  80 1F 01 D4 */	lwz r0, 0x1d4(r31)
/* 807ACF9C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807ACFA0  7F A3 EB 78 */	mr r3, r29
/* 807ACFA4  38 81 00 14 */	addi r4, r1, 0x14
/* 807ACFA8  4B FF FA 99 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
/* 807ACFAC  48 00 00 34 */	b lbl_807ACFE0
lbl_807ACFB0:
/* 807ACFB0  80 7D 06 98 */	lwz r3, 0x698(r29)
/* 807ACFB4  38 03 FF FF */	addi r0, r3, -1
/* 807ACFB8  90 1D 06 98 */	stw r0, 0x698(r29)
/* 807ACFBC  80 7F 01 D8 */	lwz r3, 0x1d8(r31)
/* 807ACFC0  80 1F 01 DC */	lwz r0, 0x1dc(r31)
/* 807ACFC4  90 61 00 08 */	stw r3, 8(r1)
/* 807ACFC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 807ACFCC  80 1F 01 E0 */	lwz r0, 0x1e0(r31)
/* 807ACFD0  90 01 00 10 */	stw r0, 0x10(r1)
/* 807ACFD4  7F A3 EB 78 */	mr r3, r29
/* 807ACFD8  38 81 00 08 */	addi r4, r1, 8
/* 807ACFDC  4B FF FA 65 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
lbl_807ACFE0:
/* 807ACFE0  39 61 00 90 */	addi r11, r1, 0x90
/* 807ACFE4  4B BB 52 45 */	bl _restgpr_29
/* 807ACFE8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807ACFEC  7C 08 03 A6 */	mtlr r0
/* 807ACFF0  38 21 00 90 */	addi r1, r1, 0x90
/* 807ACFF4  4E 80 00 20 */	blr 
