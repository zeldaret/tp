lbl_80CD757C:
/* 80CD757C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD7580  7C 08 02 A6 */	mflr r0
/* 80CD7584  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD7588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD758C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CD7590  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CD7594  7C 9F 23 78 */	mr r31, r4
/* 80CD7598  41 82 00 38 */	beq lbl_80CD75D0
/* 80CD759C  3C 80 80 CE */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80CD75A0  38 84 84 A8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80CD75A4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CD75A8  38 04 00 0C */	addi r0, r4, 0xc
/* 80CD75AC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CD75B0  38 04 00 18 */	addi r0, r4, 0x18
/* 80CD75B4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80CD75B8  38 80 00 00 */	li r4, 0
/* 80CD75BC  4B 39 E9 D8 */	b __dt__9dBgS_AcchFv
/* 80CD75C0  7F E0 07 35 */	extsh. r0, r31
/* 80CD75C4  40 81 00 0C */	ble lbl_80CD75D0
/* 80CD75C8  7F C3 F3 78 */	mr r3, r30
/* 80CD75CC  4B 5F 77 70 */	b __dl__FPv
lbl_80CD75D0:
/* 80CD75D0  7F C3 F3 78 */	mr r3, r30
/* 80CD75D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD75D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CD75DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD75E0  7C 08 03 A6 */	mtlr r0
/* 80CD75E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD75E8  4E 80 00 20 */	blr 
