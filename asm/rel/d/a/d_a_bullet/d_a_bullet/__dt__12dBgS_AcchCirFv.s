lbl_80655D20:
/* 80655D20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80655D24  7C 08 02 A6 */	mflr r0
/* 80655D28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80655D2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80655D30  93 C1 00 08 */	stw r30, 8(r1)
/* 80655D34  7C 7E 1B 79 */	or. r30, r3, r3
/* 80655D38  7C 9F 23 78 */	mr r31, r4
/* 80655D3C  41 82 00 38 */	beq lbl_80655D74
/* 80655D40  3C 60 80 65 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80656878@ha */
/* 80655D44  38 03 68 78 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80656878@l */
/* 80655D48  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80655D4C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80655D50  38 80 FF FF */	li r4, -1
/* 80655D54  4B C1 91 C5 */	bl __dt__8cM3dGCirFv
/* 80655D58  7F C3 F3 78 */	mr r3, r30
/* 80655D5C  38 80 00 00 */	li r4, 0
/* 80655D60  4B C1 23 51 */	bl __dt__13cBgS_PolyInfoFv
/* 80655D64  7F E0 07 35 */	extsh. r0, r31
/* 80655D68  40 81 00 0C */	ble lbl_80655D74
/* 80655D6C  7F C3 F3 78 */	mr r3, r30
/* 80655D70  4B C7 8F CD */	bl __dl__FPv
lbl_80655D74:
/* 80655D74  7F C3 F3 78 */	mr r3, r30
/* 80655D78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80655D7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80655D80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80655D84  7C 08 03 A6 */	mtlr r0
/* 80655D88  38 21 00 10 */	addi r1, r1, 0x10
/* 80655D8C  4E 80 00 20 */	blr 
