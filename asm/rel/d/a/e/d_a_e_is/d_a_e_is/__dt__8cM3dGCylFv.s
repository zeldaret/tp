lbl_806F7868:
/* 806F7868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F786C  7C 08 02 A6 */	mflr r0
/* 806F7870  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F7874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F7878  7C 7F 1B 79 */	or. r31, r3, r3
/* 806F787C  41 82 00 1C */	beq lbl_806F7898
/* 806F7880  3C A0 80 6F */	lis r5, __vt__8cM3dGCyl@ha
/* 806F7884  38 05 7D 74 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 806F7888  90 1F 00 14 */	stw r0, 0x14(r31)
/* 806F788C  7C 80 07 35 */	extsh. r0, r4
/* 806F7890  40 81 00 08 */	ble lbl_806F7898
/* 806F7894  4B BD 74 A8 */	b __dl__FPv
lbl_806F7898:
/* 806F7898  7F E3 FB 78 */	mr r3, r31
/* 806F789C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F78A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F78A4  7C 08 03 A6 */	mtlr r0
/* 806F78A8  38 21 00 10 */	addi r1, r1, 0x10
/* 806F78AC  4E 80 00 20 */	blr 
