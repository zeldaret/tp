lbl_80157858:
/* 80157858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015785C  7C 08 02 A6 */	mflr r0
/* 80157860  90 01 00 14 */	stw r0, 0x14(r1)
/* 80157864  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80157868  7C 7F 1B 78 */	mr r31, r3
/* 8015786C  3C 60 80 3B */	lis r3, __vt__19daNpcCd_HIO_Child_c@ha
/* 80157870  38 03 61 90 */	addi r0, r3, __vt__19daNpcCd_HIO_Child_c@l
/* 80157874  90 1F 00 00 */	stw r0, 0(r31)
/* 80157878  38 7F 00 04 */	addi r3, r31, 4
/* 8015787C  3C 80 80 15 */	lis r4, __ct__17daNpcCd_HIO_Jnt_cFv@ha
/* 80157880  38 84 78 B0 */	addi r4, r4, __ct__17daNpcCd_HIO_Jnt_cFv@l
/* 80157884  3C A0 80 15 */	lis r5, __dt__17daNpcCd_HIO_Jnt_cFv@ha
/* 80157888  38 A5 78 10 */	addi r5, r5, __dt__17daNpcCd_HIO_Jnt_cFv@l
/* 8015788C  38 C0 00 18 */	li r6, 0x18
/* 80157890  38 E0 00 0C */	li r7, 0xc
/* 80157894  48 20 A4 CD */	bl __construct_array
/* 80157898  7F E3 FB 78 */	mr r3, r31
/* 8015789C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801578A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801578A4  7C 08 03 A6 */	mtlr r0
/* 801578A8  38 21 00 10 */	addi r1, r1, 0x10
/* 801578AC  4E 80 00 20 */	blr 
