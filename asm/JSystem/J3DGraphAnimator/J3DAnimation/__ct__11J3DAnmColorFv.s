lbl_8032A828:
/* 8032A828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032A82C  7C 08 02 A6 */	mflr r0
/* 8032A830  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032A834  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032A838  7C 7F 1B 78 */	mr r31, r3
/* 8032A83C  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha
/* 8032A840  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l
/* 8032A844  90 1F 00 00 */	stw r0, 0(r31)
/* 8032A848  38 80 00 00 */	li r4, 0
/* 8032A84C  98 9F 00 04 */	stb r4, 4(r31)
/* 8032A850  98 9F 00 05 */	stb r4, 5(r31)
/* 8032A854  B0 9F 00 06 */	sth r4, 6(r31)
/* 8032A858  C0 02 CA 34 */	lfs f0, lit_853(r2)
/* 8032A85C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8032A860  3C 60 80 3D */	lis r3, __vt__11J3DAnmColor@ha
/* 8032A864  38 03 ED 98 */	addi r0, r3, __vt__11J3DAnmColor@l
/* 8032A868  90 1F 00 00 */	stw r0, 0(r31)
/* 8032A86C  B0 9F 00 0C */	sth r4, 0xc(r31)
/* 8032A870  B0 9F 00 0E */	sth r4, 0xe(r31)
/* 8032A874  B0 9F 00 10 */	sth r4, 0x10(r31)
/* 8032A878  B0 9F 00 12 */	sth r4, 0x12(r31)
/* 8032A87C  B0 9F 00 14 */	sth r4, 0x14(r31)
/* 8032A880  90 9F 00 18 */	stw r4, 0x18(r31)
/* 8032A884  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8032A888  4B FB 41 19 */	bl __ct__10JUTNameTabFv
/* 8032A88C  7F E3 FB 78 */	mr r3, r31
/* 8032A890  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032A894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032A898  7C 08 03 A6 */	mtlr r0
/* 8032A89C  38 21 00 10 */	addi r1, r1, 0x10
/* 8032A8A0  4E 80 00 20 */	blr 
