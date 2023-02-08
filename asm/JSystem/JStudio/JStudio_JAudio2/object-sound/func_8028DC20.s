lbl_8028DC20:
/* 8028DC20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028DC24  7C 08 02 A6 */	mflr r0
/* 8028DC28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028DC2C  2C 04 00 19 */	cmpwi r4, 0x19
/* 8028DC30  41 82 00 08 */	beq lbl_8028DC38
/* 8028DC34  48 00 00 10 */	b lbl_8028DC44
lbl_8028DC38:
/* 8028DC38  80 05 00 00 */	lwz r0, 0(r5)
/* 8028DC3C  90 03 01 24 */	stw r0, 0x124(r3)
/* 8028DC40  48 00 02 C5 */	bl prepareSound___Q215JStudio_JAudio214TAdaptor_soundFv
lbl_8028DC44:
/* 8028DC44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028DC48  7C 08 03 A6 */	mtlr r0
/* 8028DC4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028DC50  4E 80 00 20 */	blr 
