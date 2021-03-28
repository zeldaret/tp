lbl_8087001C:
/* 8087001C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80870020  7C 08 02 A6 */	mflr r0
/* 80870024  90 01 00 14 */	stw r0, 0x14(r1)
/* 80870028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8087002C  3C 60 80 87 */	lis r3, lit_1109@ha
/* 80870030  3B E3 09 58 */	addi r31, r3, lit_1109@l
/* 80870034  38 7F 00 4C */	addi r3, r31, 0x4c
/* 80870038  3C 80 80 87 */	lis r4, __dt__4cXyzFv@ha
/* 8087003C  38 84 CC 30 */	addi r4, r4, __dt__4cXyzFv@l
/* 80870040  38 BF 00 40 */	addi r5, r31, 0x40
/* 80870044  4B FF BF B5 */	bl __register_global_object
/* 80870048  38 7F 00 64 */	addi r3, r31, 0x64
/* 8087004C  3C 80 80 87 */	lis r4, __dt__4cXyzFv@ha
/* 80870050  38 84 CC 30 */	addi r4, r4, __dt__4cXyzFv@l
/* 80870054  38 BF 00 58 */	addi r5, r31, 0x58
/* 80870058  4B FF BF A1 */	bl __register_global_object
/* 8087005C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80870060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80870064  7C 08 03 A6 */	mtlr r0
/* 80870068  38 21 00 10 */	addi r1, r1, 0x10
/* 8087006C  4E 80 00 20 */	blr 
