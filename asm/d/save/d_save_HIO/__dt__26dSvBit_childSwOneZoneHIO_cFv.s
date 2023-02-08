lbl_8025C4DC:
/* 8025C4DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025C4E0  7C 08 02 A6 */	mflr r0
/* 8025C4E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025C4E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025C4EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8025C4F0  41 82 00 1C */	beq lbl_8025C50C
/* 8025C4F4  3C A0 80 3C */	lis r5, __vt__26dSvBit_childSwOneZoneHIO_c@ha /* 0x803C3360@ha */
/* 8025C4F8  38 05 33 60 */	addi r0, r5, __vt__26dSvBit_childSwOneZoneHIO_c@l /* 0x803C3360@l */
/* 8025C4FC  90 1F 00 00 */	stw r0, 0(r31)
/* 8025C500  7C 80 07 35 */	extsh. r0, r4
/* 8025C504  40 81 00 08 */	ble lbl_8025C50C
/* 8025C508  48 07 28 35 */	bl __dl__FPv
lbl_8025C50C:
/* 8025C50C  7F E3 FB 78 */	mr r3, r31
/* 8025C510  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025C514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025C518  7C 08 03 A6 */	mtlr r0
/* 8025C51C  38 21 00 10 */	addi r1, r1, 0x10
/* 8025C520  4E 80 00 20 */	blr 
