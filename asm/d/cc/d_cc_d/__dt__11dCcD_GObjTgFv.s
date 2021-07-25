lbl_80083BE8:
/* 80083BE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80083BEC  7C 08 02 A6 */	mflr r0
/* 80083BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80083BF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80083BF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80083BFC  41 82 00 30 */	beq lbl_80083C2C
/* 80083C00  3C 60 80 3B */	lis r3, __vt__11dCcD_GObjTg@ha /* 0x803AC238@ha */
/* 80083C04  38 03 C2 38 */	addi r0, r3, __vt__11dCcD_GObjTg@l /* 0x803AC238@l */
/* 80083C08  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80083C0C  41 82 00 10 */	beq lbl_80083C1C
/* 80083C10  3C 60 80 3B */	lis r3, __vt__22dCcD_GAtTgCoCommonBase@ha /* 0x803AC250@ha */
/* 80083C14  38 03 C2 50 */	addi r0, r3, __vt__22dCcD_GAtTgCoCommonBase@l /* 0x803AC250@l */
/* 80083C18  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_80083C1C:
/* 80083C1C  7C 80 07 35 */	extsh. r0, r4
/* 80083C20  40 81 00 0C */	ble lbl_80083C2C
/* 80083C24  7F E3 FB 78 */	mr r3, r31
/* 80083C28  48 24 B1 15 */	bl __dl__FPv
lbl_80083C2C:
/* 80083C2C  7F E3 FB 78 */	mr r3, r31
/* 80083C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80083C34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80083C38  7C 08 03 A6 */	mtlr r0
/* 80083C3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80083C40  4E 80 00 20 */	blr 
