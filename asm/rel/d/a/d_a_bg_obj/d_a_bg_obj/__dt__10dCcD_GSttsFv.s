lbl_8045C6E8:
/* 8045C6E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045C6EC  7C 08 02 A6 */	mflr r0
/* 8045C6F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045C6F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045C6F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8045C6FC  41 82 00 30 */	beq lbl_8045C72C
/* 8045C700  3C 60 80 46 */	lis r3, __vt__10dCcD_GStts@ha /* 0x8045CD90@ha */
/* 8045C704  38 03 CD 90 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x8045CD90@l */
/* 8045C708  90 1F 00 00 */	stw r0, 0(r31)
/* 8045C70C  41 82 00 10 */	beq lbl_8045C71C
/* 8045C710  3C 60 80 46 */	lis r3, __vt__10cCcD_GStts@ha /* 0x8045CD84@ha */
/* 8045C714  38 03 CD 84 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8045CD84@l */
/* 8045C718  90 1F 00 00 */	stw r0, 0(r31)
lbl_8045C71C:
/* 8045C71C  7C 80 07 35 */	extsh. r0, r4
/* 8045C720  40 81 00 0C */	ble lbl_8045C72C
/* 8045C724  7F E3 FB 78 */	mr r3, r31
/* 8045C728  4B E7 26 15 */	bl __dl__FPv
lbl_8045C72C:
/* 8045C72C  7F E3 FB 78 */	mr r3, r31
/* 8045C730  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045C734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045C738  7C 08 03 A6 */	mtlr r0
/* 8045C73C  38 21 00 10 */	addi r1, r1, 0x10
/* 8045C740  4E 80 00 20 */	blr 
