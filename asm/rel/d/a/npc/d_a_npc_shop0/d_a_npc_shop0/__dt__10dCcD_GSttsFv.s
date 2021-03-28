lbl_80AEACA0:
/* 80AEACA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEACA4  7C 08 02 A6 */	mflr r0
/* 80AEACA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEACAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEACB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEACB4  41 82 00 30 */	beq lbl_80AEACE4
/* 80AEACB8  3C 60 80 AF */	lis r3, __vt__10dCcD_GStts@ha
/* 80AEACBC  38 03 BD 90 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AEACC0  90 1F 00 00 */	stw r0, 0(r31)
/* 80AEACC4  41 82 00 10 */	beq lbl_80AEACD4
/* 80AEACC8  3C 60 80 AF */	lis r3, __vt__10cCcD_GStts@ha
/* 80AEACCC  38 03 BD 84 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AEACD0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80AEACD4:
/* 80AEACD4  7C 80 07 35 */	extsh. r0, r4
/* 80AEACD8  40 81 00 0C */	ble lbl_80AEACE4
/* 80AEACDC  7F E3 FB 78 */	mr r3, r31
/* 80AEACE0  4B 7E 40 5C */	b __dl__FPv
lbl_80AEACE4:
/* 80AEACE4  7F E3 FB 78 */	mr r3, r31
/* 80AEACE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEACEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEACF0  7C 08 03 A6 */	mtlr r0
/* 80AEACF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEACF8  4E 80 00 20 */	blr 
