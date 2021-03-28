lbl_8096C66C:
/* 8096C66C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096C670  7C 08 02 A6 */	mflr r0
/* 8096C674  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096C678  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096C67C  93 C1 00 08 */	stw r30, 8(r1)
/* 8096C680  7C 7E 1B 79 */	or. r30, r3, r3
/* 8096C684  7C 9F 23 78 */	mr r31, r4
/* 8096C688  41 82 00 38 */	beq lbl_8096C6C0
/* 8096C68C  3C 80 80 97 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 8096C690  38 84 CD FC */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 8096C694  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8096C698  38 04 00 0C */	addi r0, r4, 0xc
/* 8096C69C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8096C6A0  38 04 00 18 */	addi r0, r4, 0x18
/* 8096C6A4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8096C6A8  38 80 00 00 */	li r4, 0
/* 8096C6AC  4B 70 98 E8 */	b __dt__9dBgS_AcchFv
/* 8096C6B0  7F E0 07 35 */	extsh. r0, r31
/* 8096C6B4  40 81 00 0C */	ble lbl_8096C6C0
/* 8096C6B8  7F C3 F3 78 */	mr r3, r30
/* 8096C6BC  4B 96 26 80 */	b __dl__FPv
lbl_8096C6C0:
/* 8096C6C0  7F C3 F3 78 */	mr r3, r30
/* 8096C6C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096C6C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8096C6CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096C6D0  7C 08 03 A6 */	mtlr r0
/* 8096C6D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8096C6D8  4E 80 00 20 */	blr 
