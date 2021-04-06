lbl_80268074:
/* 80268074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80268078  7C 08 02 A6 */	mflr r0
/* 8026807C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80268080  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80268084  7C 7F 1B 78 */	mr r31, r3
/* 80268088  3C 80 80 3C */	lis r4, __vt__13cBgS_PolyInfo@ha /* 0x803C3FD0@ha */
/* 8026808C  38 04 3F D0 */	addi r0, r4, __vt__13cBgS_PolyInfo@l /* 0x803C3FD0@l */
/* 80268090  90 03 00 0C */	stw r0, 0xc(r3)
/* 80268094  48 00 00 8D */	bl ClearPi__13cBgS_PolyInfoFv
/* 80268098  7F E3 FB 78 */	mr r3, r31
/* 8026809C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802680A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802680A4  7C 08 03 A6 */	mtlr r0
/* 802680A8  38 21 00 10 */	addi r1, r1, 0x10
/* 802680AC  4E 80 00 20 */	blr 
