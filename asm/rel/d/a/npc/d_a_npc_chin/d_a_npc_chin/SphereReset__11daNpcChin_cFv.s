lbl_8098FD5C:
/* 8098FD5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098FD60  7C 08 02 A6 */	mflr r0
/* 8098FD64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098FD68  80 63 0E 0C */	lwz r3, 0xe0c(r3)
/* 8098FD6C  48 26 A7 F0 */	b _setting_main__12_GlSph_Mng_cFv
/* 8098FD70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098FD74  7C 08 03 A6 */	mtlr r0
/* 8098FD78  38 21 00 10 */	addi r1, r1, 0x10
/* 8098FD7C  4E 80 00 20 */	blr 
