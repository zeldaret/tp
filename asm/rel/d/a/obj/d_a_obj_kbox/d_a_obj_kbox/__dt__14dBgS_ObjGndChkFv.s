lbl_80C3DDC4:
/* 80C3DDC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3DDC8  7C 08 02 A6 */	mflr r0
/* 80C3DDCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3DDD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3DDD4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C3DDD8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C3DDDC  7C 9F 23 78 */	mr r31, r4
/* 80C3DDE0  41 82 00 40 */	beq lbl_80C3DE20
/* 80C3DDE4  3C 80 80 C4 */	lis r4, __vt__14dBgS_ObjGndChk@ha
/* 80C3DDE8  38 84 F2 00 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l
/* 80C3DDEC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C3DDF0  38 04 00 0C */	addi r0, r4, 0xc
/* 80C3DDF4  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80C3DDF8  38 04 00 18 */	addi r0, r4, 0x18
/* 80C3DDFC  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80C3DE00  38 04 00 24 */	addi r0, r4, 0x24
/* 80C3DE04  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C3DE08  38 80 00 00 */	li r4, 0
/* 80C3DE0C  4B 43 97 E4 */	b __dt__11dBgS_GndChkFv
/* 80C3DE10  7F E0 07 35 */	extsh. r0, r31
/* 80C3DE14  40 81 00 0C */	ble lbl_80C3DE20
/* 80C3DE18  7F C3 F3 78 */	mr r3, r30
/* 80C3DE1C  4B 69 0F 20 */	b __dl__FPv
lbl_80C3DE20:
/* 80C3DE20  7F C3 F3 78 */	mr r3, r30
/* 80C3DE24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3DE28  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C3DE2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3DE30  7C 08 03 A6 */	mtlr r0
/* 80C3DE34  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3DE38  4E 80 00 20 */	blr 
