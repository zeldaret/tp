lbl_8071F4BC:
/* 8071F4BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071F4C0  7C 08 02 A6 */	mflr r0
/* 8071F4C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071F4C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8071F4CC  93 C1 00 08 */	stw r30, 8(r1)
/* 8071F4D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8071F4D4  7C 9F 23 78 */	mr r31, r4
/* 8071F4D8  41 82 00 38 */	beq lbl_8071F510
/* 8071F4DC  3C 80 80 72 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 8071F4E0  38 84 F7 E8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 8071F4E4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8071F4E8  38 04 00 0C */	addi r0, r4, 0xc
/* 8071F4EC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8071F4F0  38 04 00 18 */	addi r0, r4, 0x18
/* 8071F4F4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8071F4F8  38 80 00 00 */	li r4, 0
/* 8071F4FC  4B 95 6A 98 */	b __dt__9dBgS_AcchFv
/* 8071F500  7F E0 07 35 */	extsh. r0, r31
/* 8071F504  40 81 00 0C */	ble lbl_8071F510
/* 8071F508  7F C3 F3 78 */	mr r3, r30
/* 8071F50C  4B BA F8 30 */	b __dl__FPv
lbl_8071F510:
/* 8071F510  7F C3 F3 78 */	mr r3, r30
/* 8071F514  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8071F518  83 C1 00 08 */	lwz r30, 8(r1)
/* 8071F51C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071F520  7C 08 03 A6 */	mtlr r0
/* 8071F524  38 21 00 10 */	addi r1, r1, 0x10
/* 8071F528  4E 80 00 20 */	blr 
