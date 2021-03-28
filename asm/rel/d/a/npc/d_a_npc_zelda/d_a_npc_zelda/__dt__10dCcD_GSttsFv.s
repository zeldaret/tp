lbl_80B77868:
/* 80B77868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7786C  7C 08 02 A6 */	mflr r0
/* 80B77870  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B77874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B77878  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B7787C  41 82 00 30 */	beq lbl_80B778AC
/* 80B77880  3C 60 80 B8 */	lis r3, __vt__10dCcD_GStts@ha
/* 80B77884  38 03 82 E4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80B77888  90 1F 00 00 */	stw r0, 0(r31)
/* 80B7788C  41 82 00 10 */	beq lbl_80B7789C
/* 80B77890  3C 60 80 B8 */	lis r3, __vt__10cCcD_GStts@ha
/* 80B77894  38 03 82 D8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80B77898  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B7789C:
/* 80B7789C  7C 80 07 35 */	extsh. r0, r4
/* 80B778A0  40 81 00 0C */	ble lbl_80B778AC
/* 80B778A4  7F E3 FB 78 */	mr r3, r31
/* 80B778A8  4B 75 74 94 */	b __dl__FPv
lbl_80B778AC:
/* 80B778AC  7F E3 FB 78 */	mr r3, r31
/* 80B778B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B778B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B778B8  7C 08 03 A6 */	mtlr r0
/* 80B778BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B778C0  4E 80 00 20 */	blr 
