lbl_80CE8700:
/* 80CE8700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE8704  7C 08 02 A6 */	mflr r0
/* 80CE8708  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE870C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE8710  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE8714  41 82 00 1C */	beq lbl_80CE8730
/* 80CE8718  3C A0 80 CF */	lis r5, __vt__8cM3dGSph@ha /* 0x80CE8F80@ha */
/* 80CE871C  38 05 8F 80 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80CE8F80@l */
/* 80CE8720  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80CE8724  7C 80 07 35 */	extsh. r0, r4
/* 80CE8728  40 81 00 08 */	ble lbl_80CE8730
/* 80CE872C  4B 5E 66 11 */	bl __dl__FPv
lbl_80CE8730:
/* 80CE8730  7F E3 FB 78 */	mr r3, r31
/* 80CE8734  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE8738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE873C  7C 08 03 A6 */	mtlr r0
/* 80CE8740  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE8744  4E 80 00 20 */	blr 
