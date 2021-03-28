lbl_80083C44:
/* 80083C44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80083C48  7C 08 02 A6 */	mflr r0
/* 80083C4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80083C50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80083C54  7C 7F 1B 79 */	or. r31, r3, r3
/* 80083C58  41 82 00 30 */	beq lbl_80083C88
/* 80083C5C  3C 60 80 3B */	lis r3, __vt__11dCcD_GObjAt@ha
/* 80083C60  38 03 C2 44 */	addi r0, r3, __vt__11dCcD_GObjAt@l
/* 80083C64  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80083C68  41 82 00 10 */	beq lbl_80083C78
/* 80083C6C  3C 60 80 3B */	lis r3, __vt__22dCcD_GAtTgCoCommonBase@ha
/* 80083C70  38 03 C2 50 */	addi r0, r3, __vt__22dCcD_GAtTgCoCommonBase@l
/* 80083C74  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_80083C78:
/* 80083C78  7C 80 07 35 */	extsh. r0, r4
/* 80083C7C  40 81 00 0C */	ble lbl_80083C88
/* 80083C80  7F E3 FB 78 */	mr r3, r31
/* 80083C84  48 24 B0 B9 */	bl __dl__FPv
lbl_80083C88:
/* 80083C88  7F E3 FB 78 */	mr r3, r31
/* 80083C8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80083C90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80083C94  7C 08 03 A6 */	mtlr r0
/* 80083C98  38 21 00 10 */	addi r1, r1, 0x10
/* 80083C9C  4E 80 00 20 */	blr 
