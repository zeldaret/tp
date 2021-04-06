lbl_80BCA334:
/* 80BCA334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCA338  7C 08 02 A6 */	mflr r0
/* 80BCA33C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCA340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCA344  7C 7F 1B 78 */	mr r31, r3
/* 80BCA348  38 7F 07 A8 */	addi r3, r31, 0x7a8
/* 80BCA34C  38 80 00 01 */	li r4, 1
/* 80BCA350  38 A0 00 00 */	li r5, 0
/* 80BCA354  7F E6 FB 78 */	mr r6, r31
/* 80BCA358  4B 4B 95 09 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BCA35C  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80BCA360  3C 80 80 BD */	lis r4, ccSphSrc@ha /* 0x80BCC57C@ha */
/* 80BCA364  38 84 C5 7C */	addi r4, r4, ccSphSrc@l /* 0x80BCC57C@l */
/* 80BCA368  4B 4B A6 CD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80BCA36C  38 1F 07 A8 */	addi r0, r31, 0x7a8
/* 80BCA370  90 1F 08 28 */	stw r0, 0x828(r31)
/* 80BCA374  38 7F 09 08 */	addi r3, r31, 0x908
/* 80BCA378  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BCA37C  4B 6A 52 CD */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BCA380  80 1F 08 80 */	lwz r0, 0x880(r31)
/* 80BCA384  60 00 00 04 */	ori r0, r0, 4
/* 80BCA388  90 1F 08 80 */	stw r0, 0x880(r31)
/* 80BCA38C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCA390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCA394  7C 08 03 A6 */	mtlr r0
/* 80BCA398  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCA39C  4E 80 00 20 */	blr 
