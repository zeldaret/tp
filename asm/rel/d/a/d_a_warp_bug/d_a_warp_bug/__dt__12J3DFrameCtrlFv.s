lbl_80D68000:
/* 80D68000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D68004  7C 08 02 A6 */	mflr r0
/* 80D68008  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D6800C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D68010  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D68014  41 82 00 1C */	beq lbl_80D68030
/* 80D68018  3C A0 80 D7 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80D6801C  38 05 82 5C */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80D68020  90 1F 00 00 */	stw r0, 0(r31)
/* 80D68024  7C 80 07 35 */	extsh. r0, r4
/* 80D68028  40 81 00 08 */	ble lbl_80D68030
/* 80D6802C  4B 56 6D 10 */	b __dl__FPv
lbl_80D68030:
/* 80D68030  7F E3 FB 78 */	mr r3, r31
/* 80D68034  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D68038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6803C  7C 08 03 A6 */	mtlr r0
/* 80D68040  38 21 00 10 */	addi r1, r1, 0x10
/* 80D68044  4E 80 00 20 */	blr 
