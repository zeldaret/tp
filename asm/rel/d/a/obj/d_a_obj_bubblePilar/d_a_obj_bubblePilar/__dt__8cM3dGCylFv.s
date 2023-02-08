lbl_80BC3848:
/* 80BC3848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC384C  7C 08 02 A6 */	mflr r0
/* 80BC3850  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC3854  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC3858  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BC385C  41 82 00 1C */	beq lbl_80BC3878
/* 80BC3860  3C A0 80 BC */	lis r5, __vt__8cM3dGCyl@ha /* 0x80BC41B8@ha */
/* 80BC3864  38 05 41 B8 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80BC41B8@l */
/* 80BC3868  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BC386C  7C 80 07 35 */	extsh. r0, r4
/* 80BC3870  40 81 00 08 */	ble lbl_80BC3878
/* 80BC3874  4B 70 B4 C9 */	bl __dl__FPv
lbl_80BC3878:
/* 80BC3878  7F E3 FB 78 */	mr r3, r31
/* 80BC387C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC3880  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC3884  7C 08 03 A6 */	mtlr r0
/* 80BC3888  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC388C  4E 80 00 20 */	blr 
