lbl_800EAC4C:
/* 800EAC4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EAC50  7C 08 02 A6 */	mflr r0
/* 800EAC54  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EAC58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EAC5C  93 C1 00 08 */	stw r30, 8(r1)
/* 800EAC60  7C 7F 1B 78 */	mr r31, r3
/* 800EAC64  83 C3 28 58 */	lwz r30, 0x2858(r3)
/* 800EAC68  38 80 00 CF */	li r4, 0xcf
/* 800EAC6C  4B FD 73 01 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800EAC70  38 00 00 0C */	li r0, 0xc
/* 800EAC74  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800EAC78  C0 02 93 B8 */	lfs f0, lit_10041(r2)
/* 800EAC7C  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800EAC80  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800EAC84  28 00 00 0F */	cmplwi r0, 0xf
/* 800EAC88  41 82 00 0C */	beq lbl_800EAC94
/* 800EAC8C  28 00 00 10 */	cmplwi r0, 0x10
/* 800EAC90  40 82 00 5C */	bne lbl_800EACEC
lbl_800EAC94:
/* 800EAC94  88 1E 04 99 */	lbz r0, 0x499(r30)
/* 800EAC98  54 00 06 7F */	clrlwi. r0, r0, 0x19
/* 800EAC9C  38 80 01 4A */	li r4, 0x14a
/* 800EACA0  41 82 00 08 */	beq lbl_800EACA8
/* 800EACA4  38 80 01 4B */	li r4, 0x14b
lbl_800EACA8:
/* 800EACA8  7C 9E 23 78 */	mr r30, r4
/* 800EACAC  7F E3 FB 78 */	mr r3, r31
/* 800EACB0  4B FC 22 D1 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800EACB4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800EACB8  D0 1F 33 9C */	stfs f0, 0x339c(r31)
/* 800EACBC  38 00 00 07 */	li r0, 7
/* 800EACC0  98 1F 05 6A */	stb r0, 0x56a(r31)
/* 800EACC4  38 00 FF FF */	li r0, -1
/* 800EACC8  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800EACCC  38 00 00 0A */	li r0, 0xa
/* 800EACD0  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800EACD4  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 800EACD8  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800EACDC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0001004D@ha */
/* 800EACE0  38 03 00 4D */	addi r0, r3, 0x004D /* 0x0001004D@l */
/* 800EACE4  90 1F 32 CC */	stw r0, 0x32cc(r31)
/* 800EACE8  48 00 00 4C */	b lbl_800EAD34
lbl_800EACEC:
/* 800EACEC  88 1E 04 99 */	lbz r0, 0x499(r30)
/* 800EACF0  54 00 06 7F */	clrlwi. r0, r0, 0x19
/* 800EACF4  38 80 01 4C */	li r4, 0x14c
/* 800EACF8  41 82 00 08 */	beq lbl_800EAD00
/* 800EACFC  38 80 01 4D */	li r4, 0x14d
lbl_800EAD00:
/* 800EAD00  7C 9E 23 78 */	mr r30, r4
/* 800EAD04  7F E3 FB 78 */	mr r3, r31
/* 800EAD08  4B FC 22 79 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800EAD0C  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800EAD10  D0 1F 33 9C */	stfs f0, 0x339c(r31)
/* 800EAD14  38 00 00 08 */	li r0, 8
/* 800EAD18  98 1F 05 6A */	stb r0, 0x56a(r31)
/* 800EAD1C  38 00 00 0A */	li r0, 0xa
/* 800EAD20  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800EAD24  38 00 00 0F */	li r0, 0xf
/* 800EAD28  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800EAD2C  38 00 00 60 */	li r0, 0x60
/* 800EAD30  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
lbl_800EAD34:
/* 800EAD34  93 DF 31 98 */	stw r30, 0x3198(r31)
/* 800EAD38  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800EAD3C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800EAD40  38 00 00 00 */	li r0, 0
/* 800EAD44  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800EAD48  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 800EAD4C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EAD50  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800EAD54  38 00 00 4B */	li r0, 0x4b
/* 800EAD58  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 800EAD5C  7F E3 FB 78 */	mr r3, r31
/* 800EAD60  38 80 00 05 */	li r4, 5
/* 800EAD64  48 03 64 5D */	bl setFootEffectProcType__9daAlink_cFi
/* 800EAD68  38 60 00 01 */	li r3, 1
/* 800EAD6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EAD70  83 C1 00 08 */	lwz r30, 8(r1)
/* 800EAD74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EAD78  7C 08 03 A6 */	mtlr r0
/* 800EAD7C  38 21 00 10 */	addi r1, r1, 0x10
/* 800EAD80  4E 80 00 20 */	blr 
