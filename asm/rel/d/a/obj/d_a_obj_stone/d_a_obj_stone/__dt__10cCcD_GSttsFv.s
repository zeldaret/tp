lbl_80CECA3C:
/* 80CECA3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CECA40  7C 08 02 A6 */	mflr r0
/* 80CECA44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CECA48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CECA4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CECA50  41 82 00 1C */	beq lbl_80CECA6C
/* 80CECA54  3C A0 80 CF */	lis r5, __vt__10cCcD_GStts@ha /* 0x80CECDB0@ha */
/* 80CECA58  38 05 CD B0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80CECDB0@l */
/* 80CECA5C  90 1F 00 00 */	stw r0, 0(r31)
/* 80CECA60  7C 80 07 35 */	extsh. r0, r4
/* 80CECA64  40 81 00 08 */	ble lbl_80CECA6C
/* 80CECA68  4B 5E 22 D5 */	bl __dl__FPv
lbl_80CECA6C:
/* 80CECA6C  7F E3 FB 78 */	mr r3, r31
/* 80CECA70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CECA74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CECA78  7C 08 03 A6 */	mtlr r0
/* 80CECA7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CECA80  4E 80 00 20 */	blr 
