lbl_8058C8D0:
/* 8058C8D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058C8D4  7C 08 02 A6 */	mflr r0
/* 8058C8D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058C8DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058C8E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8058C8E4  41 82 00 1C */	beq lbl_8058C900
/* 8058C8E8  3C A0 80 59 */	lis r5, __vt__8cM3dGCyl@ha /* 0x8058D088@ha */
/* 8058C8EC  38 05 D0 88 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x8058D088@l */
/* 8058C8F0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8058C8F4  7C 80 07 35 */	extsh. r0, r4
/* 8058C8F8  40 81 00 08 */	ble lbl_8058C900
/* 8058C8FC  4B D4 24 41 */	bl __dl__FPv
lbl_8058C900:
/* 8058C900  7F E3 FB 78 */	mr r3, r31
/* 8058C904  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058C908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058C90C  7C 08 03 A6 */	mtlr r0
/* 8058C910  38 21 00 10 */	addi r1, r1, 0x10
/* 8058C914  4E 80 00 20 */	blr 
