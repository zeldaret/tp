lbl_80083DE0:
/* 80083DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80083DE4  7C 08 02 A6 */	mflr r0
/* 80083DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80083DEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80083DF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80083DF4  41 82 00 BC */	beq lbl_80083EB0
/* 80083DF8  3C 60 80 3B */	lis r3, __vt__8cCcD_Obj@ha /* 0x803AC288@ha */
/* 80083DFC  38 03 C2 88 */	addi r0, r3, __vt__8cCcD_Obj@l /* 0x803AC288@l */
/* 80083E00  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80083E04  34 1F 00 48 */	addic. r0, r31, 0x48
/* 80083E08  41 82 00 10 */	beq lbl_80083E18
/* 80083E0C  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideInfo@ha /* 0x803A7224@ha */
/* 80083E10  38 03 72 24 */	addi r0, r3, __vt__15cCcD_DivideInfo@l /* 0x803A7224@l */
/* 80083E14  90 1F 00 54 */	stw r0, 0x54(r31)
lbl_80083E18:
/* 80083E18  28 1F 00 00 */	cmplwi r31, 0
/* 80083E1C  41 82 00 84 */	beq lbl_80083EA0
/* 80083E20  3C 60 80 3B */	lis r3, __vt__14cCcD_ObjHitInf@ha /* 0x803AC2D8@ha */
/* 80083E24  38 03 C2 D8 */	addi r0, r3, __vt__14cCcD_ObjHitInf@l /* 0x803AC2D8@l */
/* 80083E28  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80083E2C  34 1F 00 2C */	addic. r0, r31, 0x2c
/* 80083E30  41 82 00 24 */	beq lbl_80083E54
/* 80083E34  3C 60 80 3B */	lis r3, __vt__10cCcD_ObjCo@ha /* 0x803AC2A8@ha */
/* 80083E38  38 03 C2 A8 */	addi r0, r3, __vt__10cCcD_ObjCo@l /* 0x803AC2A8@l */
/* 80083E3C  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80083E40  34 1F 00 2C */	addic. r0, r31, 0x2c
/* 80083E44  41 82 00 10 */	beq lbl_80083E54
/* 80083E48  3C 60 80 3B */	lis r3, __vt__18cCcD_ObjCommonBase@ha /* 0x803AC2CC@ha */
/* 80083E4C  38 03 C2 CC */	addi r0, r3, __vt__18cCcD_ObjCommonBase@l /* 0x803AC2CC@l */
/* 80083E50  90 1F 00 38 */	stw r0, 0x38(r31)
lbl_80083E54:
/* 80083E54  34 1F 00 18 */	addic. r0, r31, 0x18
/* 80083E58  41 82 00 24 */	beq lbl_80083E7C
/* 80083E5C  3C 60 80 3B */	lis r3, __vt__10cCcD_ObjTg@ha /* 0x803AC2B4@ha */
/* 80083E60  38 03 C2 B4 */	addi r0, r3, __vt__10cCcD_ObjTg@l /* 0x803AC2B4@l */
/* 80083E64  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80083E68  34 1F 00 18 */	addic. r0, r31, 0x18
/* 80083E6C  41 82 00 10 */	beq lbl_80083E7C
/* 80083E70  3C 60 80 3B */	lis r3, __vt__18cCcD_ObjCommonBase@ha /* 0x803AC2CC@ha */
/* 80083E74  38 03 C2 CC */	addi r0, r3, __vt__18cCcD_ObjCommonBase@l /* 0x803AC2CC@l */
/* 80083E78  90 1F 00 24 */	stw r0, 0x24(r31)
lbl_80083E7C:
/* 80083E7C  28 1F 00 00 */	cmplwi r31, 0
/* 80083E80  41 82 00 20 */	beq lbl_80083EA0
/* 80083E84  3C 60 80 3B */	lis r3, __vt__10cCcD_ObjAt@ha /* 0x803AC2C0@ha */
/* 80083E88  38 03 C2 C0 */	addi r0, r3, __vt__10cCcD_ObjAt@l /* 0x803AC2C0@l */
/* 80083E8C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80083E90  41 82 00 10 */	beq lbl_80083EA0
/* 80083E94  3C 60 80 3B */	lis r3, __vt__18cCcD_ObjCommonBase@ha /* 0x803AC2CC@ha */
/* 80083E98  38 03 C2 CC */	addi r0, r3, __vt__18cCcD_ObjCommonBase@l /* 0x803AC2CC@l */
/* 80083E9C  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80083EA0:
/* 80083EA0  7C 80 07 35 */	extsh. r0, r4
/* 80083EA4  40 81 00 0C */	ble lbl_80083EB0
/* 80083EA8  7F E3 FB 78 */	mr r3, r31
/* 80083EAC  48 24 AE 91 */	bl __dl__FPv
lbl_80083EB0:
/* 80083EB0  7F E3 FB 78 */	mr r3, r31
/* 80083EB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80083EB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80083EBC  7C 08 03 A6 */	mtlr r0
/* 80083EC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80083EC4  4E 80 00 20 */	blr 
