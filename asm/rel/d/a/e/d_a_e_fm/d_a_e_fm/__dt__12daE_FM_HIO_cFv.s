lbl_804FA3D8:
/* 804FA3D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FA3DC  7C 08 02 A6 */	mflr r0
/* 804FA3E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FA3E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FA3E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 804FA3EC  41 82 00 1C */	beq lbl_804FA408
/* 804FA3F0  3C A0 80 50 */	lis r5, __vt__12daE_FM_HIO_c@ha /* 0x804FAE44@ha */
/* 804FA3F4  38 05 AE 44 */	addi r0, r5, __vt__12daE_FM_HIO_c@l /* 0x804FAE44@l */
/* 804FA3F8  90 1F 00 00 */	stw r0, 0(r31)
/* 804FA3FC  7C 80 07 35 */	extsh. r0, r4
/* 804FA400  40 81 00 08 */	ble lbl_804FA408
/* 804FA404  4B DD 49 39 */	bl __dl__FPv
lbl_804FA408:
/* 804FA408  7F E3 FB 78 */	mr r3, r31
/* 804FA40C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FA410  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA414  7C 08 03 A6 */	mtlr r0
/* 804FA418  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA41C  4E 80 00 20 */	blr 
