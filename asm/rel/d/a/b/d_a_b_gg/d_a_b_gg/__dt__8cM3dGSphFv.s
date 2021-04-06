lbl_805EC734:
/* 805EC734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EC738  7C 08 02 A6 */	mflr r0
/* 805EC73C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EC740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EC744  7C 7F 1B 79 */	or. r31, r3, r3
/* 805EC748  41 82 00 1C */	beq lbl_805EC764
/* 805EC74C  3C A0 80 5F */	lis r5, __vt__8cM3dGSph@ha /* 0x805ED678@ha */
/* 805EC750  38 05 D6 78 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x805ED678@l */
/* 805EC754  90 1F 00 10 */	stw r0, 0x10(r31)
/* 805EC758  7C 80 07 35 */	extsh. r0, r4
/* 805EC75C  40 81 00 08 */	ble lbl_805EC764
/* 805EC760  4B CE 25 DD */	bl __dl__FPv
lbl_805EC764:
/* 805EC764  7F E3 FB 78 */	mr r3, r31
/* 805EC768  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EC76C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EC770  7C 08 03 A6 */	mtlr r0
/* 805EC774  38 21 00 10 */	addi r1, r1, 0x10
/* 805EC778  4E 80 00 20 */	blr 
