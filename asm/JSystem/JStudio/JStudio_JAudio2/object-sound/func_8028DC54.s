lbl_8028DC54:
/* 8028DC54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028DC58  7C 08 02 A6 */	mflr r0
/* 8028DC5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028DC60  2C 04 00 01 */	cmpwi r4, 1
/* 8028DC64  41 82 00 08 */	beq lbl_8028DC6C
/* 8028DC68  48 00 00 10 */	b lbl_8028DC78
lbl_8028DC6C:
/* 8028DC6C  38 00 00 00 */	li r0, 0
/* 8028DC70  90 03 01 28 */	stw r0, 0x128(r3)
/* 8028DC74  48 00 03 31 */	bl beginSound_fadeIn___Q215JStudio_JAudio214TAdaptor_soundFv
lbl_8028DC78:
/* 8028DC78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028DC7C  7C 08 03 A6 */	mtlr r0
/* 8028DC80  38 21 00 10 */	addi r1, r1, 0x10
/* 8028DC84  4E 80 00 20 */	blr 
