lbl_80831D64:
/* 80831D64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80831D68  7C 08 02 A6 */	mflr r0
/* 80831D6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80831D70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80831D74  7C 7F 1B 78 */	mr r31, r3
/* 80831D78  88 03 07 26 */	lbz r0, 0x726(r3)
/* 80831D7C  28 00 00 0A */	cmplwi r0, 0xa
/* 80831D80  40 82 00 0C */	bne lbl_80831D8C
/* 80831D84  38 60 00 01 */	li r3, 1
/* 80831D88  48 00 00 D8 */	b lbl_80831E60
lbl_80831D8C:
/* 80831D8C  88 9F 07 2A */	lbz r4, 0x72a(r31)
/* 80831D90  28 04 00 FF */	cmplwi r4, 0xff
/* 80831D94  41 82 00 28 */	beq lbl_80831DBC
/* 80831D98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80831D9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80831DA0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80831DA4  7C 05 07 74 */	extsb r5, r0
/* 80831DA8  4B 80 35 B9 */	bl isSwitch__10dSv_info_cCFii
/* 80831DAC  2C 03 00 00 */	cmpwi r3, 0
/* 80831DB0  40 82 00 0C */	bne lbl_80831DBC
/* 80831DB4  38 60 00 01 */	li r3, 1
/* 80831DB8  48 00 00 A8 */	b lbl_80831E60
lbl_80831DBC:
/* 80831DBC  88 7F 07 22 */	lbz r3, 0x722(r31)
/* 80831DC0  28 03 00 00 */	cmplwi r3, 0
/* 80831DC4  41 82 00 0C */	beq lbl_80831DD0
/* 80831DC8  38 03 FF FF */	addi r0, r3, -1
/* 80831DCC  98 1F 07 22 */	stb r0, 0x722(r31)
lbl_80831DD0:
/* 80831DD0  88 7F 07 23 */	lbz r3, 0x723(r31)
/* 80831DD4  28 03 00 00 */	cmplwi r3, 0
/* 80831DD8  41 82 00 0C */	beq lbl_80831DE4
/* 80831DDC  38 03 FF FF */	addi r0, r3, -1
/* 80831DE0  98 1F 07 23 */	stb r0, 0x723(r31)
lbl_80831DE4:
/* 80831DE4  88 7F 07 24 */	lbz r3, 0x724(r31)
/* 80831DE8  28 03 00 00 */	cmplwi r3, 0
/* 80831DEC  41 82 00 0C */	beq lbl_80831DF8
/* 80831DF0  38 03 FF FF */	addi r0, r3, -1
/* 80831DF4  98 1F 07 24 */	stb r0, 0x724(r31)
lbl_80831DF8:
/* 80831DF8  88 7F 07 25 */	lbz r3, 0x725(r31)
/* 80831DFC  28 03 00 00 */	cmplwi r3, 0
/* 80831E00  41 82 00 0C */	beq lbl_80831E0C
/* 80831E04  38 03 FF FF */	addi r0, r3, -1
/* 80831E08  98 1F 07 25 */	stb r0, 0x725(r31)
lbl_80831E0C:
/* 80831E0C  7F E3 FB 78 */	mr r3, r31
/* 80831E10  4B FF FB 21 */	bl action__8daE_ZM_cFv
/* 80831E14  80 1F 06 5C */	lwz r0, 0x65c(r31)
/* 80831E18  2C 00 00 05 */	cmpwi r0, 5
/* 80831E1C  41 82 00 24 */	beq lbl_80831E40
/* 80831E20  88 1F 07 26 */	lbz r0, 0x726(r31)
/* 80831E24  28 00 00 0A */	cmplwi r0, 0xa
/* 80831E28  40 80 00 18 */	bge lbl_80831E40
/* 80831E2C  88 1F 05 46 */	lbz r0, 0x546(r31)
/* 80831E30  28 00 00 00 */	cmplwi r0, 0
/* 80831E34  40 82 00 0C */	bne lbl_80831E40
/* 80831E38  38 60 00 01 */	li r3, 1
/* 80831E3C  48 00 00 24 */	b lbl_80831E60
lbl_80831E40:
/* 80831E40  88 1F 07 26 */	lbz r0, 0x726(r31)
/* 80831E44  2C 00 00 14 */	cmpwi r0, 0x14
/* 80831E48  41 82 00 14 */	beq lbl_80831E5C
/* 80831E4C  7F E3 FB 78 */	mr r3, r31
/* 80831E50  4B FF FC B9 */	bl mtx_set__8daE_ZM_cFv
/* 80831E54  7F E3 FB 78 */	mr r3, r31
/* 80831E58  4B FF FD 45 */	bl cc_set__8daE_ZM_cFv
lbl_80831E5C:
/* 80831E5C  38 60 00 01 */	li r3, 1
lbl_80831E60:
/* 80831E60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80831E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80831E68  7C 08 03 A6 */	mtlr r0
/* 80831E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80831E70  4E 80 00 20 */	blr 
