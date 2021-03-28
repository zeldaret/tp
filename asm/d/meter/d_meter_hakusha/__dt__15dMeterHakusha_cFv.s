lbl_8020C384:
/* 8020C384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020C388  7C 08 02 A6 */	mflr r0
/* 8020C38C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020C390  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020C394  93 C1 00 08 */	stw r30, 8(r1)
/* 8020C398  7C 7E 1B 79 */	or. r30, r3, r3
/* 8020C39C  7C 9F 23 78 */	mr r31, r4
/* 8020C3A0  41 82 00 44 */	beq lbl_8020C3E4
/* 8020C3A4  3C 80 80 3C */	lis r4, __vt__15dMeterHakusha_c@ha
/* 8020C3A8  38 04 F2 B8 */	addi r0, r4, __vt__15dMeterHakusha_c@l
/* 8020C3AC  90 1E 00 00 */	stw r0, 0(r30)
/* 8020C3B0  81 83 00 00 */	lwz r12, 0(r3)
/* 8020C3B4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8020C3B8  7D 89 03 A6 */	mtctr r12
/* 8020C3BC  4E 80 04 21 */	bctrl 
/* 8020C3C0  28 1E 00 00 */	cmplwi r30, 0
/* 8020C3C4  41 82 00 10 */	beq lbl_8020C3D4
/* 8020C3C8  3C 60 80 3C */	lis r3, __vt__11dMeterSub_c@ha
/* 8020C3CC  38 03 B6 D4 */	addi r0, r3, __vt__11dMeterSub_c@l
/* 8020C3D0  90 1E 00 00 */	stw r0, 0(r30)
lbl_8020C3D4:
/* 8020C3D4  7F E0 07 35 */	extsh. r0, r31
/* 8020C3D8  40 81 00 0C */	ble lbl_8020C3E4
/* 8020C3DC  7F C3 F3 78 */	mr r3, r30
/* 8020C3E0  48 0C 29 5D */	bl __dl__FPv
lbl_8020C3E4:
/* 8020C3E4  7F C3 F3 78 */	mr r3, r30
/* 8020C3E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020C3EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8020C3F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020C3F4  7C 08 03 A6 */	mtlr r0
/* 8020C3F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8020C3FC  4E 80 00 20 */	blr 
