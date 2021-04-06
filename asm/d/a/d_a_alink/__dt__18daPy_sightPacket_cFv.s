lbl_80140CDC:
/* 80140CDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80140CE0  7C 08 02 A6 */	mflr r0
/* 80140CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80140CE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80140CEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80140CF0  41 82 00 1C */	beq lbl_80140D0C
/* 80140CF4  3C A0 80 3C */	lis r5, __vt__18daPy_sightPacket_c@ha /* 0x803BA14C@ha */
/* 80140CF8  38 05 A1 4C */	addi r0, r5, __vt__18daPy_sightPacket_c@l /* 0x803BA14C@l */
/* 80140CFC  90 1F 00 00 */	stw r0, 0(r31)
/* 80140D00  7C 80 07 35 */	extsh. r0, r4
/* 80140D04  40 81 00 08 */	ble lbl_80140D0C
/* 80140D08  48 18 E0 35 */	bl __dl__FPv
lbl_80140D0C:
/* 80140D0C  7F E3 FB 78 */	mr r3, r31
/* 80140D10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80140D14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80140D18  7C 08 03 A6 */	mtlr r0
/* 80140D1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80140D20  4E 80 00 20 */	blr 
