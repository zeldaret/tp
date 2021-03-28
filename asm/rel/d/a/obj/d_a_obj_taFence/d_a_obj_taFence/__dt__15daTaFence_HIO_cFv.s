lbl_80D06000:
/* 80D06000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D06004  7C 08 02 A6 */	mflr r0
/* 80D06008  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0600C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D06010  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D06014  41 82 00 30 */	beq lbl_80D06044
/* 80D06018  3C 60 80 D0 */	lis r3, __vt__15daTaFence_HIO_c@ha
/* 80D0601C  38 03 63 10 */	addi r0, r3, __vt__15daTaFence_HIO_c@l
/* 80D06020  90 1F 00 00 */	stw r0, 0(r31)
/* 80D06024  41 82 00 10 */	beq lbl_80D06034
/* 80D06028  3C 60 80 D0 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80D0602C  38 03 63 1C */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80D06030  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D06034:
/* 80D06034  7C 80 07 35 */	extsh. r0, r4
/* 80D06038  40 81 00 0C */	ble lbl_80D06044
/* 80D0603C  7F E3 FB 78 */	mr r3, r31
/* 80D06040  4B 5C 8C FC */	b __dl__FPv
lbl_80D06044:
/* 80D06044  7F E3 FB 78 */	mr r3, r31
/* 80D06048  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0604C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D06050  7C 08 03 A6 */	mtlr r0
/* 80D06054  38 21 00 10 */	addi r1, r1, 0x10
/* 80D06058  4E 80 00 20 */	blr 
