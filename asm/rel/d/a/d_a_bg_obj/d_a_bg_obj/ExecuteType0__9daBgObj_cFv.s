lbl_8045BDB8:
/* 8045BDB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045BDBC  7C 08 02 A6 */	mflr r0
/* 8045BDC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045BDC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045BDC8  7C 7F 1B 78 */	mr r31, r3
/* 8045BDCC  A0 03 0C CC */	lhz r0, 0xccc(r3)
/* 8045BDD0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8045BDD4  A0 03 0C CA */	lhz r0, 0xcca(r3)
/* 8045BDD8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8045BDDC  28 04 00 FF */	cmplwi r4, 0xff
/* 8045BDE0  41 82 00 D8 */	beq lbl_8045BEB8
/* 8045BDE4  28 00 00 FF */	cmplwi r0, 0xff
/* 8045BDE8  40 82 00 68 */	bne lbl_8045BE50
/* 8045BDEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045BDF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045BDF4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8045BDF8  7C 05 07 74 */	extsb r5, r0
/* 8045BDFC  4B BD 95 64 */	b isSwitch__10dSv_info_cCFii
/* 8045BE00  2C 03 00 00 */	cmpwi r3, 0
/* 8045BE04  41 82 00 28 */	beq lbl_8045BE2C
/* 8045BE08  88 1F 0C C8 */	lbz r0, 0xcc8(r31)
/* 8045BE0C  28 00 00 01 */	cmplwi r0, 1
/* 8045BE10  40 82 00 A8 */	bne lbl_8045BEB8
/* 8045BE14  7F E3 FB 78 */	mr r3, r31
/* 8045BE18  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 8045BE1C  4B FF DD 99 */	bl regist__9daBgObj_cFP4dBgW
/* 8045BE20  38 00 00 00 */	li r0, 0
/* 8045BE24  98 1F 0C C8 */	stb r0, 0xcc8(r31)
/* 8045BE28  48 00 00 90 */	b lbl_8045BEB8
lbl_8045BE2C:
/* 8045BE2C  88 1F 0C C8 */	lbz r0, 0xcc8(r31)
/* 8045BE30  28 00 00 00 */	cmplwi r0, 0
/* 8045BE34  40 82 00 84 */	bne lbl_8045BEB8
/* 8045BE38  7F E3 FB 78 */	mr r3, r31
/* 8045BE3C  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 8045BE40  4B FF DD 25 */	bl release__9daBgObj_cFP4dBgW
/* 8045BE44  38 00 00 01 */	li r0, 1
/* 8045BE48  98 1F 0C C8 */	stb r0, 0xcc8(r31)
/* 8045BE4C  48 00 00 6C */	b lbl_8045BEB8
lbl_8045BE50:
/* 8045BE50  28 00 00 00 */	cmplwi r0, 0
/* 8045BE54  40 82 00 64 */	bne lbl_8045BEB8
/* 8045BE58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045BE5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045BE60  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8045BE64  7C 05 07 74 */	extsb r5, r0
/* 8045BE68  4B BD 94 F8 */	b isSwitch__10dSv_info_cCFii
/* 8045BE6C  2C 03 00 00 */	cmpwi r3, 0
/* 8045BE70  41 82 00 28 */	beq lbl_8045BE98
/* 8045BE74  88 1F 0C C8 */	lbz r0, 0xcc8(r31)
/* 8045BE78  28 00 00 00 */	cmplwi r0, 0
/* 8045BE7C  40 82 00 3C */	bne lbl_8045BEB8
/* 8045BE80  7F E3 FB 78 */	mr r3, r31
/* 8045BE84  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 8045BE88  4B FF DC DD */	bl release__9daBgObj_cFP4dBgW
/* 8045BE8C  38 00 00 01 */	li r0, 1
/* 8045BE90  98 1F 0C C8 */	stb r0, 0xcc8(r31)
/* 8045BE94  48 00 00 24 */	b lbl_8045BEB8
lbl_8045BE98:
/* 8045BE98  88 1F 0C C8 */	lbz r0, 0xcc8(r31)
/* 8045BE9C  28 00 00 01 */	cmplwi r0, 1
/* 8045BEA0  40 82 00 18 */	bne lbl_8045BEB8
/* 8045BEA4  7F E3 FB 78 */	mr r3, r31
/* 8045BEA8  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 8045BEAC  4B FF DD 09 */	bl regist__9daBgObj_cFP4dBgW
/* 8045BEB0  38 00 00 00 */	li r0, 0
/* 8045BEB4  98 1F 0C C8 */	stb r0, 0xcc8(r31)
lbl_8045BEB8:
/* 8045BEB8  38 60 00 01 */	li r3, 1
/* 8045BEBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045BEC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045BEC4  7C 08 03 A6 */	mtlr r0
/* 8045BEC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8045BECC  4E 80 00 20 */	blr 
