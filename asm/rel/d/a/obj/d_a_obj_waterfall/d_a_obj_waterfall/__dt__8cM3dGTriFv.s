lbl_80D2F8E0:
/* 80D2F8E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2F8E4  7C 08 02 A6 */	mflr r0
/* 80D2F8E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2F8EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2F8F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D2F8F4  41 82 00 30 */	beq lbl_80D2F924
/* 80D2F8F8  3C 60 80 D3 */	lis r3, __vt__8cM3dGTri@ha
/* 80D2F8FC  38 03 FE 28 */	addi r0, r3, __vt__8cM3dGTri@l
/* 80D2F900  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80D2F904  41 82 00 10 */	beq lbl_80D2F914
/* 80D2F908  3C 60 80 D3 */	lis r3, __vt__8cM3dGPla@ha
/* 80D2F90C  38 03 FE 1C */	addi r0, r3, __vt__8cM3dGPla@l
/* 80D2F910  90 1F 00 10 */	stw r0, 0x10(r31)
lbl_80D2F914:
/* 80D2F914  7C 80 07 35 */	extsh. r0, r4
/* 80D2F918  40 81 00 0C */	ble lbl_80D2F924
/* 80D2F91C  7F E3 FB 78 */	mr r3, r31
/* 80D2F920  4B 59 F4 1C */	b __dl__FPv
lbl_80D2F924:
/* 80D2F924  7F E3 FB 78 */	mr r3, r31
/* 80D2F928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2F92C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2F930  7C 08 03 A6 */	mtlr r0
/* 80D2F934  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2F938  4E 80 00 20 */	blr 
