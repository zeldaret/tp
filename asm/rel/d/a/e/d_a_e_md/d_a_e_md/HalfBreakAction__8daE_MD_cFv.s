lbl_8070994C:
/* 8070994C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80709950  7C 08 02 A6 */	mflr r0
/* 80709954  90 01 00 14 */	stw r0, 0x14(r1)
/* 80709958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8070995C  7C 7F 1B 78 */	mr r31, r3
/* 80709960  4B FF FA 19 */	bl CheckHit__8daE_MD_cFv
/* 80709964  88 1F 05 D8 */	lbz r0, 0x5d8(r31)
/* 80709968  2C 00 00 01 */	cmpwi r0, 1
/* 8070996C  41 82 00 84 */	beq lbl_807099F0
/* 80709970  40 80 00 80 */	bge lbl_807099F0
/* 80709974  2C 00 00 00 */	cmpwi r0, 0
/* 80709978  40 80 00 08 */	bge lbl_80709980
/* 8070997C  48 00 00 74 */	b lbl_807099F0
lbl_80709980:
/* 80709980  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80709984  38 03 FF FF */	addi r0, r3, -1
/* 80709988  90 1F 05 D4 */	stw r0, 0x5d4(r31)
/* 8070998C  7F E3 FB 78 */	mr r3, r31
/* 80709990  48 00 00 75 */	bl VibAction__8daE_MD_cFv
/* 80709994  80 1F 05 D4 */	lwz r0, 0x5d4(r31)
/* 80709998  2C 00 00 00 */	cmpwi r0, 0
/* 8070999C  40 80 00 54 */	bge lbl_807099F0
/* 807099A0  7F E3 FB 78 */	mr r3, r31
/* 807099A4  80 9F 06 8C */	lwz r4, 0x68c(r31)
/* 807099A8  38 A0 00 04 */	li r5, 4
/* 807099AC  38 C0 00 00 */	li r6, 0
/* 807099B0  3C E0 80 71 */	lis r7, lit_4032@ha
/* 807099B4  C0 27 A5 40 */	lfs f1, lit_4032@l(r7)
/* 807099B8  3C E0 80 71 */	lis r7, lit_3858@ha
/* 807099BC  C0 47 A5 34 */	lfs f2, lit_3858@l(r7)
/* 807099C0  4B FF F8 31 */	bl SetAnm__8daE_MD_cFP16mDoExt_McaMorfSOiiff
/* 807099C4  7F E3 FB 78 */	mr r3, r31
/* 807099C8  80 9F 06 90 */	lwz r4, 0x690(r31)
/* 807099CC  38 A0 00 06 */	li r5, 6
/* 807099D0  38 C0 00 00 */	li r6, 0
/* 807099D4  3C E0 80 71 */	lis r7, lit_4032@ha
/* 807099D8  C0 27 A5 40 */	lfs f1, lit_4032@l(r7)
/* 807099DC  3C E0 80 71 */	lis r7, lit_3858@ha
/* 807099E0  C0 47 A5 34 */	lfs f2, lit_3858@l(r7)
/* 807099E4  4B FF F8 0D */	bl SetAnm__8daE_MD_cFP16mDoExt_McaMorfSOiiff
/* 807099E8  38 00 00 01 */	li r0, 1
/* 807099EC  98 1F 05 D8 */	stb r0, 0x5d8(r31)
lbl_807099F0:
/* 807099F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807099F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807099F8  7C 08 03 A6 */	mtlr r0
/* 807099FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80709A00  4E 80 00 20 */	blr 
