lbl_80BB32A0:
/* 80BB32A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB32A4  7C 08 02 A6 */	mflr r0
/* 80BB32A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB32AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB32B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BB32B4  41 82 00 30 */	beq lbl_80BB32E4
/* 80BB32B8  3C 60 80 BB */	lis r3, __vt__10dCcD_GStts@ha /* 0x80BB3DEC@ha */
/* 80BB32BC  38 03 3D EC */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80BB3DEC@l */
/* 80BB32C0  90 1F 00 00 */	stw r0, 0(r31)
/* 80BB32C4  41 82 00 10 */	beq lbl_80BB32D4
/* 80BB32C8  3C 60 80 BB */	lis r3, __vt__10cCcD_GStts@ha /* 0x80BB3DE0@ha */
/* 80BB32CC  38 03 3D E0 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80BB3DE0@l */
/* 80BB32D0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BB32D4:
/* 80BB32D4  7C 80 07 35 */	extsh. r0, r4
/* 80BB32D8  40 81 00 0C */	ble lbl_80BB32E4
/* 80BB32DC  7F E3 FB 78 */	mr r3, r31
/* 80BB32E0  4B 71 BA 5D */	bl __dl__FPv
lbl_80BB32E4:
/* 80BB32E4  7F E3 FB 78 */	mr r3, r31
/* 80BB32E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB32EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB32F0  7C 08 03 A6 */	mtlr r0
/* 80BB32F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB32F8  4E 80 00 20 */	blr 
