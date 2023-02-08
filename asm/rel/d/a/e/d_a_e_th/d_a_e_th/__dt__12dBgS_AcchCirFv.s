lbl_807B3EEC:
/* 807B3EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B3EF0  7C 08 02 A6 */	mflr r0
/* 807B3EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B3EF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B3EFC  93 C1 00 08 */	stw r30, 8(r1)
/* 807B3F00  7C 7E 1B 79 */	or. r30, r3, r3
/* 807B3F04  7C 9F 23 78 */	mr r31, r4
/* 807B3F08  41 82 00 38 */	beq lbl_807B3F40
/* 807B3F0C  3C 60 80 7B */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x807B47E4@ha */
/* 807B3F10  38 03 47 E4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x807B47E4@l */
/* 807B3F14  90 1E 00 0C */	stw r0, 0xc(r30)
/* 807B3F18  38 7E 00 14 */	addi r3, r30, 0x14
/* 807B3F1C  38 80 FF FF */	li r4, -1
/* 807B3F20  4B AB AF F9 */	bl __dt__8cM3dGCirFv
/* 807B3F24  7F C3 F3 78 */	mr r3, r30
/* 807B3F28  38 80 00 00 */	li r4, 0
/* 807B3F2C  4B AB 41 85 */	bl __dt__13cBgS_PolyInfoFv
/* 807B3F30  7F E0 07 35 */	extsh. r0, r31
/* 807B3F34  40 81 00 0C */	ble lbl_807B3F40
/* 807B3F38  7F C3 F3 78 */	mr r3, r30
/* 807B3F3C  4B B1 AE 01 */	bl __dl__FPv
lbl_807B3F40:
/* 807B3F40  7F C3 F3 78 */	mr r3, r30
/* 807B3F44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B3F48  83 C1 00 08 */	lwz r30, 8(r1)
/* 807B3F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B3F50  7C 08 03 A6 */	mtlr r0
/* 807B3F54  38 21 00 10 */	addi r1, r1, 0x10
/* 807B3F58  4E 80 00 20 */	blr 
