lbl_80C5F348:
/* 80C5F348  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5F34C  7C 08 02 A6 */	mflr r0
/* 80C5F350  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5F354  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5F358  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C5F35C  41 82 00 30 */	beq lbl_80C5F38C
/* 80C5F360  3C 60 80 C6 */	lis r3, __vt__15daLv4Gate_HIO_c@ha /* 0x80C5F4FC@ha */
/* 80C5F364  38 03 F4 FC */	addi r0, r3, __vt__15daLv4Gate_HIO_c@l /* 0x80C5F4FC@l */
/* 80C5F368  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5F36C  41 82 00 10 */	beq lbl_80C5F37C
/* 80C5F370  3C 60 80 C6 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80C5F508@ha */
/* 80C5F374  38 03 F5 08 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80C5F508@l */
/* 80C5F378  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C5F37C:
/* 80C5F37C  7C 80 07 35 */	extsh. r0, r4
/* 80C5F380  40 81 00 0C */	ble lbl_80C5F38C
/* 80C5F384  7F E3 FB 78 */	mr r3, r31
/* 80C5F388  4B 66 F9 B5 */	bl __dl__FPv
lbl_80C5F38C:
/* 80C5F38C  7F E3 FB 78 */	mr r3, r31
/* 80C5F390  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5F394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5F398  7C 08 03 A6 */	mtlr r0
/* 80C5F39C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5F3A0  4E 80 00 20 */	blr 
