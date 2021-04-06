lbl_807BD4D4:
/* 807BD4D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BD4D8  7C 08 02 A6 */	mflr r0
/* 807BD4DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BD4E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BD4E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 807BD4E8  41 82 00 1C */	beq lbl_807BD504
/* 807BD4EC  3C A0 80 7C */	lis r5, __vt__8cM3dGSph@ha /* 0x807BD6A8@ha */
/* 807BD4F0  38 05 D6 A8 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x807BD6A8@l */
/* 807BD4F4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 807BD4F8  7C 80 07 35 */	extsh. r0, r4
/* 807BD4FC  40 81 00 08 */	ble lbl_807BD504
/* 807BD500  4B B1 18 3D */	bl __dl__FPv
lbl_807BD504:
/* 807BD504  7F E3 FB 78 */	mr r3, r31
/* 807BD508  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BD50C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BD510  7C 08 03 A6 */	mtlr r0
/* 807BD514  38 21 00 10 */	addi r1, r1, 0x10
/* 807BD518  4E 80 00 20 */	blr 
