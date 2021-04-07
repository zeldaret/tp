lbl_8097BF10:
/* 8097BF10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8097BF14  7C 08 02 A6 */	mflr r0
/* 8097BF18  90 01 00 24 */	stw r0, 0x24(r1)
/* 8097BF1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8097BF20  7C 7F 1B 78 */	mr r31, r3
/* 8097BF24  88 03 0B 94 */	lbz r0, 0xb94(r3)
/* 8097BF28  28 00 00 00 */	cmplwi r0, 0
/* 8097BF2C  41 82 00 48 */	beq lbl_8097BF74
/* 8097BF30  38 80 00 22 */	li r4, 0x22
/* 8097BF34  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097BF38  4B 7D C1 B9 */	bl getAnmP__10daNpcCd2_cFii
/* 8097BF3C  7C 64 1B 78 */	mr r4, r3
/* 8097BF40  7F E3 FB 78 */	mr r3, r31
/* 8097BF44  3C A0 80 98 */	lis r5, lit_4091@ha /* 0x8097F544@ha */
/* 8097BF48  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)  /* 0x8097F544@l */
/* 8097BF4C  3C A0 80 98 */	lis r5, lit_4092@ha /* 0x8097F548@ha */
/* 8097BF50  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)  /* 0x8097F548@l */
/* 8097BF54  38 A0 00 02 */	li r5, 2
/* 8097BF58  38 C0 00 00 */	li r6, 0
/* 8097BF5C  38 E0 FF FF */	li r7, -1
/* 8097BF60  4B 7D CF A1 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097BF64  38 00 00 01 */	li r0, 1
/* 8097BF68  90 1F 0A A0 */	stw r0, 0xaa0(r31)
/* 8097BF6C  38 00 00 00 */	li r0, 0
/* 8097BF70  98 1F 0B 94 */	stb r0, 0xb94(r31)
lbl_8097BF74:
/* 8097BF74  7F E3 FB 78 */	mr r3, r31
/* 8097BF78  4B 7D C1 31 */	bl isM___10daNpcCd2_cFv
/* 8097BF7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8097BF80  41 82 00 A8 */	beq lbl_8097C028
/* 8097BF84  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 8097BF88  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 8097BF8C  2C 00 00 04 */	cmpwi r0, 4
/* 8097BF90  40 82 00 30 */	bne lbl_8097BFC0
/* 8097BF94  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006000C@ha */
/* 8097BF98  38 03 00 0C */	addi r0, r3, 0x000C /* 0x0006000C@l */
/* 8097BF9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097BFA0  38 7F 05 94 */	addi r3, r31, 0x594
/* 8097BFA4  38 81 00 14 */	addi r4, r1, 0x14
/* 8097BFA8  38 A0 FF FF */	li r5, -1
/* 8097BFAC  81 9F 05 94 */	lwz r12, 0x594(r31)
/* 8097BFB0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8097BFB4  7D 89 03 A6 */	mtctr r12
/* 8097BFB8  4E 80 04 21 */	bctrl 
/* 8097BFBC  48 00 00 94 */	b lbl_8097C050
lbl_8097BFC0:
/* 8097BFC0  2C 00 00 05 */	cmpwi r0, 5
/* 8097BFC4  40 82 00 30 */	bne lbl_8097BFF4
/* 8097BFC8  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006000D@ha */
/* 8097BFCC  38 03 00 0D */	addi r0, r3, 0x000D /* 0x0006000D@l */
/* 8097BFD0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8097BFD4  38 7F 05 94 */	addi r3, r31, 0x594
/* 8097BFD8  38 81 00 10 */	addi r4, r1, 0x10
/* 8097BFDC  38 A0 FF FF */	li r5, -1
/* 8097BFE0  81 9F 05 94 */	lwz r12, 0x594(r31)
/* 8097BFE4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8097BFE8  7D 89 03 A6 */	mtctr r12
/* 8097BFEC  4E 80 04 21 */	bctrl 
/* 8097BFF0  48 00 00 60 */	b lbl_8097C050
lbl_8097BFF4:
/* 8097BFF4  2C 00 00 06 */	cmpwi r0, 6
/* 8097BFF8  40 82 00 58 */	bne lbl_8097C050
/* 8097BFFC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006000E@ha */
/* 8097C000  38 03 00 0E */	addi r0, r3, 0x000E /* 0x0006000E@l */
/* 8097C004  90 01 00 0C */	stw r0, 0xc(r1)
/* 8097C008  38 7F 05 94 */	addi r3, r31, 0x594
/* 8097C00C  38 81 00 0C */	addi r4, r1, 0xc
/* 8097C010  38 A0 FF FF */	li r5, -1
/* 8097C014  81 9F 05 94 */	lwz r12, 0x594(r31)
/* 8097C018  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8097C01C  7D 89 03 A6 */	mtctr r12
/* 8097C020  4E 80 04 21 */	bctrl 
/* 8097C024  48 00 00 2C */	b lbl_8097C050
lbl_8097C028:
/* 8097C028  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006000F@ha */
/* 8097C02C  38 03 00 0F */	addi r0, r3, 0x000F /* 0x0006000F@l */
/* 8097C030  90 01 00 08 */	stw r0, 8(r1)
/* 8097C034  38 7F 05 94 */	addi r3, r31, 0x594
/* 8097C038  38 81 00 08 */	addi r4, r1, 8
/* 8097C03C  38 A0 FF FF */	li r5, -1
/* 8097C040  81 9F 05 94 */	lwz r12, 0x594(r31)
/* 8097C044  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8097C048  7D 89 03 A6 */	mtctr r12
/* 8097C04C  4E 80 04 21 */	bctrl 
lbl_8097C050:
/* 8097C050  80 1F 0A A0 */	lwz r0, 0xaa0(r31)
/* 8097C054  7C 00 00 34 */	cntlzw r0, r0
/* 8097C058  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8097C05C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8097C060  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8097C064  7C 08 03 A6 */	mtlr r0
/* 8097C068  38 21 00 20 */	addi r1, r1, 0x20
/* 8097C06C  4E 80 00 20 */	blr 
