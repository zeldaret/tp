lbl_800CFD58:
/* 800CFD58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CFD5C  7C 08 02 A6 */	mflr r0
/* 800CFD60  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CFD64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CFD68  93 C1 00 08 */	stw r30, 8(r1)
/* 800CFD6C  7C 7E 1B 79 */	or. r30, r3, r3
/* 800CFD70  7C 9F 23 78 */	mr r31, r4
/* 800CFD74  41 82 00 64 */	beq lbl_800CFDD8
/* 800CFD78  3C 60 80 3B */	lis r3, __vt__14daAlink_blur_c@ha
/* 800CFD7C  38 03 35 A0 */	addi r0, r3, __vt__14daAlink_blur_c@l
/* 800CFD80  90 1E 00 00 */	stw r0, 0(r30)
/* 800CFD84  38 7E 03 08 */	addi r3, r30, 0x308
/* 800CFD88  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 800CFD8C  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 800CFD90  38 A0 00 0C */	li r5, 0xc
/* 800CFD94  38 C0 00 3C */	li r6, 0x3c
/* 800CFD98  48 29 1F 51 */	bl __destroy_arr
/* 800CFD9C  38 7E 00 38 */	addi r3, r30, 0x38
/* 800CFDA0  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 800CFDA4  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 800CFDA8  38 A0 00 0C */	li r5, 0xc
/* 800CFDAC  38 C0 00 3C */	li r6, 0x3c
/* 800CFDB0  48 29 1F 39 */	bl __destroy_arr
/* 800CFDB4  28 1E 00 00 */	cmplwi r30, 0
/* 800CFDB8  41 82 00 10 */	beq lbl_800CFDC8
/* 800CFDBC  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha
/* 800CFDC0  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l
/* 800CFDC4  90 1E 00 00 */	stw r0, 0(r30)
lbl_800CFDC8:
/* 800CFDC8  7F E0 07 35 */	extsh. r0, r31
/* 800CFDCC  40 81 00 0C */	ble lbl_800CFDD8
/* 800CFDD0  7F C3 F3 78 */	mr r3, r30
/* 800CFDD4  48 1F EF 69 */	bl __dl__FPv
lbl_800CFDD8:
/* 800CFDD8  7F C3 F3 78 */	mr r3, r30
/* 800CFDDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CFDE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800CFDE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CFDE8  7C 08 03 A6 */	mtlr r0
/* 800CFDEC  38 21 00 10 */	addi r1, r1, 0x10
/* 800CFDF0  4E 80 00 20 */	blr 
