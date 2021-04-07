lbl_80597C64:
/* 80597C64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80597C68  7C 08 02 A6 */	mflr r0
/* 80597C6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80597C70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80597C74  7C 7F 1B 79 */	or. r31, r3, r3
/* 80597C78  41 82 00 30 */	beq lbl_80597CA8
/* 80597C7C  3C 60 80 5A */	lis r3, __vt__10dCcD_GStts@ha /* 0x80598098@ha */
/* 80597C80  38 03 80 98 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80598098@l */
/* 80597C84  90 1F 00 00 */	stw r0, 0(r31)
/* 80597C88  41 82 00 10 */	beq lbl_80597C98
/* 80597C8C  3C 60 80 5A */	lis r3, __vt__10cCcD_GStts@ha /* 0x8059808C@ha */
/* 80597C90  38 03 80 8C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8059808C@l */
/* 80597C94  90 1F 00 00 */	stw r0, 0(r31)
lbl_80597C98:
/* 80597C98  7C 80 07 35 */	extsh. r0, r4
/* 80597C9C  40 81 00 0C */	ble lbl_80597CA8
/* 80597CA0  7F E3 FB 78 */	mr r3, r31
/* 80597CA4  4B D3 70 99 */	bl __dl__FPv
lbl_80597CA8:
/* 80597CA8  7F E3 FB 78 */	mr r3, r31
/* 80597CAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80597CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80597CB4  7C 08 03 A6 */	mtlr r0
/* 80597CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80597CBC  4E 80 00 20 */	blr 
