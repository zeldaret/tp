lbl_8015A730:
/* 8015A730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015A734  7C 08 02 A6 */	mflr r0
/* 8015A738  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015A73C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015A740  7C 7F 1B 78 */	mr r31, r3
/* 8015A744  3C 60 80 3C */	lis r3, __vt__21daNpcCd2_HIO_WChild_c@ha
/* 8015A748  38 03 9D 6C */	addi r0, r3, __vt__21daNpcCd2_HIO_WChild_c@l
/* 8015A74C  90 1F 00 00 */	stw r0, 0(r31)
/* 8015A750  38 7F 00 04 */	addi r3, r31, 4
/* 8015A754  3C 80 80 16 */	lis r4, __ct__18daNpcCd2_HIO_Jnt_cFv@ha
/* 8015A758  38 84 A7 88 */	addi r4, r4, __ct__18daNpcCd2_HIO_Jnt_cFv@l
/* 8015A75C  3C A0 80 16 */	lis r5, __dt__18daNpcCd2_HIO_Jnt_cFv@ha
/* 8015A760  38 A5 A6 E8 */	addi r5, r5, __dt__18daNpcCd2_HIO_Jnt_cFv@l
/* 8015A764  38 C0 00 18 */	li r6, 0x18
/* 8015A768  38 E0 00 15 */	li r7, 0x15
/* 8015A76C  48 20 75 F5 */	bl __construct_array
/* 8015A770  7F E3 FB 78 */	mr r3, r31
/* 8015A774  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015A778  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015A77C  7C 08 03 A6 */	mtlr r0
/* 8015A780  38 21 00 10 */	addi r1, r1, 0x10
/* 8015A784  4E 80 00 20 */	blr 
