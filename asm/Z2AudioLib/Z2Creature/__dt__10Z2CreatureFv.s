lbl_802C0420:
/* 802C0420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C0424  7C 08 02 A6 */	mflr r0
/* 802C0428  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C042C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C0430  93 C1 00 08 */	stw r30, 8(r1)
/* 802C0434  7C 7E 1B 79 */	or. r30, r3, r3
/* 802C0438  7C 9F 23 78 */	mr r31, r4
/* 802C043C  41 82 00 90 */	beq lbl_802C04CC
/* 802C0440  3C 80 80 3D */	lis r4, __vt__10Z2Creature@ha /* 0x803CB8C0@ha */
/* 802C0444  38 04 B8 C0 */	addi r0, r4, __vt__10Z2Creature@l /* 0x803CB8C0@l */
/* 802C0448  90 1E 00 00 */	stw r0, 0(r30)
/* 802C044C  81 83 00 00 */	lwz r12, 0(r3)
/* 802C0450  81 8C 00 08 */	lwz r12, 8(r12)
/* 802C0454  7D 89 03 A6 */	mtctr r12
/* 802C0458  4E 80 04 21 */	bctrl 
/* 802C045C  34 1E 00 70 */	addic. r0, r30, 0x70
/* 802C0460  41 82 00 1C */	beq lbl_802C047C
/* 802C0464  3C 60 80 3D */	lis r3, __vt__16Z2SoundObjSimple@ha /* 0x803CAD10@ha */
/* 802C0468  38 03 AD 10 */	addi r0, r3, __vt__16Z2SoundObjSimple@l /* 0x803CAD10@l */
/* 802C046C  90 1E 00 80 */	stw r0, 0x80(r30)
/* 802C0470  38 7E 00 70 */	addi r3, r30, 0x70
/* 802C0474  38 80 00 00 */	li r4, 0
/* 802C0478  4B FF DA D1 */	bl __dt__14Z2SoundObjBaseFv
lbl_802C047C:
/* 802C047C  34 1E 00 50 */	addic. r0, r30, 0x50
/* 802C0480  41 82 00 1C */	beq lbl_802C049C
/* 802C0484  3C 60 80 3D */	lis r3, __vt__16Z2SoundObjSimple@ha /* 0x803CAD10@ha */
/* 802C0488  38 03 AD 10 */	addi r0, r3, __vt__16Z2SoundObjSimple@l /* 0x803CAD10@l */
/* 802C048C  90 1E 00 60 */	stw r0, 0x60(r30)
/* 802C0490  38 7E 00 50 */	addi r3, r30, 0x50
/* 802C0494  38 80 00 00 */	li r4, 0
/* 802C0498  4B FF DA B1 */	bl __dt__14Z2SoundObjBaseFv
lbl_802C049C:
/* 802C049C  34 1E 00 08 */	addic. r0, r30, 8
/* 802C04A0  41 82 00 1C */	beq lbl_802C04BC
/* 802C04A4  3C 60 80 3D */	lis r3, __vt__15Z2SoundObjAnime@ha /* 0x803CACD0@ha */
/* 802C04A8  38 03 AC D0 */	addi r0, r3, __vt__15Z2SoundObjAnime@l /* 0x803CACD0@l */
/* 802C04AC  90 1E 00 18 */	stw r0, 0x18(r30)
/* 802C04B0  38 7E 00 08 */	addi r3, r30, 8
/* 802C04B4  38 80 00 00 */	li r4, 0
/* 802C04B8  4B FF DA 91 */	bl __dt__14Z2SoundObjBaseFv
lbl_802C04BC:
/* 802C04BC  7F E0 07 35 */	extsh. r0, r31
/* 802C04C0  40 81 00 0C */	ble lbl_802C04CC
/* 802C04C4  7F C3 F3 78 */	mr r3, r30
/* 802C04C8  48 00 E8 75 */	bl __dl__FPv
lbl_802C04CC:
/* 802C04CC  7F C3 F3 78 */	mr r3, r30
/* 802C04D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C04D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C04D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C04DC  7C 08 03 A6 */	mtlr r0
/* 802C04E0  38 21 00 10 */	addi r1, r1, 0x10
/* 802C04E4  4E 80 00 20 */	blr 
