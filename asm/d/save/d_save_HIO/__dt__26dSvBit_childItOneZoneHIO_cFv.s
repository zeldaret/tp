lbl_8025C3BC:
/* 8025C3BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025C3C0  7C 08 02 A6 */	mflr r0
/* 8025C3C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025C3C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025C3CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8025C3D0  41 82 00 1C */	beq lbl_8025C3EC
/* 8025C3D4  3C A0 80 3C */	lis r5, __vt__26dSvBit_childItOneZoneHIO_c@ha /* 0x803C3330@ha */
/* 8025C3D8  38 05 33 30 */	addi r0, r5, __vt__26dSvBit_childItOneZoneHIO_c@l /* 0x803C3330@l */
/* 8025C3DC  90 1F 00 00 */	stw r0, 0(r31)
/* 8025C3E0  7C 80 07 35 */	extsh. r0, r4
/* 8025C3E4  40 81 00 08 */	ble lbl_8025C3EC
/* 8025C3E8  48 07 29 55 */	bl __dl__FPv
lbl_8025C3EC:
/* 8025C3EC  7F E3 FB 78 */	mr r3, r31
/* 8025C3F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025C3F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025C3F8  7C 08 03 A6 */	mtlr r0
/* 8025C3FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8025C400  4E 80 00 20 */	blr 
