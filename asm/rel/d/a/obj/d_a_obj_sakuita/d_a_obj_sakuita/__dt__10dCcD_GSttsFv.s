lbl_80CC5008:
/* 80CC5008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC500C  7C 08 02 A6 */	mflr r0
/* 80CC5010  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC5014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC5018  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CC501C  41 82 00 30 */	beq lbl_80CC504C
/* 80CC5020  3C 60 80 CC */	lis r3, __vt__10dCcD_GStts@ha
/* 80CC5024  38 03 51 8C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CC5028  90 1F 00 00 */	stw r0, 0(r31)
/* 80CC502C  41 82 00 10 */	beq lbl_80CC503C
/* 80CC5030  3C 60 80 CC */	lis r3, __vt__10cCcD_GStts@ha
/* 80CC5034  38 03 51 80 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CC5038  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CC503C:
/* 80CC503C  7C 80 07 35 */	extsh. r0, r4
/* 80CC5040  40 81 00 0C */	ble lbl_80CC504C
/* 80CC5044  7F E3 FB 78 */	mr r3, r31
/* 80CC5048  4B 60 9C F4 */	b __dl__FPv
lbl_80CC504C:
/* 80CC504C  7F E3 FB 78 */	mr r3, r31
/* 80CC5050  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC5054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC5058  7C 08 03 A6 */	mtlr r0
/* 80CC505C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC5060  4E 80 00 20 */	blr 
