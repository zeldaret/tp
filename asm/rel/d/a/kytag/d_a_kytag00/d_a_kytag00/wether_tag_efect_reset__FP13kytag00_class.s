lbl_8046BDB8:
/* 8046BDB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046BDBC  7C 08 02 A6 */	mflr r0
/* 8046BDC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046BDC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046BDC8  7C 7F 1B 78 */	mr r31, r3
/* 8046BDCC  38 80 00 00 */	li r4, 0
/* 8046BDD0  98 83 05 6C */	stb r4, 0x56c(r3)
/* 8046BDD4  88 03 05 70 */	lbz r0, 0x570(r3)
/* 8046BDD8  28 00 00 12 */	cmplwi r0, 0x12
/* 8046BDDC  41 81 00 C8 */	bgt lbl_8046BEA4
/* 8046BDE0  3C 60 80 47 */	lis r3, lit_3957@ha /* 0x8046C9E0@ha */
/* 8046BDE4  38 63 C9 E0 */	addi r3, r3, lit_3957@l /* 0x8046C9E0@l */
/* 8046BDE8  54 00 10 3A */	slwi r0, r0, 2
/* 8046BDEC  7C 03 00 2E */	lwzx r0, r3, r0
/* 8046BDF0  7C 09 03 A6 */	mtctr r0
/* 8046BDF4  4E 80 04 20 */	bctr 
lbl_8046BDF8:
/* 8046BDF8  4B FF FF AD */	bl raincnt_cut__Fv
/* 8046BDFC  48 00 00 A8 */	b lbl_8046BEA4
lbl_8046BE00:
/* 8046BE00  38 00 00 00 */	li r0, 0
/* 8046BE04  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8046BE08  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8046BE0C  90 03 0E 8C */	stw r0, 0xe8c(r3)
/* 8046BE10  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 8046BE14  48 00 00 90 */	b lbl_8046BEA4
lbl_8046BE18:
/* 8046BE18  38 00 00 00 */	li r0, 0
/* 8046BE1C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8046BE20  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8046BE24  90 03 0E AC */	stw r0, 0xeac(r3)
/* 8046BE28  98 03 0E A9 */	stb r0, 0xea9(r3)
/* 8046BE2C  48 00 00 78 */	b lbl_8046BEA4
lbl_8046BE30:
/* 8046BE30  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8046BE34  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8046BE38  80 03 0E D8 */	lwz r0, 0xed8(r3)
/* 8046BE3C  2C 00 00 02 */	cmpwi r0, 2
/* 8046BE40  40 82 00 0C */	bne lbl_8046BE4C
/* 8046BE44  38 00 00 00 */	li r0, 0
/* 8046BE48  90 03 0E D8 */	stw r0, 0xed8(r3)
lbl_8046BE4C:
/* 8046BE4C  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 8046BE50  28 00 00 08 */	cmplwi r0, 8
/* 8046BE54  41 82 00 0C */	beq lbl_8046BE60
/* 8046BE58  28 00 00 09 */	cmplwi r0, 9
/* 8046BE5C  40 82 00 08 */	bne lbl_8046BE64
lbl_8046BE60:
/* 8046BE60  4B FF FF 45 */	bl raincnt_cut__Fv
lbl_8046BE64:
/* 8046BE64  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 8046BE68  28 00 00 09 */	cmplwi r0, 9
/* 8046BE6C  40 82 00 38 */	bne lbl_8046BEA4
/* 8046BE70  38 00 00 00 */	li r0, 0
/* 8046BE74  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8046BE78  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8046BE7C  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 8046BE80  48 00 00 24 */	b lbl_8046BEA4
lbl_8046BE84:
/* 8046BE84  38 00 00 00 */	li r0, 0
/* 8046BE88  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8046BE8C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8046BE90  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 8046BE94  48 00 00 10 */	b lbl_8046BEA4
lbl_8046BE98:
/* 8046BE98  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8046BE9C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8046BEA0  90 83 10 48 */	stw r4, 0x1048(r3)
lbl_8046BEA4:
/* 8046BEA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046BEA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046BEAC  7C 08 03 A6 */	mtlr r0
/* 8046BEB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8046BEB4  4E 80 00 20 */	blr 
