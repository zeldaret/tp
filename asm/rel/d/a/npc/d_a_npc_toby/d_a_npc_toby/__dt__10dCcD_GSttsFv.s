lbl_80B24244:
/* 80B24244  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B24248  7C 08 02 A6 */	mflr r0
/* 80B2424C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B24250  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B24254  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B24258  41 82 00 30 */	beq lbl_80B24288
/* 80B2425C  3C 60 80 B2 */	lis r3, __vt__10dCcD_GStts@ha
/* 80B24260  38 03 57 14 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80B24264  90 1F 00 00 */	stw r0, 0(r31)
/* 80B24268  41 82 00 10 */	beq lbl_80B24278
/* 80B2426C  3C 60 80 B2 */	lis r3, __vt__10cCcD_GStts@ha
/* 80B24270  38 03 57 08 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80B24274  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B24278:
/* 80B24278  7C 80 07 35 */	extsh. r0, r4
/* 80B2427C  40 81 00 0C */	ble lbl_80B24288
/* 80B24280  7F E3 FB 78 */	mr r3, r31
/* 80B24284  4B 7A AA B8 */	b __dl__FPv
lbl_80B24288:
/* 80B24288  7F E3 FB 78 */	mr r3, r31
/* 80B2428C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B24290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B24294  7C 08 03 A6 */	mtlr r0
/* 80B24298  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2429C  4E 80 00 20 */	blr 
