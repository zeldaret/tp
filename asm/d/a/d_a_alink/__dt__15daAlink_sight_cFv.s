lbl_800CFDF4:
/* 800CFDF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CFDF8  7C 08 02 A6 */	mflr r0
/* 800CFDFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CFE00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CFE04  7C 7F 1B 79 */	or. r31, r3, r3
/* 800CFE08  41 82 00 48 */	beq lbl_800CFE50
/* 800CFE0C  3C 60 80 3B */	lis r3, __vt__15daAlink_sight_c@ha /* 0x803B3580@ha */
/* 800CFE10  38 03 35 80 */	addi r0, r3, __vt__15daAlink_sight_c@l /* 0x803B3580@l */
/* 800CFE14  90 1F 00 00 */	stw r0, 0(r31)
/* 800CFE18  34 1F 00 50 */	addic. r0, r31, 0x50
/* 800CFE1C  41 82 00 10 */	beq lbl_800CFE2C
/* 800CFE20  3C 60 80 3B */	lis r3, __vt__20daAlink_lockCursor_c@ha /* 0x803B3590@ha */
/* 800CFE24  38 03 35 90 */	addi r0, r3, __vt__20daAlink_lockCursor_c@l /* 0x803B3590@l */
/* 800CFE28  90 1F 00 50 */	stw r0, 0x50(r31)
lbl_800CFE2C:
/* 800CFE2C  28 1F 00 00 */	cmplwi r31, 0
/* 800CFE30  41 82 00 10 */	beq lbl_800CFE40
/* 800CFE34  3C 60 80 3C */	lis r3, __vt__18daPy_sightPacket_c@ha /* 0x803BA14C@ha */
/* 800CFE38  38 03 A1 4C */	addi r0, r3, __vt__18daPy_sightPacket_c@l /* 0x803BA14C@l */
/* 800CFE3C  90 1F 00 00 */	stw r0, 0(r31)
lbl_800CFE40:
/* 800CFE40  7C 80 07 35 */	extsh. r0, r4
/* 800CFE44  40 81 00 0C */	ble lbl_800CFE50
/* 800CFE48  7F E3 FB 78 */	mr r3, r31
/* 800CFE4C  48 1F EE F1 */	bl __dl__FPv
lbl_800CFE50:
/* 800CFE50  7F E3 FB 78 */	mr r3, r31
/* 800CFE54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CFE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CFE5C  7C 08 03 A6 */	mtlr r0
/* 800CFE60  38 21 00 10 */	addi r1, r1, 0x10
/* 800CFE64  4E 80 00 20 */	blr 
