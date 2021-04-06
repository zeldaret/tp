lbl_80B17F18:
/* 80B17F18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B17F1C  7C 08 02 A6 */	mflr r0
/* 80B17F20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B17F24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B17F28  7C 7F 1B 78 */	mr r31, r3
/* 80B17F2C  A0 03 13 88 */	lhz r0, 0x1388(r3)
/* 80B17F30  2C 00 00 02 */	cmpwi r0, 2
/* 80B17F34  41 82 00 6C */	beq lbl_80B17FA0
/* 80B17F38  40 80 01 24 */	bge lbl_80B1805C
/* 80B17F3C  2C 00 00 00 */	cmpwi r0, 0
/* 80B17F40  41 82 00 0C */	beq lbl_80B17F4C
/* 80B17F44  48 00 01 18 */	b lbl_80B1805C
/* 80B17F48  48 00 01 14 */	b lbl_80B1805C
lbl_80B17F4C:
/* 80B17F4C  38 80 00 09 */	li r4, 9
/* 80B17F50  3C A0 80 B2 */	lis r5, lit_5011@ha /* 0x80B1DE1C@ha */
/* 80B17F54  C0 25 DE 1C */	lfs f1, lit_5011@l(r5)  /* 0x80B1DE1C@l */
/* 80B17F58  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B17F5C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B17F60  7D 89 03 A6 */	mtctr r12
/* 80B17F64  4E 80 04 21 */	bctrl 
/* 80B17F68  A8 1F 13 86 */	lha r0, 0x1386(r31)
/* 80B17F6C  2C 00 00 00 */	cmpwi r0, 0
/* 80B17F70  40 82 00 10 */	bne lbl_80B17F80
/* 80B17F74  80 1F 12 08 */	lwz r0, 0x1208(r31)
/* 80B17F78  28 00 00 00 */	cmplwi r0, 0
/* 80B17F7C  41 82 00 10 */	beq lbl_80B17F8C
lbl_80B17F80:
/* 80B17F80  38 00 00 00 */	li r0, 0
/* 80B17F84  B0 1F 13 86 */	sth r0, 0x1386(r31)
/* 80B17F88  90 1F 12 08 */	stw r0, 0x1208(r31)
lbl_80B17F8C:
/* 80B17F8C  38 00 00 01 */	li r0, 1
/* 80B17F90  98 1F 13 8A */	stb r0, 0x138a(r31)
/* 80B17F94  38 00 00 02 */	li r0, 2
/* 80B17F98  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B17F9C  48 00 00 C0 */	b lbl_80B1805C
lbl_80B17FA0:
/* 80B17FA0  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80B17FA4  38 A0 00 01 */	li r5, 1
/* 80B17FA8  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80B17FAC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B17FB0  40 82 00 1C */	bne lbl_80B17FCC
/* 80B17FB4  3C 60 80 B2 */	lis r3, lit_5011@ha /* 0x80B1DE1C@ha */
/* 80B17FB8  C0 23 DE 1C */	lfs f1, lit_5011@l(r3)  /* 0x80B1DE1C@l */
/* 80B17FBC  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80B17FC0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B17FC4  41 82 00 08 */	beq lbl_80B17FCC
/* 80B17FC8  38 A0 00 00 */	li r5, 0
lbl_80B17FCC:
/* 80B17FCC  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80B17FD0  41 82 00 8C */	beq lbl_80B1805C
/* 80B17FD4  3C 60 80 B2 */	lis r3, lit_5698@ha /* 0x80B1E3CC@ha */
/* 80B17FD8  38 83 E3 CC */	addi r4, r3, lit_5698@l /* 0x80B1E3CC@l */
/* 80B17FDC  80 64 00 00 */	lwz r3, 0(r4)
/* 80B17FE0  80 04 00 04 */	lwz r0, 4(r4)
/* 80B17FE4  90 61 00 08 */	stw r3, 8(r1)
/* 80B17FE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B17FEC  80 04 00 08 */	lwz r0, 8(r4)
/* 80B17FF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B17FF4  38 00 00 03 */	li r0, 3
/* 80B17FF8  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B17FFC  38 7F 13 4C */	addi r3, r31, 0x134c
/* 80B18000  4B 84 A0 19 */	bl __ptmf_test
/* 80B18004  2C 03 00 00 */	cmpwi r3, 0
/* 80B18008  41 82 00 14 */	beq lbl_80B1801C
/* 80B1800C  7F E3 FB 78 */	mr r3, r31
/* 80B18010  39 9F 13 4C */	addi r12, r31, 0x134c
/* 80B18014  4B 84 A0 71 */	bl __ptmf_scall
/* 80B18018  60 00 00 00 */	nop 
lbl_80B1801C:
/* 80B1801C  38 00 00 00 */	li r0, 0
/* 80B18020  B0 1F 13 88 */	sth r0, 0x1388(r31)
/* 80B18024  80 61 00 08 */	lwz r3, 8(r1)
/* 80B18028  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B1802C  90 7F 13 4C */	stw r3, 0x134c(r31)
/* 80B18030  90 1F 13 50 */	stw r0, 0x1350(r31)
/* 80B18034  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B18038  90 1F 13 54 */	stw r0, 0x1354(r31)
/* 80B1803C  38 7F 13 4C */	addi r3, r31, 0x134c
/* 80B18040  4B 84 9F D9 */	bl __ptmf_test
/* 80B18044  2C 03 00 00 */	cmpwi r3, 0
/* 80B18048  41 82 00 14 */	beq lbl_80B1805C
/* 80B1804C  7F E3 FB 78 */	mr r3, r31
/* 80B18050  39 9F 13 4C */	addi r12, r31, 0x134c
/* 80B18054  4B 84 A0 31 */	bl __ptmf_scall
/* 80B18058  60 00 00 00 */	nop 
lbl_80B1805C:
/* 80B1805C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B18060  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B18064  7C 08 03 A6 */	mtlr r0
/* 80B18068  38 21 00 20 */	addi r1, r1, 0x20
/* 80B1806C  4E 80 00 20 */	blr 
