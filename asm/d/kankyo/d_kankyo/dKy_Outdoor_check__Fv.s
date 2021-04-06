lbl_801AC228:
/* 801AC228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AC22C  7C 08 02 A6 */	mflr r0
/* 801AC230  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AC234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801AC238  3B E0 00 00 */	li r31, 0
/* 801AC23C  38 00 00 00 */	li r0, 0
/* 801AC240  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801AC244  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801AC248  34 63 4E 20 */	addic. r3, r3, 0x4e20
/* 801AC24C  41 82 00 1C */	beq lbl_801AC268
/* 801AC250  81 83 00 00 */	lwz r12, 0(r3)
/* 801AC254  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801AC258  7D 89 03 A6 */	mtctr r12
/* 801AC25C  4E 80 04 21 */	bctrl 
/* 801AC260  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801AC264  54 00 87 7E */	rlwinm r0, r0, 0x10, 0x1d, 0x1f
lbl_801AC268:
/* 801AC268  28 00 00 00 */	cmplwi r0, 0
/* 801AC26C  40 82 00 08 */	bne lbl_801AC274
/* 801AC270  3B E0 00 01 */	li r31, 1
lbl_801AC274:
/* 801AC274  7F E3 FB 78 */	mr r3, r31
/* 801AC278  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801AC27C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AC280  7C 08 03 A6 */	mtlr r0
/* 801AC284  38 21 00 10 */	addi r1, r1, 0x10
/* 801AC288  4E 80 00 20 */	blr 
