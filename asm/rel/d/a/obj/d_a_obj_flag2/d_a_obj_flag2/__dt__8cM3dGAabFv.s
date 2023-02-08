lbl_80BEDC3C:
/* 80BEDC3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEDC40  7C 08 02 A6 */	mflr r0
/* 80BEDC44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEDC48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEDC4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BEDC50  41 82 00 1C */	beq lbl_80BEDC6C
/* 80BEDC54  3C A0 80 BF */	lis r5, __vt__8cM3dGAab@ha /* 0x80BEE9DC@ha */
/* 80BEDC58  38 05 E9 DC */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80BEE9DC@l */
/* 80BEDC5C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BEDC60  7C 80 07 35 */	extsh. r0, r4
/* 80BEDC64  40 81 00 08 */	ble lbl_80BEDC6C
/* 80BEDC68  4B 6E 10 D5 */	bl __dl__FPv
lbl_80BEDC6C:
/* 80BEDC6C  7F E3 FB 78 */	mr r3, r31
/* 80BEDC70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEDC74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEDC78  7C 08 03 A6 */	mtlr r0
/* 80BEDC7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEDC80  4E 80 00 20 */	blr 
