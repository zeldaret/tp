lbl_8025C8D4:
/* 8025C8D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025C8D8  7C 08 02 A6 */	mflr r0
/* 8025C8DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025C8E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025C8E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8025C8E8  41 82 00 70 */	beq lbl_8025C958
/* 8025C8EC  3C 60 80 3C */	lis r3, __vt__21dSvBit_childItemHIO_c@ha
/* 8025C8F0  38 03 33 9C */	addi r0, r3, __vt__21dSvBit_childItemHIO_c@l
/* 8025C8F4  90 1F 00 00 */	stw r0, 0(r31)
/* 8025C8F8  34 1F 01 A0 */	addic. r0, r31, 0x1a0
/* 8025C8FC  41 82 00 10 */	beq lbl_8025C90C
/* 8025C900  3C 60 80 3C */	lis r3, __vt__26dSvBit_childItOneZoneHIO_c@ha
/* 8025C904  38 03 33 30 */	addi r0, r3, __vt__26dSvBit_childItOneZoneHIO_c@l
/* 8025C908  90 1F 01 A0 */	stw r0, 0x1a0(r31)
lbl_8025C90C:
/* 8025C90C  34 1F 01 58 */	addic. r0, r31, 0x158
/* 8025C910  41 82 00 10 */	beq lbl_8025C920
/* 8025C914  3C 60 80 3C */	lis r3, __vt__23dSvBit_childItZoneHIO_c@ha
/* 8025C918  38 03 33 3C */	addi r0, r3, __vt__23dSvBit_childItZoneHIO_c@l
/* 8025C91C  90 1F 01 58 */	stw r0, 0x158(r31)
lbl_8025C920:
/* 8025C920  34 1F 00 50 */	addic. r0, r31, 0x50
/* 8025C924  41 82 00 10 */	beq lbl_8025C934
/* 8025C928  3C 60 80 3C */	lis r3, __vt__26dSvBit_childItDungeonHIO_c@ha
/* 8025C92C  38 03 33 48 */	addi r0, r3, __vt__26dSvBit_childItDungeonHIO_c@l
/* 8025C930  90 1F 00 50 */	stw r0, 0x50(r31)
lbl_8025C934:
/* 8025C934  34 1F 00 08 */	addic. r0, r31, 8
/* 8025C938  41 82 00 10 */	beq lbl_8025C948
/* 8025C93C  3C 60 80 3C */	lis r3, __vt__29dSvBit_childItPerfectionHIO_c@ha
/* 8025C940  38 03 33 54 */	addi r0, r3, __vt__29dSvBit_childItPerfectionHIO_c@l
/* 8025C944  90 1F 00 08 */	stw r0, 8(r31)
lbl_8025C948:
/* 8025C948  7C 80 07 35 */	extsh. r0, r4
/* 8025C94C  40 81 00 0C */	ble lbl_8025C958
/* 8025C950  7F E3 FB 78 */	mr r3, r31
/* 8025C954  48 07 23 E9 */	bl __dl__FPv
lbl_8025C958:
/* 8025C958  7F E3 FB 78 */	mr r3, r31
/* 8025C95C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025C960  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025C964  7C 08 03 A6 */	mtlr r0
/* 8025C968  38 21 00 10 */	addi r1, r1, 0x10
/* 8025C96C  4E 80 00 20 */	blr 
