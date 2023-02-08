lbl_806BC750:
/* 806BC750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BC754  7C 08 02 A6 */	mflr r0
/* 806BC758  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BC75C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BC760  93 C1 00 08 */	stw r30, 8(r1)
/* 806BC764  7C 7E 1B 78 */	mr r30, r3
/* 806BC768  3C 80 80 6C */	lis r4, lit_3917@ha /* 0x806BE48C@ha */
/* 806BC76C  3B E4 E4 8C */	addi r31, r4, lit_3917@l /* 0x806BE48C@l */
/* 806BC770  A8 03 06 80 */	lha r0, 0x680(r3)
/* 806BC774  2C 00 00 01 */	cmpwi r0, 1
/* 806BC778  41 82 00 38 */	beq lbl_806BC7B0
/* 806BC77C  40 80 00 74 */	bge lbl_806BC7F0
/* 806BC780  2C 00 00 00 */	cmpwi r0, 0
/* 806BC784  40 80 00 08 */	bge lbl_806BC78C
/* 806BC788  48 00 00 68 */	b lbl_806BC7F0
lbl_806BC78C:
/* 806BC78C  38 80 00 06 */	li r4, 6
/* 806BC790  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806BC794  38 A0 00 00 */	li r5, 0
/* 806BC798  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806BC79C  4B FF F3 75 */	bl anm_init__FP10e_fs_classifUcf
/* 806BC7A0  A8 7E 06 80 */	lha r3, 0x680(r30)
/* 806BC7A4  38 03 00 01 */	addi r0, r3, 1
/* 806BC7A8  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 806BC7AC  48 00 00 44 */	b lbl_806BC7F0
lbl_806BC7B0:
/* 806BC7B0  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806BC7B4  38 80 00 01 */	li r4, 1
/* 806BC7B8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806BC7BC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806BC7C0  40 82 00 18 */	bne lbl_806BC7D8
/* 806BC7C4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806BC7C8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806BC7CC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806BC7D0  41 82 00 08 */	beq lbl_806BC7D8
/* 806BC7D4  38 80 00 00 */	li r4, 0
lbl_806BC7D8:
/* 806BC7D8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806BC7DC  41 82 00 14 */	beq lbl_806BC7F0
/* 806BC7E0  38 00 00 01 */	li r0, 1
/* 806BC7E4  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 806BC7E8  38 00 FF FF */	li r0, -1
/* 806BC7EC  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_806BC7F0:
/* 806BC7F0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806BC7F4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806BC7F8  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 806BC7FC  4B BB 32 85 */	bl cLib_addCalc0__FPfff
/* 806BC800  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BC804  83 C1 00 08 */	lwz r30, 8(r1)
/* 806BC808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BC80C  7C 08 03 A6 */	mtlr r0
/* 806BC810  38 21 00 10 */	addi r1, r1, 0x10
/* 806BC814  4E 80 00 20 */	blr 
