lbl_80D3C300:
/* 80D3C300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3C304  7C 08 02 A6 */	mflr r0
/* 80D3C308  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3C30C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3C310  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D3C314  41 82 00 30 */	beq lbl_80D3C344
/* 80D3C318  3C 60 80 D4 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80D3DE68@ha */
/* 80D3C31C  38 03 DE 68 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80D3DE68@l */
/* 80D3C320  90 1F 00 00 */	stw r0, 0(r31)
/* 80D3C324  41 82 00 10 */	beq lbl_80D3C334
/* 80D3C328  3C 60 80 D4 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80D3DE5C@ha */
/* 80D3C32C  38 03 DE 5C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80D3DE5C@l */
/* 80D3C330  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D3C334:
/* 80D3C334  7C 80 07 35 */	extsh. r0, r4
/* 80D3C338  40 81 00 0C */	ble lbl_80D3C344
/* 80D3C33C  7F E3 FB 78 */	mr r3, r31
/* 80D3C340  4B 59 29 FD */	bl __dl__FPv
lbl_80D3C344:
/* 80D3C344  7F E3 FB 78 */	mr r3, r31
/* 80D3C348  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3C34C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3C350  7C 08 03 A6 */	mtlr r0
/* 80D3C354  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3C358  4E 80 00 20 */	blr 
