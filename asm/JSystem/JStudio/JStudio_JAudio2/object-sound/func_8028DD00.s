lbl_8028DD00:
/* 8028DD00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028DD04  7C 08 02 A6 */	mflr r0
/* 8028DD08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028DD0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028DD10  7C 7F 1B 78 */	mr r31, r3
/* 8028DD14  2C 04 00 02 */	cmpwi r4, 2
/* 8028DD18  41 82 00 08 */	beq lbl_8028DD20
/* 8028DD1C  48 00 00 18 */	b lbl_8028DD34
lbl_8028DD20:
/* 8028DD20  C0 25 00 00 */	lfs f1, 0(r5)
/* 8028DD24  48 0D 43 89 */	bl __cvt_fp2unsigned
/* 8028DD28  7C 64 1B 78 */	mr r4, r3
/* 8028DD2C  7F E3 FB 78 */	mr r3, r31
/* 8028DD30  48 00 03 25 */	bl endSound_fadeOut___Q215JStudio_JAudio214TAdaptor_soundFUl
lbl_8028DD34:
/* 8028DD34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028DD38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028DD3C  7C 08 03 A6 */	mtlr r0
/* 8028DD40  38 21 00 10 */	addi r1, r1, 0x10
/* 8028DD44  4E 80 00 20 */	blr 
