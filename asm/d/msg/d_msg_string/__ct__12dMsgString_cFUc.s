lbl_80249CA0:
/* 80249CA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80249CA4  7C 08 02 A6 */	mflr r0
/* 80249CA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80249CAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80249CB0  93 C1 00 08 */	stw r30, 8(r1)
/* 80249CB4  7C 7E 1B 78 */	mr r30, r3
/* 80249CB8  7C 9F 23 78 */	mr r31, r4
/* 80249CBC  4B FF F6 F9 */	bl __ct__16dMsgStringBase_cFv
/* 80249CC0  3C 60 80 3C */	lis r3, __vt__12dMsgString_c@ha
/* 80249CC4  38 03 14 98 */	addi r0, r3, __vt__12dMsgString_c@l
/* 80249CC8  90 1E 00 00 */	stw r0, 0(r30)
/* 80249CCC  9B FE 00 28 */	stb r31, 0x28(r30)
/* 80249CD0  38 60 02 44 */	li r3, 0x244
/* 80249CD4  48 08 4F 79 */	bl __nw__FUl
/* 80249CD8  7C 60 1B 79 */	or. r0, r3, r3
/* 80249CDC  41 82 00 10 */	beq lbl_80249CEC
/* 80249CE0  88 9E 00 28 */	lbz r4, 0x28(r30)
/* 80249CE4  4B FD BF B1 */	bl __ct__10COutFont_cFUc
/* 80249CE8  7C 60 1B 78 */	mr r0, r3
lbl_80249CEC:
/* 80249CEC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80249CF0  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 80249CF4  81 83 00 00 */	lwz r12, 0(r3)
/* 80249CF8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80249CFC  7D 89 03 A6 */	mtctr r12
/* 80249D00  4E 80 04 21 */	bctrl 
/* 80249D04  7F C3 F3 78 */	mr r3, r30
/* 80249D08  4B FF F9 F9 */	bl getResource__16dMsgStringBase_cFv
/* 80249D0C  7F C3 F3 78 */	mr r3, r30
/* 80249D10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80249D14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80249D18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80249D1C  7C 08 03 A6 */	mtlr r0
/* 80249D20  38 21 00 10 */	addi r1, r1, 0x10
/* 80249D24  4E 80 00 20 */	blr 
