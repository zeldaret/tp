lbl_80332B38:
/* 80332B38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80332B3C  7C 08 02 A6 */	mflr r0
/* 80332B40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80332B44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80332B48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80332B4C  41 82 00 30 */	beq lbl_80332B7C
/* 80332B50  3C 60 80 3D */	lis r3, __vt__17J3DColorBlockNull@ha /* 0x803CF054@ha */
/* 80332B54  38 03 F0 54 */	addi r0, r3, __vt__17J3DColorBlockNull@l /* 0x803CF054@l */
/* 80332B58  90 1F 00 00 */	stw r0, 0(r31)
/* 80332B5C  41 82 00 10 */	beq lbl_80332B6C
/* 80332B60  3C 60 80 3D */	lis r3, __vt__13J3DColorBlock@ha /* 0x803CDEA0@ha */
/* 80332B64  38 03 DE A0 */	addi r0, r3, __vt__13J3DColorBlock@l /* 0x803CDEA0@l */
/* 80332B68  90 1F 00 00 */	stw r0, 0(r31)
lbl_80332B6C:
/* 80332B6C  7C 80 07 35 */	extsh. r0, r4
/* 80332B70  40 81 00 0C */	ble lbl_80332B7C
/* 80332B74  7F E3 FB 78 */	mr r3, r31
/* 80332B78  4B F9 C1 C5 */	bl __dl__FPv
lbl_80332B7C:
/* 80332B7C  7F E3 FB 78 */	mr r3, r31
/* 80332B80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80332B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80332B88  7C 08 03 A6 */	mtlr r0
/* 80332B8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80332B90  4E 80 00 20 */	blr 
