lbl_80CE3820:
/* 80CE3820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE3824  7C 08 02 A6 */	mflr r0
/* 80CE3828  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE382C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE3830  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE3834  41 82 00 1C */	beq lbl_80CE3850
/* 80CE3838  3C A0 80 CE */	lis r5, __vt__8cM3dGCyl@ha
/* 80CE383C  38 05 3C 18 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80CE3840  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80CE3844  7C 80 07 35 */	extsh. r0, r4
/* 80CE3848  40 81 00 08 */	ble lbl_80CE3850
/* 80CE384C  4B 5E B4 F0 */	b __dl__FPv
lbl_80CE3850:
/* 80CE3850  7F E3 FB 78 */	mr r3, r31
/* 80CE3854  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE3858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE385C  7C 08 03 A6 */	mtlr r0
/* 80CE3860  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE3864  4E 80 00 20 */	blr 
