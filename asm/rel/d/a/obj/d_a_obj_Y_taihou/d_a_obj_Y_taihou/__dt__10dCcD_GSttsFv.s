lbl_80BA0E34:
/* 80BA0E34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA0E38  7C 08 02 A6 */	mflr r0
/* 80BA0E3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA0E40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA0E44  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA0E48  41 82 00 30 */	beq lbl_80BA0E78
/* 80BA0E4C  3C 60 80 BA */	lis r3, __vt__10dCcD_GStts@ha
/* 80BA0E50  38 03 12 8C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80BA0E54  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA0E58  41 82 00 10 */	beq lbl_80BA0E68
/* 80BA0E5C  3C 60 80 BA */	lis r3, __vt__10cCcD_GStts@ha
/* 80BA0E60  38 03 12 80 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80BA0E64  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BA0E68:
/* 80BA0E68  7C 80 07 35 */	extsh. r0, r4
/* 80BA0E6C  40 81 00 0C */	ble lbl_80BA0E78
/* 80BA0E70  7F E3 FB 78 */	mr r3, r31
/* 80BA0E74  4B 72 DE C8 */	b __dl__FPv
lbl_80BA0E78:
/* 80BA0E78  7F E3 FB 78 */	mr r3, r31
/* 80BA0E7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA0E80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA0E84  7C 08 03 A6 */	mtlr r0
/* 80BA0E88  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA0E8C  4E 80 00 20 */	blr 
