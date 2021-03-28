lbl_8048F444:
/* 8048F444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F448  7C 08 02 A6 */	mflr r0
/* 8048F44C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F450  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048F454  93 C1 00 08 */	stw r30, 8(r1)
/* 8048F458  7C 7F 1B 78 */	mr r31, r3
/* 8048F45C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8048F460  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8048F464  40 82 00 40 */	bne lbl_8048F4A4
/* 8048F468  7F E0 FB 79 */	or. r0, r31, r31
/* 8048F46C  41 82 00 2C */	beq lbl_8048F498
/* 8048F470  7C 1E 03 78 */	mr r30, r0
/* 8048F474  4B B8 96 F0 */	b __ct__10fopAc_ac_cFv
/* 8048F478  38 7E 05 70 */	addi r3, r30, 0x570
/* 8048F47C  3C 80 80 49 */	lis r4, __ct__4cXyzFv@ha
/* 8048F480  38 84 F5 54 */	addi r4, r4, __ct__4cXyzFv@l
/* 8048F484  3C A0 80 49 */	lis r5, __dt__4cXyzFv@ha
/* 8048F488  38 A5 F5 18 */	addi r5, r5, __dt__4cXyzFv@l
/* 8048F48C  38 C0 00 0C */	li r6, 0xc
/* 8048F490  38 E0 00 04 */	li r7, 4
/* 8048F494  4B ED 28 CC */	b __construct_array
lbl_8048F498:
/* 8048F498  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8048F49C  60 00 00 08 */	ori r0, r0, 8
/* 8048F4A0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8048F4A4:
/* 8048F4A4  88 1F 05 A1 */	lbz r0, 0x5a1(r31)
/* 8048F4A8  28 00 00 00 */	cmplwi r0, 0
/* 8048F4AC  40 82 00 38 */	bne lbl_8048F4E4
/* 8048F4B0  38 00 00 01 */	li r0, 1
/* 8048F4B4  98 1F 05 A1 */	stb r0, 0x5a1(r31)
/* 8048F4B8  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 8048F4BC  B0 1F 05 A2 */	sth r0, 0x5a2(r31)
/* 8048F4C0  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 8048F4C4  B0 1F 05 A4 */	sth r0, 0x5a4(r31)
/* 8048F4C8  38 00 00 00 */	li r0, 0
/* 8048F4CC  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 8048F4D0  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 8048F4D4  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 8048F4D8  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 8048F4DC  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 8048F4E0  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
lbl_8048F4E4:
/* 8048F4E4  7F E3 FB 78 */	mr r3, r31
/* 8048F4E8  4B FF FE 89 */	bl Create__11daTagMist_cFv
/* 8048F4EC  2C 03 00 00 */	cmpwi r3, 0
/* 8048F4F0  40 82 00 0C */	bne lbl_8048F4FC
/* 8048F4F4  38 60 00 05 */	li r3, 5
/* 8048F4F8  48 00 00 08 */	b lbl_8048F500
lbl_8048F4FC:
/* 8048F4FC  38 60 00 04 */	li r3, 4
lbl_8048F500:
/* 8048F500  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048F504  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048F508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F50C  7C 08 03 A6 */	mtlr r0
/* 8048F510  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F514  4E 80 00 20 */	blr 
