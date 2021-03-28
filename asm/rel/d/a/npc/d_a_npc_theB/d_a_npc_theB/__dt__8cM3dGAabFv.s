lbl_80AFC938:
/* 80AFC938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFC93C  7C 08 02 A6 */	mflr r0
/* 80AFC940  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFC944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFC948  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AFC94C  41 82 00 1C */	beq lbl_80AFC968
/* 80AFC950  3C A0 80 B0 */	lis r5, __vt__8cM3dGAab@ha
/* 80AFC954  38 05 12 E4 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80AFC958  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80AFC95C  7C 80 07 35 */	extsh. r0, r4
/* 80AFC960  40 81 00 08 */	ble lbl_80AFC968
/* 80AFC964  4B 7D 23 D8 */	b __dl__FPv
lbl_80AFC968:
/* 80AFC968  7F E3 FB 78 */	mr r3, r31
/* 80AFC96C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFC970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFC974  7C 08 03 A6 */	mtlr r0
/* 80AFC978  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFC97C  4E 80 00 20 */	blr 
