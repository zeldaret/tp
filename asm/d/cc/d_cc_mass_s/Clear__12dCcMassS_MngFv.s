lbl_80085CF0:
/* 80085CF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80085CF4  7C 08 02 A6 */	mflr r0
/* 80085CF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80085CFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80085D00  48 2D C4 DD */	bl _savegpr_29
/* 80085D04  7C 7D 1B 78 */	mr r29, r3
/* 80085D08  3B E0 00 00 */	li r31, 0
/* 80085D0C  93 E3 00 40 */	stw r31, 0x40(r3)
/* 80085D10  93 E3 01 84 */	stw r31, 0x184(r3)
/* 80085D14  3B C0 00 00 */	li r30, 0
lbl_80085D18:
/* 80085D18  38 7F 00 44 */	addi r3, r31, 0x44
/* 80085D1C  7C 7D 1A 14 */	add r3, r29, r3
/* 80085D20  4B FF F5 D1 */	bl Clear__12dCcMassS_ObjFv
/* 80085D24  3B DE 00 01 */	addi r30, r30, 1
/* 80085D28  2C 1E 00 0A */	cmpwi r30, 0xa
/* 80085D2C  3B FF 00 20 */	addi r31, r31, 0x20
/* 80085D30  41 80 FF E8 */	blt lbl_80085D18
/* 80085D34  3B C0 00 00 */	li r30, 0
/* 80085D38  3B E0 00 00 */	li r31, 0
lbl_80085D3C:
/* 80085D3C  38 7F 01 88 */	addi r3, r31, 0x188
/* 80085D40  7C 7D 1A 14 */	add r3, r29, r3
/* 80085D44  4B FF F5 AD */	bl Clear__12dCcMassS_ObjFv
/* 80085D48  3B DE 00 01 */	addi r30, r30, 1
/* 80085D4C  2C 1E 00 02 */	cmpwi r30, 2
/* 80085D50  3B FF 00 20 */	addi r31, r31, 0x20
/* 80085D54  41 80 FF E8 */	blt lbl_80085D3C
/* 80085D58  38 7D 01 E8 */	addi r3, r29, 0x1e8
/* 80085D5C  C0 22 8D 60 */	lfs f1, lit_3627(r2)
/* 80085D60  48 1E 94 A1 */	bl SetR__8cM3dGCylFf
/* 80085D64  38 7D 01 E8 */	addi r3, r29, 0x1e8
/* 80085D68  C0 22 8D 60 */	lfs f1, lit_3627(r2)
/* 80085D6C  48 1E 94 8D */	bl SetH__8cM3dGCylFf
/* 80085D70  38 00 00 00 */	li r0, 0
/* 80085D74  98 1D 02 00 */	stb r0, 0x200(r29)
/* 80085D78  38 00 00 04 */	li r0, 4
/* 80085D7C  98 1D 02 01 */	stb r0, 0x201(r29)
/* 80085D80  39 61 00 20 */	addi r11, r1, 0x20
/* 80085D84  48 2D C4 A5 */	bl _restgpr_29
/* 80085D88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80085D8C  7C 08 03 A6 */	mtlr r0
/* 80085D90  38 21 00 20 */	addi r1, r1, 0x20
/* 80085D94  4E 80 00 20 */	blr 
