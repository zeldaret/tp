lbl_8028E3A0:
/* 8028E3A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028E3A4  7C 08 02 A6 */	mflr r0
/* 8028E3A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028E3AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028E3B0  93 C1 00 08 */	stw r30, 8(r1)
/* 8028E3B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028E3B8  7C 9F 23 78 */	mr r31, r4
/* 8028E3BC  41 82 00 28 */	beq lbl_8028E3E4
/* 8028E3C0  3C 80 80 3C */	lis r4, __vt__Q217JStudio_JParticle13TCreateObject@ha /* 0x803C5AD8@ha */
/* 8028E3C4  38 04 5A D8 */	addi r0, r4, __vt__Q217JStudio_JParticle13TCreateObject@l /* 0x803C5AD8@l */
/* 8028E3C8  90 1E 00 00 */	stw r0, 0(r30)
/* 8028E3CC  38 80 00 00 */	li r4, 0
/* 8028E3D0  4B FF 70 B9 */	bl __dt__Q27JStudio13TCreateObjectFv
/* 8028E3D4  7F E0 07 35 */	extsh. r0, r31
/* 8028E3D8  40 81 00 0C */	ble lbl_8028E3E4
/* 8028E3DC  7F C3 F3 78 */	mr r3, r30
/* 8028E3E0  48 04 09 5D */	bl __dl__FPv
lbl_8028E3E4:
/* 8028E3E4  7F C3 F3 78 */	mr r3, r30
/* 8028E3E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028E3EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028E3F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028E3F4  7C 08 03 A6 */	mtlr r0
/* 8028E3F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8028E3FC  4E 80 00 20 */	blr 
