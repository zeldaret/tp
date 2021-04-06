lbl_8015A808:
/* 8015A808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015A80C  7C 08 02 A6 */	mflr r0
/* 8015A810  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015A814  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015A818  7C 7F 1B 78 */	mr r31, r3
/* 8015A81C  3C 60 80 3C */	lis r3, __vt__21daNpcCd2_HIO_MChild_c@ha /* 0x803B9D54@ha */
/* 8015A820  38 03 9D 54 */	addi r0, r3, __vt__21daNpcCd2_HIO_MChild_c@l /* 0x803B9D54@l */
/* 8015A824  90 1F 00 00 */	stw r0, 0(r31)
/* 8015A828  38 7F 00 04 */	addi r3, r31, 4
/* 8015A82C  3C 80 80 16 */	lis r4, __ct__18daNpcCd2_HIO_Jnt_cFv@ha /* 0x8015A788@ha */
/* 8015A830  38 84 A7 88 */	addi r4, r4, __ct__18daNpcCd2_HIO_Jnt_cFv@l /* 0x8015A788@l */
/* 8015A834  3C A0 80 16 */	lis r5, __dt__18daNpcCd2_HIO_Jnt_cFv@ha /* 0x8015A6E8@ha */
/* 8015A838  38 A5 A6 E8 */	addi r5, r5, __dt__18daNpcCd2_HIO_Jnt_cFv@l /* 0x8015A6E8@l */
/* 8015A83C  38 C0 00 18 */	li r6, 0x18
/* 8015A840  38 E0 00 13 */	li r7, 0x13
/* 8015A844  48 20 75 1D */	bl __construct_array
/* 8015A848  7F E3 FB 78 */	mr r3, r31
/* 8015A84C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015A850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015A854  7C 08 03 A6 */	mtlr r0
/* 8015A858  38 21 00 10 */	addi r1, r1, 0x10
/* 8015A85C  4E 80 00 20 */	blr 
