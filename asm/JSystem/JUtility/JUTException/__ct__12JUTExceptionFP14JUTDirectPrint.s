lbl_802E1D5C:
/* 802E1D5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E1D60  7C 08 02 A6 */	mflr r0
/* 802E1D64  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E1D68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E1D6C  93 C1 00 08 */	stw r30, 8(r1)
/* 802E1D70  7C 7E 1B 78 */	mr r30, r3
/* 802E1D74  7C 9F 23 78 */	mr r31, r4
/* 802E1D78  38 80 1C 00 */	li r4, 0x1c00
/* 802E1D7C  38 A0 00 10 */	li r5, 0x10
/* 802E1D80  38 C0 00 00 */	li r6, 0
/* 802E1D84  4B FE F7 E5 */	bl __ct__9JKRThreadFUlii
/* 802E1D88  3C 60 80 3D */	lis r3, __vt__12JUTException@ha
/* 802E1D8C  38 03 C6 A4 */	addi r0, r3, __vt__12JUTException@l
/* 802E1D90  90 1E 00 00 */	stw r0, 0(r30)
/* 802E1D94  93 FE 00 80 */	stw r31, 0x80(r30)
/* 802E1D98  38 60 00 02 */	li r3, 2
/* 802E1D9C  3C 80 80 2E */	lis r4, errorHandler__12JUTExceptionFUsP9OSContextUlUl@ha
/* 802E1DA0  38 84 1F CC */	addi r4, r4, errorHandler__12JUTExceptionFUsP9OSContextUlUl@l
/* 802E1DA4  48 05 A7 DD */	bl OSSetErrorHandler
/* 802E1DA8  38 60 00 03 */	li r3, 3
/* 802E1DAC  3C 80 80 2E */	lis r4, errorHandler__12JUTExceptionFUsP9OSContextUlUl@ha
/* 802E1DB0  38 84 1F CC */	addi r4, r4, errorHandler__12JUTExceptionFUsP9OSContextUlUl@l
/* 802E1DB4  48 05 A7 CD */	bl OSSetErrorHandler
/* 802E1DB8  38 60 00 06 */	li r3, 6
/* 802E1DBC  3C 80 80 2E */	lis r4, errorHandler__12JUTExceptionFUsP9OSContextUlUl@ha
/* 802E1DC0  38 84 1F CC */	addi r4, r4, errorHandler__12JUTExceptionFUsP9OSContextUlUl@l
/* 802E1DC4  48 05 A7 BD */	bl OSSetErrorHandler
/* 802E1DC8  38 60 00 05 */	li r3, 5
/* 802E1DCC  3C 80 80 2E */	lis r4, errorHandler__12JUTExceptionFUsP9OSContextUlUl@ha
/* 802E1DD0  38 84 1F CC */	addi r4, r4, errorHandler__12JUTExceptionFUsP9OSContextUlUl@l
/* 802E1DD4  48 05 A7 AD */	bl OSSetErrorHandler
/* 802E1DD8  38 60 00 0F */	li r3, 0xf
/* 802E1DDC  3C 80 80 2E */	lis r4, errorHandler__12JUTExceptionFUsP9OSContextUlUl@ha
/* 802E1DE0  38 84 1F CC */	addi r4, r4, errorHandler__12JUTExceptionFUsP9OSContextUlUl@l
/* 802E1DE4  48 05 A7 9D */	bl OSSetErrorHandler
/* 802E1DE8  38 60 00 00 */	li r3, 0
/* 802E1DEC  48 00 04 91 */	bl setFPException__12JUTExceptionFUl
/* 802E1DF0  38 80 00 00 */	li r4, 0
/* 802E1DF4  90 8D 8F 8C */	stw r4, sPreUserCallback__12JUTException(r13)
/* 802E1DF8  90 8D 8F 90 */	stw r4, sPostUserCallback__12JUTException(r13)
/* 802E1DFC  90 9E 00 84 */	stw r4, 0x84(r30)
/* 802E1E00  38 60 FF FF */	li r3, -1
/* 802E1E04  90 7E 00 88 */	stw r3, 0x88(r30)
/* 802E1E08  38 00 00 0A */	li r0, 0xa
/* 802E1E0C  90 1E 00 8C */	stw r0, 0x8c(r30)
/* 802E1E10  90 1E 00 90 */	stw r0, 0x90(r30)
/* 802E1E14  90 7E 00 94 */	stw r3, 0x94(r30)
/* 802E1E18  90 9E 00 98 */	stw r4, 0x98(r30)
/* 802E1E1C  38 00 00 1F */	li r0, 0x1f
/* 802E1E20  90 1E 00 9C */	stw r0, 0x9c(r30)
/* 802E1E24  7F C3 F3 78 */	mr r3, r30
/* 802E1E28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E1E2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E1E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E1E34  7C 08 03 A6 */	mtlr r0
/* 802E1E38  38 21 00 10 */	addi r1, r1, 0x10
/* 802E1E3C  4E 80 00 20 */	blr 
