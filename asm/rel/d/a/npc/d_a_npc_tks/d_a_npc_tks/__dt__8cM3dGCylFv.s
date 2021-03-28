lbl_80B1D5D8:
/* 80B1D5D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1D5DC  7C 08 02 A6 */	mflr r0
/* 80B1D5E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1D5E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1D5E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B1D5EC  41 82 00 1C */	beq lbl_80B1D608
/* 80B1D5F0  3C A0 80 B2 */	lis r5, __vt__8cM3dGCyl@ha
/* 80B1D5F4  38 05 E5 18 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80B1D5F8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80B1D5FC  7C 80 07 35 */	extsh. r0, r4
/* 80B1D600  40 81 00 08 */	ble lbl_80B1D608
/* 80B1D604  4B 7B 17 38 */	b __dl__FPv
lbl_80B1D608:
/* 80B1D608  7F E3 FB 78 */	mr r3, r31
/* 80B1D60C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1D610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1D614  7C 08 03 A6 */	mtlr r0
/* 80B1D618  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1D61C  4E 80 00 20 */	blr 
