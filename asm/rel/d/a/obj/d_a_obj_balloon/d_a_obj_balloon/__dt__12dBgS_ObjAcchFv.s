lbl_80BA8C1C:
/* 80BA8C1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA8C20  7C 08 02 A6 */	mflr r0
/* 80BA8C24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA8C28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA8C2C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA8C30  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BA8C34  7C 9F 23 78 */	mr r31, r4
/* 80BA8C38  41 82 00 38 */	beq lbl_80BA8C70
/* 80BA8C3C  3C 80 80 BB */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80BA8C40  38 84 8F 74 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80BA8C44  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BA8C48  38 04 00 0C */	addi r0, r4, 0xc
/* 80BA8C4C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BA8C50  38 04 00 18 */	addi r0, r4, 0x18
/* 80BA8C54  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BA8C58  38 80 00 00 */	li r4, 0
/* 80BA8C5C  4B 4C D3 38 */	b __dt__9dBgS_AcchFv
/* 80BA8C60  7F E0 07 35 */	extsh. r0, r31
/* 80BA8C64  40 81 00 0C */	ble lbl_80BA8C70
/* 80BA8C68  7F C3 F3 78 */	mr r3, r30
/* 80BA8C6C  4B 72 60 D0 */	b __dl__FPv
lbl_80BA8C70:
/* 80BA8C70  7F C3 F3 78 */	mr r3, r30
/* 80BA8C74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA8C78  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA8C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA8C80  7C 08 03 A6 */	mtlr r0
/* 80BA8C84  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA8C88  4E 80 00 20 */	blr 
