lbl_80084040:
/* 80084040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80084044  7C 08 02 A6 */	mflr r0
/* 80084048  90 01 00 14 */	stw r0, 0x14(r1)
/* 8008404C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80084050  7C 7F 1B 79 */	or. r31, r3, r3
/* 80084054  41 82 00 30 */	beq lbl_80084084
/* 80084058  3C 60 80 3B */	lis r3, __vt__10cCcD_ObjAt@ha /* 0x803AC2C0@ha */
/* 8008405C  38 03 C2 C0 */	addi r0, r3, __vt__10cCcD_ObjAt@l /* 0x803AC2C0@l */
/* 80084060  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80084064  41 82 00 10 */	beq lbl_80084074
/* 80084068  3C 60 80 3B */	lis r3, __vt__18cCcD_ObjCommonBase@ha /* 0x803AC2CC@ha */
/* 8008406C  38 03 C2 CC */	addi r0, r3, __vt__18cCcD_ObjCommonBase@l /* 0x803AC2CC@l */
/* 80084070  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80084074:
/* 80084074  7C 80 07 35 */	extsh. r0, r4
/* 80084078  40 81 00 0C */	ble lbl_80084084
/* 8008407C  7F E3 FB 78 */	mr r3, r31
/* 80084080  48 24 AC BD */	bl __dl__FPv
lbl_80084084:
/* 80084084  7F E3 FB 78 */	mr r3, r31
/* 80084088  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8008408C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80084090  7C 08 03 A6 */	mtlr r0
/* 80084094  38 21 00 10 */	addi r1, r1, 0x10
/* 80084098  4E 80 00 20 */	blr 
