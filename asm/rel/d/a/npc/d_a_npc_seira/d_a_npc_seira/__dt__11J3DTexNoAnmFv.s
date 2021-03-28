lbl_80ACBFE8:
/* 80ACBFE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACBFEC  7C 08 02 A6 */	mflr r0
/* 80ACBFF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACBFF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACBFF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ACBFFC  41 82 00 1C */	beq lbl_80ACC018
/* 80ACC000  3C A0 80 AD */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80ACC004  38 05 09 78 */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80ACC008  90 1F 00 00 */	stw r0, 0(r31)
/* 80ACC00C  7C 80 07 35 */	extsh. r0, r4
/* 80ACC010  40 81 00 08 */	ble lbl_80ACC018
/* 80ACC014  4B 80 2D 28 */	b __dl__FPv
lbl_80ACC018:
/* 80ACC018  7F E3 FB 78 */	mr r3, r31
/* 80ACC01C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACC020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACC024  7C 08 03 A6 */	mtlr r0
/* 80ACC028  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACC02C  4E 80 00 20 */	blr 
