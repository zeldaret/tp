lbl_80C6627C:
/* 80C6627C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C66280  7C 08 02 A6 */	mflr r0
/* 80C66284  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C66288  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6628C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C66290  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C66294  7C 9F 23 78 */	mr r31, r4
/* 80C66298  41 82 00 40 */	beq lbl_80C662D8
/* 80C6629C  3C 80 80 C6 */	lis r4, __vt__14dBgS_ObjGndChk@ha
/* 80C662A0  38 84 6A 3C */	addi r4, r4, __vt__14dBgS_ObjGndChk@l
/* 80C662A4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C662A8  38 04 00 0C */	addi r0, r4, 0xc
/* 80C662AC  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80C662B0  38 04 00 18 */	addi r0, r4, 0x18
/* 80C662B4  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80C662B8  38 04 00 24 */	addi r0, r4, 0x24
/* 80C662BC  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C662C0  38 80 00 00 */	li r4, 0
/* 80C662C4  4B 41 13 2C */	b __dt__11dBgS_GndChkFv
/* 80C662C8  7F E0 07 35 */	extsh. r0, r31
/* 80C662CC  40 81 00 0C */	ble lbl_80C662D8
/* 80C662D0  7F C3 F3 78 */	mr r3, r30
/* 80C662D4  4B 66 8A 68 */	b __dl__FPv
lbl_80C662D8:
/* 80C662D8  7F C3 F3 78 */	mr r3, r30
/* 80C662DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C662E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C662E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C662E8  7C 08 03 A6 */	mtlr r0
/* 80C662EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C662F0  4E 80 00 20 */	blr 
