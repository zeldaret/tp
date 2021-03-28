lbl_80310D44:
/* 80310D44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80310D48  7C 08 02 A6 */	mflr r0
/* 80310D4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80310D50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80310D54  3B E0 00 00 */	li r31, 0
lbl_80310D58:
/* 80310D58  7F E3 FB 78 */	mr r3, r31
/* 80310D5C  48 04 E3 9D */	bl GXSetTevDirect
/* 80310D60  3B FF 00 01 */	addi r31, r31, 1
/* 80310D64  28 1F 00 10 */	cmplwi r31, 0x10
/* 80310D68  41 80 FF F0 */	blt lbl_80310D58
/* 80310D6C  38 60 00 00 */	li r3, 0
/* 80310D70  38 80 00 00 */	li r4, 0
/* 80310D74  38 A0 00 00 */	li r5, 0
/* 80310D78  48 04 E2 71 */	bl GXSetIndTexOrder
/* 80310D7C  38 60 00 01 */	li r3, 1
/* 80310D80  38 80 00 01 */	li r4, 1
/* 80310D84  38 A0 00 01 */	li r5, 1
/* 80310D88  48 04 E2 61 */	bl GXSetIndTexOrder
/* 80310D8C  38 60 00 02 */	li r3, 2
/* 80310D90  38 80 00 02 */	li r4, 2
/* 80310D94  38 A0 00 02 */	li r5, 2
/* 80310D98  48 04 E2 51 */	bl GXSetIndTexOrder
/* 80310D9C  38 60 00 03 */	li r3, 3
/* 80310DA0  38 80 00 03 */	li r4, 3
/* 80310DA4  38 A0 00 03 */	li r5, 3
/* 80310DA8  48 04 E2 41 */	bl GXSetIndTexOrder
/* 80310DAC  38 60 00 00 */	li r3, 0
/* 80310DB0  38 80 00 00 */	li r4, 0
/* 80310DB4  38 A0 00 00 */	li r5, 0
/* 80310DB8  48 04 E0 ED */	bl GXSetIndTexCoordScale
/* 80310DBC  38 60 00 01 */	li r3, 1
/* 80310DC0  38 80 00 00 */	li r4, 0
/* 80310DC4  38 A0 00 00 */	li r5, 0
/* 80310DC8  48 04 E0 DD */	bl GXSetIndTexCoordScale
/* 80310DCC  38 60 00 02 */	li r3, 2
/* 80310DD0  38 80 00 00 */	li r4, 0
/* 80310DD4  38 A0 00 00 */	li r5, 0
/* 80310DD8  48 04 E0 CD */	bl GXSetIndTexCoordScale
/* 80310DDC  38 60 00 03 */	li r3, 3
/* 80310DE0  38 80 00 00 */	li r4, 0
/* 80310DE4  38 A0 00 00 */	li r5, 0
/* 80310DE8  48 04 E0 BD */	bl GXSetIndTexCoordScale
/* 80310DEC  38 60 00 01 */	li r3, 1
/* 80310DF0  3C 80 80 3D */	lis r4, IndMtx@ha
/* 80310DF4  38 84 D8 E0 */	addi r4, r4, IndMtx@l
/* 80310DF8  38 A0 00 01 */	li r5, 1
/* 80310DFC  48 04 DF 31 */	bl GXSetIndTexMtx
/* 80310E00  38 60 00 02 */	li r3, 2
/* 80310E04  3C 80 80 3D */	lis r4, IndMtx@ha
/* 80310E08  38 84 D8 E0 */	addi r4, r4, IndMtx@l
/* 80310E0C  38 A0 00 01 */	li r5, 1
/* 80310E10  48 04 DF 1D */	bl GXSetIndTexMtx
/* 80310E14  38 60 00 03 */	li r3, 3
/* 80310E18  3C 80 80 3D */	lis r4, IndMtx@ha
/* 80310E1C  38 84 D8 E0 */	addi r4, r4, IndMtx@l
/* 80310E20  38 A0 00 01 */	li r5, 1
/* 80310E24  48 04 DF 09 */	bl GXSetIndTexMtx
/* 80310E28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80310E2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80310E30  7C 08 03 A6 */	mtlr r0
/* 80310E34  38 21 00 10 */	addi r1, r1, 0x10
/* 80310E38  4E 80 00 20 */	blr 
