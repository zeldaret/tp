lbl_8025C970:
/* 8025C970  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025C974  7C 08 02 A6 */	mflr r0
/* 8025C978  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025C97C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025C980  7C 7F 1B 79 */	or. r31, r3, r3
/* 8025C984  41 82 00 70 */	beq lbl_8025C9F4
/* 8025C988  3C 60 80 3C */	lis r3, __vt__23dSvBit_childSwitchHIO_c@ha
/* 8025C98C  38 03 33 A8 */	addi r0, r3, __vt__23dSvBit_childSwitchHIO_c@l
/* 8025C990  90 1F 00 00 */	stw r0, 0(r31)
/* 8025C994  34 1F 01 E0 */	addic. r0, r31, 0x1e0
/* 8025C998  41 82 00 10 */	beq lbl_8025C9A8
/* 8025C99C  3C 60 80 3C */	lis r3, __vt__26dSvBit_childSwOneZoneHIO_c@ha
/* 8025C9A0  38 03 33 60 */	addi r0, r3, __vt__26dSvBit_childSwOneZoneHIO_c@l
/* 8025C9A4  90 1F 01 E0 */	stw r0, 0x1e0(r31)
lbl_8025C9A8:
/* 8025C9A8  34 1F 01 98 */	addic. r0, r31, 0x198
/* 8025C9AC  41 82 00 10 */	beq lbl_8025C9BC
/* 8025C9B0  3C 60 80 3C */	lis r3, __vt__23dSvBit_childSwZoneHIO_c@ha
/* 8025C9B4  38 03 33 6C */	addi r0, r3, __vt__23dSvBit_childSwZoneHIO_c@l
/* 8025C9B8  90 1F 01 98 */	stw r0, 0x198(r31)
lbl_8025C9BC:
/* 8025C9BC  34 1F 01 10 */	addic. r0, r31, 0x110
/* 8025C9C0  41 82 00 10 */	beq lbl_8025C9D0
/* 8025C9C4  3C 60 80 3C */	lis r3, __vt__26dSvBit_childSwDungeonHIO_c@ha
/* 8025C9C8  38 03 33 78 */	addi r0, r3, __vt__26dSvBit_childSwDungeonHIO_c@l
/* 8025C9CC  90 1F 01 10 */	stw r0, 0x110(r31)
lbl_8025C9D0:
/* 8025C9D0  34 1F 00 08 */	addic. r0, r31, 8
/* 8025C9D4  41 82 00 10 */	beq lbl_8025C9E4
/* 8025C9D8  3C 60 80 3C */	lis r3, __vt__29dSvBit_childSwPerfectionHIO_c@ha
/* 8025C9DC  38 03 33 84 */	addi r0, r3, __vt__29dSvBit_childSwPerfectionHIO_c@l
/* 8025C9E0  90 1F 00 08 */	stw r0, 8(r31)
lbl_8025C9E4:
/* 8025C9E4  7C 80 07 35 */	extsh. r0, r4
/* 8025C9E8  40 81 00 0C */	ble lbl_8025C9F4
/* 8025C9EC  7F E3 FB 78 */	mr r3, r31
/* 8025C9F0  48 07 23 4D */	bl __dl__FPv
lbl_8025C9F4:
/* 8025C9F4  7F E3 FB 78 */	mr r3, r31
/* 8025C9F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025C9FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025CA00  7C 08 03 A6 */	mtlr r0
/* 8025CA04  38 21 00 10 */	addi r1, r1, 0x10
/* 8025CA08  4E 80 00 20 */	blr 
