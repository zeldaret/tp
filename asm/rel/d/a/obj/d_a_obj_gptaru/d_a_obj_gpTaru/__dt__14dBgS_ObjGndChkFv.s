lbl_8057EB2C:
/* 8057EB2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057EB30  7C 08 02 A6 */	mflr r0
/* 8057EB34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057EB38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057EB3C  93 C1 00 08 */	stw r30, 8(r1)
/* 8057EB40  7C 7E 1B 79 */	or. r30, r3, r3
/* 8057EB44  7C 9F 23 78 */	mr r31, r4
/* 8057EB48  41 82 00 40 */	beq lbl_8057EB88
/* 8057EB4C  3C 80 80 58 */	lis r4, __vt__14dBgS_ObjGndChk@ha
/* 8057EB50  38 84 F7 F4 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l
/* 8057EB54  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8057EB58  38 04 00 0C */	addi r0, r4, 0xc
/* 8057EB5C  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8057EB60  38 04 00 18 */	addi r0, r4, 0x18
/* 8057EB64  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8057EB68  38 04 00 24 */	addi r0, r4, 0x24
/* 8057EB6C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8057EB70  38 80 00 00 */	li r4, 0
/* 8057EB74  4B AF 8A 7C */	b __dt__11dBgS_GndChkFv
/* 8057EB78  7F E0 07 35 */	extsh. r0, r31
/* 8057EB7C  40 81 00 0C */	ble lbl_8057EB88
/* 8057EB80  7F C3 F3 78 */	mr r3, r30
/* 8057EB84  4B D5 01 B8 */	b __dl__FPv
lbl_8057EB88:
/* 8057EB88  7F C3 F3 78 */	mr r3, r30
/* 8057EB8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057EB90  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057EB94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057EB98  7C 08 03 A6 */	mtlr r0
/* 8057EB9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057EBA0  4E 80 00 20 */	blr 
