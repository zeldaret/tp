lbl_80C5F3A4:
/* 80C5F3A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5F3A8  7C 08 02 A6 */	mflr r0
/* 80C5F3AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5F3B0  3C 60 80 C6 */	lis r3, l_HIO@ha /* 0x80C5F52C@ha */
/* 80C5F3B4  38 63 F5 2C */	addi r3, r3, l_HIO@l /* 0x80C5F52C@l */
/* 80C5F3B8  4B FF F7 B5 */	bl __ct__15daLv4Gate_HIO_cFv
/* 80C5F3BC  3C 80 80 C6 */	lis r4, __dt__15daLv4Gate_HIO_cFv@ha /* 0x80C5F348@ha */
/* 80C5F3C0  38 84 F3 48 */	addi r4, r4, __dt__15daLv4Gate_HIO_cFv@l /* 0x80C5F348@l */
/* 80C5F3C4  3C A0 80 C6 */	lis r5, lit_3619@ha /* 0x80C5F520@ha */
/* 80C5F3C8  38 A5 F5 20 */	addi r5, r5, lit_3619@l /* 0x80C5F520@l */
/* 80C5F3CC  4B FF F7 2D */	bl __register_global_object
/* 80C5F3D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5F3D4  7C 08 03 A6 */	mtlr r0
/* 80C5F3D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5F3DC  4E 80 00 20 */	blr 
