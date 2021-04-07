lbl_80CB3D24:
/* 80CB3D24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB3D28  7C 08 02 A6 */	mflr r0
/* 80CB3D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB3D30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB3D34  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB3D38  41 82 00 30 */	beq lbl_80CB3D68
/* 80CB3D3C  3C 60 80 CB */	lis r3, __vt__14daPoFire_HIO_c@ha /* 0x80CB40E8@ha */
/* 80CB3D40  38 03 40 E8 */	addi r0, r3, __vt__14daPoFire_HIO_c@l /* 0x80CB40E8@l */
/* 80CB3D44  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB3D48  41 82 00 10 */	beq lbl_80CB3D58
/* 80CB3D4C  3C 60 80 CB */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80CB40F4@ha */
/* 80CB3D50  38 03 40 F4 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80CB40F4@l */
/* 80CB3D54  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CB3D58:
/* 80CB3D58  7C 80 07 35 */	extsh. r0, r4
/* 80CB3D5C  40 81 00 0C */	ble lbl_80CB3D68
/* 80CB3D60  7F E3 FB 78 */	mr r3, r31
/* 80CB3D64  4B 61 AF D9 */	bl __dl__FPv
lbl_80CB3D68:
/* 80CB3D68  7F E3 FB 78 */	mr r3, r31
/* 80CB3D6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB3D70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB3D74  7C 08 03 A6 */	mtlr r0
/* 80CB3D78  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB3D7C  4E 80 00 20 */	blr 
