lbl_80756CAC:
/* 80756CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80756CB0  7C 08 02 A6 */	mflr r0
/* 80756CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80756CB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80756CBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80756CC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80756CC4  7C 9F 23 78 */	mr r31, r4
/* 80756CC8  41 82 00 38 */	beq lbl_80756D00
/* 80756CCC  3C 80 80 75 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80757DD8@ha */
/* 80756CD0  38 84 7D D8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80757DD8@l */
/* 80756CD4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80756CD8  38 04 00 0C */	addi r0, r4, 0xc
/* 80756CDC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80756CE0  38 04 00 18 */	addi r0, r4, 0x18
/* 80756CE4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80756CE8  38 80 00 00 */	li r4, 0
/* 80756CEC  4B 91 F2 A9 */	bl __dt__9dBgS_AcchFv
/* 80756CF0  7F E0 07 35 */	extsh. r0, r31
/* 80756CF4  40 81 00 0C */	ble lbl_80756D00
/* 80756CF8  7F C3 F3 78 */	mr r3, r30
/* 80756CFC  4B B7 80 41 */	bl __dl__FPv
lbl_80756D00:
/* 80756D00  7F C3 F3 78 */	mr r3, r30
/* 80756D04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80756D08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80756D0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80756D10  7C 08 03 A6 */	mtlr r0
/* 80756D14  38 21 00 10 */	addi r1, r1, 0x10
/* 80756D18  4E 80 00 20 */	blr 
