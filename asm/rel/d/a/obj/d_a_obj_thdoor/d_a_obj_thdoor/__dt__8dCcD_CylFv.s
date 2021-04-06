lbl_80D0E2E4:
/* 80D0E2E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0E2E8  7C 08 02 A6 */	mflr r0
/* 80D0E2EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0E2F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0E2F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80D0E2F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D0E2FC  7C 9F 23 78 */	mr r31, r4
/* 80D0E300  41 82 00 94 */	beq lbl_80D0E394
/* 80D0E304  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80D0E308  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80D0E30C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80D0E310  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D0E314  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D0E318  38 03 00 84 */	addi r0, r3, 0x84
/* 80D0E31C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D0E320  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D0E324  41 82 00 54 */	beq lbl_80D0E378
/* 80D0E328  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80D0E32C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80D0E330  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80D0E334  38 03 00 58 */	addi r0, r3, 0x58
/* 80D0E338  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D0E33C  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80D0E340  41 82 00 10 */	beq lbl_80D0E350
/* 80D0E344  3C 60 80 D1 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80D0E7A8@ha */
/* 80D0E348  38 03 E7 A8 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80D0E7A8@l */
/* 80D0E34C  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80D0E350:
/* 80D0E350  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D0E354  41 82 00 24 */	beq lbl_80D0E378
/* 80D0E358  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D0E35C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D0E360  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D0E364  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80D0E368  41 82 00 10 */	beq lbl_80D0E378
/* 80D0E36C  3C 60 80 D1 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D0E79C@ha */
/* 80D0E370  38 03 E7 9C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D0E79C@l */
/* 80D0E374  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80D0E378:
/* 80D0E378  7F C3 F3 78 */	mr r3, r30
/* 80D0E37C  38 80 00 00 */	li r4, 0
/* 80D0E380  4B 37 5D 65 */	bl __dt__12dCcD_GObjInfFv
/* 80D0E384  7F E0 07 35 */	extsh. r0, r31
/* 80D0E388  40 81 00 0C */	ble lbl_80D0E394
/* 80D0E38C  7F C3 F3 78 */	mr r3, r30
/* 80D0E390  4B 5C 09 AD */	bl __dl__FPv
lbl_80D0E394:
/* 80D0E394  7F C3 F3 78 */	mr r3, r30
/* 80D0E398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0E39C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D0E3A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0E3A4  7C 08 03 A6 */	mtlr r0
/* 80D0E3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0E3AC  4E 80 00 20 */	blr 
