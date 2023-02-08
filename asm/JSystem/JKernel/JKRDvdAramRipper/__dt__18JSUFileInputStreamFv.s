lbl_802DADD8:
/* 802DADD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DADDC  7C 08 02 A6 */	mflr r0
/* 802DADE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DADE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DADE8  93 C1 00 08 */	stw r30, 8(r1)
/* 802DADEC  7C 7E 1B 79 */	or. r30, r3, r3
/* 802DADF0  7C 9F 23 78 */	mr r31, r4
/* 802DADF4  41 82 00 38 */	beq lbl_802DAE2C
/* 802DADF8  3C 80 80 3D */	lis r4, __vt__18JSUFileInputStream@ha /* 0x803CC518@ha */
/* 802DADFC  38 04 C5 18 */	addi r0, r4, __vt__18JSUFileInputStream@l /* 0x803CC518@l */
/* 802DAE00  90 1E 00 00 */	stw r0, 0(r30)
/* 802DAE04  41 82 00 18 */	beq lbl_802DAE1C
/* 802DAE08  3C 80 80 3D */	lis r4, __vt__20JSURandomInputStream@ha /* 0x803CC4B0@ha */
/* 802DAE0C  38 04 C4 B0 */	addi r0, r4, __vt__20JSURandomInputStream@l /* 0x803CC4B0@l */
/* 802DAE10  90 1E 00 00 */	stw r0, 0(r30)
/* 802DAE14  38 80 00 00 */	li r4, 0
/* 802DAE18  48 00 14 25 */	bl __dt__14JSUInputStreamFv
lbl_802DAE1C:
/* 802DAE1C  7F E0 07 35 */	extsh. r0, r31
/* 802DAE20  40 81 00 0C */	ble lbl_802DAE2C
/* 802DAE24  7F C3 F3 78 */	mr r3, r30
/* 802DAE28  4B FF 3F 15 */	bl __dl__FPv
lbl_802DAE2C:
/* 802DAE2C  7F C3 F3 78 */	mr r3, r30
/* 802DAE30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DAE34  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DAE38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DAE3C  7C 08 03 A6 */	mtlr r0
/* 802DAE40  38 21 00 10 */	addi r1, r1, 0x10
/* 802DAE44  4E 80 00 20 */	blr 
