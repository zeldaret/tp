lbl_80A2BC5C:
/* 80A2BC5C  88 03 15 AC */	lbz r0, 0x15ac(r3)
/* 80A2BC60  28 00 00 06 */	cmplwi r0, 6
/* 80A2BC64  41 81 00 C0 */	bgt lbl_80A2BD24
/* 80A2BC68  3C 80 80 A4 */	lis r4, lit_6752@ha
/* 80A2BC6C  38 84 18 08 */	addi r4, r4, lit_6752@l
/* 80A2BC70  54 00 10 3A */	slwi r0, r0, 2
/* 80A2BC74  7C 04 00 2E */	lwzx r0, r4, r0
/* 80A2BC78  7C 09 03 A6 */	mtctr r0
/* 80A2BC7C  4E 80 04 20 */	bctr 
lbl_80A2BC80:
/* 80A2BC80  38 00 00 00 */	li r0, 0
/* 80A2BC84  98 03 15 AE */	stb r0, 0x15ae(r3)
/* 80A2BC88  4E 80 00 20 */	blr 
lbl_80A2BC8C:
/* 80A2BC8C  38 00 00 04 */	li r0, 4
/* 80A2BC90  98 03 15 AE */	stb r0, 0x15ae(r3)
/* 80A2BC94  4E 80 00 20 */	blr 
lbl_80A2BC98:
/* 80A2BC98  38 00 00 04 */	li r0, 4
/* 80A2BC9C  98 03 15 AE */	stb r0, 0x15ae(r3)
/* 80A2BCA0  4E 80 00 20 */	blr 
lbl_80A2BCA4:
/* 80A2BCA4  38 00 00 04 */	li r0, 4
/* 80A2BCA8  98 03 15 AE */	stb r0, 0x15ae(r3)
/* 80A2BCAC  4E 80 00 20 */	blr 
lbl_80A2BCB0:
/* 80A2BCB0  38 00 00 04 */	li r0, 4
/* 80A2BCB4  98 03 15 AE */	stb r0, 0x15ae(r3)
/* 80A2BCB8  4E 80 00 20 */	blr 
lbl_80A2BCBC:
/* 80A2BCBC  88 03 15 AD */	lbz r0, 0x15ad(r3)
/* 80A2BCC0  28 00 00 00 */	cmplwi r0, 0
/* 80A2BCC4  41 82 00 20 */	beq lbl_80A2BCE4
/* 80A2BCC8  28 00 00 02 */	cmplwi r0, 2
/* 80A2BCCC  41 81 00 18 */	bgt lbl_80A2BCE4
/* 80A2BCD0  38 00 00 0E */	li r0, 0xe
/* 80A2BCD4  98 03 15 AE */	stb r0, 0x15ae(r3)
/* 80A2BCD8  38 00 00 00 */	li r0, 0
/* 80A2BCDC  98 03 15 AF */	stb r0, 0x15af(r3)
/* 80A2BCE0  4E 80 00 20 */	blr 
lbl_80A2BCE4:
/* 80A2BCE4  38 00 00 04 */	li r0, 4
/* 80A2BCE8  98 03 15 AE */	stb r0, 0x15ae(r3)
/* 80A2BCEC  4E 80 00 20 */	blr 
lbl_80A2BCF0:
/* 80A2BCF0  88 03 15 AD */	lbz r0, 0x15ad(r3)
/* 80A2BCF4  28 00 00 00 */	cmplwi r0, 0
/* 80A2BCF8  41 82 00 20 */	beq lbl_80A2BD18
/* 80A2BCFC  28 00 00 02 */	cmplwi r0, 2
/* 80A2BD00  41 81 00 18 */	bgt lbl_80A2BD18
/* 80A2BD04  38 00 00 14 */	li r0, 0x14
/* 80A2BD08  98 03 15 AE */	stb r0, 0x15ae(r3)
/* 80A2BD0C  38 00 00 00 */	li r0, 0
/* 80A2BD10  98 03 15 AF */	stb r0, 0x15af(r3)
/* 80A2BD14  4E 80 00 20 */	blr 
lbl_80A2BD18:
/* 80A2BD18  38 00 00 04 */	li r0, 4
/* 80A2BD1C  98 03 15 AE */	stb r0, 0x15ae(r3)
/* 80A2BD20  4E 80 00 20 */	blr 
lbl_80A2BD24:
/* 80A2BD24  38 00 FF FF */	li r0, -1
/* 80A2BD28  98 03 15 AE */	stb r0, 0x15ae(r3)
/* 80A2BD2C  4E 80 00 20 */	blr 
