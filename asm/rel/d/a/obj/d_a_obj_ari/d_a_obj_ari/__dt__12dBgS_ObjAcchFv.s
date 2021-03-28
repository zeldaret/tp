lbl_80BA5258:
/* 80BA5258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA525C  7C 08 02 A6 */	mflr r0
/* 80BA5260  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA5264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA5268  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA526C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BA5270  7C 9F 23 78 */	mr r31, r4
/* 80BA5274  41 82 00 38 */	beq lbl_80BA52AC
/* 80BA5278  3C 80 80 BA */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80BA527C  38 84 55 6C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80BA5280  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BA5284  38 04 00 0C */	addi r0, r4, 0xc
/* 80BA5288  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BA528C  38 04 00 18 */	addi r0, r4, 0x18
/* 80BA5290  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BA5294  38 80 00 00 */	li r4, 0
/* 80BA5298  4B 4D 0C FC */	b __dt__9dBgS_AcchFv
/* 80BA529C  7F E0 07 35 */	extsh. r0, r31
/* 80BA52A0  40 81 00 0C */	ble lbl_80BA52AC
/* 80BA52A4  7F C3 F3 78 */	mr r3, r30
/* 80BA52A8  4B 72 9A 94 */	b __dl__FPv
lbl_80BA52AC:
/* 80BA52AC  7F C3 F3 78 */	mr r3, r30
/* 80BA52B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA52B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA52B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA52BC  7C 08 03 A6 */	mtlr r0
/* 80BA52C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA52C4  4E 80 00 20 */	blr 
