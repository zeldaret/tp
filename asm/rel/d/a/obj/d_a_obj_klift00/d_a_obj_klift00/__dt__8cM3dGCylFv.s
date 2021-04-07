lbl_8058C164:
/* 8058C164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058C168  7C 08 02 A6 */	mflr r0
/* 8058C16C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058C170  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058C174  7C 7F 1B 79 */	or. r31, r3, r3
/* 8058C178  41 82 00 1C */	beq lbl_8058C194
/* 8058C17C  3C A0 80 59 */	lis r5, __vt__8cM3dGCyl@ha /* 0x8058C50C@ha */
/* 8058C180  38 05 C5 0C */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x8058C50C@l */
/* 8058C184  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8058C188  7C 80 07 35 */	extsh. r0, r4
/* 8058C18C  40 81 00 08 */	ble lbl_8058C194
/* 8058C190  4B D4 2B AD */	bl __dl__FPv
lbl_8058C194:
/* 8058C194  7F E3 FB 78 */	mr r3, r31
/* 8058C198  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058C19C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058C1A0  7C 08 03 A6 */	mtlr r0
/* 8058C1A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8058C1A8  4E 80 00 20 */	blr 
