lbl_80D5E16C:
/* 80D5E16C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5E170  7C 08 02 A6 */	mflr r0
/* 80D5E174  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5E178  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5E17C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D5E180  41 82 00 1C */	beq lbl_80D5E19C
/* 80D5E184  3C A0 80 D6 */	lis r5, __vt__8cM3dGCyl@ha
/* 80D5E188  38 05 ED E4 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80D5E18C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80D5E190  7C 80 07 35 */	extsh. r0, r4
/* 80D5E194  40 81 00 08 */	ble lbl_80D5E19C
/* 80D5E198  4B 57 0B A4 */	b __dl__FPv
lbl_80D5E19C:
/* 80D5E19C  7F E3 FB 78 */	mr r3, r31
/* 80D5E1A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5E1A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5E1A8  7C 08 03 A6 */	mtlr r0
/* 80D5E1AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5E1B0  4E 80 00 20 */	blr 
