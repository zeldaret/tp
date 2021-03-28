lbl_80288E2C:
/* 80288E2C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80288E30  7C 08 02 A6 */	mflr r0
/* 80288E34  90 01 00 44 */	stw r0, 0x44(r1)
/* 80288E38  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80288E3C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80288E40  7C 7F 1B 78 */	mr r31, r3
/* 80288E44  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80288E48  90 01 00 0C */	stw r0, 0xc(r1)
/* 80288E4C  38 61 00 0C */	addi r3, r1, 0xc
/* 80288E50  38 81 00 20 */	addi r4, r1, 0x20
/* 80288E54  48 00 0B 69 */	bl getData__Q47JStudio3stb4data16TParse_TSequenceCFPQ57JStudio3stb4data16TParse_TSequence5TData
/* 80288E58  88 01 00 20 */	lbz r0, 0x20(r1)
/* 80288E5C  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 80288E60  80 61 00 28 */	lwz r3, 0x28(r1)
/* 80288E64  83 C1 00 2C */	lwz r30, 0x2c(r1)
/* 80288E68  93 DF 00 28 */	stw r30, 0x28(r31)
/* 80288E6C  2C 00 00 03 */	cmpwi r0, 3
/* 80288E70  41 82 00 4C */	beq lbl_80288EBC
/* 80288E74  40 80 00 14 */	bge lbl_80288E88
/* 80288E78  2C 00 00 01 */	cmpwi r0, 1
/* 80288E7C  41 82 00 24 */	beq lbl_80288EA0
/* 80288E80  40 80 00 34 */	bge lbl_80288EB4
/* 80288E84  48 00 00 E4 */	b lbl_80288F68
lbl_80288E88:
/* 80288E88  2C 00 00 80 */	cmpwi r0, 0x80
/* 80288E8C  41 82 00 78 */	beq lbl_80288F04
/* 80288E90  40 80 00 D8 */	bge lbl_80288F68
/* 80288E94  2C 00 00 05 */	cmpwi r0, 5
/* 80288E98  40 80 00 D0 */	bge lbl_80288F68
/* 80288E9C  48 00 00 44 */	b lbl_80288EE0
lbl_80288EA0:
/* 80288EA0  7F E3 FB 78 */	mr r3, r31
/* 80288EA4  54 A4 86 3E */	rlwinm r4, r5, 0x10, 0x18, 0x1f
/* 80288EA8  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 80288EAC  4B FF FC CD */	bl setFlag_operation__Q37JStudio3stb7TObjectFUci
/* 80288EB0  48 00 00 B8 */	b lbl_80288F68
lbl_80288EB4:
/* 80288EB4  90 BF 00 2C */	stw r5, 0x2c(r31)
/* 80288EB8  48 00 00 B0 */	b lbl_80288F68
lbl_80288EBC:
/* 80288EBC  7C A3 2B 78 */	mr r3, r5
/* 80288EC0  54 A0 02 11 */	rlwinm. r0, r5, 0, 8, 8
/* 80288EC4  41 82 00 0C */	beq lbl_80288ED0
/* 80288EC8  80 02 BA D0 */	lwz r0, gu32Mask_TSequence_value_signExpansion__Q37JStudio3stb4data(r2)
/* 80288ECC  7C A3 03 78 */	or r3, r5, r0
lbl_80288ED0:
/* 80288ED0  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80288ED4  7C 00 1A 14 */	add r0, r0, r3
/* 80288ED8  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80288EDC  48 00 00 8C */	b lbl_80288F68
lbl_80288EE0:
/* 80288EE0  7C A3 2B 78 */	mr r3, r5
/* 80288EE4  54 A0 02 11 */	rlwinm. r0, r5, 0, 8, 8
/* 80288EE8  41 82 00 0C */	beq lbl_80288EF4
/* 80288EEC  80 02 BA D0 */	lwz r0, gu32Mask_TSequence_value_signExpansion__Q37JStudio3stb4data(r2)
/* 80288EF0  7C A3 03 78 */	or r3, r5, r0
lbl_80288EF4:
/* 80288EF4  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80288EF8  7C 00 1A 14 */	add r0, r0, r3
/* 80288EFC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80288F00  48 00 00 68 */	b lbl_80288F68
lbl_80288F04:
/* 80288F04  38 00 00 00 */	li r0, 0
/* 80288F08  90 01 00 08 */	stw r0, 8(r1)
/* 80288F0C  48 00 00 54 */	b lbl_80288F60
lbl_80288F10:
/* 80288F10  90 61 00 08 */	stw r3, 8(r1)
/* 80288F14  38 61 00 08 */	addi r3, r1, 8
/* 80288F18  38 81 00 10 */	addi r4, r1, 0x10
/* 80288F1C  48 00 0A ED */	bl getData__Q47JStudio3stb4data17TParse_TParagraphCFPQ57JStudio3stb4data17TParse_TParagraph5TData
/* 80288F20  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80288F24  28 04 00 FF */	cmplwi r4, 0xff
/* 80288F28  41 81 00 18 */	bgt lbl_80288F40
/* 80288F2C  7F E3 FB 78 */	mr r3, r31
/* 80288F30  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80288F34  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80288F38  48 00 00 49 */	bl process_paragraph_reserved___Q37JStudio3stb7TObjectFUlPCvUl
/* 80288F3C  48 00 00 20 */	b lbl_80288F5C
lbl_80288F40:
/* 80288F40  7F E3 FB 78 */	mr r3, r31
/* 80288F44  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80288F48  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80288F4C  81 9F 00 08 */	lwz r12, 8(r31)
/* 80288F50  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80288F54  7D 89 03 A6 */	mtctr r12
/* 80288F58  4E 80 04 21 */	bctrl 
lbl_80288F5C:
/* 80288F5C  80 61 00 1C */	lwz r3, 0x1c(r1)
lbl_80288F60:
/* 80288F60  7C 03 F0 40 */	cmplw r3, r30
/* 80288F64  41 80 FF AC */	blt lbl_80288F10
lbl_80288F68:
/* 80288F68  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80288F6C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80288F70  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80288F74  7C 08 03 A6 */	mtlr r0
/* 80288F78  38 21 00 40 */	addi r1, r1, 0x40
/* 80288F7C  4E 80 00 20 */	blr 
