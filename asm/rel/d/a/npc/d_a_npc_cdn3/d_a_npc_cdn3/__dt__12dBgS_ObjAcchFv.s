lbl_8097F4C4:
/* 8097F4C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097F4C8  7C 08 02 A6 */	mflr r0
/* 8097F4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097F4D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097F4D4  93 C1 00 08 */	stw r30, 8(r1)
/* 8097F4D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8097F4DC  7C 9F 23 78 */	mr r31, r4
/* 8097F4E0  41 82 00 38 */	beq lbl_8097F518
/* 8097F4E4  3C 80 80 98 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 8097F4E8  38 84 07 08 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 8097F4EC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8097F4F0  38 04 00 0C */	addi r0, r4, 0xc
/* 8097F4F4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8097F4F8  38 04 00 18 */	addi r0, r4, 0x18
/* 8097F4FC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8097F500  38 80 00 00 */	li r4, 0
/* 8097F504  4B 6F 6A 90 */	b __dt__9dBgS_AcchFv
/* 8097F508  7F E0 07 35 */	extsh. r0, r31
/* 8097F50C  40 81 00 0C */	ble lbl_8097F518
/* 8097F510  7F C3 F3 78 */	mr r3, r30
/* 8097F514  4B 94 F8 28 */	b __dl__FPv
lbl_8097F518:
/* 8097F518  7F C3 F3 78 */	mr r3, r30
/* 8097F51C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097F520  83 C1 00 08 */	lwz r30, 8(r1)
/* 8097F524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097F528  7C 08 03 A6 */	mtlr r0
/* 8097F52C  38 21 00 10 */	addi r1, r1, 0x10
/* 8097F530  4E 80 00 20 */	blr 
