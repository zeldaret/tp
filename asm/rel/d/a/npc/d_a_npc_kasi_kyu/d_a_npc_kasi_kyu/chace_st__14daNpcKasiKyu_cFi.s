lbl_80A23EFC:
/* 80A23EFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A23F00  7C 08 02 A6 */	mflr r0
/* 80A23F04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A23F08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A23F0C  7C 7F 1B 78 */	mr r31, r3
/* 80A23F10  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A23F14  2C 00 00 00 */	cmpwi r0, 0
/* 80A23F18  41 82 00 18 */	beq lbl_80A23F30
/* 80A23F1C  40 80 00 08 */	bge lbl_80A23F24
/* 80A23F20  48 00 00 68 */	b lbl_80A23F88
lbl_80A23F24:
/* 80A23F24  2C 00 00 02 */	cmpwi r0, 2
/* 80A23F28  40 80 00 60 */	bge lbl_80A23F88
/* 80A23F2C  48 00 00 20 */	b lbl_80A23F4C
lbl_80A23F30:
/* 80A23F30  3C 60 80 A2 */	lis r3, lit_4449@ha
/* 80A23F34  C0 03 59 5C */	lfs f0, lit_4449@l(r3)
/* 80A23F38  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A23F3C  38 00 00 01 */	li r0, 1
/* 80A23F40  98 1F 14 65 */	stb r0, 0x1465(r31)
/* 80A23F44  B0 1F 14 04 */	sth r0, 0x1404(r31)
/* 80A23F48  48 00 00 40 */	b lbl_80A23F88
lbl_80A23F4C:
/* 80A23F4C  38 80 0C 00 */	li r4, 0xc00
/* 80A23F50  48 00 0D 75 */	bl _turn_to_link__14daNpcKasiKyu_cFs
/* 80A23F54  2C 03 00 00 */	cmpwi r3, 0
/* 80A23F58  41 82 00 30 */	beq lbl_80A23F88
/* 80A23F5C  3C 60 80 A2 */	lis r3, lit_5026@ha
/* 80A23F60  38 83 5E 4C */	addi r4, r3, lit_5026@l
/* 80A23F64  80 64 00 00 */	lwz r3, 0(r4)
/* 80A23F68  80 04 00 04 */	lwz r0, 4(r4)
/* 80A23F6C  90 61 00 08 */	stw r3, 8(r1)
/* 80A23F70  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A23F74  80 04 00 08 */	lwz r0, 8(r4)
/* 80A23F78  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A23F7C  7F E3 FB 78 */	mr r3, r31
/* 80A23F80  38 81 00 08 */	addi r4, r1, 8
/* 80A23F84  4B FF F3 01 */	bl setAction__14daNpcKasiKyu_cFM14daNpcKasiKyu_cFPCvPvi_i
lbl_80A23F88:
/* 80A23F88  38 60 00 01 */	li r3, 1
/* 80A23F8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A23F90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A23F94  7C 08 03 A6 */	mtlr r0
/* 80A23F98  38 21 00 20 */	addi r1, r1, 0x20
/* 80A23F9C  4E 80 00 20 */	blr 
