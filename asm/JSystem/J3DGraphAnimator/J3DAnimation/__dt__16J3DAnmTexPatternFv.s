lbl_8032BD20:
/* 8032BD20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032BD24  7C 08 02 A6 */	mflr r0
/* 8032BD28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032BD2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032BD30  7C 7F 1B 79 */	or. r31, r3, r3
/* 8032BD34  41 82 00 48 */	beq lbl_8032BD7C
/* 8032BD38  3C 60 80 3D */	lis r3, __vt__16J3DAnmTexPattern@ha /* 0x803CED50@ha */
/* 8032BD3C  38 03 ED 50 */	addi r0, r3, __vt__16J3DAnmTexPattern@l /* 0x803CED50@l */
/* 8032BD40  90 1F 00 00 */	stw r0, 0(r31)
/* 8032BD44  34 1F 00 1C */	addic. r0, r31, 0x1c
/* 8032BD48  41 82 00 10 */	beq lbl_8032BD58
/* 8032BD4C  3C 60 80 3C */	lis r3, __vt__10JUTNameTab@ha /* 0x803BB3DC@ha */
/* 8032BD50  38 03 B3 DC */	addi r0, r3, __vt__10JUTNameTab@l /* 0x803BB3DC@l */
/* 8032BD54  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_8032BD58:
/* 8032BD58  28 1F 00 00 */	cmplwi r31, 0
/* 8032BD5C  41 82 00 10 */	beq lbl_8032BD6C
/* 8032BD60  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha /* 0x803A7C38@ha */
/* 8032BD64  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l /* 0x803A7C38@l */
/* 8032BD68  90 1F 00 00 */	stw r0, 0(r31)
lbl_8032BD6C:
/* 8032BD6C  7C 80 07 35 */	extsh. r0, r4
/* 8032BD70  40 81 00 0C */	ble lbl_8032BD7C
/* 8032BD74  7F E3 FB 78 */	mr r3, r31
/* 8032BD78  4B FA 2F C5 */	bl __dl__FPv
lbl_8032BD7C:
/* 8032BD7C  7F E3 FB 78 */	mr r3, r31
/* 8032BD80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032BD84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032BD88  7C 08 03 A6 */	mtlr r0
/* 8032BD8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8032BD90  4E 80 00 20 */	blr 
