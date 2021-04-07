lbl_80D66F34:
/* 80D66F34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D66F38  7C 08 02 A6 */	mflr r0
/* 80D66F3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D66F40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D66F44  7C 7F 1B 78 */	mr r31, r3
/* 80D66F48  88 03 05 F9 */	lbz r0, 0x5f9(r3)
/* 80D66F4C  28 00 00 00 */	cmplwi r0, 0
/* 80D66F50  41 82 00 AC */	beq lbl_80D66FFC
/* 80D66F54  88 1F 06 04 */	lbz r0, 0x604(r31)
/* 80D66F58  28 00 00 00 */	cmplwi r0, 0
/* 80D66F5C  40 82 00 8C */	bne lbl_80D66FE8
/* 80D66F60  88 1F 05 FA */	lbz r0, 0x5fa(r31)
/* 80D66F64  28 00 00 00 */	cmplwi r0, 0
/* 80D66F68  41 82 00 28 */	beq lbl_80D66F90
/* 80D66F6C  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80D66F70  3C 80 80 D6 */	lis r4, g_daTitHIO@ha /* 0x80D67D8C@ha */
/* 80D66F74  38 84 7D 8C */	addi r4, r4, g_daTitHIO@l /* 0x80D67D8C@l */
/* 80D66F78  88 84 00 19 */	lbz r4, 0x19(r4)
/* 80D66F7C  38 A0 00 00 */	li r5, 0
/* 80D66F80  38 C0 00 FF */	li r6, 0xff
/* 80D66F84  38 E0 00 00 */	li r7, 0
/* 80D66F88  4B 4E E8 F1 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 80D66F8C  48 00 00 24 */	b lbl_80D66FB0
lbl_80D66F90:
/* 80D66F90  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80D66F94  3C 80 80 D6 */	lis r4, g_daTitHIO@ha /* 0x80D67D8C@ha */
/* 80D66F98  38 84 7D 8C */	addi r4, r4, g_daTitHIO@l /* 0x80D67D8C@l */
/* 80D66F9C  88 84 00 19 */	lbz r4, 0x19(r4)
/* 80D66FA0  38 A0 00 FF */	li r5, 0xff
/* 80D66FA4  38 C0 00 80 */	li r6, 0x80
/* 80D66FA8  38 E0 00 00 */	li r7, 0
/* 80D66FAC  4B 4E E9 B9 */	bl alphaAnimeLoop__13CPaneMgrAlphaFsUcUcUc
lbl_80D66FB0:
/* 80D66FB0  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80D66FB4  80 63 00 04 */	lwz r3, 4(r3)
/* 80D66FB8  88 03 00 B2 */	lbz r0, 0xb2(r3)
/* 80D66FBC  28 00 00 FF */	cmplwi r0, 0xff
/* 80D66FC0  40 82 00 28 */	bne lbl_80D66FE8
/* 80D66FC4  88 1F 05 FA */	lbz r0, 0x5fa(r31)
/* 80D66FC8  28 00 00 00 */	cmplwi r0, 0
/* 80D66FCC  41 82 00 0C */	beq lbl_80D66FD8
/* 80D66FD0  38 00 00 00 */	li r0, 0
/* 80D66FD4  98 1F 05 FA */	stb r0, 0x5fa(r31)
lbl_80D66FD8:
/* 80D66FD8  3C 60 80 D6 */	lis r3, g_daTitHIO@ha /* 0x80D67D8C@ha */
/* 80D66FDC  38 63 7D 8C */	addi r3, r3, g_daTitHIO@l /* 0x80D67D8C@l */
/* 80D66FE0  88 03 00 1A */	lbz r0, 0x1a(r3)
/* 80D66FE4  98 1F 06 04 */	stb r0, 0x604(r31)
lbl_80D66FE8:
/* 80D66FE8  88 7F 06 04 */	lbz r3, 0x604(r31)
/* 80D66FEC  28 03 00 00 */	cmplwi r3, 0
/* 80D66FF0  41 82 00 0C */	beq lbl_80D66FFC
/* 80D66FF4  38 03 FF FF */	addi r0, r3, -1
/* 80D66FF8  98 1F 06 04 */	stb r0, 0x604(r31)
lbl_80D66FFC:
/* 80D66FFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D67000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D67004  7C 08 03 A6 */	mtlr r0
/* 80D67008  38 21 00 10 */	addi r1, r1, 0x10
/* 80D6700C  4E 80 00 20 */	blr 
