lbl_8028DCD0:
/* 8028DCD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028DCD4  7C 08 02 A6 */	mflr r0
/* 8028DCD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028DCDC  2C 04 00 01 */	cmpwi r4, 1
/* 8028DCE0  41 82 00 08 */	beq lbl_8028DCE8
/* 8028DCE4  48 00 00 0C */	b lbl_8028DCF0
lbl_8028DCE8:
/* 8028DCE8  38 80 00 00 */	li r4, 0
/* 8028DCEC  48 00 03 69 */	bl endSound_fadeOut___Q215JStudio_JAudio214TAdaptor_soundFUl
lbl_8028DCF0:
/* 8028DCF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028DCF4  7C 08 03 A6 */	mtlr r0
/* 8028DCF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8028DCFC  4E 80 00 20 */	blr 
