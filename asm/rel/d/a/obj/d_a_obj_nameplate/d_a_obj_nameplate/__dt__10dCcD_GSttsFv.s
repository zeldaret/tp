lbl_80594DC8:
/* 80594DC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80594DCC  7C 08 02 A6 */	mflr r0
/* 80594DD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80594DD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80594DD8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80594DDC  41 82 00 30 */	beq lbl_80594E0C
/* 80594DE0  3C 60 80 59 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80594F88@ha */
/* 80594DE4  38 03 4F 88 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80594F88@l */
/* 80594DE8  90 1F 00 00 */	stw r0, 0(r31)
/* 80594DEC  41 82 00 10 */	beq lbl_80594DFC
/* 80594DF0  3C 60 80 59 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80594F7C@ha */
/* 80594DF4  38 03 4F 7C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80594F7C@l */
/* 80594DF8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80594DFC:
/* 80594DFC  7C 80 07 35 */	extsh. r0, r4
/* 80594E00  40 81 00 0C */	ble lbl_80594E0C
/* 80594E04  7F E3 FB 78 */	mr r3, r31
/* 80594E08  4B D3 9F 35 */	bl __dl__FPv
lbl_80594E0C:
/* 80594E0C  7F E3 FB 78 */	mr r3, r31
/* 80594E10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80594E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80594E18  7C 08 03 A6 */	mtlr r0
/* 80594E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80594E20  4E 80 00 20 */	blr 
