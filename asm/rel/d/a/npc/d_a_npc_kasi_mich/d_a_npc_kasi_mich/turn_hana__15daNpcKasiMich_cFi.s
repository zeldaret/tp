lbl_80A29164:
/* 80A29164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A29168  7C 08 02 A6 */	mflr r0
/* 80A2916C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A29170  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A29174  7C 7F 1B 78 */	mr r31, r3
/* 80A29178  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A2917C  2C 00 00 00 */	cmpwi r0, 0
/* 80A29180  41 82 00 10 */	beq lbl_80A29190
/* 80A29184  40 80 00 4C */	bge lbl_80A291D0
/* 80A29188  48 00 00 48 */	b lbl_80A291D0
/* 80A2918C  48 00 00 44 */	b lbl_80A291D0
lbl_80A29190:
/* 80A29190  3C 80 80 A3 */	lis r4, lit_4449@ha
/* 80A29194  C0 04 A0 F0 */	lfs f0, lit_4449@l(r4)
/* 80A29198  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A2919C  38 80 00 00 */	li r4, 0
/* 80A291A0  4B FF E9 8D */	bl setLookMode__15daNpcKasiMich_cFi
/* 80A291A4  7F E3 FB 78 */	mr r3, r31
/* 80A291A8  38 80 00 0C */	li r4, 0xc
/* 80A291AC  3C A0 80 A3 */	lis r5, lit_4249@ha
/* 80A291B0  C0 25 A0 D8 */	lfs f1, lit_4249@l(r5)
/* 80A291B4  38 A0 00 00 */	li r5, 0
/* 80A291B8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A291BC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A291C0  7D 89 03 A6 */	mtctr r12
/* 80A291C4  4E 80 04 21 */	bctrl 
/* 80A291C8  38 00 00 01 */	li r0, 1
/* 80A291CC  B0 1F 14 04 */	sth r0, 0x1404(r31)
lbl_80A291D0:
/* 80A291D0  38 60 00 01 */	li r3, 1
/* 80A291D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A291D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A291DC  7C 08 03 A6 */	mtlr r0
/* 80A291E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A291E4  4E 80 00 20 */	blr 
