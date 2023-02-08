lbl_8086FF38:
/* 8086FF38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8086FF3C  7C 08 02 A6 */	mflr r0
/* 8086FF40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8086FF44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8086FF48  7C 7F 1B 78 */	mr r31, r3
/* 8086FF4C  3C 80 80 87 */	lis r4, __ct__4cXyzFv@ha /* 0x8086FF80@ha */
/* 8086FF50  38 84 FF 80 */	addi r4, r4, __ct__4cXyzFv@l /* 0x8086FF80@l */
/* 8086FF54  3C A0 80 87 */	lis r5, __dt__4cXyzFv@ha /* 0x8086CC30@ha */
/* 8086FF58  38 A5 CC 30 */	addi r5, r5, __dt__4cXyzFv@l /* 0x8086CC30@l */
/* 8086FF5C  38 C0 00 0C */	li r6, 0xc
/* 8086FF60  38 E0 00 0F */	li r7, 0xf
/* 8086FF64  4B AF 1D FD */	bl __construct_array
/* 8086FF68  7F E3 FB 78 */	mr r3, r31
/* 8086FF6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8086FF70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086FF74  7C 08 03 A6 */	mtlr r0
/* 8086FF78  38 21 00 10 */	addi r1, r1, 0x10
/* 8086FF7C  4E 80 00 20 */	blr 
