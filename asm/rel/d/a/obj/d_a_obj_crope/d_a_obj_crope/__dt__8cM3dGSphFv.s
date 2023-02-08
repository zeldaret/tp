lbl_80BCD3DC:
/* 80BCD3DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCD3E0  7C 08 02 A6 */	mflr r0
/* 80BCD3E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCD3E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCD3EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BCD3F0  41 82 00 1C */	beq lbl_80BCD40C
/* 80BCD3F4  3C A0 80 BD */	lis r5, __vt__8cM3dGSph@ha /* 0x80BCEC08@ha */
/* 80BCD3F8  38 05 EC 08 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80BCEC08@l */
/* 80BCD3FC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BCD400  7C 80 07 35 */	extsh. r0, r4
/* 80BCD404  40 81 00 08 */	ble lbl_80BCD40C
/* 80BCD408  4B 70 19 35 */	bl __dl__FPv
lbl_80BCD40C:
/* 80BCD40C  7F E3 FB 78 */	mr r3, r31
/* 80BCD410  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCD414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCD418  7C 08 03 A6 */	mtlr r0
/* 80BCD41C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCD420  4E 80 00 20 */	blr 
