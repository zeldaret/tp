lbl_80CC3834:
/* 80CC3834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC3838  7C 08 02 A6 */	mflr r0
/* 80CC383C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC3840  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC3844  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CC3848  41 82 00 1C */	beq lbl_80CC3864
/* 80CC384C  3C A0 80 CC */	lis r5, __vt__8cM3dGCyl@ha /* 0x80CC3C60@ha */
/* 80CC3850  38 05 3C 60 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80CC3C60@l */
/* 80CC3854  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80CC3858  7C 80 07 35 */	extsh. r0, r4
/* 80CC385C  40 81 00 08 */	ble lbl_80CC3864
/* 80CC3860  4B 60 B4 DD */	bl __dl__FPv
lbl_80CC3864:
/* 80CC3864  7F E3 FB 78 */	mr r3, r31
/* 80CC3868  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC386C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC3870  7C 08 03 A6 */	mtlr r0
/* 80CC3874  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC3878  4E 80 00 20 */	blr 
