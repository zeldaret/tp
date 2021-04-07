lbl_8061BB18:
/* 8061BB18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061BB1C  7C 08 02 A6 */	mflr r0
/* 8061BB20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061BB24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061BB28  7C 7F 1B 79 */	or. r31, r3, r3
/* 8061BB2C  41 82 00 10 */	beq lbl_8061BB3C
/* 8061BB30  7C 80 07 35 */	extsh. r0, r4
/* 8061BB34  40 81 00 08 */	ble lbl_8061BB3C
/* 8061BB38  4B CB 32 05 */	bl __dl__FPv
lbl_8061BB3C:
/* 8061BB3C  7F E3 FB 78 */	mr r3, r31
/* 8061BB40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061BB44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061BB48  7C 08 03 A6 */	mtlr r0
/* 8061BB4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8061BB50  4E 80 00 20 */	blr 
