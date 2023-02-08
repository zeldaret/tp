lbl_80239BE0:
/* 80239BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80239BE4  7C 08 02 A6 */	mflr r0
/* 80239BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80239BEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80239BF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80239BF4  41 82 00 58 */	beq lbl_80239C4C
/* 80239BF8  3C 60 80 3D */	lis r3, __vt__14J2DAnmColorKey@ha /* 0x803CD780@ha */
/* 80239BFC  38 03 D7 80 */	addi r0, r3, __vt__14J2DAnmColorKey@l /* 0x803CD780@l */
/* 80239C00  90 1F 00 00 */	stw r0, 0(r31)
/* 80239C04  41 82 00 38 */	beq lbl_80239C3C
/* 80239C08  3C 60 80 3D */	lis r3, __vt__11J2DAnmColor@ha /* 0x803CD7A8@ha */
/* 80239C0C  38 03 D7 A8 */	addi r0, r3, __vt__11J2DAnmColor@l /* 0x803CD7A8@l */
/* 80239C10  90 1F 00 00 */	stw r0, 0(r31)
/* 80239C14  34 1F 00 20 */	addic. r0, r31, 0x20
/* 80239C18  41 82 00 10 */	beq lbl_80239C28
/* 80239C1C  3C 60 80 3C */	lis r3, __vt__10JUTNameTab@ha /* 0x803BB3DC@ha */
/* 80239C20  38 03 B3 DC */	addi r0, r3, __vt__10JUTNameTab@l /* 0x803BB3DC@l */
/* 80239C24  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_80239C28:
/* 80239C28  28 1F 00 00 */	cmplwi r31, 0
/* 80239C2C  41 82 00 10 */	beq lbl_80239C3C
/* 80239C30  3C 60 80 3B */	lis r3, __vt__10J2DAnmBase@ha /* 0x803A8E04@ha */
/* 80239C34  38 03 8E 04 */	addi r0, r3, __vt__10J2DAnmBase@l /* 0x803A8E04@l */
/* 80239C38  90 1F 00 00 */	stw r0, 0(r31)
lbl_80239C3C:
/* 80239C3C  7C 80 07 35 */	extsh. r0, r4
/* 80239C40  40 81 00 0C */	ble lbl_80239C4C
/* 80239C44  7F E3 FB 78 */	mr r3, r31
/* 80239C48  48 09 50 F5 */	bl __dl__FPv
lbl_80239C4C:
/* 80239C4C  7F E3 FB 78 */	mr r3, r31
/* 80239C50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80239C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80239C58  7C 08 03 A6 */	mtlr r0
/* 80239C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80239C60  4E 80 00 20 */	blr 
