lbl_80C7DD38:
/* 80C7DD38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7DD3C  7C 08 02 A6 */	mflr r0
/* 80C7DD40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7DD44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7DD48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C7DD4C  41 82 00 1C */	beq lbl_80C7DD68
/* 80C7DD50  3C A0 80 C8 */	lis r5, __vt__8cM3dGAab@ha
/* 80C7DD54  38 05 E0 EC */	addi r0, r5, __vt__8cM3dGAab@l
/* 80C7DD58  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C7DD5C  7C 80 07 35 */	extsh. r0, r4
/* 80C7DD60  40 81 00 08 */	ble lbl_80C7DD68
/* 80C7DD64  4B 65 0F D8 */	b __dl__FPv
lbl_80C7DD68:
/* 80C7DD68  7F E3 FB 78 */	mr r3, r31
/* 80C7DD6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7DD70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7DD74  7C 08 03 A6 */	mtlr r0
/* 80C7DD78  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7DD7C  4E 80 00 20 */	blr 
