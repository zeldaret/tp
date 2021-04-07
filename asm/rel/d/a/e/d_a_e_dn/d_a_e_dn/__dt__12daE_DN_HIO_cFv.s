lbl_804EE39C:
/* 804EE39C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EE3A0  7C 08 02 A6 */	mflr r0
/* 804EE3A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EE3A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EE3AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 804EE3B0  41 82 00 1C */	beq lbl_804EE3CC
/* 804EE3B4  3C A0 80 4F */	lis r5, __vt__12daE_DN_HIO_c@ha /* 0x804EEED8@ha */
/* 804EE3B8  38 05 EE D8 */	addi r0, r5, __vt__12daE_DN_HIO_c@l /* 0x804EEED8@l */
/* 804EE3BC  90 1F 00 00 */	stw r0, 0(r31)
/* 804EE3C0  7C 80 07 35 */	extsh. r0, r4
/* 804EE3C4  40 81 00 08 */	ble lbl_804EE3CC
/* 804EE3C8  4B DE 09 75 */	bl __dl__FPv
lbl_804EE3CC:
/* 804EE3CC  7F E3 FB 78 */	mr r3, r31
/* 804EE3D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EE3D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EE3D8  7C 08 03 A6 */	mtlr r0
/* 804EE3DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804EE3E0  4E 80 00 20 */	blr 
