lbl_802985E4:
/* 802985E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802985E8  7C 08 02 A6 */	mflr r0
/* 802985EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802985F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802985F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 802985F8  41 82 00 30 */	beq lbl_80298628
/* 802985FC  3C 60 80 3C */	lis r3, __vt__Q216JASBasicWaveBank11TWaveHandle@ha /* 0x803C7728@ha */
/* 80298600  38 03 77 28 */	addi r0, r3, __vt__Q216JASBasicWaveBank11TWaveHandle@l /* 0x803C7728@l */
/* 80298604  90 1F 00 00 */	stw r0, 0(r31)
/* 80298608  41 82 00 10 */	beq lbl_80298618
/* 8029860C  3C 60 80 3C */	lis r3, __vt__13JASWaveHandle@ha /* 0x803C7754@ha */
/* 80298610  38 03 77 54 */	addi r0, r3, __vt__13JASWaveHandle@l /* 0x803C7754@l */
/* 80298614  90 1F 00 00 */	stw r0, 0(r31)
lbl_80298618:
/* 80298618  7C 80 07 35 */	extsh. r0, r4
/* 8029861C  40 81 00 0C */	ble lbl_80298628
/* 80298620  7F E3 FB 78 */	mr r3, r31
/* 80298624  48 03 67 19 */	bl __dl__FPv
lbl_80298628:
/* 80298628  7F E3 FB 78 */	mr r3, r31
/* 8029862C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80298630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298634  7C 08 03 A6 */	mtlr r0
/* 80298638  38 21 00 10 */	addi r1, r1, 0x10
/* 8029863C  4E 80 00 20 */	blr 
