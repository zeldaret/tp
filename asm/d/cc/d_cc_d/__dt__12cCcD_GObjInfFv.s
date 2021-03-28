lbl_80083CE8:
/* 80083CE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80083CEC  7C 08 02 A6 */	mflr r0
/* 80083CF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80083CF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80083CF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80083CFC  41 82 00 CC */	beq lbl_80083DC8
/* 80083D00  3C 60 80 3B */	lis r3, __vt__12cCcD_GObjInf@ha
/* 80083D04  38 03 C2 5C */	addi r0, r3, __vt__12cCcD_GObjInf@l
/* 80083D08  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80083D0C  41 82 00 AC */	beq lbl_80083DB8
/* 80083D10  3C 60 80 3B */	lis r3, __vt__8cCcD_Obj@ha
/* 80083D14  38 03 C2 88 */	addi r0, r3, __vt__8cCcD_Obj@l
/* 80083D18  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80083D1C  34 1F 00 48 */	addic. r0, r31, 0x48
/* 80083D20  41 82 00 10 */	beq lbl_80083D30
/* 80083D24  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideInfo@ha
/* 80083D28  38 03 72 24 */	addi r0, r3, __vt__15cCcD_DivideInfo@l
/* 80083D2C  90 1F 00 54 */	stw r0, 0x54(r31)
lbl_80083D30:
/* 80083D30  28 1F 00 00 */	cmplwi r31, 0
/* 80083D34  41 82 00 84 */	beq lbl_80083DB8
/* 80083D38  3C 60 80 3B */	lis r3, __vt__14cCcD_ObjHitInf@ha
/* 80083D3C  38 03 C2 D8 */	addi r0, r3, __vt__14cCcD_ObjHitInf@l
/* 80083D40  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80083D44  34 1F 00 2C */	addic. r0, r31, 0x2c
/* 80083D48  41 82 00 24 */	beq lbl_80083D6C
/* 80083D4C  3C 60 80 3B */	lis r3, __vt__10cCcD_ObjCo@ha
/* 80083D50  38 03 C2 A8 */	addi r0, r3, __vt__10cCcD_ObjCo@l
/* 80083D54  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80083D58  34 1F 00 2C */	addic. r0, r31, 0x2c
/* 80083D5C  41 82 00 10 */	beq lbl_80083D6C
/* 80083D60  3C 60 80 3B */	lis r3, __vt__18cCcD_ObjCommonBase@ha
/* 80083D64  38 03 C2 CC */	addi r0, r3, __vt__18cCcD_ObjCommonBase@l
/* 80083D68  90 1F 00 38 */	stw r0, 0x38(r31)
lbl_80083D6C:
/* 80083D6C  34 1F 00 18 */	addic. r0, r31, 0x18
/* 80083D70  41 82 00 24 */	beq lbl_80083D94
/* 80083D74  3C 60 80 3B */	lis r3, __vt__10cCcD_ObjTg@ha
/* 80083D78  38 03 C2 B4 */	addi r0, r3, __vt__10cCcD_ObjTg@l
/* 80083D7C  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80083D80  34 1F 00 18 */	addic. r0, r31, 0x18
/* 80083D84  41 82 00 10 */	beq lbl_80083D94
/* 80083D88  3C 60 80 3B */	lis r3, __vt__18cCcD_ObjCommonBase@ha
/* 80083D8C  38 03 C2 CC */	addi r0, r3, __vt__18cCcD_ObjCommonBase@l
/* 80083D90  90 1F 00 24 */	stw r0, 0x24(r31)
lbl_80083D94:
/* 80083D94  28 1F 00 00 */	cmplwi r31, 0
/* 80083D98  41 82 00 20 */	beq lbl_80083DB8
/* 80083D9C  3C 60 80 3B */	lis r3, __vt__10cCcD_ObjAt@ha
/* 80083DA0  38 03 C2 C0 */	addi r0, r3, __vt__10cCcD_ObjAt@l
/* 80083DA4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80083DA8  41 82 00 10 */	beq lbl_80083DB8
/* 80083DAC  3C 60 80 3B */	lis r3, __vt__18cCcD_ObjCommonBase@ha
/* 80083DB0  38 03 C2 CC */	addi r0, r3, __vt__18cCcD_ObjCommonBase@l
/* 80083DB4  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80083DB8:
/* 80083DB8  7C 80 07 35 */	extsh. r0, r4
/* 80083DBC  40 81 00 0C */	ble lbl_80083DC8
/* 80083DC0  7F E3 FB 78 */	mr r3, r31
/* 80083DC4  48 24 AF 79 */	bl __dl__FPv
lbl_80083DC8:
/* 80083DC8  7F E3 FB 78 */	mr r3, r31
/* 80083DCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80083DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80083DD4  7C 08 03 A6 */	mtlr r0
/* 80083DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80083DDC  4E 80 00 20 */	blr 
