lbl_8018EB10:
/* 8018EB10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018EB14  7C 08 02 A6 */	mflr r0
/* 8018EB18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018EB1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018EB20  7C 7F 1B 78 */	mr r31, r3
/* 8018EB24  48 00 0F 09 */	bl errYesNoSelect__14dFile_select_cFv
/* 8018EB28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8018EB2C  41 82 00 8C */	beq lbl_8018EBB8
/* 8018EB30  88 9F 02 68 */	lbz r4, 0x268(r31)
/* 8018EB34  28 04 00 00 */	cmplwi r4, 0
/* 8018EB38  41 82 00 54 */	beq lbl_8018EB8C
/* 8018EB3C  38 00 00 01 */	li r0, 1
/* 8018EB40  98 1F 03 B1 */	stb r0, 0x3b1(r31)
/* 8018EB44  3C 60 80 43 */	lis r3, g_fsHIO@ha
/* 8018EB48  38 63 C9 EC */	addi r3, r3, g_fsHIO@l
/* 8018EB4C  88 03 00 0D */	lbz r0, 0xd(r3)
/* 8018EB50  B0 1F 03 AC */	sth r0, 0x3ac(r31)
/* 8018EB54  A8 9F 03 AC */	lha r4, 0x3ac(r31)
/* 8018EB58  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 8018EB5C  80 63 00 04 */	lwz r3, 4(r3)
/* 8018EB60  28 03 00 00 */	cmplwi r3, 0
/* 8018EB64  41 82 00 14 */	beq lbl_8018EB78
/* 8018EB68  81 83 00 00 */	lwz r12, 0(r3)
/* 8018EB6C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8018EB70  7D 89 03 A6 */	mtctr r12
/* 8018EB74  4E 80 04 21 */	bctrl 
lbl_8018EB78:
/* 8018EB78  38 00 00 01 */	li r0, 1
/* 8018EB7C  98 1F 23 74 */	stb r0, 0x2374(r31)
/* 8018EB80  38 00 00 15 */	li r0, 0x15
/* 8018EB84  98 1F 02 71 */	stb r0, 0x271(r31)
/* 8018EB88  48 00 00 30 */	b lbl_8018EBB8
lbl_8018EB8C:
/* 8018EB8C  7F E3 FB 78 */	mr r3, r31
/* 8018EB90  38 A0 00 FF */	li r5, 0xff
/* 8018EB94  38 C0 00 00 */	li r6, 0
/* 8018EB98  3C E0 80 43 */	lis r7, g_fsHIO@ha
/* 8018EB9C  38 E7 C9 EC */	addi r7, r7, g_fsHIO@l
/* 8018EBA0  88 E7 00 08 */	lbz r7, 8(r7)
/* 8018EBA4  4B FF EF DD */	bl yesnoWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc
/* 8018EBA8  7F E3 FB 78 */	mr r3, r31
/* 8018EBAC  48 00 00 A1 */	bl noSaveSelDispInit__14dFile_select_cFv
/* 8018EBB0  38 00 00 03 */	li r0, 3
/* 8018EBB4  98 1F 02 71 */	stb r0, 0x271(r31)
lbl_8018EBB8:
/* 8018EBB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018EBBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018EBC0  7C 08 03 A6 */	mtlr r0
/* 8018EBC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8018EBC8  4E 80 00 20 */	blr 
