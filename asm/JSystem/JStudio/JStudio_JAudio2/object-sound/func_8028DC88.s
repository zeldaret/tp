lbl_8028DC88:
/* 8028DC88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028DC8C  7C 08 02 A6 */	mflr r0
/* 8028DC90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028DC94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028DC98  7C 7F 1B 78 */	mr r31, r3
/* 8028DC9C  2C 04 00 02 */	cmpwi r4, 2
/* 8028DCA0  41 82 00 08 */	beq lbl_8028DCA8
/* 8028DCA4  48 00 00 18 */	b lbl_8028DCBC
lbl_8028DCA8:
/* 8028DCA8  C0 25 00 00 */	lfs f1, 0(r5)
/* 8028DCAC  48 0D 44 01 */	bl __cvt_fp2unsigned
/* 8028DCB0  90 7F 01 28 */	stw r3, 0x128(r31)
/* 8028DCB4  7F E3 FB 78 */	mr r3, r31
/* 8028DCB8  48 00 02 ED */	bl beginSound_fadeIn___Q215JStudio_JAudio214TAdaptor_soundFv
lbl_8028DCBC:
/* 8028DCBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028DCC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028DCC4  7C 08 03 A6 */	mtlr r0
/* 8028DCC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8028DCCC  4E 80 00 20 */	blr 
