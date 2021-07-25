lbl_80083B8C:
/* 80083B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80083B90  7C 08 02 A6 */	mflr r0
/* 80083B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80083B98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80083B9C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80083BA0  41 82 00 30 */	beq lbl_80083BD0
/* 80083BA4  3C 60 80 3B */	lis r3, __vt__11dCcD_GObjCo@ha /* 0x803AC22C@ha */
/* 80083BA8  38 03 C2 2C */	addi r0, r3, __vt__11dCcD_GObjCo@l /* 0x803AC22C@l */
/* 80083BAC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80083BB0  41 82 00 10 */	beq lbl_80083BC0
/* 80083BB4  3C 60 80 3B */	lis r3, __vt__22dCcD_GAtTgCoCommonBase@ha /* 0x803AC250@ha */
/* 80083BB8  38 03 C2 50 */	addi r0, r3, __vt__22dCcD_GAtTgCoCommonBase@l /* 0x803AC250@l */
/* 80083BBC  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_80083BC0:
/* 80083BC0  7C 80 07 35 */	extsh. r0, r4
/* 80083BC4  40 81 00 0C */	ble lbl_80083BD0
/* 80083BC8  7F E3 FB 78 */	mr r3, r31
/* 80083BCC  48 24 B1 71 */	bl __dl__FPv
lbl_80083BD0:
/* 80083BD0  7F E3 FB 78 */	mr r3, r31
/* 80083BD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80083BD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80083BDC  7C 08 03 A6 */	mtlr r0
/* 80083BE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80083BE4  4E 80 00 20 */	blr 
