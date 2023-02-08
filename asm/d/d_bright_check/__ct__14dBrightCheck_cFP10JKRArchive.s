lbl_80192F10:
/* 80192F10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80192F14  7C 08 02 A6 */	mflr r0
/* 80192F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80192F1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80192F20  7C 7F 1B 78 */	mr r31, r3
/* 80192F24  3C 60 80 3C */	lis r3, __vt__14dBrightCheck_c@ha /* 0x803BB5FC@ha */
/* 80192F28  38 03 B5 FC */	addi r0, r3, __vt__14dBrightCheck_c@l /* 0x803BB5FC@l */
/* 80192F2C  90 1F 00 00 */	stw r0, 0(r31)
/* 80192F30  3C 60 80 3A */	lis r3, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 80192F34  38 03 6F 88 */	addi r0, r3, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 80192F38  90 1F 00 08 */	stw r0, 8(r31)
/* 80192F3C  3C 60 80 3C */	lis r3, __vt__19dDlst_BrightCheck_c@ha /* 0x803BB5EC@ha */
/* 80192F40  38 03 B5 EC */	addi r0, r3, __vt__19dDlst_BrightCheck_c@l /* 0x803BB5EC@l */
/* 80192F44  90 1F 00 08 */	stw r0, 8(r31)
/* 80192F48  90 9F 00 04 */	stw r4, 4(r31)
/* 80192F4C  38 60 00 2C */	li r3, 0x2c
/* 80192F50  48 13 BC FD */	bl __nw__FUl
/* 80192F54  7C 60 1B 79 */	or. r0, r3, r3
/* 80192F58  41 82 00 0C */	beq lbl_80192F64
/* 80192F5C  48 0B 6C C5 */	bl __ct__12dMsgString_cFv
/* 80192F60  7C 60 1B 78 */	mr r0, r3
lbl_80192F64:
/* 80192F64  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80192F68  7F E3 FB 78 */	mr r3, r31
/* 80192F6C  48 00 00 C5 */	bl screenSet__14dBrightCheck_cFv
/* 80192F70  38 00 00 00 */	li r0, 0
/* 80192F74  98 1F 00 19 */	stb r0, 0x19(r31)
/* 80192F78  38 00 00 01 */	li r0, 1
/* 80192F7C  98 1F 00 18 */	stb r0, 0x18(r31)
/* 80192F80  7F E3 FB 78 */	mr r3, r31
/* 80192F84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80192F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80192F8C  7C 08 03 A6 */	mtlr r0
/* 80192F90  38 21 00 10 */	addi r1, r1, 0x10
/* 80192F94  4E 80 00 20 */	blr 
