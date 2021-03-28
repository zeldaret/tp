lbl_80AEAC58:
/* 80AEAC58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEAC5C  7C 08 02 A6 */	mflr r0
/* 80AEAC60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEAC64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEAC68  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEAC6C  41 82 00 1C */	beq lbl_80AEAC88
/* 80AEAC70  3C A0 80 AF */	lis r5, __vt__8cM3dGAab@ha
/* 80AEAC74  38 05 BD 9C */	addi r0, r5, __vt__8cM3dGAab@l
/* 80AEAC78  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80AEAC7C  7C 80 07 35 */	extsh. r0, r4
/* 80AEAC80  40 81 00 08 */	ble lbl_80AEAC88
/* 80AEAC84  4B 7E 40 B8 */	b __dl__FPv
lbl_80AEAC88:
/* 80AEAC88  7F E3 FB 78 */	mr r3, r31
/* 80AEAC8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEAC90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEAC94  7C 08 03 A6 */	mtlr r0
/* 80AEAC98  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEAC9C  4E 80 00 20 */	blr 
