lbl_80D0F038:
/* 80D0F038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0F03C  7C 08 02 A6 */	mflr r0
/* 80D0F040  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0F044  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0F048  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D0F04C  41 82 00 30 */	beq lbl_80D0F07C
/* 80D0F050  3C 60 80 D1 */	lis r3, __vt__16daTimeFire_HIO_c@ha /* 0x80D0F150@ha */
/* 80D0F054  38 03 F1 50 */	addi r0, r3, __vt__16daTimeFire_HIO_c@l /* 0x80D0F150@l */
/* 80D0F058  90 1F 00 00 */	stw r0, 0(r31)
/* 80D0F05C  41 82 00 10 */	beq lbl_80D0F06C
/* 80D0F060  3C 60 80 D1 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80D0F15C@ha */
/* 80D0F064  38 03 F1 5C */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80D0F15C@l */
/* 80D0F068  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D0F06C:
/* 80D0F06C  7C 80 07 35 */	extsh. r0, r4
/* 80D0F070  40 81 00 0C */	ble lbl_80D0F07C
/* 80D0F074  7F E3 FB 78 */	mr r3, r31
/* 80D0F078  4B 5B FC C5 */	bl __dl__FPv
lbl_80D0F07C:
/* 80D0F07C  7F E3 FB 78 */	mr r3, r31
/* 80D0F080  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0F084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0F088  7C 08 03 A6 */	mtlr r0
/* 80D0F08C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0F090  4E 80 00 20 */	blr 
