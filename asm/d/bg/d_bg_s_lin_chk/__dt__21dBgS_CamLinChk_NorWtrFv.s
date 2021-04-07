lbl_80077EE4:
/* 80077EE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077EE8  7C 08 02 A6 */	mflr r0
/* 80077EEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077EF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077EF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80077EF8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80077EFC  7C 9F 23 78 */	mr r31, r4
/* 80077F00  41 82 00 40 */	beq lbl_80077F40
/* 80077F04  3C 80 80 3B */	lis r4, __vt__21dBgS_CamLinChk_NorWtr@ha /* 0x803AB910@ha */
/* 80077F08  38 84 B9 10 */	addi r4, r4, __vt__21dBgS_CamLinChk_NorWtr@l /* 0x803AB910@l */
/* 80077F0C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80077F10  38 04 00 0C */	addi r0, r4, 0xc
/* 80077F14  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80077F18  38 04 00 18 */	addi r0, r4, 0x18
/* 80077F1C  90 1E 00 58 */	stw r0, 0x58(r30)
/* 80077F20  38 04 00 24 */	addi r0, r4, 0x24
/* 80077F24  90 1E 00 68 */	stw r0, 0x68(r30)
/* 80077F28  38 80 00 00 */	li r4, 0
/* 80077F2C  4B FF FE D5 */	bl __dt__14dBgS_CamLinChkFv
/* 80077F30  7F E0 07 35 */	extsh. r0, r31
/* 80077F34  40 81 00 0C */	ble lbl_80077F40
/* 80077F38  7F C3 F3 78 */	mr r3, r30
/* 80077F3C  48 25 6E 01 */	bl __dl__FPv
lbl_80077F40:
/* 80077F40  7F C3 F3 78 */	mr r3, r30
/* 80077F44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077F48  83 C1 00 08 */	lwz r30, 8(r1)
/* 80077F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077F50  7C 08 03 A6 */	mtlr r0
/* 80077F54  38 21 00 10 */	addi r1, r1, 0x10
/* 80077F58  4E 80 00 20 */	blr 
