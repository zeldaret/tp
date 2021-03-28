lbl_805B9EC8:
/* 805B9EC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B9ECC  7C 08 02 A6 */	mflr r0
/* 805B9ED0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B9ED4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B9ED8  7C 7F 1B 79 */	or. r31, r3, r3
/* 805B9EDC  41 82 00 1C */	beq lbl_805B9EF8
/* 805B9EE0  3C A0 80 5C */	lis r5, __vt__8cM3dGSph@ha
/* 805B9EE4  38 05 AD 14 */	addi r0, r5, __vt__8cM3dGSph@l
/* 805B9EE8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 805B9EEC  7C 80 07 35 */	extsh. r0, r4
/* 805B9EF0  40 81 00 08 */	ble lbl_805B9EF8
/* 805B9EF4  4B D1 4E 48 */	b __dl__FPv
lbl_805B9EF8:
/* 805B9EF8  7F E3 FB 78 */	mr r3, r31
/* 805B9EFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B9F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B9F04  7C 08 03 A6 */	mtlr r0
/* 805B9F08  38 21 00 10 */	addi r1, r1, 0x10
/* 805B9F0C  4E 80 00 20 */	blr 
