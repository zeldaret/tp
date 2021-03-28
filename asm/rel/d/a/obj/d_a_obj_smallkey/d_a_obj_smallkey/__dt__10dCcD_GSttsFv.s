lbl_80CDA544:
/* 80CDA544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDA548  7C 08 02 A6 */	mflr r0
/* 80CDA54C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDA550  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDA554  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CDA558  41 82 00 30 */	beq lbl_80CDA588
/* 80CDA55C  3C 60 80 CE */	lis r3, __vt__10dCcD_GStts@ha
/* 80CDA560  38 03 B9 F0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CDA564  90 1F 00 00 */	stw r0, 0(r31)
/* 80CDA568  41 82 00 10 */	beq lbl_80CDA578
/* 80CDA56C  3C 60 80 CE */	lis r3, __vt__10cCcD_GStts@ha
/* 80CDA570  38 03 B9 E4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CDA574  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CDA578:
/* 80CDA578  7C 80 07 35 */	extsh. r0, r4
/* 80CDA57C  40 81 00 0C */	ble lbl_80CDA588
/* 80CDA580  7F E3 FB 78 */	mr r3, r31
/* 80CDA584  4B 5F 47 B8 */	b __dl__FPv
lbl_80CDA588:
/* 80CDA588  7F E3 FB 78 */	mr r3, r31
/* 80CDA58C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDA590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDA594  7C 08 03 A6 */	mtlr r0
/* 80CDA598  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDA59C  4E 80 00 20 */	blr 
