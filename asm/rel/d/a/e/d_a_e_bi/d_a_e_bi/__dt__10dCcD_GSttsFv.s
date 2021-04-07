lbl_8068D238:
/* 8068D238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068D23C  7C 08 02 A6 */	mflr r0
/* 8068D240  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068D244  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068D248  7C 7F 1B 79 */	or. r31, r3, r3
/* 8068D24C  41 82 00 30 */	beq lbl_8068D27C
/* 8068D250  3C 60 80 69 */	lis r3, __vt__10dCcD_GStts@ha /* 0x8068DA38@ha */
/* 8068D254  38 03 DA 38 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x8068DA38@l */
/* 8068D258  90 1F 00 00 */	stw r0, 0(r31)
/* 8068D25C  41 82 00 10 */	beq lbl_8068D26C
/* 8068D260  3C 60 80 69 */	lis r3, __vt__10cCcD_GStts@ha /* 0x8068DA2C@ha */
/* 8068D264  38 03 DA 2C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8068DA2C@l */
/* 8068D268  90 1F 00 00 */	stw r0, 0(r31)
lbl_8068D26C:
/* 8068D26C  7C 80 07 35 */	extsh. r0, r4
/* 8068D270  40 81 00 0C */	ble lbl_8068D27C
/* 8068D274  7F E3 FB 78 */	mr r3, r31
/* 8068D278  4B C4 1A C5 */	bl __dl__FPv
lbl_8068D27C:
/* 8068D27C  7F E3 FB 78 */	mr r3, r31
/* 8068D280  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068D284  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068D288  7C 08 03 A6 */	mtlr r0
/* 8068D28C  38 21 00 10 */	addi r1, r1, 0x10
/* 8068D290  4E 80 00 20 */	blr 
