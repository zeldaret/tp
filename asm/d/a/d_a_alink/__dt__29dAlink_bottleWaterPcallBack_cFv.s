lbl_800CFCF8:
/* 800CFCF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CFCFC  7C 08 02 A6 */	mflr r0
/* 800CFD00  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CFD04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CFD08  93 C1 00 08 */	stw r30, 8(r1)
/* 800CFD0C  7C 7E 1B 79 */	or. r30, r3, r3
/* 800CFD10  7C 9F 23 78 */	mr r31, r4
/* 800CFD14  41 82 00 28 */	beq lbl_800CFD3C
/* 800CFD18  3C 80 80 3B */	lis r4, __vt__29dAlink_bottleWaterPcallBack_c@ha
/* 800CFD1C  38 04 35 B4 */	addi r0, r4, __vt__29dAlink_bottleWaterPcallBack_c@l
/* 800CFD20  90 1E 00 00 */	stw r0, 0(r30)
/* 800CFD24  38 80 00 00 */	li r4, 0
/* 800CFD28  48 1A F2 7D */	bl __dt__19JPAParticleCallBackFv
/* 800CFD2C  7F E0 07 35 */	extsh. r0, r31
/* 800CFD30  40 81 00 0C */	ble lbl_800CFD3C
/* 800CFD34  7F C3 F3 78 */	mr r3, r30
/* 800CFD38  48 1F F0 05 */	bl __dl__FPv
lbl_800CFD3C:
/* 800CFD3C  7F C3 F3 78 */	mr r3, r30
/* 800CFD40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CFD44  83 C1 00 08 */	lwz r30, 8(r1)
/* 800CFD48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CFD4C  7C 08 03 A6 */	mtlr r0
/* 800CFD50  38 21 00 10 */	addi r1, r1, 0x10
/* 800CFD54  4E 80 00 20 */	blr 
