lbl_80CC0728:
/* 80CC0728  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC072C  7C 08 02 A6 */	mflr r0
/* 80CC0730  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC0734  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC0738  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CC073C  41 82 00 30 */	beq lbl_80CC076C
/* 80CC0740  3C 60 80 CC */	lis r3, __vt__15daRotTrap_HIO_c@ha /* 0x80CC0A94@ha */
/* 80CC0744  38 03 0A 94 */	addi r0, r3, __vt__15daRotTrap_HIO_c@l /* 0x80CC0A94@l */
/* 80CC0748  90 1F 00 00 */	stw r0, 0(r31)
/* 80CC074C  41 82 00 10 */	beq lbl_80CC075C
/* 80CC0750  3C 60 80 CC */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80CC0AA0@ha */
/* 80CC0754  38 03 0A A0 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80CC0AA0@l */
/* 80CC0758  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CC075C:
/* 80CC075C  7C 80 07 35 */	extsh. r0, r4
/* 80CC0760  40 81 00 0C */	ble lbl_80CC076C
/* 80CC0764  7F E3 FB 78 */	mr r3, r31
/* 80CC0768  4B 60 E5 D5 */	bl __dl__FPv
lbl_80CC076C:
/* 80CC076C  7F E3 FB 78 */	mr r3, r31
/* 80CC0770  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC0774  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC0778  7C 08 03 A6 */	mtlr r0
/* 80CC077C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC0780  4E 80 00 20 */	blr 
