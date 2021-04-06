lbl_80CBD764:
/* 80CBD764  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBD768  7C 08 02 A6 */	mflr r0
/* 80CBD76C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBD770  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBD774  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CBD778  41 82 00 1C */	beq lbl_80CBD794
/* 80CBD77C  3C A0 80 CC */	lis r5, __vt__8cM3dGAab@ha /* 0x80CBDBA0@ha */
/* 80CBD780  38 05 DB A0 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80CBDBA0@l */
/* 80CBD784  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CBD788  7C 80 07 35 */	extsh. r0, r4
/* 80CBD78C  40 81 00 08 */	ble lbl_80CBD794
/* 80CBD790  4B 61 15 AD */	bl __dl__FPv
lbl_80CBD794:
/* 80CBD794  7F E3 FB 78 */	mr r3, r31
/* 80CBD798  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBD79C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBD7A0  7C 08 03 A6 */	mtlr r0
/* 80CBD7A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBD7A8  4E 80 00 20 */	blr 
