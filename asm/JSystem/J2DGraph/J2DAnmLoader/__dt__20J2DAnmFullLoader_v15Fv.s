lbl_80309D04:
/* 80309D04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309D08  7C 08 02 A6 */	mflr r0
/* 80309D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309D10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80309D14  7C 7F 1B 79 */	or. r31, r3, r3
/* 80309D18  41 82 00 30 */	beq lbl_80309D48
/* 80309D1C  3C 60 80 3D */	lis r3, __vt__20J2DAnmFullLoader_v15@ha /* 0x803CD6C8@ha */
/* 80309D20  38 03 D6 C8 */	addi r0, r3, __vt__20J2DAnmFullLoader_v15@l /* 0x803CD6C8@l */
/* 80309D24  90 1F 00 00 */	stw r0, 0(r31)
/* 80309D28  41 82 00 10 */	beq lbl_80309D38
/* 80309D2C  3C 60 80 3D */	lis r3, __vt__12J2DAnmLoader@ha /* 0x803CD6F0@ha */
/* 80309D30  38 03 D6 F0 */	addi r0, r3, __vt__12J2DAnmLoader@l /* 0x803CD6F0@l */
/* 80309D34  90 1F 00 00 */	stw r0, 0(r31)
lbl_80309D38:
/* 80309D38  7C 80 07 35 */	extsh. r0, r4
/* 80309D3C  40 81 00 0C */	ble lbl_80309D48
/* 80309D40  7F E3 FB 78 */	mr r3, r31
/* 80309D44  4B FC 4F F9 */	bl __dl__FPv
lbl_80309D48:
/* 80309D48  7F E3 FB 78 */	mr r3, r31
/* 80309D4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80309D50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309D54  7C 08 03 A6 */	mtlr r0
/* 80309D58  38 21 00 10 */	addi r1, r1, 0x10
/* 80309D5C  4E 80 00 20 */	blr 
